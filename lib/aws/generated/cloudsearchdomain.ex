# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Cloudsearchdomain do
  @moduledoc """
  You use the AmazonCloudSearch2013 API to upload documents to a search domain and
  search those documents.

  The endpoints for submitting `UploadDocuments`, `Search`, and `Suggest` requests
  are domain-specific. To get the endpoints for your domain, use the Amazon
  CloudSearch configuration service `DescribeDomains` action. The domain endpoints
  are also displayed on the domain dashboard in the Amazon CloudSearch console.
  You submit suggest requests to the search endpoint.

  For more information, see the [Amazon CloudSearch Developer Guide](http://docs.aws.amazon.com/cloudsearch/latest/developerguide).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2013-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cloudsearchdomain",
      global?: false,
      protocol: "rest-json",
      service_id: nil,
      signature_version: "v4",
      signing_name: "cloudsearch",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves a list of documents that match the specified search criteria.

  How you specify the search criteria depends on which query parser you use.
  Amazon CloudSearch supports four query parsers:

    * `simple`: search all `text` and `text-array` fields for the
  specified string. Search for phrases, individual terms, and prefixes.
    * `structured`: search specific fields, construct compound queries
  using Boolean operators, and use advanced features such as term boosting and
  proximity searching.
    * `lucene`: specify search criteria using the Apache Lucene query
  parser syntax.
    * `dismax`: specify search criteria using the simplified subset of
  the Apache Lucene query parser syntax defined by the DisMax query parser.

  For more information, see [Searching Your Data](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching.html)
  in the *Amazon CloudSearch Developer Guide*.

  The endpoint for submitting `Search` requests is domain-specific. You submit
  search requests to a domain's search endpoint. To get the search endpoint for
  your domain, use the Amazon CloudSearch configuration service `DescribeDomains`
  action. A domain's endpoints are also displayed on the domain dashboard in the
  Amazon CloudSearch console.
  """
  def search(
        %Client{} = client,
        cursor \\ nil,
        expr \\ nil,
        facet \\ nil,
        filter_query \\ nil,
        highlight \\ nil,
        partial \\ nil,
        query,
        query_options \\ nil,
        query_parser \\ nil,
        return \\ nil,
        size \\ nil,
        sort \\ nil,
        start \\ nil,
        stats \\ nil,
        options \\ []
      ) do
    url_path = "/2013-01-01/search?format=sdk&pretty=true"
    headers = []
    query_params = []

    query_params =
      if !is_nil(stats) do
        [{"stats", stats} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start) do
        [{"start", start} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort) do
        [{"sort", sort} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(size) do
        [{"size", size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(return) do
        [{"return", return} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(query_parser) do
        [{"q.parser", query_parser} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(query_options) do
        [{"q.options", query_options} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(query) do
        [{"q", query} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(partial) do
        [{"partial", partial} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(highlight) do
        [{"highlight", highlight} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(filter_query) do
        [{"fq", filter_query} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(facet) do
        [{"facet", facet} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(expr) do
        [{"expr", expr} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(cursor) do
        [{"cursor", cursor} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Retrieves autocomplete suggestions for a partial query string.

  You can use suggestions enable you to display likely matches before users finish
  typing. In Amazon CloudSearch, suggestions are based on the contents of a
  particular text field. When you request suggestions, Amazon CloudSearch finds
  all of the documents whose values in the suggester field start with the
  specified query string. The beginning of the field must match the query string
  to be considered a match.

  For more information about configuring suggesters and retrieving suggestions,
  see [Getting Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html)
  in the *Amazon CloudSearch Developer Guide*.

  The endpoint for submitting `Suggest` requests is domain-specific. You submit
  suggest requests to a domain's search endpoint. To get the search endpoint for
  your domain, use the Amazon CloudSearch configuration service `DescribeDomains`
  action. A domain's endpoints are also displayed on the domain dashboard in the
  Amazon CloudSearch console.
  """
  def suggest(%Client{} = client, query, size \\ nil, suggester, options \\ []) do
    url_path = "/2013-01-01/suggest?format=sdk&pretty=true"
    headers = []
    query_params = []

    query_params =
      if !is_nil(suggester) do
        [{"suggester", suggester} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(size) do
        [{"size", size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(query) do
        [{"q", query} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Posts a batch of documents to a search domain for indexing.

  A document batch is a collection of add and delete operations that represent the
  documents you want to add, update, or delete from your domain. Batches can be
  described in either JSON or XML. Each item that you want Amazon CloudSearch to
  return as a search result (such as a product) is represented as a document.
  Every document has a unique ID and one or more fields that contain the data that
  you want to search and return in results. Individual documents cannot contain
  more than 1 MB of data. The entire batch cannot exceed 5 MB. To get the best
  possible upload performance, group add and delete operations in batches that are
  close the 5 MB limit. Submitting a large volume of single-document batches can
  overload a domain's document service.

  The endpoint for submitting `UploadDocuments` requests is domain-specific. To
  get the document endpoint for your domain, use the Amazon CloudSearch
  configuration service `DescribeDomains` action. A domain's endpoints are also
  displayed on the domain dashboard in the Amazon CloudSearch console.

  For more information about formatting your data for Amazon CloudSearch, see
  [Preparing Your Data](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/preparing-data.html)
  in the *Amazon CloudSearch Developer Guide*. For more information about
  uploading data for indexing, see [Uploading Data](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/uploading-data.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  def upload_documents(%Client{} = client, input, options \\ []) do
    url_path = "/2013-01-01/documents/batch?format=sdk"

    {headers, input} =
      [
        {"contentType", "Content-Type"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
