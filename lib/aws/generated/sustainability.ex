# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Sustainability do
  @moduledoc """
  The AWS Sustainability service provides programmatic access to estimated carbon
  emissions data for your Amazon Web Services usage.

  Use the AWS Sustainability service to retrieve, analyze, and track the carbon
  footprint of your cloud infrastructure over time.

  With the AWS Sustainability service, you can:

    * Retrieve estimated carbon emissions for your Amazon Web Services
  usage across different time periods

    * Group emissions data by dimensions such as account, region, and
  service

    * Filter emissions data to focus on specific accounts, regions, or
  services

    * Access multiple emissions calculation methodologies including
  Location-based Method (LBM) and Market-based Method (MBM)

    * Aggregate emissions data at various time granularities including
  monthly, quarterly, and yearly periods

  The API supports pagination for efficient data retrieval and provides dimension
  values to help you understand the available grouping and filtering options for
  your account.

  All emissions values are calculated using methodologies aligned with the
  Greenhouse Gas (GHG) Protocol and are provided in metric tons of carbon
  dioxide-equivalent (MTCO2e).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dimension_entry() :: %{
        "Dimension" => list(any()),
        "Value" => [String.t() | atom()]
      }

  """
  @type dimension_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      emissions() :: %{
        "Unit" => list(any()),
        "Value" => [float()]
      }

  """
  @type emissions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      estimated_carbon_emissions() :: %{
        "DimensionsValues" => map(),
        "EmissionsValues" => map(),
        "ModelVersion" => String.t() | atom(),
        "TimePeriod" => time_period()
      }

  """
  @type estimated_carbon_emissions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_expression() :: %{
        "Dimensions" => map()
      }

  """
  @type filter_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_estimated_carbon_emissions_dimension_values_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("Dimensions") => list(list(any())()),
        required("TimePeriod") => time_period()
      }

  """
  @type get_estimated_carbon_emissions_dimension_values_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_estimated_carbon_emissions_dimension_values_response() :: %{
        "NextToken" => String.t() | atom(),
        "Results" => list(dimension_entry())
      }

  """
  @type get_estimated_carbon_emissions_dimension_values_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_estimated_carbon_emissions_request() :: %{
        optional("EmissionsTypes") => list(list(any())()),
        optional("FilterBy") => filter_expression(),
        optional("Granularity") => list(any()),
        optional("GranularityConfiguration") => granularity_configuration(),
        optional("GroupBy") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("TimePeriod") => time_period()
      }

  """
  @type get_estimated_carbon_emissions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_estimated_carbon_emissions_response() :: %{
        "NextToken" => String.t() | atom(),
        "Results" => list(estimated_carbon_emissions())
      }

  """
  @type get_estimated_carbon_emissions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      granularity_configuration() :: %{
        "FiscalYearStartMonth" => integer()
      }

  """
  @type granularity_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      time_period() :: %{
        "End" => non_neg_integer(),
        "Start" => non_neg_integer()
      }

  """
  @type time_period() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type get_estimated_carbon_emissions_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_estimated_carbon_emissions_dimension_values_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "sustainability",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Sustainability",
      signature_version: "aws.auth#sigv4",
      signing_name: "sustainability",
      target_prefix: nil
    }
  end

  @doc """
  Returns estimated carbon emission values based on customer grouping and
  filtering parameters.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.
  """
  @spec get_estimated_carbon_emissions(map(), get_estimated_carbon_emissions_request(), list()) ::
          {:ok, get_estimated_carbon_emissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_estimated_carbon_emissions_errors()}
  def get_estimated_carbon_emissions(%Client{} = client, input, options \\ []) do
    url_path = "/v1/estimated-carbon-emissions"
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
  Returns the possible dimension values available for a customer's account.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.
  """
  @spec get_estimated_carbon_emissions_dimension_values(
          map(),
          get_estimated_carbon_emissions_dimension_values_request(),
          list()
        ) ::
          {:ok, get_estimated_carbon_emissions_dimension_values_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_estimated_carbon_emissions_dimension_values_errors()}
  def get_estimated_carbon_emissions_dimension_values(%Client{} = client, input, options \\ []) do
    url_path = "/v1/estimated-carbon-emissions-dimension-values"
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
