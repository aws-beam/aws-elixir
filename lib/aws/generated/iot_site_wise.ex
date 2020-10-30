# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTSiteWise do
  @moduledoc """
  Welcome to the AWS IoT SiteWise API Reference. AWS IoT SiteWise is an AWS
  service that connects [Industrial Internet of Things
  (IIoT)](https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications)
  devices to the power of the AWS Cloud. For more information, see the [AWS
  IoT SiteWise User
  Guide](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/). For
  information about AWS IoT SiteWise quotas, see
  [Quotas](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html)
  in the *AWS IoT SiteWise User Guide*.
  """

  @doc """
  Associates a child asset with the given parent asset through a hierarchy
  defined in the parent asset's model. For more information, see [Associating
  assets](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/add-associated-assets.html)
  in the *AWS IoT SiteWise User Guide*.
  """
  def associate_assets(client, asset_id, input, options \\ []) do
    path_ = "/assets/#{URI.encode(asset_id)}/associate"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Associates a group (batch) of assets with an AWS IoT SiteWise Monitor
  project.
  """
  def batch_associate_project_assets(client, project_id, input, options \\ []) do
    path_ = "/projects/#{URI.encode(project_id)}/assets/associate"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disassociates a group (batch) of assets from an AWS IoT SiteWise Monitor
  project.
  """
  def batch_disassociate_project_assets(client, project_id, input, options \\ []) do
    path_ = "/projects/#{URI.encode(project_id)}/assets/disassociate"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Sends a list of asset property values to AWS IoT SiteWise. Each value is a
  timestamp-quality-value (TQV) data point. For more information, see
  [Ingesting data using the
  API](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ingest-api.html)
  in the *AWS IoT SiteWise User Guide*.

  To identify an asset property, you must specify one of the following:

  <ul> <li> The `assetId` and `propertyId` of an asset property.

  </li> <li> A `propertyAlias`, which is a data stream alias (for example,
  `/company/windfarm/3/turbine/7/temperature`). To define an asset property's
  alias, see
  [UpdateAssetProperty](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).

  </li> </ul> <important> With respect to Unix epoch time, AWS IoT SiteWise
  accepts only TQVs that have a timestamp of no more than 15 minutes in the
  past and no more than 5 minutes in the future. AWS IoT SiteWise rejects
  timestamps outside of the inclusive range of [-15, +5] minutes and returns
  a `TimestampOutOfRangeException` error.

  For each asset property, AWS IoT SiteWise overwrites TQVs with duplicate
  timestamps unless the newer TQV has a different quality. For example, if
  you store a TQV `{T1, GOOD, V1}`, then storing `{T1, GOOD, V2}` replaces
  the existing TQV.

  </important> AWS IoT SiteWise authorizes access to each
  `BatchPutAssetPropertyValue` entry individually. For more information, see
  [BatchPutAssetPropertyValue
  authorization](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-batchputassetpropertyvalue-action)
  in the *AWS IoT SiteWise User Guide*.
  """
  def batch_put_asset_property_value(client, input, options \\ []) do
    path_ = "/properties"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates an access policy that grants the specified identity (AWS SSO user,
  AWS SSO group, or IAM user) access to the specified AWS IoT SiteWise
  Monitor portal or project resource.
  """
  def create_access_policy(client, input, options \\ []) do
    path_ = "/access-policies"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates an asset from an existing asset model. For more information, see
  [Creating
  assets](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-assets.html)
  in the *AWS IoT SiteWise User Guide*.
  """
  def create_asset(client, input, options \\ []) do
    path_ = "/assets"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 202)
  end

  @doc """
  Creates an asset model from specified property and hierarchy definitions.
  You create assets from asset models. With asset models, you can easily
  create assets of the same type that have standardized definitions. Each
  asset created from a model inherits the asset model's property and
  hierarchy definitions. For more information, see [Defining asset
  models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/define-models.html)
  in the *AWS IoT SiteWise User Guide*.
  """
  def create_asset_model(client, input, options \\ []) do
    path_ = "/asset-models"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 202)
  end

  @doc """
  Creates a dashboard in an AWS IoT SiteWise Monitor project.
  """
  def create_dashboard(client, input, options \\ []) do
    path_ = "/dashboards"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a gateway, which is a virtual or edge device that delivers
  industrial data streams from local servers to AWS IoT SiteWise. For more
  information, see [Ingesting data using a
  gateway](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html)
  in the *AWS IoT SiteWise User Guide*.
  """
  def create_gateway(client, input, options \\ []) do
    path_ = "/20200301/gateways"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a portal, which can contain projects and dashboards. AWS IoT
  SiteWise Monitor uses AWS SSO or IAM to authenticate portal users and
  manage user permissions.

  <note> Before you can sign in to a new portal, you must add at least one
  identity to that portal. For more information, see [Adding or removing
  portal
  administrators](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/administer-portals.html#portal-change-admins)
  in the *AWS IoT SiteWise User Guide*.

  </note>
  """
  def create_portal(client, input, options \\ []) do
    path_ = "/portals"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 202)
  end

  @doc """
  Creates a pre-signed URL to a portal. Use this operation to create URLs to
  portals that use AWS Identity and Access Management (IAM) to authenticate
  users. An IAM user with access to a portal can call this API to get a URL
  to that portal. The URL contains a session token that lets the IAM user
  access the portal.
  """
  def create_presigned_portal_url(client, portal_id, session_duration_seconds \\ nil, options \\ []) do
    path_ = "/portals/#{URI.encode(portal_id)}/presigned-url"
    headers = []
    query_ = []
    query_ = if !is_nil(session_duration_seconds) do
      [{"sessionDurationSeconds", session_duration_seconds} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Creates a project in the specified portal.
  """
  def create_project(client, input, options \\ []) do
    path_ = "/projects"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Deletes an access policy that grants the specified identity access to the
  specified AWS IoT SiteWise Monitor resource. You can use this operation to
  revoke access to an AWS IoT SiteWise Monitor resource.
  """
  def delete_access_policy(client, access_policy_id, input, options \\ []) do
    path_ = "/access-policies/#{URI.encode(access_policy_id)}"
    headers = []
    {query_, input} =
      [
        {"clientToken", "clientToken"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes an asset. This action can't be undone. For more information, see
  [Deleting assets and
  models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html)
  in the *AWS IoT SiteWise User Guide*.

  <note> You can't delete an asset that's associated to another asset. For
  more information, see
  [DisassociateAssets](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DisassociateAssets.html).

  </note>
  """
  def delete_asset(client, asset_id, input, options \\ []) do
    path_ = "/assets/#{URI.encode(asset_id)}"
    headers = []
    {query_, input} =
      [
        {"clientToken", "clientToken"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Deletes an asset model. This action can't be undone. You must delete all
  assets created from an asset model before you can delete the model. Also,
  you can't delete an asset model if a parent asset model exists that
  contains a property formula expression that depends on the asset model that
  you want to delete. For more information, see [Deleting assets and
  models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html)
  in the *AWS IoT SiteWise User Guide*.
  """
  def delete_asset_model(client, asset_model_id, input, options \\ []) do
    path_ = "/asset-models/#{URI.encode(asset_model_id)}"
    headers = []
    {query_, input} =
      [
        {"clientToken", "clientToken"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Deletes a dashboard from AWS IoT SiteWise Monitor.
  """
  def delete_dashboard(client, dashboard_id, input, options \\ []) do
    path_ = "/dashboards/#{URI.encode(dashboard_id)}"
    headers = []
    {query_, input} =
      [
        {"clientToken", "clientToken"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes a gateway from AWS IoT SiteWise. When you delete a gateway, some of
  the gateway's files remain in your gateway's file system.
  """
  def delete_gateway(client, gateway_id, input, options \\ []) do
    path_ = "/20200301/gateways/#{URI.encode(gateway_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a portal from AWS IoT SiteWise Monitor.
  """
  def delete_portal(client, portal_id, input, options \\ []) do
    path_ = "/portals/#{URI.encode(portal_id)}"
    headers = []
    {query_, input} =
      [
        {"clientToken", "clientToken"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Deletes a project from AWS IoT SiteWise Monitor.
  """
  def delete_project(client, project_id, input, options \\ []) do
    path_ = "/projects/#{URI.encode(project_id)}"
    headers = []
    {query_, input} =
      [
        {"clientToken", "clientToken"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Describes an access policy, which specifies an identity's access to an AWS
  IoT SiteWise Monitor portal or project.
  """
  def describe_access_policy(client, access_policy_id, options \\ []) do
    path_ = "/access-policies/#{URI.encode(access_policy_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an asset.
  """
  def describe_asset(client, asset_id, options \\ []) do
    path_ = "/assets/#{URI.encode(asset_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about an asset model.
  """
  def describe_asset_model(client, asset_model_id, options \\ []) do
    path_ = "/asset-models/#{URI.encode(asset_model_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about an asset property.

  <note> When you call this operation for an attribute property, this
  response includes the default attribute value that you define in the asset
  model. If you update the default value in the model, this operation's
  response includes the new default value.

  </note> This operation doesn't return the value of the asset property. To
  get the value of an asset property, use
  [GetAssetPropertyValue](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_GetAssetPropertyValue.html).
  """
  def describe_asset_property(client, asset_id, property_id, options \\ []) do
    path_ = "/assets/#{URI.encode(asset_id)}/properties/#{URI.encode(property_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about a dashboard.
  """
  def describe_dashboard(client, dashboard_id, options \\ []) do
    path_ = "/dashboards/#{URI.encode(dashboard_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a gateway.
  """
  def describe_gateway(client, gateway_id, options \\ []) do
    path_ = "/20200301/gateways/#{URI.encode(gateway_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about a gateway capability configuration. Each
  gateway capability defines data sources for a gateway. A capability
  configuration can contain multiple data source configurations. If you
  define OPC-UA sources for a gateway in the AWS IoT SiteWise console, all of
  your OPC-UA sources are stored in one capability configuration. To list all
  capability configurations for a gateway, use
  [DescribeGateway](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html).
  """
  def describe_gateway_capability_configuration(client, capability_namespace, gateway_id, options \\ []) do
    path_ = "/20200301/gateways/#{URI.encode(gateway_id)}/capability/#{URI.encode(capability_namespace)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves the current AWS IoT SiteWise logging options.
  """
  def describe_logging_options(client, options \\ []) do
    path_ = "/logging"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about a portal.
  """
  def describe_portal(client, portal_id, options \\ []) do
    path_ = "/portals/#{URI.encode(portal_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a project.
  """
  def describe_project(client, project_id, options \\ []) do
    path_ = "/projects/#{URI.encode(project_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Disassociates a child asset from the given parent asset through a hierarchy
  defined in the parent asset's model.
  """
  def disassociate_assets(client, asset_id, input, options \\ []) do
    path_ = "/assets/#{URI.encode(asset_id)}/disassociate"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets aggregated values for an asset property. For more information, see
  [Querying
  aggregates](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates)
  in the *AWS IoT SiteWise User Guide*.

  To identify an asset property, you must specify one of the following:

  <ul> <li> The `assetId` and `propertyId` of an asset property.

  </li> <li> A `propertyAlias`, which is a data stream alias (for example,
  `/company/windfarm/3/turbine/7/temperature`). To define an asset property's
  alias, see
  [UpdateAssetProperty](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).

  </li> </ul>
  """
  def get_asset_property_aggregates(client, aggregate_types, asset_id \\ nil, end_date, max_results \\ nil, next_token \\ nil, property_alias \\ nil, property_id \\ nil, qualities \\ nil, resolution, start_date, time_ordering \\ nil, options \\ []) do
    path_ = "/properties/aggregates"
    headers = []
    query_ = []
    query_ = if !is_nil(time_ordering) do
      [{"timeOrdering", time_ordering} | query_]
    else
      query_
    end
    query_ = if !is_nil(start_date) do
      [{"startDate", start_date} | query_]
    else
      query_
    end
    query_ = if !is_nil(resolution) do
      [{"resolution", resolution} | query_]
    else
      query_
    end
    query_ = if !is_nil(qualities) do
      [{"qualities", qualities} | query_]
    else
      query_
    end
    query_ = if !is_nil(property_id) do
      [{"propertyId", property_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(property_alias) do
      [{"propertyAlias", property_alias} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(end_date) do
      [{"endDate", end_date} | query_]
    else
      query_
    end
    query_ = if !is_nil(asset_id) do
      [{"assetId", asset_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(aggregate_types) do
      [{"aggregateTypes", aggregate_types} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets an asset property's current value. For more information, see [Querying
  current
  values](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values)
  in the *AWS IoT SiteWise User Guide*.

  To identify an asset property, you must specify one of the following:

  <ul> <li> The `assetId` and `propertyId` of an asset property.

  </li> <li> A `propertyAlias`, which is a data stream alias (for example,
  `/company/windfarm/3/turbine/7/temperature`). To define an asset property's
  alias, see
  [UpdateAssetProperty](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).

  </li> </ul>
  """
  def get_asset_property_value(client, asset_id \\ nil, property_alias \\ nil, property_id \\ nil, options \\ []) do
    path_ = "/properties/latest"
    headers = []
    query_ = []
    query_ = if !is_nil(property_id) do
      [{"propertyId", property_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(property_alias) do
      [{"propertyAlias", property_alias} | query_]
    else
      query_
    end
    query_ = if !is_nil(asset_id) do
      [{"assetId", asset_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets the history of an asset property's values. For more information, see
  [Querying historical
  values](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values)
  in the *AWS IoT SiteWise User Guide*.

  To identify an asset property, you must specify one of the following:

  <ul> <li> The `assetId` and `propertyId` of an asset property.

  </li> <li> A `propertyAlias`, which is a data stream alias (for example,
  `/company/windfarm/3/turbine/7/temperature`). To define an asset property's
  alias, see
  [UpdateAssetProperty](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).

  </li> </ul>
  """
  def get_asset_property_value_history(client, asset_id \\ nil, end_date \\ nil, max_results \\ nil, next_token \\ nil, property_alias \\ nil, property_id \\ nil, qualities \\ nil, start_date \\ nil, time_ordering \\ nil, options \\ []) do
    path_ = "/properties/history"
    headers = []
    query_ = []
    query_ = if !is_nil(time_ordering) do
      [{"timeOrdering", time_ordering} | query_]
    else
      query_
    end
    query_ = if !is_nil(start_date) do
      [{"startDate", start_date} | query_]
    else
      query_
    end
    query_ = if !is_nil(qualities) do
      [{"qualities", qualities} | query_]
    else
      query_
    end
    query_ = if !is_nil(property_id) do
      [{"propertyId", property_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(property_alias) do
      [{"propertyAlias", property_alias} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(end_date) do
      [{"endDate", end_date} | query_]
    else
      query_
    end
    query_ = if !is_nil(asset_id) do
      [{"assetId", asset_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves a paginated list of access policies for an identity (an AWS SSO
  user, an AWS SSO group, or an IAM user) or an AWS IoT SiteWise Monitor
  resource (a portal or project).
  """
  def list_access_policies(client, iam_arn \\ nil, identity_id \\ nil, identity_type \\ nil, max_results \\ nil, next_token \\ nil, resource_id \\ nil, resource_type \\ nil, options \\ []) do
    path_ = "/access-policies"
    headers = []
    query_ = []
    query_ = if !is_nil(resource_type) do
      [{"resourceType", resource_type} | query_]
    else
      query_
    end
    query_ = if !is_nil(resource_id) do
      [{"resourceId", resource_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(identity_type) do
      [{"identityType", identity_type} | query_]
    else
      query_
    end
    query_ = if !is_nil(identity_id) do
      [{"identityId", identity_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(iam_arn) do
      [{"iamArn", iam_arn} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of summaries of all asset models.
  """
  def list_asset_models(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/asset-models"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves a paginated list of asset summaries.

  You can use this operation to do the following:

  <ul> <li> List assets based on a specific asset model.

  </li> <li> List top-level assets.

  </li> </ul> You can't use this operation to list all assets. To retrieve
  summaries for all of your assets, use
  [ListAssetModels](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_ListAssetModels.html)
  to get all of your asset model IDs. Then, use ListAssets to get all assets
  for each asset model.
  """
  def list_assets(client, asset_model_id \\ nil, filter \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/assets"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(filter) do
      [{"filter", filter} | query_]
    else
      query_
    end
    query_ = if !is_nil(asset_model_id) do
      [{"assetModelId", asset_model_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves a paginated list of associated assets.

  You can use this operation to do the following:

  <ul> <li> List child assets associated to a parent asset by a hierarchy
  that you specify.

  </li> <li> List an asset's parent asset.

  </li> </ul>
  """
  def list_associated_assets(client, asset_id, hierarchy_id \\ nil, max_results \\ nil, next_token \\ nil, traversal_direction \\ nil, options \\ []) do
    path_ = "/assets/#{URI.encode(asset_id)}/hierarchies"
    headers = []
    query_ = []
    query_ = if !is_nil(traversal_direction) do
      [{"traversalDirection", traversal_direction} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(hierarchy_id) do
      [{"hierarchyId", hierarchy_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves a paginated list of dashboards for an AWS IoT SiteWise Monitor
  project.
  """
  def list_dashboards(client, max_results \\ nil, next_token \\ nil, project_id, options \\ []) do
    path_ = "/dashboards"
    headers = []
    query_ = []
    query_ = if !is_nil(project_id) do
      [{"projectId", project_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of gateways.
  """
  def list_gateways(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/20200301/gateways"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves a paginated list of AWS IoT SiteWise Monitor portals.
  """
  def list_portals(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/portals"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of assets associated with an AWS IoT SiteWise
  Monitor project.
  """
  def list_project_assets(client, project_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/projects/#{URI.encode(project_id)}/assets"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of projects for an AWS IoT SiteWise Monitor
  portal.
  """
  def list_projects(client, max_results \\ nil, next_token \\ nil, portal_id, options \\ []) do
    path_ = "/projects"
    headers = []
    query_ = []
    query_ = if !is_nil(portal_id) do
      [{"portalId", portal_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the list of tags for an AWS IoT SiteWise resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags"
    headers = []
    query_ = []
    query_ = if !is_nil(resource_arn) do
      [{"resourceArn", resource_arn} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Sets logging options for AWS IoT SiteWise.
  """
  def put_logging_options(client, input, options \\ []) do
    path_ = "/logging"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds tags to an AWS IoT SiteWise resource. If a tag already exists for the
  resource, this operation updates the tag's value.
  """
  def tag_resource(client, input, options \\ []) do
    path_ = "/tags"
    headers = []
    {query_, input} =
      [
        {"resourceArn", "resourceArn"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes a tag from an AWS IoT SiteWise resource.
  """
  def untag_resource(client, input, options \\ []) do
    path_ = "/tags"
    headers = []
    {query_, input} =
      [
        {"resourceArn", "resourceArn"},
        {"tagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an existing access policy that specifies an identity's access to an
  AWS IoT SiteWise Monitor portal or project resource.
  """
  def update_access_policy(client, access_policy_id, input, options \\ []) do
    path_ = "/access-policies/#{URI.encode(access_policy_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an asset's name. For more information, see [Updating assets and
  models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html)
  in the *AWS IoT SiteWise User Guide*.
  """
  def update_asset(client, asset_id, input, options \\ []) do
    path_ = "/assets/#{URI.encode(asset_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 202)
  end

  @doc """
  Updates an asset model and all of the assets that were created from the
  model. Each asset created from the model inherits the updated asset model's
  property and hierarchy definitions. For more information, see [Updating
  assets and
  models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html)
  in the *AWS IoT SiteWise User Guide*.

  <important> This operation overwrites the existing model with the provided
  model. To avoid deleting your asset model's properties or hierarchies, you
  must include their IDs and definitions in the updated asset model payload.
  For more information, see
  [DescribeAssetModel](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModel.html).

  If you remove a property from an asset model, AWS IoT SiteWise deletes all
  previous data for that property. If you remove a hierarchy definition from
  an asset model, AWS IoT SiteWise disassociates every asset associated with
  that hierarchy. You can't change the type or data type of an existing
  property.

  </important>
  """
  def update_asset_model(client, asset_model_id, input, options \\ []) do
    path_ = "/asset-models/#{URI.encode(asset_model_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 202)
  end

  @doc """
  Updates an asset property's alias and notification state.

  <important> This operation overwrites the property's existing alias and
  notification state. To keep your existing property's alias or notification
  state, you must include the existing values in the UpdateAssetProperty
  request. For more information, see
  [DescribeAssetProperty](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetProperty.html).

  </important>
  """
  def update_asset_property(client, asset_id, property_id, input, options \\ []) do
    path_ = "/assets/#{URI.encode(asset_id)}/properties/#{URI.encode(property_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an AWS IoT SiteWise Monitor dashboard.
  """
  def update_dashboard(client, dashboard_id, input, options \\ []) do
    path_ = "/dashboards/#{URI.encode(dashboard_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a gateway's name.
  """
  def update_gateway(client, gateway_id, input, options \\ []) do
    path_ = "/20200301/gateways/#{URI.encode(gateway_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a gateway capability configuration or defines a new capability
  configuration. Each gateway capability defines data sources for a gateway.
  A capability configuration can contain multiple data source configurations.
  If you define OPC-UA sources for a gateway in the AWS IoT SiteWise console,
  all of your OPC-UA sources are stored in one capability configuration. To
  list all capability configurations for a gateway, use
  [DescribeGateway](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html).
  """
  def update_gateway_capability_configuration(client, gateway_id, input, options \\ []) do
    path_ = "/20200301/gateways/#{URI.encode(gateway_id)}/capability"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Updates an AWS IoT SiteWise Monitor portal.
  """
  def update_portal(client, portal_id, input, options \\ []) do
    path_ = "/portals/#{URI.encode(portal_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 202)
  end

  @doc """
  Updates an AWS IoT SiteWise Monitor project.
  """
  def update_project(client, project_id, input, options \\ []) do
    path_ = "/projects/#{URI.encode(project_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "iotsitewise"}
    host = build_host("iotsitewise", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} -> error
    end
  end


  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
