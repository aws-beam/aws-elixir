# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Uxc do
  @moduledoc """
  This is the Amazon Web Services User Experience Customization (UXC) API
  Reference.

  Amazon Web Services User Experience Customization (UXC) is a utility that
  provides programmatic access to enable account administrators to customize the
  visual appearance of the Amazon Web Services Management Console and manage these
  settings at the account level.

  The `visibleServices` and `visibleRegions` settings control only the appearance
  of services and Regions in the Amazon Web Services Management Console. They do
  not restrict access through the CLI, SDKs, or other APIs.

  For more information about UXC features and console procedures, see [Getting started with Amazon Web Services User Experience
  Customization](https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/getting-started-uxc.html).
  For information about required permissions, see [Identity and access management for Amazon Web Services Management
  Console](https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/security_iam.html).
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

      get_account_customizations_input() :: %{}

  """
  @type get_account_customizations_input() :: %{}

  @typedoc """

  ## Example:

      get_account_customizations_output() :: %{
        "accountColor" => list(any()),
        "visibleRegions" => list(String.t() | atom()),
        "visibleServices" => list(String.t() | atom())
      }

  """
  @type get_account_customizations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_services_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_services_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_services_output() :: %{
        "nextToken" => String.t() | atom(),
        "services" => list(String.t() | atom())
      }

  """
  @type list_services_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_account_customizations_input() :: %{
        optional("accountColor") => list(any()),
        optional("visibleRegions") => list(String.t() | atom()),
        optional("visibleServices") => list(String.t() | atom())
      }

  """
  @type update_account_customizations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_account_customizations_output() :: %{
        "accountColor" => list(any()),
        "visibleRegions" => list(String.t() | atom()),
        "visibleServices" => list(String.t() | atom())
      }

  """
  @type update_account_customizations_output() :: %{(String.t() | atom()) => any()}

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

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "path" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @type get_account_customizations_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_services_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type update_account_customizations_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2024-07-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "uxc",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "uxc",
      signature_version: "v4",
      signing_name: "uxc",
      target_prefix: nil
    }
  end

  @doc """
  Returns the current account customization settings, including account color,
  visible services, and visible Regions.

  Settings that you have not configured return their default values: visible
  Regions and visible services return `null`, and account color returns `none`.

  The `visibleServices` and `visibleRegions` settings control only the appearance
  of services and Regions in the Amazon Web Services Management Console. They do
  not restrict access through the CLI, SDKs, or other APIs.
  """
  @spec get_account_customizations(map(), list()) ::
          {:ok, get_account_customizations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_customizations_errors()}
  def get_account_customizations(%Client{} = client, options \\ []) do
    url_path = "/v1/account-customizations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a paginated list of Amazon Web Services service identifiers that you can
  use as values for the `visibleServices` setting in
  [UpdateAccountCustomizations](https://docs.aws.amazon.com/awsconsolehelpdocs/latest/APIReference/API_UpdateAccountCustomizations.html).

  The available services vary by Amazon Web Services partition. Use pagination to
  retrieve all results.

  The `visibleServices` setting controls only the appearance of services in the
  Amazon Web Services Management Console. It does not restrict access through the
  CLI, SDKs, or other APIs.
  """
  @spec list_services(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_services_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_services_errors()}
  def list_services(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v1/services"
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
  Updates one or more account customization settings.

  You can update account color, visible services, and visible Regions in a single
  request. Only the settings that you include in the request body are modified.
  Omitted settings remain unchanged. To reset a setting to its default behavior,
  set the value to `null` for visible Regions and visible services, or `none` for
  account color. This operation is idempotent.

  The `visibleServices` and `visibleRegions` settings control only the appearance
  of services and Regions in the Amazon Web Services Management Console. They do
  not restrict access through the CLI, SDKs, or other APIs.
  """
  @spec update_account_customizations(map(), update_account_customizations_input(), list()) ::
          {:ok, update_account_customizations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_account_customizations_errors()}
  def update_account_customizations(%Client{} = client, input, options \\ []) do
    url_path = "/v1/account-customizations"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
