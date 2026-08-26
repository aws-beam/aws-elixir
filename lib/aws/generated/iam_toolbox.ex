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

      evaluation() :: %{
        "action" => [String.t() | atom()],
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
end
