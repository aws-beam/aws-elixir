# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.S3Outposts do
  @moduledoc """
  Amazon S3 on Outposts provides access to S3 on Outposts operations.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_endpoint_request() :: %{
        optional("AccessType") => list(any()),
        optional("CustomerOwnedIpv4Pool") => String.t() | Atom.t(),
        required("OutpostId") => String.t() | Atom.t(),
        required("SecurityGroupId") => String.t() | Atom.t(),
        required("SubnetId") => String.t() | Atom.t()
      }

  """
  @type create_endpoint_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_endpoint_result() :: %{
        "EndpointArn" => String.t() | Atom.t()
      }

  """
  @type create_endpoint_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_endpoint_request() :: %{
        required("EndpointId") => String.t() | Atom.t(),
        required("OutpostId") => String.t() | Atom.t()
      }

  """
  @type delete_endpoint_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      endpoint() :: %{
        "AccessType" => list(any()),
        "CidrBlock" => String.t() | Atom.t(),
        "CreationTime" => non_neg_integer(),
        "CustomerOwnedIpv4Pool" => String.t() | Atom.t(),
        "EndpointArn" => String.t() | Atom.t(),
        "FailedReason" => failed_reason(),
        "NetworkInterfaces" => list(network_interface()),
        "OutpostsId" => String.t() | Atom.t(),
        "SecurityGroupId" => String.t() | Atom.t(),
        "Status" => list(any()),
        "SubnetId" => String.t() | Atom.t(),
        "VpcId" => String.t() | Atom.t()
      }

  """
  @type endpoint() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      failed_reason() :: %{
        "ErrorCode" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }

  """
  @type failed_reason() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_endpoints_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_endpoints_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_endpoints_result() :: %{
        "Endpoints" => list(endpoint()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_endpoints_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_outposts_with_s3_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_outposts_with_s3_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_outposts_with_s3_result() :: %{
        "NextToken" => String.t() | Atom.t(),
        "Outposts" => list(outpost())
      }

  """
  @type list_outposts_with_s3_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_shared_endpoints_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("OutpostId") => String.t() | Atom.t()
      }

  """
  @type list_shared_endpoints_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_shared_endpoints_result() :: %{
        "Endpoints" => list(endpoint()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_shared_endpoints_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      network_interface() :: %{
        "NetworkInterfaceId" => String.t() | Atom.t()
      }

  """
  @type network_interface() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      outpost() :: %{
        "CapacityInBytes" => float(),
        "OutpostArn" => String.t() | Atom.t(),
        "OutpostId" => String.t() | Atom.t(),
        "OwnerId" => String.t() | Atom.t(),
        "S3OutpostArn" => String.t() | Atom.t()
      }

  """
  @type outpost() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      outpost_offline_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type outpost_offline_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @type create_endpoint_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | outpost_offline_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_endpoint_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | outpost_offline_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_endpoints_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_outposts_with_s3_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_shared_endpoints_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "s3-outposts",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "S3Outposts",
      signature_version: "v4",
      signing_name: "s3-outposts",
      target_prefix: nil
    }
  end

  @doc """
  Creates an endpoint and associates it with the specified Outpost.

  It can take up to 5 minutes for this action to finish.

  Related actions include:

    *

  [DeleteEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html) 

    *

  [ListEndpoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html)
  """
  @spec create_endpoint(map(), create_endpoint_request(), list()) ::
          {:ok, create_endpoint_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_endpoint_errors()}
  def create_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/S3Outposts/CreateEndpoint"
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

  @doc """
  Deletes an endpoint.

  It can take up to 5 minutes for this action to finish.

  Related actions include:

    *

  [CreateEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html) 

    *

  [ListEndpoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html)
  """
  @spec delete_endpoint(map(), delete_endpoint_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_endpoint_errors()}
  def delete_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/S3Outposts/DeleteEndpoint"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"EndpointId", "endpointId"},
        {"OutpostId", "outpostId"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists endpoints associated with the specified Outpost.

  Related actions include:

    *

  [CreateEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html) 

    *

  [DeleteEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html)
  """
  @spec list_endpoints(map(), String.t() | Atom.t() | nil, String.t() | Atom.t() | nil, list()) ::
          {:ok, list_endpoints_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_endpoints_errors()}
  def list_endpoints(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/S3Outposts/ListEndpoints"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Outposts with S3 on Outposts capacity for your Amazon Web Services
  account.

  Includes S3 on Outposts that you have access to as the Outposts owner, or as a
  shared user
  from Resource Access Manager (RAM).
  """
  @spec list_outposts_with_s3(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_outposts_with_s3_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_outposts_with_s3_errors()}
  def list_outposts_with_s3(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/S3Outposts/ListOutpostsWithS3"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all endpoints associated with an Outpost that has been shared by Amazon
  Web Services Resource Access Manager (RAM).

  Related actions include:

    *

  [CreateEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html) 

    *

  [DeleteEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html)
  """
  @spec list_shared_endpoints(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t(),
          list()
        ) ::
          {:ok, list_shared_endpoints_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_shared_endpoints_errors()}
  def list_shared_endpoints(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        outpost_id,
        options \\ []
      ) do
    url_path = "/S3Outposts/ListSharedEndpoints"
    headers = []
    query_params = []

    query_params =
      if !is_nil(outpost_id) do
        [{"outpostId", outpost_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end
end
