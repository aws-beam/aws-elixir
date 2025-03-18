# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSMQuickSetup do
  @moduledoc """
  Quick Setup helps you quickly configure frequently used services and features
  with
  recommended best practices.

  Quick Setup simplifies setting up services, including
  Systems Manager, by automating common or recommended tasks.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      configuration_definition_summary() :: %{
        "FirstClassParameters" => map(),
        "Id" => [String.t()],
        "Type" => [String.t()],
        "TypeVersion" => [String.t()]
      }

  """
  @type configuration_definition_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      status_summary() :: %{
        "LastUpdatedAt" => [non_neg_integer()],
        "Status" => list(any()),
        "StatusDetails" => map(),
        "StatusMessage" => [String.t()],
        "StatusType" => list(any())
      }

  """
  @type status_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configuration_manager_output() :: %{
        "ConfigurationDefinitions" => list(configuration_definition()()),
        "CreatedAt" => [non_neg_integer()],
        "Description" => [String.t()],
        "LastModifiedAt" => [non_neg_integer()],
        "ManagerArn" => [String.t()],
        "Name" => [String.t()],
        "StatusSummaries" => list(status_summary()()),
        "Tags" => map()
      }

  """
  @type get_configuration_manager_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration_summary() :: %{
        "Account" => [String.t()],
        "ConfigurationDefinitionId" => [String.t()],
        "CreatedAt" => [non_neg_integer()],
        "FirstClassParameters" => map(),
        "Id" => [String.t()],
        "ManagerArn" => [String.t()],
        "Region" => [String.t()],
        "StatusSummaries" => list(status_summary()()),
        "Type" => [String.t()],
        "TypeVersion" => [String.t()]
      }

  """
  @type configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configuration_output() :: %{
        "Account" => [String.t()],
        "ConfigurationDefinitionId" => [String.t()],
        "CreatedAt" => [non_neg_integer()],
        "Id" => [String.t()],
        "LastModifiedAt" => [non_neg_integer()],
        "ManagerArn" => [String.t()],
        "Parameters" => map(),
        "Region" => [String.t()],
        "StatusSummaries" => list(status_summary()()),
        "Type" => [String.t()],
        "TypeVersion" => [String.t()]
      }

  """
  @type get_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configuration_managers_output() :: %{
        "ConfigurationManagersList" => list(configuration_manager_summary()()),
        "NextToken" => [String.t()]
      }

  """
  @type list_configuration_managers_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configuration_manager_input() :: %{
        optional("Description") => [String.t()],
        optional("Name") => [String.t()],
        optional("Tags") => map(),
        required("ConfigurationDefinitions") => list(configuration_definition_input()())
      }

  """
  @type create_configuration_manager_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configuration_manager_input() :: %{
        optional("Description") => [String.t()],
        optional("Name") => [String.t()]
      }

  """
  @type update_configuration_manager_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration_definition() :: %{
        "Id" => [String.t()],
        "LocalDeploymentAdministrationRoleArn" => String.t(),
        "LocalDeploymentExecutionRoleName" => [String.t()],
        "Parameters" => map(),
        "Type" => [String.t()],
        "TypeVersion" => [String.t()]
      }

  """
  @type configuration_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configuration_input() :: %{}

  """
  @type get_configuration_input() :: %{}

  @typedoc """

  ## Example:

      list_quick_setup_types_output() :: %{
        "QuickSetupTypeList" => list(quick_setup_type_output()())
      }

  """
  @type list_quick_setup_types_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configurations_output() :: %{
        "ConfigurationsList" => list(configuration_summary()()),
        "NextToken" => [String.t()]
      }

  """
  @type list_configurations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configuration_manager_input() :: %{}

  """
  @type get_configuration_manager_input() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => list(tag_entry()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configuration_manager_input() :: %{}

  """
  @type delete_configuration_manager_input() :: %{}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "Key" => [String.t()],
        "Values" => list([String.t()]())
      }

  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("TagKeys") => list([String.t()]())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configuration_definition_input() :: %{
        optional("LocalDeploymentAdministrationRoleArn") => String.t(),
        optional("LocalDeploymentExecutionRoleName") => [String.t()],
        optional("Parameters") => map(),
        optional("TypeVersion") => [String.t()]
      }

  """
  @type update_configuration_definition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_settings() :: %{
        "ExplorerEnablingRoleArn" => String.t()
      }

  """
  @type service_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_service_settings_output() :: %{
        "ServiceSettings" => service_settings()
      }

  """
  @type get_service_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_service_settings_input() :: %{
        optional("ExplorerEnablingRoleArn") => String.t()
      }

  """
  @type update_service_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      quick_setup_type_output() :: %{
        "LatestVersion" => [String.t()],
        "Type" => [String.t()]
      }

  """
  @type quick_setup_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_entry() :: %{
        "Key" => [String.t()],
        "Value" => [String.t()]
      }

  """
  @type tag_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configuration_manager_output() :: %{
        "ManagerArn" => [String.t()]
      }

  """
  @type create_configuration_manager_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration_manager_summary() :: %{
        "ConfigurationDefinitionSummaries" => list(configuration_definition_summary()()),
        "Description" => [String.t()],
        "ManagerArn" => [String.t()],
        "Name" => [String.t()],
        "StatusSummaries" => list(status_summary()())
      }

  """
  @type configuration_manager_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configuration_managers_input() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxItems") => [integer()],
        optional("StartingToken") => [String.t()]
      }

  """
  @type list_configuration_managers_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration_definition_input() :: %{
        "LocalDeploymentAdministrationRoleArn" => String.t(),
        "LocalDeploymentExecutionRoleName" => [String.t()],
        "Parameters" => map(),
        "Type" => [String.t()],
        "TypeVersion" => [String.t()]
      }

  """
  @type configuration_definition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configurations_input() :: %{
        optional("ConfigurationDefinitionId") => [String.t()],
        optional("Filters") => list(filter()()),
        optional("ManagerArn") => [String.t()],
        optional("MaxItems") => [integer()],
        optional("StartingToken") => [String.t()]
      }

  """
  @type list_configurations_input() :: %{String.t() => any()}

  @type create_configuration_manager_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_configuration_manager_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_configuration_manager_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_service_settings_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type list_configuration_managers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type list_configurations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_quick_setup_types_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_configuration_definition_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_configuration_manager_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_service_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ssm-quicksetup",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SSM QuickSetup",
      signature_version: "v4",
      signing_name: "ssm-quicksetup",
      target_prefix: nil
    }
  end

  @doc """
  Creates a Quick Setup configuration manager resource.

  This object is a collection
  of desired state configurations for multiple configuration definitions and
  summaries describing the deployments of those definitions.
  """
  @spec create_configuration_manager(map(), create_configuration_manager_input(), list()) ::
          {:ok, create_configuration_manager_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_configuration_manager_errors()}
  def create_configuration_manager(%Client{} = client, input, options \\ []) do
    url_path = "/configurationManager"
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
  Deletes a configuration manager.
  """
  @spec delete_configuration_manager(
          map(),
          String.t(),
          delete_configuration_manager_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_configuration_manager_errors()}
  def delete_configuration_manager(%Client{} = client, manager_arn, input, options \\ []) do
    url_path = "/configurationManager/#{AWS.Util.encode_uri(manager_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns details about the specified configuration.
  """
  @spec get_configuration(map(), String.t(), list()) ::
          {:ok, get_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_configuration_errors()}
  def get_configuration(%Client{} = client, configuration_id, options \\ []) do
    url_path = "/getConfiguration/#{AWS.Util.encode_uri(configuration_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a configuration manager.
  """
  @spec get_configuration_manager(map(), String.t(), list()) ::
          {:ok, get_configuration_manager_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_configuration_manager_errors()}
  def get_configuration_manager(%Client{} = client, manager_arn, options \\ []) do
    url_path = "/configurationManager/#{AWS.Util.encode_uri(manager_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns settings configured for Quick Setup in the requesting Amazon Web
  Services account and Amazon Web Services Region.
  """
  @spec get_service_settings(map(), list()) ::
          {:ok, get_service_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_service_settings_errors()}
  def get_service_settings(%Client{} = client, options \\ []) do
    url_path = "/serviceSettings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns Quick Setup configuration managers.
  """
  @spec list_configuration_managers(map(), list_configuration_managers_input(), list()) ::
          {:ok, list_configuration_managers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_configuration_managers_errors()}
  def list_configuration_managers(%Client{} = client, input, options \\ []) do
    url_path = "/listConfigurationManagers"
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
  Returns configurations deployed by Quick Setup in the requesting Amazon Web
  Services account and Amazon Web Services Region.
  """
  @spec list_configurations(map(), list_configurations_input(), list()) ::
          {:ok, list_configurations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_configurations_errors()}
  def list_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/listConfigurations"
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
  Returns the available Quick Setup types.
  """
  @spec list_quick_setup_types(map(), list()) ::
          {:ok, list_quick_setup_types_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_quick_setup_types_errors()}
  def list_quick_setup_types(%Client{} = client, options \\ []) do
    url_path = "/listQuickSetupTypes"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns tags assigned to the resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Assigns key-value pairs of metadata to Amazon Web Services resources.
  """
  @spec tag_resource(map(), String.t(), tag_resource_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes tags from the specified resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a Quick Setup configuration definition.
  """
  @spec update_configuration_definition(
          map(),
          String.t(),
          String.t(),
          update_configuration_definition_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_configuration_definition_errors()}
  def update_configuration_definition(%Client{} = client, id, manager_arn, input, options \\ []) do
    url_path =
      "/configurationDefinition/#{AWS.Util.encode_uri(manager_arn)}/#{AWS.Util.encode_uri(id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a Quick Setup configuration manager.
  """
  @spec update_configuration_manager(
          map(),
          String.t(),
          update_configuration_manager_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_configuration_manager_errors()}
  def update_configuration_manager(%Client{} = client, manager_arn, input, options \\ []) do
    url_path = "/configurationManager/#{AWS.Util.encode_uri(manager_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates settings configured for Quick Setup.
  """
  @spec update_service_settings(map(), update_service_settings_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_service_settings_errors()}
  def update_service_settings(%Client{} = client, input, options \\ []) do
    url_path = "/serviceSettings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
