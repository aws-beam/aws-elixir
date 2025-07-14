# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ServiceCatalogAppRegistry do
  @moduledoc """
  Amazon Web Services Service Catalog AppRegistry enables organizations to
  understand the application context of their Amazon Web Services resources.

  AppRegistry provides a repository of your applications, their resources, and the
  application metadata that you use within your enterprise.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      delete_attribute_group_request() :: %{}

  """
  @type delete_attribute_group_request() :: %{}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resources_list_item() :: %{
        "errorMessage" => String.t(),
        "resourceArn" => String.t(),
        "resourceType" => String.t(),
        "status" => String.t()
      }

  """
  @type resources_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_attribute_group_response() :: %{
        "attributeGroup" => attribute_group()
      }

  """
  @type create_attribute_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_associated_resources_response() :: %{
        "nextToken" => String.t(),
        "resources" => list(resource_info())
      }

  """
  @type list_associated_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_tag_result() :: %{
        "applicationTagStatus" => list(any()),
        "errorMessage" => String.t(),
        "nextToken" => String.t(),
        "resources" => list(resources_list_item())
      }

  """
  @type application_tag_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_attribute_groups_for_application_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_attribute_groups_for_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_associated_attribute_groups_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_associated_attribute_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_query_configuration() :: %{
        "tagKey" => String.t()
      }

  """
  @type tag_query_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_associated_attribute_groups_response() :: %{
        "attributeGroups" => list(String.t()),
        "nextToken" => String.t()
      }

  """
  @type list_associated_attribute_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_attribute_group_request() :: %{
        optional("attributes") => String.t(),
        optional("description") => String.t(),
        optional("name") => String.t()
      }

  """
  @type update_attribute_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_attribute_groups_response() :: %{
        "attributeGroups" => list(attribute_group_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_attribute_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_resource_response() :: %{
        "applicationArn" => String.t(),
        "options" => list(list(any())()),
        "resourceArn" => String.t()
      }

  """
  @type associate_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configuration_response() :: %{
        "configuration" => app_registry_configuration()
      }

  """
  @type get_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_associated_resources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_associated_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_attribute_group_response() :: %{
        "arn" => String.t(),
        "attributes" => String.t(),
        "createdBy" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "name" => String.t(),
        "tags" => map()
      }

  """
  @type get_attribute_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application() :: %{
        "applicationTag" => map(),
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "name" => String.t(),
        "tags" => map()
      }

  """
  @type application() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_attribute_group_request() :: %{}

  """
  @type get_attribute_group_request() :: %{}

  @typedoc """

  ## Example:

      resource_integrations() :: %{
        "resourceGroup" => resource_group()
      }

  """
  @type resource_integrations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attribute_group_summary() :: %{
        "arn" => String.t(),
        "createdBy" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "name" => String.t()
      }

  """
  @type attribute_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("clientToken") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_resource_response() :: %{
        "applicationArn" => String.t(),
        "resourceArn" => String.t()
      }

  """
  @type disassociate_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_response() :: %{
        "application" => application()
      }

  """
  @type create_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_resource_request() :: %{
        optional("options") => list(list(any())())
      }

  """
  @type associate_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sync_resource_request() :: %{}

  """
  @type sync_resource_request() :: %{}

  @typedoc """

  ## Example:

      associate_attribute_group_request() :: %{}

  """
  @type associate_attribute_group_request() :: %{}

  @typedoc """

  ## Example:

      disassociate_resource_request() :: %{}

  """
  @type disassociate_resource_request() :: %{}

  @typedoc """

  ## Example:

      resource_group() :: %{
        "arn" => String.t(),
        "errorMessage" => String.t(),
        "state" => list(any())
      }

  """
  @type resource_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_application_response() :: %{
        "application" => application_summary()
      }

  """
  @type delete_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sync_resource_response() :: %{
        "actionTaken" => list(any()),
        "applicationArn" => String.t(),
        "resourceArn" => String.t()
      }

  """
  @type sync_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_request() :: %{
        optional("description") => String.t(),
        optional("name") => String.t()
      }

  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_response() :: %{
        "application" => application()
      }

  """
  @type update_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_response() :: %{
        "applicationTag" => map(),
        "arn" => String.t(),
        "associatedResourceCount" => integer(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "integrations" => integrations(),
        "lastUpdateTime" => non_neg_integer(),
        "name" => String.t(),
        "tags" => map()
      }

  """
  @type get_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attribute_group() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "name" => String.t(),
        "tags" => map()
      }

  """
  @type attribute_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_registry_configuration() :: %{
        "tagQueryConfiguration" => tag_query_configuration()
      }

  """
  @type app_registry_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      integrations() :: %{
        "applicationTagResourceGroup" => resource_group(),
        "resourceGroup" => resource_group()
      }

  """
  @type integrations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_attribute_groups_for_application_response() :: %{
        "attributeGroupsDetails" => list(attribute_group_details()),
        "nextToken" => String.t()
      }

  """
  @type list_attribute_groups_for_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
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

      list_attribute_groups_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_attribute_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t(),
        "serviceCode" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_associated_resource_response() :: %{
        "applicationTagResult" => application_tag_result(),
        "options" => list(list(any())()),
        "resource" => resource()
      }

  """
  @type get_associated_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_attribute_group_response() :: %{
        "applicationArn" => String.t(),
        "attributeGroupArn" => String.t()
      }

  """
  @type disassociate_attribute_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_info() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "options" => list(list(any())()),
        "resourceDetails" => resource_details(),
        "resourceType" => list(any())
      }

  """
  @type resource_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_summary() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "name" => String.t()
      }

  """
  @type application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_attribute_group_response() :: %{
        "applicationArn" => String.t(),
        "attributeGroupArn" => String.t()
      }

  """
  @type associate_attribute_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_response() :: %{
        "applications" => list(application_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_configuration_request() :: %{
        required("configuration") => app_registry_configuration()
      }

  """
  @type put_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_attribute_group_response() :: %{
        "attributeGroup" => attribute_group()
      }

  """
  @type update_attribute_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_details() :: %{
        "tagValue" => String.t()
      }

  """
  @type resource_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_attribute_group_response() :: %{
        "attributeGroup" => attribute_group_summary()
      }

  """
  @type delete_attribute_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_attribute_group_request() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("attributes") => String.t(),
        required("clientToken") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_attribute_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_request() :: %{}

  """
  @type get_application_request() :: %{}

  @typedoc """

  ## Example:

      attribute_group_details() :: %{
        "arn" => String.t(),
        "createdBy" => String.t(),
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type attribute_group_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_associated_resource_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("resourceTagStatus") => list(list(any())())
      }

  """
  @type get_associated_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_application_request() :: %{}

  """
  @type delete_application_request() :: %{}

  @typedoc """

  ## Example:

      resource() :: %{
        "arn" => String.t(),
        "associationTime" => non_neg_integer(),
        "integrations" => resource_integrations(),
        "name" => String.t()
      }

  """
  @type resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_attribute_group_request() :: %{}

  """
  @type disassociate_attribute_group_request() :: %{}

  @type associate_attribute_group_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_application_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_attribute_group_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_application_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type delete_attribute_group_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type disassociate_attribute_group_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type disassociate_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_application_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_associated_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_attribute_group_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_configuration_errors() :: internal_server_exception()

  @type list_applications_errors() :: validation_exception() | internal_server_exception()

  @type list_associated_attribute_groups_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_associated_resources_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_attribute_groups_errors() :: validation_exception() | internal_server_exception()

  @type list_attribute_groups_for_application_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type put_configuration_errors() ::
          validation_exception() | internal_server_exception() | conflict_exception()

  @type sync_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_application_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_attribute_group_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-06-24",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "servicecatalog-appregistry",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Service Catalog AppRegistry",
      signature_version: "v4",
      signing_name: "servicecatalog",
      target_prefix: nil
    }
  end

  @doc """
  Associates an attribute group with an application to augment the application's
  metadata
  with the group's attributes.

  This feature enables applications to be described with
  user-defined details that are machine-readable, such as third-party
  integrations.
  """
  @spec associate_attribute_group(
          map(),
          String.t(),
          String.t(),
          associate_attribute_group_request(),
          list()
        ) ::
          {:ok, associate_attribute_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_attribute_group_errors()}
  def associate_attribute_group(
        %Client{} = client,
        application,
        attribute_group,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application)}/attribute-groups/#{AWS.Util.encode_uri(attribute_group)}"

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

  Associates a resource with an application.

  The resource can be specified by its ARN or name.
  The application can be specified by ARN, ID, or name.

  ## Minimum permissions

  You must have the following permissions to associate a resource using the
  `OPTIONS` parameter set to `APPLY_APPLICATION_TAG`.

    *

  `tag:GetResources`

    *

  `tag:TagResources`

  You must also have these additional permissions if you don't use the
  `AWSServiceCatalogAppRegistryFullAccess` policy.
  For more information, see
  [AWSServiceCatalogAppRegistryFullAccess](https://docs.aws.amazon.com/servicecatalog/latest/arguide/full.html) in the AppRegistry Administrator Guide.

    *

  `resource-groups:AssociateResource`

    *

  `cloudformation:UpdateStack`

    *

  `cloudformation:DescribeStacks`

  In addition, you must have the tagging permission defined by the Amazon Web
  Services service that creates the resource.
  For more information, see
  [TagResources](https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_TagResources.html)
  in the *Resource Groups Tagging API Reference*.
  """
  @spec associate_resource(
          map(),
          String.t(),
          String.t(),
          String.t(),
          associate_resource_request(),
          list()
        ) ::
          {:ok, associate_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_resource_errors()}
  def associate_resource(
        %Client{} = client,
        application,
        resource,
        resource_type,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application)}/resources/#{AWS.Util.encode_uri(resource_type)}/#{AWS.Util.encode_uri(resource)}"

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
  Creates a new application that is the top-level node in a hierarchy of related
  cloud resource abstractions.
  """
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
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

  @doc """
  Creates a new attribute group as a container for user-defined attributes.

  This feature
  enables users to have full control over their cloud application's metadata in a
  rich
  machine-readable format to facilitate integration with automated workflows and
  third-party
  tools.
  """
  @spec create_attribute_group(map(), create_attribute_group_request(), list()) ::
          {:ok, create_attribute_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_attribute_group_errors()}
  def create_attribute_group(%Client{} = client, input, options \\ []) do
    url_path = "/attribute-groups"
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

  @doc """
  Deletes an application that is specified either by its application ID, name, or
  ARN.

  All associated attribute groups and resources must be disassociated from it
  before deleting an application.
  """
  @spec delete_application(map(), String.t(), delete_application_request(), list()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, application, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application)}"
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
  Deletes an attribute group, specified either by its attribute group ID, name, or
  ARN.
  """
  @spec delete_attribute_group(map(), String.t(), delete_attribute_group_request(), list()) ::
          {:ok, delete_attribute_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_attribute_group_errors()}
  def delete_attribute_group(%Client{} = client, attribute_group, input, options \\ []) do
    url_path = "/attribute-groups/#{AWS.Util.encode_uri(attribute_group)}"
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
  Disassociates an attribute group from an application to remove the extra
  attributes contained in the attribute group from the application's metadata.

  This operation reverts `AssociateAttributeGroup`.
  """
  @spec disassociate_attribute_group(
          map(),
          String.t(),
          String.t(),
          disassociate_attribute_group_request(),
          list()
        ) ::
          {:ok, disassociate_attribute_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_attribute_group_errors()}
  def disassociate_attribute_group(
        %Client{} = client,
        application,
        attribute_group,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application)}/attribute-groups/#{AWS.Util.encode_uri(attribute_group)}"

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

  Disassociates a resource from application.

  Both the resource and the application can be specified either by ID or name.

  ## Minimum permissions

  You must have the following permissions to remove a resource that's been
  associated with an application using the `APPLY_APPLICATION_TAG` option for
  [AssociateResource](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_app-registry_AssociateResource.html). 

    *

  `tag:GetResources`

    *

  `tag:UntagResources`

  You must also have the following permissions if you don't use the
  `AWSServiceCatalogAppRegistryFullAccess` policy.
  For more information, see
  [AWSServiceCatalogAppRegistryFullAccess](https://docs.aws.amazon.com/servicecatalog/latest/arguide/full.html)
  in the AppRegistry Administrator Guide.

    *

  `resource-groups:DisassociateResource`

    *

  `cloudformation:UpdateStack`

    *

  `cloudformation:DescribeStacks`

  In addition, you must have the tagging permission defined by the Amazon Web
  Services service that creates the resource.
  For more information, see
  [UntagResources](https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_UntTagResources.html)
  in the *Resource Groups Tagging API Reference*.
  """
  @spec disassociate_resource(
          map(),
          String.t(),
          String.t(),
          String.t(),
          disassociate_resource_request(),
          list()
        ) ::
          {:ok, disassociate_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_resource_errors()}
  def disassociate_resource(
        %Client{} = client,
        application,
        resource,
        resource_type,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application)}/resources/#{AWS.Util.encode_uri(resource_type)}/#{AWS.Util.encode_uri(resource)}"

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

  Retrieves metadata information
  about one
  of your applications.

  The application can be specified
  by its ARN, ID, or name
  (which is unique
  within one account
  in one region
  at a given point
  in time).
  Specify
  by ARN or ID
  in automated workflows
  if you want
  to make sure
  that the exact same application is returned or a `ResourceNotFoundException` is
  thrown,
  avoiding the ABA addressing problem.
  """
  @spec get_application(map(), String.t(), list()) ::
          {:ok, get_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_application_errors()}
  def get_application(%Client{} = client, application, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the resource associated with the application.
  """
  @spec get_associated_resource(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_associated_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_associated_resource_errors()}
  def get_associated_resource(
        %Client{} = client,
        application,
        resource,
        resource_type,
        max_results \\ nil,
        next_token \\ nil,
        resource_tag_status \\ nil,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application)}/resources/#{AWS.Util.encode_uri(resource_type)}/#{AWS.Util.encode_uri(resource)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_tag_status) do
        [{"resourceTagStatus", resource_tag_status} | query_params]
      else
        query_params
      end

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

  Retrieves an attribute group
  by its ARN, ID, or name.

  The attribute group can be specified
  by its ARN, ID, or name.
  """
  @spec get_attribute_group(map(), String.t(), list()) ::
          {:ok, get_attribute_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_attribute_group_errors()}
  def get_attribute_group(%Client{} = client, attribute_group, options \\ []) do
    url_path = "/attribute-groups/#{AWS.Util.encode_uri(attribute_group)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Retrieves a `TagKey` configuration
  from an account.
  """
  @spec get_configuration(map(), list()) ::
          {:ok, get_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_configuration_errors()}
  def get_configuration(%Client{} = client, options \\ []) do
    url_path = "/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of all of your applications.

  Results are paginated.
  """
  @spec list_applications(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_applications_errors()}
  def list_applications(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/applications"
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
  Lists all attribute groups that are associated with specified application.

  Results are paginated.
  """
  @spec list_associated_attribute_groups(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_associated_attribute_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_associated_attribute_groups_errors()}
  def list_associated_attribute_groups(
        %Client{} = client,
        application,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application)}/attribute-groups"
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

  Lists all
  of the resources
  that are associated
  with the specified application.

  Results are paginated.

  If you share an application,
  and a consumer account associates a tag query
  to the application,
  all of the users
  who can access the application
  can also view the tag values
  in all accounts
  that are associated
  with it
  using this API.
  """
  @spec list_associated_resources(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_associated_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_associated_resources_errors()}
  def list_associated_resources(
        %Client{} = client,
        application,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application)}/resources"
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
  Lists all attribute groups which you have access to.

  Results are paginated.
  """
  @spec list_attribute_groups(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_attribute_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_attribute_groups_errors()}
  def list_attribute_groups(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/attribute-groups"
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
  Lists the details of all attribute groups associated with a specific
  application.

  The results display in pages.
  """
  @spec list_attribute_groups_for_application(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_attribute_groups_for_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_attribute_groups_for_application_errors()}
  def list_attribute_groups_for_application(
        %Client{} = client,
        application,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application)}/attribute-group-details"
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
  Lists all of the tags on the resource.
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

  Associates a `TagKey` configuration
  to an account.
  """
  @spec put_configuration(map(), put_configuration_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_configuration_errors()}
  def put_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configuration"
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
  Syncs the resource with current AppRegistry records.

  Specifically, the resource’s AppRegistry system tags sync with its associated
  application. We remove the resource's AppRegistry system tags if it does not
  associate with the application. The caller must have permissions to read and
  update the resource.
  """
  @spec sync_resource(map(), String.t(), String.t(), sync_resource_request(), list()) ::
          {:ok, sync_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, sync_resource_errors()}
  def sync_resource(%Client{} = client, resource, resource_type, input, options \\ []) do
    url_path = "/sync/#{AWS.Util.encode_uri(resource_type)}/#{AWS.Util.encode_uri(resource)}"
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
  Assigns one or more tags (key-value pairs) to the specified resource.

  Each tag consists of a key and an optional value. If a tag with the same key is
  already associated with the resource, this action updates its value.

  This operation returns an empty response if the call was successful.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
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
  Removes tags from a resource.

  This operation returns an empty response if the call was successful.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
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
  Updates an existing application with new attributes.
  """
  @spec update_application(map(), String.t(), update_application_request(), list()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, application, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application)}"
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

  @doc """
  Updates an existing attribute group with new details.
  """
  @spec update_attribute_group(map(), String.t(), update_attribute_group_request(), list()) ::
          {:ok, update_attribute_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_attribute_group_errors()}
  def update_attribute_group(%Client{} = client, attribute_group, input, options \\ []) do
    url_path = "/attribute-groups/#{AWS.Util.encode_uri(attribute_group)}"
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
