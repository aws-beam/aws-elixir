# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.CloudSearch.Domain do
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

  <ul> <li> `simple`: search all `text` and `text-array` fields for the
  specified string. Search for phrases, individual terms, and prefixes. </li>
  <li> `structured`: search specific fields, construct compound queries using
  Boolean operators, and use advanced features such as term boosting and
  proximity searching.</li> <li> `lucene`: specify search criteria using the
  Apache Lucene query parser syntax.</li> <li> `dismax`: specify search
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
  def search(client, options \\ []) do
    url = "/2013-01-01/search?format=sdk&pretty=true"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
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
  def suggest(client, options \\ []) do
    url = "/2013-01-01/suggest?format=sdk&pretty=true"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
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
    url = "/2013-01-01/documents/batch?format=sdk"
    headers = []
    if Dict.has_key?(input, "contentType") do
      headers = [{"contentType", input["contentType"]}|headers]
      input = Dict.delete(input, "contentType")
    end
    request(client, :post, url, headers, input, options, nil)
  end

  defp request(client, method, url, headers, input, options, success_status_code) do
    client = %{client | service: "cloudsearchdomain"}
    host = "cloudsearchdomain.#{client.region}.#{client.endpoint}"
    url = "https://#{host}#{url}"
    headers = Enum.concat([{"Host", host},
                           {"Content-Type", "application/x-amz-json-1.1"}],
                          headers)
    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{status_code: 202, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{status_code: 204, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["message"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: ^success_status_code, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["message"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp encode_payload(input) do
    if input != nil do
      Poison.Encoder.encode(input, [])
    else
      ""
    end
  end
end
