# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MigrationHubConfig do
  @moduledoc """
  The AWS Migration Hub home region APIs are available specifically for working
  with your
  Migration Hub home region.

  You can use these APIs to determine a home region, as well as to
  create and work with controls that describe the home region.

    *
  You must make API calls for write actions (create, notify, associate,
  disassociate,
  import, or put) while in your home region, or a `HomeRegionNotSetException`
  error is returned.

    *
  API calls for read actions (list, describe, stop, and delete) are permitted
  outside of
  your home region.

    *
  If you call a write API outside the home region, an `InvalidInputException`
  is returned.

    *
  You can call `GetHomeRegion` action to obtain the account's Migration Hub
  home region.

  For specific API usage, see the sections that follow in this AWS Migration Hub
  Home Region
  API reference.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_home_region_control_request() :: %{
        optional("DryRun") => boolean(),
        required("HomeRegion") => String.t(),
        required("Target") => target()
      }
      
  """
  @type create_home_region_control_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_home_region_control_result() :: %{
        "HomeRegionControl" => home_region_control()
      }
      
  """
  @type create_home_region_control_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_home_region_control_request() :: %{
        required("ControlId") => String.t()
      }
      
  """
  @type delete_home_region_control_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_home_region_control_result() :: %{}
      
  """
  @type delete_home_region_control_result() :: %{}

  @typedoc """

  ## Example:
      
      describe_home_region_controls_request() :: %{
        optional("ControlId") => String.t(),
        optional("HomeRegion") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Target") => target()
      }
      
  """
  @type describe_home_region_controls_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_home_region_controls_result() :: %{
        "HomeRegionControls" => list(home_region_control()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_home_region_controls_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dry_run_operation() :: %{
        "Message" => String.t()
      }
      
  """
  @type dry_run_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_home_region_request() :: %{}
      
  """
  @type get_home_region_request() :: %{}

  @typedoc """

  ## Example:
      
      get_home_region_result() :: %{
        "HomeRegion" => String.t()
      }
      
  """
  @type get_home_region_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      home_region_control() :: %{
        "ControlId" => String.t(),
        "HomeRegion" => String.t(),
        "RequestedTime" => non_neg_integer(),
        "Target" => target()
      }
      
  """
  @type home_region_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_error() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_input_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_input_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target() :: %{
        "Id" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t(),
        "RetryAfterSeconds" => integer()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @type create_home_region_control_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_input_exception()
          | internal_server_error()
          | dry_run_operation()
          | access_denied_exception()

  @type delete_home_region_control_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_input_exception()
          | internal_server_error()
          | access_denied_exception()

  @type describe_home_region_controls_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_input_exception()
          | internal_server_error()
          | access_denied_exception()

  @type get_home_region_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_input_exception()
          | internal_server_error()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2019-06-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "migrationhub-config",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "MigrationHub Config",
      signature_version: "v4",
      signing_name: "mgh",
      target_prefix: "AWSMigrationHubMultiAccountService"
    }
  end

  @doc """
  This API sets up the home region for the calling account only.
  """
  @spec create_home_region_control(map(), create_home_region_control_request(), list()) ::
          {:ok, create_home_region_control_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_home_region_control_errors()}
  def create_home_region_control(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateHomeRegionControl", input, options)
  end

  @doc """
  This operation deletes the home region configuration for the calling account.

  The operation does not delete discovery or migration tracking data in the home
  region.
  """
  @spec delete_home_region_control(map(), delete_home_region_control_request(), list()) ::
          {:ok, delete_home_region_control_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_home_region_control_errors()}
  def delete_home_region_control(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteHomeRegionControl", input, options)
  end

  @doc """
  This API permits filtering on the `ControlId` and `HomeRegion`
  fields.
  """
  @spec describe_home_region_controls(map(), describe_home_region_controls_request(), list()) ::
          {:ok, describe_home_region_controls_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_home_region_controls_errors()}
  def describe_home_region_controls(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeHomeRegionControls", input, options)
  end

  @doc """
  Returns the calling account’s home region, if configured.

  This API is used by other AWS
  services to determine the regional endpoint for calling AWS Application
  Discovery Service and
  Migration Hub. You must call `GetHomeRegion` at least once before you call any
  other AWS Application Discovery Service and AWS Migration Hub APIs, to obtain
  the account's
  Migration Hub home region.
  """
  @spec get_home_region(map(), get_home_region_request(), list()) ::
          {:ok, get_home_region_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_home_region_errors()}
  def get_home_region(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetHomeRegion", input, options)
  end
end
