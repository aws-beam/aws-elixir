# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Repostspace do
  @moduledoc """
  AWS re:Post Private is a private version of AWS re:Post for enterprises with
  Enterprise Support or Enterprise On-Ramp Support plans.

  It provides access to knowledge and experts to accelerate cloud adoption and
  increase developer productivity. With your organization-specific private
  re:Post, you can build an organization-specific developer community that drives
  efficiencies at scale and provides access to valuable knowledge resources.
  Additionally, re:Post Private centralizes trusted AWS technical content and
  offers private discussion forums to improve how your teams collaborate
  internally and with AWS to remove technical obstacles, accelerate innovation,
  and scale more efficiently in the cloud.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_space_input() :: %{
        optional("description") => String.t(),
        optional("roleArn") => String.t(),
        optional("tags") => map(),
        optional("userKMSKey") => String.t(),
        required("name") => String.t(),
        required("subdomain") => String.t(),
        required("tier") => list(any())
      }

  """
  @type create_space_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_space_output() :: %{
        "spaceId" => String.t()
      }

  """
  @type create_space_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_space_input() :: %{}

  """
  @type delete_space_input() :: %{}

  @typedoc """

  ## Example:

      deregister_admin_input() :: %{}

  """
  @type deregister_admin_input() :: %{}

  @typedoc """

  ## Example:

      get_space_input() :: %{}

  """
  @type get_space_input() :: %{}

  @typedoc """

  ## Example:

      get_space_output() :: %{
        "arn" => String.t(),
        "clientId" => String.t(),
        "configurationStatus" => list(any()),
        "contentSize" => float(),
        "createDateTime" => [non_neg_integer()],
        "customerRoleArn" => String.t(),
        "deleteDateTime" => [non_neg_integer()],
        "description" => String.t(),
        "groupAdmins" => list(String.t()()),
        "name" => String.t(),
        "randomDomain" => String.t(),
        "spaceId" => String.t(),
        "status" => String.t(),
        "storageLimit" => float(),
        "tier" => list(any()),
        "userAdmins" => list(String.t()()),
        "userCount" => integer(),
        "userKMSKey" => String.t(),
        "vanityDomain" => String.t(),
        "vanityDomainStatus" => list(any())
      }

  """
  @type get_space_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_spaces_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()]
      }

  """
  @type list_spaces_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_spaces_output() :: %{
        "nextToken" => [String.t()],
        "spaces" => list(space_data()())
      }

  """
  @type list_spaces_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_admin_input() :: %{}

  """
  @type register_admin_input() :: %{}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_invites_input() :: %{
        required("accessorIds") => list(String.t()()),
        required("body") => String.t(),
        required("title") => String.t()
      }

  """
  @type send_invites_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()],
        "serviceCode" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      space_data() :: %{
        "arn" => String.t(),
        "configurationStatus" => list(any()),
        "contentSize" => float(),
        "createDateTime" => [non_neg_integer()],
        "deleteDateTime" => [non_neg_integer()],
        "description" => String.t(),
        "name" => String.t(),
        "randomDomain" => String.t(),
        "spaceId" => String.t(),
        "status" => String.t(),
        "storageLimit" => float(),
        "tier" => list(any()),
        "userCount" => integer(),
        "userKMSKey" => String.t(),
        "vanityDomain" => String.t(),
        "vanityDomainStatus" => list(any())
      }

  """
  @type space_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_space_input() :: %{
        optional("description") => String.t(),
        optional("roleArn") => String.t(),
        optional("tier") => list(any())
      }

  """
  @type update_space_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => [String.t()],
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @type create_space_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_space_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type deregister_admin_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_space_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_spaces_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type register_admin_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type send_invites_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type update_space_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2022-05-13",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "repostspace",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "repostspace",
      signature_version: "v4",
      signing_name: "repostspace",
      target_prefix: nil
    }
  end

  @doc """
  Creates an AWS re:Post Private private re:Post.
  """
  @spec create_space(map(), create_space_input(), list()) ::
          {:ok, create_space_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_space_errors()}
  def create_space(%Client{} = client, input, options \\ []) do
    url_path = "/spaces"
    headers = []
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

  @doc """
  Deletes an AWS re:Post Private private re:Post.
  """
  @spec delete_space(map(), String.t(), delete_space_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_space_errors()}
  def delete_space(%Client{} = client, space_id, input, options \\ []) do
    url_path = "/spaces/#{AWS.Util.encode_uri(space_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes the user or group from the list of administrators of the private
  re:Post.
  """
  @spec deregister_admin(map(), String.t(), String.t(), deregister_admin_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_admin_errors()}
  def deregister_admin(%Client{} = client, admin_id, space_id, input, options \\ []) do
    url_path = "/spaces/#{AWS.Util.encode_uri(space_id)}/admins/#{AWS.Util.encode_uri(admin_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Displays information about the AWS re:Post Private private re:Post.
  """
  @spec get_space(map(), String.t(), list()) ::
          {:ok, get_space_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_space_errors()}
  def get_space(%Client{} = client, space_id, options \\ []) do
    url_path = "/spaces/#{AWS.Util.encode_uri(space_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of AWS re:Post Private private re:Posts in the account with some
  information about each private re:Post.
  """
  @spec list_spaces(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_spaces_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_spaces_errors()}
  def list_spaces(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/spaces"
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
  Returns the tags that are associated with the AWS re:Post Private resource
  specified by the resourceArn.

  The only resource that can be tagged is a private re:Post.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds a user or group to the list of administrators of the private re:Post.
  """
  @spec register_admin(map(), String.t(), String.t(), register_admin_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_admin_errors()}
  def register_admin(%Client{} = client, admin_id, space_id, input, options \\ []) do
    url_path = "/spaces/#{AWS.Util.encode_uri(space_id)}/admins/#{AWS.Util.encode_uri(admin_id)}"
    headers = []
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

  @doc """
  Sends an invitation email to selected users and groups.
  """
  @spec send_invites(map(), String.t(), send_invites_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_invites_errors()}
  def send_invites(%Client{} = client, space_id, input, options \\ []) do
    url_path = "/spaces/#{AWS.Util.encode_uri(space_id)}/invite"
    headers = []
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

  @doc """
  Associates tags with an AWS re:Post Private resource.

  Currently, the only resource that can be tagged is the private re:Post. If you
  specify a new tag key for the resource, the tag is appended to the list of tags
  that are associated with the resource. If you specify a tag key that’s already
  associated with the resource, the new tag value that you specify replaces the
  previous value for that tag.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
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

  @doc """
  Removes the association of the tag with the AWS re:Post Private resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Modifies an existing AWS re:Post Private private re:Post.
  """
  @spec update_space(map(), String.t(), update_space_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_space_errors()}
  def update_space(%Client{} = client, space_id, input, options \\ []) do
    url_path = "/spaces/#{AWS.Util.encode_uri(space_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
