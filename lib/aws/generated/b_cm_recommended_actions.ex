# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BCMRecommendedActions do
  @moduledoc """
  You can use the Billing and Cost Management Recommended Actions API to
  programmatically query your best practices and recommendations to optimize your
  costs.

  The Billing and Cost Management Recommended Actions API provides the following
  endpoint:

    * https://bcm-recommended-actions.us-east-1.api.aws
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
      
      action_filter() :: %{
        "key" => list(any()),
        "matchOption" => list(any()),
        "values" => list(String.t() | atom())
      }
      
  """
  @type action_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_recommended_actions_request() :: %{
        optional("filter") => request_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_recommended_actions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_recommended_actions_response() :: %{
        "nextToken" => String.t() | atom(),
        "recommendedActions" => list(recommended_action())
      }
      
  """
  @type list_recommended_actions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      recommended_action() :: %{
        "accountId" => String.t() | atom(),
        "context" => map(),
        "feature" => list(any()),
        "id" => [String.t() | atom()],
        "lastUpdatedTimeStamp" => [String.t() | atom()],
        "nextSteps" => list(String.t() | atom()),
        "severity" => list(any()),
        "type" => list(any())
      }
      
  """
  @type recommended_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      request_filter() :: %{
        "actions" => list(action_filter())
      }
      
  """
  @type request_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }
      
  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @type list_recommended_actions_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2024-11-14",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "bcm-recommended-actions",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "BCM Recommended Actions",
      signature_version: "v4",
      signing_name: "bcm-recommended-actions",
      target_prefix: "AWSBillingAndCostManagementRecommendedActions"
    }
  end

  @doc """
  Returns a list of recommended actions that match the filter criteria.
  """
  @spec list_recommended_actions(map(), list_recommended_actions_request(), list()) ::
          {:ok, list_recommended_actions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recommended_actions_errors()}
  def list_recommended_actions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRecommendedActions", input, options)
  end
end
