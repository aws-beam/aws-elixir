# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IAMToolbox do
  @moduledoc """
  Contains APIs to work with AWS Identity and Access Management (IAM).
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

      attached_to() :: %{
        "arn" => [String.t() | atom()]
      }

  """
  @type attached_to() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      check() :: %{
        "checkType" => list(any()),
        "evaluatedEffect" => list(any()),
        "matchedPolicies" => list(matched_policy()),
        "relevantPolicyTypes" => list(list(any())()),
        "targetArn" => [String.t() | atom()]
      }

  """
  @type check() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation() :: %{
        "action" => [String.t() | atom()],
        "checks" => list(check()),
        "context" => map(),
        "evaluatedEffect" => list(any()),
        "matchedPolicies" => list(matched_policy()),
        "resource" => [String.t() | atom()]
      }

  """
  @type evaluation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_request_authorization_details_input() :: %{
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type get_request_authorization_details_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_request_authorization_details_output() :: %{
        "evaluations" => list(evaluation()),
        "nextToken" => [String.t() | atom()],
        "policies" => list(policy_info()),
        "requestContext" => map()
      }

  """
  @type get_request_authorization_details_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_request_authorization_policy_input() :: %{
        required("policyUri") => String.t() | atom()
      }

  """
  @type get_request_authorization_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_request_authorization_policy_output() :: %{
        "policyDocument" => [any()]
      }

  """
  @type get_request_authorization_policy_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      matched_policy() :: %{
        "matchedStatements" => list(matched_statement()),
        "uri" => [String.t() | atom()]
      }

  """
  @type matched_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      matched_statement() :: %{
        "evaluatedEffect" => list(any()),
        "sid" => [String.t() | atom()]
      }

  """
  @type matched_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      policy_info() :: %{
        "attachedTo" => list(attached_to()),
        "inline" => [boolean()],
        "policySource" => map(),
        "type" => list(any()),
        "uri" => [String.t() | atom()]
      }

  """
  @type policy_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type get_request_authorization_details_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_request_authorization_policy_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "iam-toolbox",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "IAM Toolbox",
      signature_version: "v4",
      signing_name: "iam",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves the authorization details for a specific access denied request.

  The details include the request context, the evaluations performed, and the
  policies that were evaluated.

  Use this operation to understand why a request was denied. Supported services
  include an authorization ID in the access denied error message. Pass that ID to
  this operation to retrieve the details.

  To retrieve the content for a policy in the `policies` list, call
  `GetRequestAuthorizationPolicy`.

  Authorization details are available for at least 24 hours after the denial.

  To use this operation, you must have the `iam:GetRequestAuthorizationDetails`
  permission.
  """
  @spec get_request_authorization_details(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_request_authorization_details_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_request_authorization_details_errors()}
  def get_request_authorization_details(
        %Client{} = client,
        authorization_id,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/authorization-details/#{AWS.Util.encode_uri(authorization_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a policy that was evaluated for a specific access denied request.

  The operation returns the structured JSON document of the policy that was
  captured with the original authorization request. It doesn't retrieve the
  current version of the policy.

  For some AWS services and policy types, the returned policy document includes
  all actions relevant to the service that processed the denied request, but might
  omit actions for other services.

  Specify the authorization ID from the access denied error message and the policy
  URI returned by `GetRequestAuthorizationDetails` for the same authorization ID.

  Access depends on the account and organization recorded for the principal that
  made the denied request. If an organization was recorded, the calling principal
  must belong to that organization. Otherwise, the calling principal must belong
  to the recorded account.

  To use this operation, you must have the `iam:GetRequestAuthorizationPolicy`
  permission.
  """
  @spec get_request_authorization_policy(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_request_authorization_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_request_authorization_policy_errors()}
  def get_request_authorization_policy(
        %Client{} = client,
        authorization_id,
        policy_uri,
        options \\ []
      ) do
    url_path = "/authorization-details/#{AWS.Util.encode_uri(authorization_id)}/policy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(policy_uri) do
        [{"policyUri", policy_uri} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end
end
