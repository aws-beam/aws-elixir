# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AccountAccess do
  @moduledoc """
  Account access manager enables you to manage applications and entitlements that
  grant IAM Identity Center principals access to IAM roles across accounts.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      already_created_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type already_created_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      application_summary() :: %{
        "applicationArn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "tenantId" => [String.t() | atom()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type application_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("tags") => map(),
        required("identitySource") => list()
      }

  """
  @type create_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_response() :: %{
        "applicationArn" => String.t() | atom()
      }

  """
  @type create_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_entitlement_request() :: %{
        required("applicationArn") => String.t() | atom(),
        required("entitlement") => list()
      }

  """
  @type create_entitlement_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_entitlement_response() :: %{
        "entitlementId" => [String.t() | atom()]
      }

  """
  @type create_entitlement_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_application_request() :: %{}

  """
  @type delete_application_request() :: %{}

  @typedoc """

  ## Example:

      delete_application_response() :: %{}

  """
  @type delete_application_response() :: %{}

  @typedoc """

  ## Example:

      delete_entitlement_request() :: %{
        required("applicationArn") => String.t() | atom()
      }

  """
  @type delete_entitlement_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_entitlement_response() :: %{}

  """
  @type delete_entitlement_response() :: %{}

  @typedoc """

  ## Example:

      entitlement_filter() :: %{
        "principalRole" => principal_role_entitlement_filter()
      }

  """
  @type entitlement_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      entitlements_list_member() :: %{
        "createdAt" => non_neg_integer(),
        "entitlement" => list(),
        "entitlementId" => [String.t() | atom()]
      }

  """
  @type entitlements_list_member() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      error_details() :: %{
        "code" => list(any()),
        "message" => [String.t() | atom()]
      }

  """
  @type error_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_request() :: %{}

  """
  @type get_application_request() :: %{}

  @typedoc """

  ## Example:

      get_application_response() :: %{
        "createdAt" => non_neg_integer(),
        "error" => error_details(),
        "identitySource" => list(),
        "status" => list(any()),
        "tags" => map(),
        "tenantId" => [String.t() | atom()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_entitlement_request() :: %{
        required("applicationArn") => String.t() | atom()
      }

  """
  @type get_entitlement_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_entitlement_response() :: %{
        "applicationArn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "entitlement" => list(),
        "entitlementId" => [String.t() | atom()]
      }

  """
  @type get_entitlement_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      identity_center() :: %{
        "instanceArn" => String.t() | atom()
      }

  """
  @type identity_center() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      identity_center_details() :: %{
        "applicationArn" => String.t() | atom(),
        "instanceArn" => String.t() | atom()
      }

  """
  @type identity_center_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_applications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_response() :: %{
        "applications" => list(application_summary()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_applications_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_entitlements_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        required("applicationArn") => String.t() | atom(),
        required("filter") => entitlement_filter()
      }

  """
  @type list_entitlements_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_entitlements_response() :: %{
        "entitlements" => list(entitlements_list_member()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_entitlements_response() :: %{(String.t() | atom()) => any()}

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
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      principal_role_entitlement() :: %{
        "principal" => list(),
        "roleArn" => String.t() | atom()
      }

  """
  @type principal_role_entitlement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      principal_role_entitlement_details() :: %{
        "account" => String.t() | atom(),
        "accountName" => [String.t() | atom()],
        "principal" => list(),
        "roleArn" => String.t() | atom()
      }

  """
  @type principal_role_entitlement_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      principal_role_entitlement_filter() :: %{
        "account" => String.t() | atom(),
        "principal" => list(),
        "roleArn" => String.t() | atom()
      }

  """
  @type principal_role_entitlement_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      principal_role_entitlement_summary() :: %{
        "account" => String.t() | atom(),
        "accountName" => [String.t() | atom()],
        "principal" => list(),
        "roleArn" => String.t() | atom()
      }

  """
  @type principal_role_entitlement_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list([String.t() | atom()]())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type create_application_errors() ::
          validation_exception()
          | internal_server_exception()
          | conflict_exception()
          | already_created_exception()
          | access_denied_exception()

  @type create_entitlement_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_application_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_entitlement_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_application_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_entitlement_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_applications_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_entitlements_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "account-access",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Account Access",
      signature_version: "v4",
      signing_name: "account-access",
      target_prefix: nil
    }
  end

  @doc """
  Creates an account access manager instance and its Amazon Web Services account
  access application in the associated IAM Identity Center instance.

  This operation is idempotent; calling it multiple times with the same parameters
  returns the existing application.
  """
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
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
  Creates an entitlement (assignment) in account access manager.

  An entitlement (assignment) grants a principal (IAM Identity Center user or
  group) permission to assume a specified IAM role in an Amazon Web Services
  account. This operation is idempotent.
  """
  @spec create_entitlement(map(), create_entitlement_request(), list()) ::
          {:ok, create_entitlement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_entitlement_errors()}
  def create_entitlement(%Client{} = client, input, options \\ []) do
    url_path = "/entitlements"
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
  Deletes an account access manager application.

  This operation is idempotent; deleting an application that has already been
  deleted does not return an error.
  """
  @spec delete_application(map(), String.t() | atom(), delete_application_request(), list()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, application_arn, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_arn)}"
    headers = []
    custom_headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Deletes an entitlement from an account access manager application.

  This operation is idempotent; deleting an entitlement that has already been
  deleted does not return an error.
  """
  @spec delete_entitlement(map(), String.t() | atom(), delete_entitlement_request(), list()) ::
          {:ok, delete_entitlement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_entitlement_errors()}
  def delete_entitlement(%Client{} = client, entitlement_id, input, options \\ []) do
    url_path = "/entitlements/#{AWS.Util.encode_uri(entitlement_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"applicationArn", "applicationArn"}
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
      204
    )
  end

  @doc """
  Retrieves details about an account access manager application, including its
  status, identity source, and tags.
  """
  @spec get_application(map(), String.t() | atom(), list()) ::
          {:ok, get_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_application_errors()}
  def get_application(%Client{} = client, application_arn, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details about a specific entitlement for an account access manager
  application, including the principal, IAM role, and target account.
  """
  @spec get_entitlement(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_entitlement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_entitlement_errors()}
  def get_entitlement(%Client{} = client, entitlement_id, application_arn, options \\ []) do
    url_path = "/entitlements/#{AWS.Util.encode_uri(entitlement_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(application_arn) do
        [{"applicationArn", application_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the account access manager applications in your account.

  Use pagination to ensure that the operation returns quickly and successfully.
  """
  @spec list_applications(map(), list_applications_request(), list()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_applications_errors()}
  def list_applications(%Client{} = client, input, options \\ []) do
    url_path = "/applications-list"
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
  Lists the entitlements for a specified account access manager application.

  You can filter results by principal, IAM role, or account. Use pagination to
  ensure that the operation returns quickly and successfully.
  """
  @spec list_entitlements(map(), list_entitlements_request(), list()) ::
          {:ok, list_entitlements_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_entitlements_errors()}
  def list_entitlements(%Client{} = client, input, options \\ []) do
    url_path = "/entitlements-list"
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
  Lists the tags associated with an account access manager resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds tags to an account access manager resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes tags from an account access manager resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
