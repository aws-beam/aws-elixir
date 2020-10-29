# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Cloudsearchdomain do
  @moduledoc """
  You use the AmazonCloudSearch2013 API to upload documents to a search
  domain and search those documents.

  The endpoints for submitting `UploadDocuments`, `Search`, and `Suggest`
  requests are domain-specific. To get the endpoints for your domain, use the
  Amazon CloudSearch configuration service `DescribeDomains` action. The
  domain endpoints are also displayed on the domain dashboard in the Amazon
  CloudSearch console. You submit suggest requests to the search endpoint.

  For more information, see the [Amazon CloudSearch Developer
  Guide](http://docs.aws.amazon.com/cloudsearch/latest/developerguide).
  """

  @doc """
  Retrieves a list of documents that match the specified search criteria. How
  you specify the search criteria depends on which query parser you use.
  Amazon CloudSearch supports four query parsers:

  <ul> <li>`simple`: search all `text` and `text-array` fields for the
  specified string. Search for phrases, individual terms, and prefixes. </li>
  <li>`structured`: search specific fields, construct compound queries using
  Boolean operators, and use advanced features such as term boosting and
  proximity searching.</li> <li>`lucene`: specify search criteria using the
  Apache Lucene query parser syntax.</li> <li>`dismax`: specify search
  criteria using the simplified subset of the Apache Lucene query parser
  syntax defined by the DisMax query parser.</li> </ul> For more information,
  see [Searching Your
  Data](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching.html)
  in the *Amazon CloudSearch Developer Guide*.

  The endpoint for submitting `Search` requests is domain-specific. You
  submit search requests to a domain's search endpoint. To get the search
  endpoint for your domain, use the Amazon CloudSearch configuration service
  `DescribeDomains` action. A domain's endpoints are also displayed on the
  domain dashboard in the Amazon CloudSearch console.
  """
  def search(client, cursor \\ nil, expr \\ nil, facet \\ nil, filter_query \\ nil, highlight \\ nil, partial \\ nil, query, query_options \\ nil, query_parser \\ nil, return \\ nil, size \\ nil, sort \\ nil, start \\ nil, stats \\ nil, options \\ []) do
    path_ = "/2013-01-01/search?format=sdk&pretty=true"
    headers = []
    query_ = []
    query_ = if !is_nil(stats) do
      [{"stats", stats} | query_]
    else
      query_
    end
    query_ = if !is_nil(start) do
      [{"start", start} | query_]
    else
      query_
    end
    query_ = if !is_nil(sort) do
      [{"sort", sort} | query_]
    else
      query_
    end
    query_ = if !is_nil(size) do
      [{"size", size} | query_]
    else
      query_
    end
    query_ = if !is_nil(return) do
      [{"return", return} | query_]
    else
      query_
    end
    query_ = if !is_nil(query_parser) do
      [{"q.parser", query_parser} | query_]
    else
      query_
    end
    query_ = if !is_nil(query_options) do
      [{"q.options", query_options} | query_]
    else
      query_
    end
    query_ = if !is_nil(query) do
      [{"q", query} | query_]
    else
      query_
    end
    query_ = if !is_nil(partial) do
      [{"partial", partial} | query_]
    else
      query_
    end
    query_ = if !is_nil(highlight) do
      [{"highlight", highlight} | query_]
    else
      query_
    end
    query_ = if !is_nil(filter_query) do
      [{"fq", filter_query} | query_]
    else
      query_
    end
    query_ = if !is_nil(facet) do
      [{"facet", facet} | query_]
    else
      query_
    end
    query_ = if !is_nil(expr) do
      [{"expr", expr} | query_]
    else
      query_
    end
    query_ = if !is_nil(cursor) do
      [{"cursor", cursor} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves autocomplete suggestions for a partial query string. You can use
  suggestions enable you to display likely matches before users finish
  typing. In Amazon CloudSearch, suggestions are based on the contents of a
  particular text field. When you request suggestions, Amazon CloudSearch
  finds all of the documents whose values in the suggester field start with
  the specified query string. The beginning of the field must match the query
  string to be considered a match.

  For more information about configuring suggesters and retrieving
  suggestions, see [Getting
  Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html)
  in the *Amazon CloudSearch Developer Guide*.

  The endpoint for submitting `Suggest` requests is domain-specific. You
  submit suggest requests to a domain's search endpoint. To get the search
  endpoint for your domain, use the Amazon CloudSearch configuration service
  `DescribeDomains` action. A domain's endpoints are also displayed on the
  domain dashboard in the Amazon CloudSearch console.
  """
  def suggest(client, query, size \\ nil, suggester, options \\ []) do
    path_ = "/2013-01-01/suggest?format=sdk&pretty=true"
    headers = []
    query_ = []
    query_ = if !is_nil(suggester) do
      [{"suggester", suggester} | query_]
    else
      query_
    end
    query_ = if !is_nil(size) do
      [{"size", size} | query_]
    else
      query_
    end
    query_ = if !is_nil(query) do
      [{"q", query} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Posts a batch of documents to a search domain for indexing. A document
  batch is a collection of add and delete operations that represent the
  documents you want to add, update, or delete from your domain. Batches can
  be described in either JSON or XML. Each item that you want Amazon
  CloudSearch to return as a search result (such as a product) is represented
  as a document. Every document has a unique ID and one or more fields that
  contain the data that you want to search and return in results. Individual
  documents cannot contain more than 1 MB of data. The entire batch cannot
  exceed 5 MB. To get the best possible upload performance, group add and
  delete operations in batches that are close the 5 MB limit. Submitting a
  large volume of single-document batches can overload a domain's document
  service.

  The endpoint for submitting `UploadDocuments` requests is domain-specific.
  To get the document endpoint for your domain, use the Amazon CloudSearch
  configuration service `DescribeDomains` action. A domain's endpoints are
  also displayed on the domain dashboard in the Amazon CloudSearch console.

  For more information about formatting your data for Amazon CloudSearch, see
  [Preparing Your
  Data](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/preparing-data.html)
  in the *Amazon CloudSearch Developer Guide*. For more information about
  uploading data for indexing, see [Uploading
  Data](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/uploading-data.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  def upload_documents(client, input, options \\ []) do
    path_ = "/2013-01-01/documents/batch?format=sdk"
    {headers, input} =
      [
        {"contentType", "Content-Type"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "cloudsearch"}
    host = build_host("cloudsearchdomain", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end


  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
