# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppConfigData do
  @moduledoc """
  AppConfig Data provides the data plane APIs your application uses to retrieve
  configuration data.

  Here's how it works:

  Your application retrieves configuration data by first establishing a
  configuration
  session using the AppConfig Data `StartConfigurationSession` API action.
  Your session's client then makes periodic calls to `GetLatestConfiguration`
  to check for and retrieve the latest data available.

  When calling `StartConfigurationSession`, your code sends the following
  information:

    *
  Identifiers (ID or name) of an AppConfig application, environment, and
  configuration profile that the session tracks.

    *
  (Optional) The minimum amount of time the session's client must wait between
  calls
  to `GetLatestConfiguration`.

  In response, AppConfig provides an `InitialConfigurationToken` to be given to
  the session's client and used the first time it calls `GetLatestConfiguration`
  for that session.

  This token should only be used once in your first call to
  `GetLatestConfiguration`. You *must* use the new token
  in the `GetLatestConfiguration` response
  (`NextPollConfigurationToken`) in each subsequent call to
  `GetLatestConfiguration`.

  When calling `GetLatestConfiguration`, your client code sends the most recent
  `ConfigurationToken` value it has and receives in response:

    *

  `NextPollConfigurationToken`: the `ConfigurationToken` value
  to use on the next call to `GetLatestConfiguration`.

    *

  `NextPollIntervalInSeconds`: the duration the client should wait before
  making its next call to `GetLatestConfiguration`. This duration may vary
  over the course of the session, so it should be used instead of the value sent
  on the
  `StartConfigurationSession` call.

    *
  The configuration: the latest data intended for the session. This may be empty
  if
  the client already has the latest version of the configuration.

  The `InitialConfigurationToken` and
  `NextPollConfigurationToken` should only be used once. To support long poll
  use cases, the tokens are valid for up to 24 hours. If a
  `GetLatestConfiguration` call uses an expired token, the system returns
  `BadRequestException`.

  For more information and to view example CLI commands that show how to retrieve
  a
  configuration using the AppConfig Data `StartConfigurationSession` and
  `GetLatestConfiguration` API actions, see [Retrieving the configuration](http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-the-configuration)
  in the *AppConfig User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Details" => list(),
        "Message" => String.t(),
        "Reason" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_latest_configuration_request() :: %{
        required("ConfigurationToken") => String.t()
      }

  """
  @type get_latest_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_latest_configuration_response() :: %{
        optional("Configuration") => binary(),
        optional("ContentType") => String.t(),
        optional("NextPollConfigurationToken") => String.t(),
        optional("NextPollIntervalInSeconds") => integer(),
        optional("VersionLabel") => String.t()
      }

  """
  @type get_latest_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameter_detail() :: %{
        "Problem" => String.t()
      }

  """
  @type invalid_parameter_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ReferencedBy" => map(),
        "ResourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_configuration_session_request() :: %{
        optional("RequiredMinimumPollIntervalInSeconds") => integer(),
        required("ApplicationIdentifier") => String.t(),
        required("ConfigurationProfileIdentifier") => String.t(),
        required("EnvironmentIdentifier") => String.t()
      }

  """
  @type start_configuration_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_configuration_session_response() :: %{
        optional("InitialConfigurationToken") => String.t()
      }

  """
  @type start_configuration_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @type get_latest_configuration_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | bad_request_exception()

  @type start_configuration_session_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | bad_request_exception()

  def metadata do
    %{
      api_version: "2021-11-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "appconfigdata",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "AppConfigData",
      signature_version: "v4",
      signing_name: "appconfig",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves the latest deployed configuration.

  This API may return empty configuration
  data if the client already has the latest version. For more information about
  this API
  action and to view example CLI commands that show how to use it with the
  `StartConfigurationSession` API action, see [Retrieving the configuration](http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-the-configuration)
  in the *AppConfig User Guide*.

  Note the following important information.

    
  Each configuration token is only valid for one call to
  `GetLatestConfiguration`. The `GetLatestConfiguration`
  response includes a `NextPollConfigurationToken` that should always
  replace the token used for the just-completed call in preparation for the next
  one.

    

  `GetLatestConfiguration` is a priced call. For more information, see
  [Pricing](https://aws.amazon.com/systems-manager/pricing/).
  """
  @spec get_latest_configuration(map(), String.t(), list()) ::
          {:ok, get_latest_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_latest_configuration_errors()}
  def get_latest_configuration(%Client{} = client, configuration_token, options \\ []) do
    url_path = "/configuration"
    headers = []
    query_params = []

    query_params =
      if !is_nil(configuration_token) do
        [{"configuration_token", configuration_token} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Content-Type", "ContentType"},
          {"Next-Poll-Configuration-Token", "NextPollConfigurationToken"},
          {"Next-Poll-Interval-In-Seconds", "NextPollIntervalInSeconds"},
          {"Version-Label", "VersionLabel"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts a configuration session used to retrieve a deployed configuration.

  For more
  information about this API action and to view example CLI commands that show how
  to use
  it with the `GetLatestConfiguration` API action, see [Retrieving the configuration](http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-the-configuration)
  in the *AppConfig User Guide*.
  """
  @spec start_configuration_session(map(), start_configuration_session_request(), list()) ::
          {:ok, start_configuration_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_configuration_session_errors()}
  def start_configuration_session(%Client{} = client, input, options \\ []) do
    url_path = "/configurationsessions"
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
      201
    )
  end
end
