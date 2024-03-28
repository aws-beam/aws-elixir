# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudSearchDomain do
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

  @typedoc """

  ## Example:

      bucket() :: %{
        "count" => float(),
        "value" => String.t()
      }

  """
  @type bucket() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bucket_info() :: %{
        "buckets" => list(bucket()())
      }

  """
  @type bucket_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      document_service_exception() :: %{
        "message" => String.t(),
        "status" => String.t()
      }

  """
  @type document_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      document_service_warning() :: %{
        "message" => String.t()
      }

  """
  @type document_service_warning() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_stats() :: %{
        "count" => float(),
        "max" => String.t(),
        "mean" => String.t(),
        "min" => String.t(),
        "missing" => float(),
        "stddev" => float(),
        "sum" => float(),
        "sumOfSquares" => float()
      }

  """
  @type field_stats() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hit() :: %{
        "exprs" => map(),
        "fields" => map(),
        "highlights" => map(),
        "id" => String.t()
      }

  """
  @type hit() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hits() :: %{
        "cursor" => String.t(),
        "found" => float(),
        "hit" => list(hit()()),
        "start" => float()
      }

  """
  @type hits() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_exception() :: %{
        "message" => String.t()
      }

  """
  @type search_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_request() :: %{
        optional("cursor") => String.t(),
        optional("expr") => String.t(),
        optional("facet") => String.t(),
        optional("filterQuery") => String.t(),
        optional("highlight") => String.t(),
        optional("partial") => boolean(),
        optional("queryOptions") => String.t(),
        optional("queryParser") => list(any()),
        optional("return") => String.t(),
        optional("size") => float(),
        optional("sort") => String.t(),
        optional("start") => float(),
        optional("stats") => String.t(),
        required("query") => String.t()
      }

  """
  @type search_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_response() :: %{
        "facets" => map(),
        "hits" => hits(),
        "stats" => map(),
        "status" => search_status()
      }

  """
  @type search_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_status() :: %{
        "rid" => String.t(),
        "timems" => float()
      }

  """
  @type search_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      suggest_model() :: %{
        "found" => float(),
        "query" => String.t(),
        "suggestions" => list(suggestion_match()())
      }

  """
  @type suggest_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      suggest_request() :: %{
        optional("size") => float(),
        required("query") => String.t(),
        required("suggester") => String.t()
      }

  """
  @type suggest_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      suggest_response() :: %{
        "status" => suggest_status(),
        "suggest" => suggest_model()
      }

  """
  @type suggest_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      suggest_status() :: %{
        "rid" => String.t(),
        "timems" => float()
      }

  """
  @type suggest_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      suggestion_match() :: %{
        "id" => String.t(),
        "score" => float(),
        "suggestion" => String.t()
      }

  """
  @type suggestion_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upload_documents_request() :: %{
        required("contentType") => list(any()),
        required("documents") => binary()
      }

  """
  @type upload_documents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upload_documents_response() :: %{
        "adds" => float(),
        "deletes" => float(),
        "status" => String.t(),
        "warnings" => list(document_service_warning()())
      }

  """
  @type upload_documents_response() :: %{String.t() => any()}

  @type search_errors() :: search_exception()

  @type suggest_errors() :: search_exception()

  @type upload_documents_errors() :: document_service_exception()

  def metadata do
    %{
      api_version: "2013-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cloudsearchdomain",
      global?: false,
      protocol: "rest-json",
      service_id: "CloudSearch Domain",
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
  @spec search(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, search_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_errors()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
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
  @spec suggest(map(), String.t(), String.t() | nil, String.t(), list()) ::
          {:ok, suggest_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, suggest_errors()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
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
  in the *Amazon CloudSearch Developer Guide*.
  For more information about uploading data for indexing, see [Uploading Data](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/uploading-data.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec upload_documents(map(), upload_documents_request(), list()) ::
          {:ok, upload_documents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, upload_documents_errors()}
  def upload_documents(%Client{} = client, input, options \\ []) do
    url_path = "/2013-01-01/documents/batch?format=sdk"

    {headers, input} =
      [
        {"contentType", "Content-Type"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
