# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AgentDiscovery do
  @moduledoc """
  Agent Discovery lets you search public records for AI agents, tools, skills, and
  other resources
  that their publishers have made discoverable.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      descriptor_entry() :: %{
        "additionalData" => map(),
        "data" => String.t() | atom(),
        "source" => descriptor_source(),
        "version" => String.t() | atom()
      }

  """
  @type descriptor_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      descriptor_source() :: %{
        "fromUrl" => descriptor_source_url()
      }

  """
  @type descriptor_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      descriptor_source_url() :: %{
        "url" => String.t() | atom()
      }

  """
  @type descriptor_source_url() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "errorCode" => list(any()),
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      provenance_link() :: %{
        "relation" => list(any()),
        "sourceId" => String.t() | atom()
      }

  """
  @type provenance_link() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      public_record() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "descriptors" => map(),
        "displayName" => String.t() | atom(),
        "domain" => String.t() | atom(),
        "identifier" => list(),
        "recordType" => list(any()),
        "recordVersion" => String.t() | atom(),
        "trustManifests" => list(trust_manifest()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type public_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_public_records_request() :: %{
        optional("filters") => any(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("searchQuery") => String.t() | atom()
      }

  """
  @type search_public_records_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_public_records_response() :: %{
        "nextToken" => String.t() | atom(),
        "records" => list(public_record())
      }

  """
  @type search_public_records_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "errorCode" => list(any()),
        "message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trust_manifest() :: %{
        "contributor" => String.t() | atom(),
        "provenance" => list(provenance_link())
      }

  """
  @type trust_manifest() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "errorCode" => list(any()),
        "message" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type search_public_records_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  def metadata do
    %{
      api_version: "2022-07-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "agent-discovery",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Agent Discovery",
      signature_version: "v4",
      signing_name: "agent-discovery",
      target_prefix: nil
    }
  end

  @doc """
  Search public agent records across the authoritative + crawler indexes.

  Hybrid keyword +
  neural ranking, merged and fused (weighted RRF), with filters, org governance
  policy, and
  descriptor-visibility enforcement applied server-side. Public, authenticated
  (D-1).
  """
  @spec search_public_records(map(), search_public_records_request(), list()) ::
          {:ok, search_public_records_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_public_records_errors()}
  def search_public_records(%Client{} = client, input, options \\ []) do
    url_path = "/records/search"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
