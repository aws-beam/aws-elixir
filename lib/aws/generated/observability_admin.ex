# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ObservabilityAdmin do
  @moduledoc """

  Amazon CloudWatch Obsersavability Admin to control temletry config for your AWS
  Organization or account.

  Telemetry config conﬁg to discover and understand the state of telemetry
  conﬁguration for your AWS resources from a central view in the CloudWatch
  console. Telemetry conﬁg simpliﬁes the process of auditing your telemetry
  collection conﬁgurations across multiple resource types across your AWS
  Organization or account.
  For more information, see [Auditing CloudWatch telemetry conﬁgurations](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/telemetry-config-cloudwatch.html)
  in the CloudWatch User Guide.

  For information on the permissions you need to use this API, see [Identity and access management for Amazon
  CloudWatch](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/auth-and-access-control-cw.html)
  in the CloudWatch User Guide.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t() | Atom.t()],
        "amznErrorType" => [String.t() | Atom.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_telemetry_evaluation_status_for_organization_output() :: %{
        "FailureReason" => String.t() | Atom.t(),
        "Status" => list(any())
      }

  """
  @type get_telemetry_evaluation_status_for_organization_output() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      get_telemetry_evaluation_status_output() :: %{
        "FailureReason" => String.t() | Atom.t(),
        "Status" => list(any())
      }

  """
  @type get_telemetry_evaluation_status_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t() | Atom.t()],
        "amznErrorType" => [String.t() | Atom.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_resource_telemetry_for_organization_input() :: %{
        optional("AccountIdentifiers") => list(String.t() | Atom.t()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("ResourceIdentifierPrefix") => String.t() | Atom.t(),
        optional("ResourceTags") => map(),
        optional("ResourceTypes") => list(list(any())()),
        optional("TelemetryConfigurationState") => map()
      }

  """
  @type list_resource_telemetry_for_organization_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_resource_telemetry_for_organization_output() :: %{
        "NextToken" => String.t() | Atom.t(),
        "TelemetryConfigurations" => list(telemetry_configuration())
      }

  """
  @type list_resource_telemetry_for_organization_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_resource_telemetry_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("ResourceIdentifierPrefix") => String.t() | Atom.t(),
        optional("ResourceTags") => map(),
        optional("ResourceTypes") => list(list(any())()),
        optional("TelemetryConfigurationState") => map()
      }

  """
  @type list_resource_telemetry_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_resource_telemetry_output() :: %{
        "NextToken" => String.t() | Atom.t(),
        "TelemetryConfigurations" => list(telemetry_configuration())
      }

  """
  @type list_resource_telemetry_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      telemetry_configuration() :: %{
        "AccountIdentifier" => String.t() | Atom.t(),
        "LastUpdateTimeStamp" => [float()],
        "ResourceIdentifier" => String.t() | Atom.t(),
        "ResourceTags" => map(),
        "ResourceType" => list(any()),
        "TelemetryConfigurationState" => map()
      }

  """
  @type telemetry_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @type get_telemetry_evaluation_status_errors() ::
          internal_server_exception() | access_denied_exception()

  @type get_telemetry_evaluation_status_for_organization_errors() ::
          validation_exception() | internal_server_exception() | access_denied_exception()

  @type list_resource_telemetry_errors() ::
          validation_exception() | internal_server_exception() | access_denied_exception()

  @type list_resource_telemetry_for_organization_errors() ::
          validation_exception() | internal_server_exception() | access_denied_exception()

  @type start_telemetry_evaluation_errors() ::
          validation_exception() | internal_server_exception() | access_denied_exception()

  @type start_telemetry_evaluation_for_organization_errors() ::
          validation_exception() | internal_server_exception() | access_denied_exception()

  @type stop_telemetry_evaluation_errors() ::
          validation_exception() | internal_server_exception() | access_denied_exception()

  @type stop_telemetry_evaluation_for_organization_errors() ::
          validation_exception() | internal_server_exception() | access_denied_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "observabilityadmin",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ObservabilityAdmin",
      signature_version: "v4",
      signing_name: "observabilityadmin",
      target_prefix: nil
    }
  end

  @doc """

  Returns the current onboarding status of the telemetry config feature, including
  the status of the feature and reason the feature failed to start or stop.
  """
  @spec get_telemetry_evaluation_status(map(), %{}, list()) ::
          {:ok, get_telemetry_evaluation_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_telemetry_evaluation_status_errors()}
  def get_telemetry_evaluation_status(%Client{} = client, input, options \\ []) do
    url_path = "/GetTelemetryEvaluationStatus"
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

  This returns the onboarding status of the telemetry configuration feature for
  the organization.

  It can only be called by a Management Account of an AWS Organization or an
  assigned Delegated Admin Account of AWS CloudWatch telemetry config.
  """
  @spec get_telemetry_evaluation_status_for_organization(map(), %{}, list()) ::
          {:ok, get_telemetry_evaluation_status_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_telemetry_evaluation_status_for_organization_errors()}
  def get_telemetry_evaluation_status_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/GetTelemetryEvaluationStatusForOrganization"
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

  Returns a list of telemetry configurations for AWS resources supported by
  telemetry config.

  For more information, see [Auditing CloudWatch telemetry configurations](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/telemetry-config-cloudwatch.html).
  """
  @spec list_resource_telemetry(map(), list_resource_telemetry_input(), list()) ::
          {:ok, list_resource_telemetry_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_telemetry_errors()}
  def list_resource_telemetry(%Client{} = client, input, options \\ []) do
    url_path = "/ListResourceTelemetry"
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

  Returns a list of telemetry configurations for AWS resources supported by
  telemetry config in the organization.
  """
  @spec list_resource_telemetry_for_organization(
          map(),
          list_resource_telemetry_for_organization_input(),
          list()
        ) ::
          {:ok, list_resource_telemetry_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_telemetry_for_organization_errors()}
  def list_resource_telemetry_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/ListResourceTelemetryForOrganization"
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

  This action begins onboarding onboarding the caller AWS account to the telemetry
  config feature.
  """
  @spec start_telemetry_evaluation(map(), %{}, list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_telemetry_evaluation_errors()}
  def start_telemetry_evaluation(%Client{} = client, input, options \\ []) do
    url_path = "/StartTelemetryEvaluation"
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

  This actions begins onboarding the organization and all member accounts to the
  telemetry config feature.
  """
  @spec start_telemetry_evaluation_for_organization(map(), %{}, list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_telemetry_evaluation_for_organization_errors()}
  def start_telemetry_evaluation_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/StartTelemetryEvaluationForOrganization"
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

  This action begins offboarding the caller AWS account from the telemetry config
  feature.
  """
  @spec stop_telemetry_evaluation(map(), %{}, list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_telemetry_evaluation_errors()}
  def stop_telemetry_evaluation(%Client{} = client, input, options \\ []) do
    url_path = "/StopTelemetryEvaluation"
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

  This action offboards the Organization of the caller AWS account from thef
  telemetry config feature.
  """
  @spec stop_telemetry_evaluation_for_organization(map(), %{}, list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_telemetry_evaluation_for_organization_errors()}
  def stop_telemetry_evaluation_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/StopTelemetryEvaluationForOrganization"
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
end
