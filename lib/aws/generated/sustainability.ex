# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Sustainability do
  @moduledoc """
  The AWS Sustainability service provides programmatic access to estimated
  environmental impact data for your Amazon Web Services usage.

  Use the AWS Sustainability service to retrieve, analyze, and track the
  environmental impact of your cloud infrastructure over time.

  With the AWS Sustainability service, you can:

    * Retrieve estimated carbon emissions and water allocation for your
  Amazon Web Services usage across different time periods

    * Group environmental impact data by dimensions such as account,
  region, and service

    * Filter environmental impact data to focus on specific accounts,
  regions, or services

    * Access multiple carbon emissions calculation methodologies
  including Location-based Method (LBM) and Market-based Method (MBM)

    * Aggregate environmental impact data at various time granularities
  including monthly, quarterly, and yearly periods

  The API supports pagination for efficient data retrieval and provides dimension
  values to help you understand the available grouping and filtering options for
  your account.
  """

  alias AWS.Client
  alias AWS.Request

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

      water_allocation() :: %{
        "Unit" => list(any()),
        "Value" => [float()]
      }

  """
  @type water_allocation() :: %{(String.t() | atom()) => any()}

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

      dimension_entry() :: %{
        "Dimension" => list(any()),
        "Value" => String.t() | atom()
      }

  """
  @type dimension_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_expression() :: %{
        "Dimensions" => map()
      }

  """
  @type filter_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

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

      estimated_water_allocation() :: %{
        "AllocationValues" => map(),
        "DimensionsValues" => map(),
        "ModelVersion" => String.t() | atom(),
        "TimePeriod" => time_period()
      }

  """
  @type estimated_water_allocation() :: %{(String.t() | atom()) => any()}

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

      access_denied_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_estimated_carbon_emissions_dimension_values_request() :: %{
        required("Dimensions") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("TimePeriod") => time_period()
      }

  """
  @type get_estimated_carbon_emissions_dimension_values_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_estimated_water_allocation_request() :: %{
        optional("AllocationTypes") => list(list(any())()),
        optional("FilterBy") => filter_expression(),
        optional("Granularity") => list(any()),
        optional("GroupBy") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("TimePeriod") => time_period()
      }

  """
  @type get_estimated_water_allocation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_estimated_water_allocation_dimension_values_request() :: %{
        required("Dimensions") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("TimePeriod") => time_period()
      }

  """
  @type get_estimated_water_allocation_dimension_values_request() :: %{
          (String.t() | atom()) => any()
        }

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

      get_estimated_water_allocation_response() :: %{
        "NextToken" => String.t() | atom(),
        "Results" => list(estimated_water_allocation())
      }

  """
  @type get_estimated_water_allocation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      granularity_configuration() :: %{
        "FiscalYearStartMonth" => integer()
      }

  """
  @type granularity_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_estimated_water_allocation_dimension_values_response() :: %{
        "NextToken" => String.t() | atom(),
        "Results" => list(dimension_entry())
      }

  """
  @type get_estimated_water_allocation_dimension_values_response() :: %{
          (String.t() | atom()) => any()
        }

  @type get_estimated_carbon_emissions_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_estimated_carbon_emissions_dimension_values_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_estimated_water_allocation_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_estimated_water_allocation_dimension_values_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

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

  @doc """
  Returns estimated water allocation values based on customer grouping and
  filtering parameters.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.
  """
  @spec get_estimated_water_allocation(map(), get_estimated_water_allocation_request(), list()) ::
          {:ok, get_estimated_water_allocation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_estimated_water_allocation_errors()}
  def get_estimated_water_allocation(%Client{} = client, input, options \\ []) do
    url_path = "/v1/estimated-water-allocation"
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
  @spec get_estimated_water_allocation_dimension_values(
          map(),
          get_estimated_water_allocation_dimension_values_request(),
          list()
        ) ::
          {:ok, get_estimated_water_allocation_dimension_values_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_estimated_water_allocation_dimension_values_errors()}
  def get_estimated_water_allocation_dimension_values(%Client{} = client, input, options \\ []) do
    url_path = "/v1/estimated-water-allocation-dimension-values"
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
