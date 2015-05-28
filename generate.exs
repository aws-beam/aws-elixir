[service_description_path, template_path] = System.argv
context = AWS.Generate.load_context(service_description_path)
#IO.puts File.read!(template_path)
IO.puts AWS.Generate.render(context, template_path)
