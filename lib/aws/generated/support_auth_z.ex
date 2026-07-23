# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SupportAuthZ do
  @moduledoc """
  AWS Support Authorization

  AWS SupportAuthZ enables you to control and authorize the actions that AWS
  support operators can perform on your resources.

  You create cryptographically signed support permits specifying which actions
  operators can perform, on which resources, and under what time-window
  conditions. Permits are signed using a customer-managed AWS KMS key
  (ECC_NIST_P384, SIGN_VERIFY) to ensure non-repudiation.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()],
        "serviceCode" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_support_permit_input() :: %{}

  """
  @type delete_support_permit_input() :: %{}

  @typedoc """

  ## Example:

      support_permit_request() :: %{
        "createdAt" => [non_neg_integer()],
        "permit" => permit(),
        "requestArn" => String.t() | atom(),
        "status" => list(any()),
        "supportCaseDisplayId" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type support_permit_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "path" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_action_output() :: %{
        "action" => String.t() | atom(),
        "description" => String.t() | atom(),
        "service" => String.t() | atom()
      }

  """
  @type get_action_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      list_support_permits_output() :: %{
        "nextToken" => String.t() | atom(),
        "supportPermits" => list(support_permit_summary())
      }

  """
  @type list_support_permits_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reject_support_permit_request_input() :: %{}

  """
  @type reject_support_permit_request_input() :: %{}

  @typedoc """

  ## Example:

      permit() :: %{
        "actions" => list(),
        "conditions" => list(list()),
        "resources" => list()
      }

  """
  @type permit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_support_permit_requests_output() :: %{
        "nextToken" => String.t() | atom(),
        "supportPermitRequests" => list(support_permit_request())
      }

  """
  @type list_support_permit_requests_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      create_support_permit_output() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "permit" => permit(),
        "signingKeyInfo" => list(),
        "status" => list(any()),
        "supportCaseDisplayId" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type create_support_permit_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_support_permit_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("permit") => permit(),
        required("signingKeyInfo") => list(),
        optional("supportCaseDisplayId") => String.t() | atom(),
        optional("tags") => map()
      }

  """
  @type create_support_permit_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_actions_output() :: %{
        "actionSummaries" => list(action_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_actions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reject_support_permit_request_output() :: %{
        "requestArn" => String.t() | atom()
      }

  """
  @type reject_support_permit_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_support_permits_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("supportPermitStatuses") => list(list(any())())
      }

  """
  @type list_support_permits_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_support_permit_input() :: %{}

  """
  @type get_support_permit_input() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      action_summary() :: %{
        "action" => String.t() | atom(),
        "description" => String.t() | atom(),
        "service" => String.t() | atom()
      }

  """
  @type action_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_support_permit_output() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "permit" => permit(),
        "signingKeyInfo" => list(),
        "status" => list(any()),
        "supportCaseDisplayId" => String.t() | atom()
      }

  """
  @type delete_support_permit_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_support_permit_requests_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("supportCaseDisplayId") => String.t() | atom()
      }

  """
  @type list_support_permit_requests_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_actions_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("service") => String.t() | atom()
      }

  """
  @type list_actions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      get_support_permit_output() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "permit" => permit(),
        "signingKeyInfo" => list(),
        "status" => list(any()),
        "supportCaseDisplayId" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type get_support_permit_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      support_permit_summary() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "permit" => permit(),
        "signingKeyInfo" => list(),
        "status" => list(any()),
        "supportCaseDisplayId" => String.t() | atom()
      }

  """
  @type support_permit_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_action_input() :: %{}

  """
  @type get_action_input() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @type create_support_permit_errors() ::
          throttling_exception()
          | internal_server_exception()
          | conflict_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()

  @type delete_support_permit_errors() ::
          throttling_exception()
          | internal_server_exception()
          | validation_exception()
          | resource_not_found_exception()
          | access_denied_exception()

  @type get_action_errors() ::
          throttling_exception()
          | internal_server_exception()
          | validation_exception()
          | resource_not_found_exception()
          | access_denied_exception()

  @type get_support_permit_errors() ::
          throttling_exception()
          | internal_server_exception()
          | validation_exception()
          | resource_not_found_exception()
          | access_denied_exception()

  @type list_actions_errors() ::
          throttling_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_support_permit_requests_errors() ::
          throttling_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_support_permits_errors() ::
          throttling_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | internal_server_exception()
          | validation_exception()
          | resource_not_found_exception()
          | access_denied_exception()

  @type reject_support_permit_request_errors() ::
          throttling_exception()
          | internal_server_exception()
          | conflict_exception()
          | validation_exception()
          | resource_not_found_exception()
          | access_denied_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | internal_server_exception()
          | validation_exception()
          | resource_not_found_exception()
          | access_denied_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | internal_server_exception()
          | validation_exception()
          | resource_not_found_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2026-06-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "supportauthz",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SupportAuthZ",
      signature_version: "v4",
      signing_name: "supportauthz",
      target_prefix: nil
    }
  end

  @doc """
  Creates a support permit that authorizes an AWS support operator to perform
  specified actions on specified resources.

  The permit is cryptographically signed using a customer-managed AWS KMS key
  (ECC_NIST_P384, SIGN_VERIFY) to ensure non-repudiation.
  """
  @spec create_support_permit(map(), create_support_permit_input(), list()) ::
          {:ok, create_support_permit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_support_permit_errors()}
  def create_support_permit(%Client{} = client, input, options \\ []) do
    url_path = "/support-permits"
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
  Deletes a support permit, revoking the authorization previously granted to the
  AWS support operator.
  """
  @spec delete_support_permit(map(), String.t() | atom(), delete_support_permit_input(), list()) ::
          {:ok, delete_support_permit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_support_permit_errors()}
  def delete_support_permit(%Client{} = client, support_permit_identifier, input, options \\ []) do
    url_path = "/support-permits/#{AWS.Util.encode_uri(support_permit_identifier)}"
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
      200
    )
  end

  @doc """
  Retrieves the description of a specific support action.
  """
  @spec get_action(map(), String.t() | atom(), list()) ::
          {:ok, get_action_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_action_errors()}
  def get_action(%Client{} = client, action, options \\ []) do
    url_path = "/actions/#{AWS.Util.encode_uri(action)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of a support permit by its ARN or name.
  """
  @spec get_support_permit(map(), String.t() | atom(), list()) ::
          {:ok, get_support_permit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_support_permit_errors()}
  def get_support_permit(%Client{} = client, support_permit_identifier, options \\ []) do
    url_path = "/support-permits/#{AWS.Util.encode_uri(support_permit_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists available support actions for a specified AWS service.

  Use pagination to ensure that the operation returns quickly and successfully.
  """
  @spec list_actions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_actions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_actions_errors()}
  def list_actions(
        %Client{} = client,
        service,
        next_token \\ nil,
        max_results \\ nil,
        options \\ []
      ) do
    url_path = "/actions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      if !is_nil(service) do
        [{"service", service} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists permit requests from AWS support operators.

  Use pagination to ensure that the operation returns quickly and successfully.
  """
  @spec list_support_permit_requests(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_support_permit_requests_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_support_permit_requests_errors()}
  def list_support_permit_requests(
        %Client{} = client,
        support_case_display_id \\ nil,
        next_token \\ nil,
        max_results \\ nil,
        options \\ []
      ) do
    url_path = "/support-permit-requests"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      if !is_nil(support_case_display_id) do
        [{"supportCaseDisplayId", support_case_display_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all support permits in the caller's account.

  Use pagination to ensure that the operation returns quickly and successfully.
  """
  @spec list_support_permits(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_support_permits_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_support_permits_errors()}
  def list_support_permits(
        %Client{} = client,
        support_permit_statuses \\ nil,
        next_token \\ nil,
        max_results \\ nil,
        options \\ []
      ) do
    url_path = "/support-permits"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      if !is_nil(support_permit_statuses) do
        [{"supportPermitStatuses", support_permit_statuses} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags associated with a support permit resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
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
  Rejects a permit request from an AWS support operator.

  The operator cannot proceed with the requested action.
  """
  @spec reject_support_permit_request(
          map(),
          String.t() | atom(),
          reject_support_permit_request_input(),
          list()
        ) ::
          {:ok, reject_support_permit_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_support_permit_request_errors()}
  def reject_support_permit_request(%Client{} = client, request_arn, input, options \\ []) do
    url_path = "/support-permit-requests/#{AWS.Util.encode_uri(request_arn)}/reject"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds or overwrites one or more tags for a support permit resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
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
      204
    )
  end

  @doc """
  Removes one or more tags from a support permit resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
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
      204
    )
  end
end
