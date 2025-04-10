# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ControlCatalog do
  @moduledoc """
  Welcome to the Amazon Web Services Control Catalog API reference.

  This guide is for
  developers who need detailed information about how to programmatically identify
  and filter
  the common controls and related metadata that are available to Amazon Web
  Services customers. This API reference provides
  descriptions, syntax, and usage examples for each of the actions and data types
  that are
  supported by Amazon Web Services Control Catalog.

  Use the following links to get started with the Amazon Web Services Control
  Catalog API:

    *

  [Actions](https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_Operations.html): An
  alphabetical list of all Control Catalog API operations.

    *

  [Data
  types](https://docs.aws.amazon.com/controlcatalog/latest/APIReference/API_Types.html):
  An
  alphabetical list of all Control Catalog data types.

    *

  [Common parameters](https://docs.aws.amazon.com/controlcatalog/latest/APIReference/CommonParameters.html):
  Parameters that all operations can use.

    *

  [Common errors](https://docs.aws.amazon.com/controlcatalog/latest/APIReference/CommonErrors.html):
  Client and server errors that all operations can return.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associated_domain_summary() :: %{
        "Arn" => String.t(),
        "Name" => [String.t()]
      }

  """
  @type associated_domain_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associated_objective_summary() :: %{
        "Arn" => String.t(),
        "Name" => [String.t()]
      }

  """
  @type associated_objective_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      common_control_filter() :: %{
        "Objectives" => list(objective_resource_filter()())
      }

  """
  @type common_control_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      common_control_summary() :: %{
        "Arn" => String.t(),
        "CreateTime" => [non_neg_integer()],
        "Description" => [String.t()],
        "Domain" => associated_domain_summary(),
        "LastUpdateTime" => [non_neg_integer()],
        "Name" => [String.t()],
        "Objective" => associated_objective_summary()
      }

  """
  @type common_control_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      control_parameter() :: %{
        "Name" => [String.t()]
      }

  """
  @type control_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      control_summary() :: %{
        "Arn" => String.t(),
        "Behavior" => list(any()),
        "CreateTime" => [non_neg_integer()],
        "Description" => [String.t()],
        "Implementation" => implementation_summary(),
        "Name" => [String.t()],
        "Severity" => list(any())
      }

  """
  @type control_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_resource_filter() :: %{
        "Arn" => String.t()
      }

  """
  @type domain_resource_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_summary() :: %{
        "Arn" => String.t(),
        "CreateTime" => [non_neg_integer()],
        "Description" => [String.t()],
        "LastUpdateTime" => [non_neg_integer()],
        "Name" => [String.t()]
      }

  """
  @type domain_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_control_request() :: %{
        required("ControlArn") => String.t()
      }

  """
  @type get_control_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_control_response() :: %{
        "Arn" => String.t(),
        "Behavior" => list(any()),
        "CreateTime" => [non_neg_integer()],
        "Description" => [String.t()],
        "Implementation" => implementation_details(),
        "Name" => [String.t()],
        "Parameters" => list(control_parameter()()),
        "RegionConfiguration" => region_configuration(),
        "Severity" => list(any())
      }

  """
  @type get_control_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      implementation_details() :: %{
        "Identifier" => String.t(),
        "Type" => String.t()
      }

  """
  @type implementation_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      implementation_summary() :: %{
        "Identifier" => String.t(),
        "Type" => String.t()
      }

  """
  @type implementation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_common_controls_request() :: %{
        optional("CommonControlFilter") => common_control_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_common_controls_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_common_controls_response() :: %{
        "CommonControls" => list(common_control_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_common_controls_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_controls_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_controls_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_controls_response() :: %{
        "Controls" => list(control_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_controls_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domains_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_domains_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domains_response() :: %{
        "Domains" => list(domain_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_domains_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_objectives_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ObjectiveFilter") => objective_filter()
      }

  """
  @type list_objectives_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_objectives_response() :: %{
        "NextToken" => String.t(),
        "Objectives" => list(objective_summary()())
      }

  """
  @type list_objectives_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      objective_filter() :: %{
        "Domains" => list(domain_resource_filter()())
      }

  """
  @type objective_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      objective_resource_filter() :: %{
        "Arn" => String.t()
      }

  """
  @type objective_resource_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      objective_summary() :: %{
        "Arn" => String.t(),
        "CreateTime" => [non_neg_integer()],
        "Description" => [String.t()],
        "Domain" => associated_domain_summary(),
        "LastUpdateTime" => [non_neg_integer()],
        "Name" => [String.t()]
      }

  """
  @type objective_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      region_configuration() :: %{
        "DeployableRegions" => list(String.t()()),
        "Scope" => list(any())
      }

  """
  @type region_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @type get_control_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_common_controls_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_controls_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_domains_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_objectives_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "controlcatalog",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ControlCatalog",
      signature_version: "v4",
      signing_name: "controlcatalog",
      target_prefix: nil
    }
  end

  @doc """
  Returns details about a specific control, most notably a list of Amazon Web
  Services Regions where this control is supported.

  Input a value for the *ControlArn* parameter, in ARN form. `GetControl` accepts
  *controltower* or *controlcatalog* control ARNs as input. Returns a
  *controlcatalog* ARN format.

  In the API response, controls that have the value `GLOBAL` in the `Scope` field
  do not show the `DeployableRegions` field, because it does not apply. Controls
  that have the value `REGIONAL` in the `Scope` field return a value for the
  `DeployableRegions` field, as shown in the example.
  """
  @spec get_control(map(), get_control_request(), list()) ::
          {:ok, get_control_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_control_errors()}
  def get_control(%Client{} = client, input, options \\ []) do
    url_path = "/get-control"
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
  Returns a paginated list of common controls from the Amazon Web Services Control
  Catalog.

  You can apply an optional filter to see common controls that have a specific
  objective. If
  you don’t provide a filter, the operation returns all common controls.
  """
  @spec list_common_controls(map(), list_common_controls_request(), list()) ::
          {:ok, list_common_controls_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_common_controls_errors()}
  def list_common_controls(%Client{} = client, input, options \\ []) do
    url_path = "/common-controls"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"MaxResults", "maxResults"},
        {"NextToken", "nextToken"}
      ]
      |> Request.build_params(input)

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
  Returns a paginated list of all available controls in the Amazon Web Services
  Control Catalog library.

  Allows you to discover available controls. The list of controls is given as
  structures of type *controlSummary*. The ARN is returned in the global
  *controlcatalog* format, as shown in the examples.
  """
  @spec list_controls(map(), list_controls_request(), list()) ::
          {:ok, list_controls_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_controls_errors()}
  def list_controls(%Client{} = client, input, options \\ []) do
    url_path = "/list-controls"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"MaxResults", "maxResults"},
        {"NextToken", "nextToken"}
      ]
      |> Request.build_params(input)

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
  Returns a paginated list of domains from the Amazon Web Services Control
  Catalog.
  """
  @spec list_domains(map(), list_domains_request(), list()) ::
          {:ok, list_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_domains_errors()}
  def list_domains(%Client{} = client, input, options \\ []) do
    url_path = "/domains"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"MaxResults", "maxResults"},
        {"NextToken", "nextToken"}
      ]
      |> Request.build_params(input)

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
  Returns a paginated list of objectives from the Amazon Web Services Control
  Catalog.

  You can apply an optional filter to see the objectives that belong to a specific
  domain.
  If you don’t provide a filter, the operation returns all objectives.
  """
  @spec list_objectives(map(), list_objectives_request(), list()) ::
          {:ok, list_objectives_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_objectives_errors()}
  def list_objectives(%Client{} = client, input, options \\ []) do
    url_path = "/objectives"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"MaxResults", "maxResults"},
        {"NextToken", "nextToken"}
      ]
      |> Request.build_params(input)

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
