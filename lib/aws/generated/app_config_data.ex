# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppConfigData do
  @moduledoc """
  Use the AppConfigData API, a capability of AWS AppConfig, to retrieve deployed
  configuration.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2021-11-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "appconfigdata",
      global?: false,
      protocol: "rest-json",
      service_id: "AppConfigData",
      signature_version: "v4",
      signing_name: "appconfig",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves the latest deployed configuration.

  This API may return empty Configuration data if the client already has the
  latest version. See StartConfigurationSession to obtain an
  InitialConfigurationToken to call this API.

  Each call to GetLatestConfiguration returns a new ConfigurationToken
  (NextPollConfigurationToken in the response). This new token MUST be provided to
  the next call to GetLatestConfiguration when polling for configuration updates.

  To avoid excess charges, we recommend that you include the
  `ClientConfigurationVersion` value with every call to `GetConfiguration`. This
  value must be saved on your client. Subsequent calls to `GetConfiguration` must
  pass this value by using the `ClientConfigurationVersion` parameter.
  """
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
          {"Next-Poll-Interval-In-Seconds", "NextPollIntervalInSeconds"}
        ]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Starts a configuration session used to retrieve a deployed configuration.

  See the GetLatestConfiguration API for more details.
  """
  def start_configuration_session(%Client{} = client, input, options \\ []) do
    url_path = "/configurationsessions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end
end
