# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LambdaWeb do
  @moduledoc """
  The AWS Lambda Web Functions APIs (`LambdaWeb` namespace) are experimental and
  for internal AWS use only.

  They are not yet available to external customers.
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

      account_quotas() :: %{
        "maxEndpointsPerFunction" => [integer()],
        "maxRevisionsPerFunction" => [integer()],
        "maxTotalArmVCpus" => [integer()],
        "maxTotalRateLimit" => [integer()]
      }

  """
  @type account_quotas() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_usage() :: %{
        "functionCount" => [integer()]
      }

  """
  @type account_usage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_web_account_settings_request() :: %{}

  """
  @type get_web_account_settings_request() :: %{}

  @typedoc """

  ## Example:

      get_web_account_settings_response() :: %{
        "accountQuotas" => account_quotas(),
        "accountUsage" => account_usage()
      }

  """
  @type get_web_account_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @type get_web_account_settings_errors() ::
          throttling_exception() | internal_server_exception() | access_denied_exception()

  def metadata do
    %{
      api_version: "2025-03-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "lambda",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Lambda Web",
      signature_version: "v4",
      signing_name: "lambda",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves details about your AWS Lambda Web Functions account settings for the
  current AWS Region, including the quotas that apply to web functions and your
  current usage.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec get_web_account_settings(map(), list()) ::
          {:ok, get_web_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_web_account_settings_errors()}
  def get_web_account_settings(%Client{} = client, options \\ []) do
    url_path = "/2025-03-07/web-account-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end
end
