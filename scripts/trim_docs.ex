#!/usr/bin/env mix run
Path.wildcard("#{Mix.Project.app_path()}/ebin/*.beam")
|> Enum.each(fn path ->
  {:ok, _module, chunks} = :beam_lib.all_chunks(String.to_charlist(path))

  # Remove docs from types which contain the examples
  {_, docs} = List.keyfind(chunks, ~c"Docs", 0)
  {:docs_v1, anno, language, fmt, a, b, c} = :erlang.binary_to_term(docs)
  new_c = Enum.filter(c,
                   fn doc ->
                     elem(elem(doc, 0), 0) != :type
                   end)

  new_docs = :erlang.term_to_binary({:docs_v1, anno, language, fmt, a, b, new_c})
  new_chunks1 = List.keyreplace(chunks, ~c"Docs", 0, {~c"Docs", new_docs})

  {_, dbgi} = List.keyfind(new_chunks1, ~c"Dbgi", 0)
  {:debug_info_v1, :elixir_erl, {:elixir_v1, code, typespecs}} = :erlang.binary_to_term(dbgi)

  # remove specs
  new_typespecs = Enum.filter(typespecs, &(elem(&1, 2) != :spec))

  new_dbgi = :erlang.term_to_binary({:debug_info_v1, :elixir_erl, {:elixir_v1, code, new_typespecs}})
  new_chunks = List.keyreplace(new_chunks1, ~c"Dbgi", 0, {~c"Dbgi", new_dbgi})

  {:ok, binary} = :beam_lib.build_module(new_chunks)
  File.write!(path, binary)
end)
