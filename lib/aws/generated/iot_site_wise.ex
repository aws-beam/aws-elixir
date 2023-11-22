# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTSiteWise do
  @moduledoc """
  Welcome to the IoT SiteWise API Reference.

  IoT SiteWise is an Amazon Web Services service that connects [Industrial Internet of Things
  (IIoT)](https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications)
  devices to the power of the Amazon Web Services Cloud. For more information, see
  the [IoT SiteWise User Guide](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/). For
  information about IoT SiteWise quotas, see
  [Quotas](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html)
  in the *IoT SiteWise User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2019-12-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "iotsitewise",
      global?: false,
      protocol: "rest-json",
      service_id: "IoTSiteWise",
      signature_version: "v4",
      signing_name: "iotsitewise",
      target_prefix: nil
    }
  end

  @doc """
  Associates a child asset with the given parent asset through a hierarchy defined
  in the parent asset's model.

  For more information, see [Associating assets](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/add-associated-assets.html)
  in the *IoT SiteWise User Guide*.
  """
  def associate_assets(%Client{} = client, asset_id, input, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}/associate"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Associates a time series (data stream) with an asset property.
  """
  def associate_time_series_to_asset_property(%Client{} = client, input, options \\ []) do
    url_path = "/timeseries/associate/"
    headers = []

    {query_params, input} =
      [
        {"alias", "alias"},
        {"assetId", "assetId"},
        {"propertyId", "propertyId"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Associates a group (batch) of assets with an IoT SiteWise Monitor project.
  """
  def batch_associate_project_assets(%Client{} = client, project_id, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}/assets/associate"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates a group (batch) of assets from an IoT SiteWise Monitor project.
  """
  def batch_disassociate_project_assets(%Client{} = client, project_id, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}/assets/disassociate"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets aggregated values (for example, average, minimum, and maximum) for one or
  more asset properties.

  For more information, see [Querying aggregates](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates)
  in the *IoT SiteWise User Guide*.
  """
  def batch_get_asset_property_aggregates(%Client{} = client, input, options \\ []) do
    url_path = "/properties/batch/aggregates"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Gets the current value for one or more asset properties.

  For more information, see [Querying current values](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values)
  in the *IoT SiteWise User Guide*.
  """
  def batch_get_asset_property_value(%Client{} = client, input, options \\ []) do
    url_path = "/properties/batch/latest"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Gets the historical values for one or more asset properties.

  For more information, see [Querying historical values](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values)
  in the *IoT SiteWise User Guide*.
  """
  def batch_get_asset_property_value_history(%Client{} = client, input, options \\ []) do
    url_path = "/properties/batch/history"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Sends a list of asset property values to IoT SiteWise.

  Each value is a timestamp-quality-value (TQV) data point. For more information,
  see [Ingesting data using the API](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ingest-api.html)
  in the *IoT SiteWise User Guide*.

  To identify an asset property, you must specify one of the following:

    * The `assetId` and `propertyId` of an asset property.

    * A `propertyAlias`, which is a data stream alias (for example,
  `/company/windfarm/3/turbine/7/temperature`). To define an asset property's
  alias, see
  [UpdateAssetProperty](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html). 

  With respect to Unix epoch time, IoT SiteWise accepts only TQVs that have a
  timestamp of no more than 7 days in the past and no more than 10 minutes in the
  future. IoT SiteWise rejects timestamps outside of the inclusive range of [-7
  days, +10 minutes] and returns a `TimestampOutOfRangeException` error.

  For each asset property, IoT SiteWise overwrites TQVs with duplicate timestamps
  unless the newer TQV has a different quality. For example, if you store a TQV
  `{T1, GOOD, V1}`, then storing `{T1, GOOD, V2}` replaces the existing TQV.

  IoT SiteWise authorizes access to each `BatchPutAssetPropertyValue` entry
  individually. For more information, see [BatchPutAssetPropertyValue authorization](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-batchputassetpropertyvalue-action)
  in the *IoT SiteWise User Guide*.
  """
  def batch_put_asset_property_value(%Client{} = client, input, options \\ []) do
    url_path = "/properties"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates an access policy that grants the specified identity (IAM Identity Center
  user, IAM Identity Center group, or IAM user) access to the specified IoT
  SiteWise Monitor portal or project resource.
  """
  def create_access_policy(%Client{} = client, input, options \\ []) do
    url_path = "/access-policies"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates an asset from an existing asset model.

  For more information, see [Creating assets](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-assets.html)
  in the *IoT SiteWise User Guide*.
  """
  def create_asset(%Client{} = client, input, options \\ []) do
    url_path = "/assets"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Creates an asset model from specified property and hierarchy definitions.

  You create assets from asset models. With asset models, you can easily create
  assets of the same type that have standardized definitions. Each asset created
  from a model inherits the asset model's property and hierarchy definitions. For
  more information, see [Defining asset models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/define-models.html)
  in the *IoT SiteWise User Guide*.

  You can create two types of asset models, `ASSET_MODEL` or `COMPONENT_MODEL`.

    * **ASSET_MODEL** – (default) An asset model that you can use to
  create assets. Can't be included as a component in another asset model.

    * **COMPONENT_MODEL** – A reusable component that you can include in
  the composite models of other asset models. You can't create assets directly
  from this type of asset model.
  """
  def create_asset_model(%Client{} = client, input, options \\ []) do
    url_path = "/asset-models"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Creates a custom composite model from specified property and hierarchy
  definitions.

  There are two types of custom composite models, `inline` and
  `component-model-based`.

  Use component-model-based custom composite models to define standard, reusable
  components. A component-model-based custom composite model consists of a name, a
  description, and the ID of the component model it references. A
  component-model-based custom composite model has no properties of its own; its
  referenced component model provides its associated properties to any created
  assets. For more information, see [Custom composite models (Components)](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html)
  in the *IoT SiteWise User Guide*.

  Use inline custom composite models to organize the properties of an asset model.
  The properties of inline custom composite models are local to the asset model
  where they are included and can't be used to create multiple assets.

  To create a component-model-based model, specify the `composedAssetModelId` of
  an existing asset model with `assetModelType` of `COMPONENT_MODEL`.

  To create an inline model, specify the `assetModelCompositeModelProperties` and
  don't include an `composedAssetModelId`.
  """
  def create_asset_model_composite_model(%Client{} = client, asset_model_id, input, options \\ []) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/composite-models"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Defines a job to ingest data to IoT SiteWise from Amazon S3.

  For more information, see [Create a bulk import job (CLI)](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/CreateBulkImportJob.html)
  in the *Amazon Simple Storage Service User Guide*.

  Before you create a bulk import job, you must enable IoT SiteWise warm tier or
  IoT SiteWise cold tier. For more information about how to configure storage
  settings, see
  [PutStorageConfiguration](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_PutStorageConfiguration.html).

  Bulk import is designed to store historical data to IoT SiteWise. It does not
  trigger computations or notifications on IoT SiteWise warm or cold tier storage.
  """
  def create_bulk_import_job(%Client{} = client, input, options \\ []) do
    url_path = "/jobs"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Creates a dashboard in an IoT SiteWise Monitor project.
  """
  def create_dashboard(%Client{} = client, input, options \\ []) do
    url_path = "/dashboards"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a gateway, which is a virtual or edge device that delivers industrial
  data streams from local servers to IoT SiteWise.

  For more information, see [Ingesting data using a gateway](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html)
  in the *IoT SiteWise User Guide*.
  """
  def create_gateway(%Client{} = client, input, options \\ []) do
    url_path = "/20200301/gateways"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a portal, which can contain projects and dashboards.

  IoT SiteWise Monitor uses IAM Identity Center or IAM to authenticate portal
  users and manage user permissions.

  Before you can sign in to a new portal, you must add at least one identity to
  that portal. For more information, see [Adding or removing portal administrators](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/administer-portals.html#portal-change-admins)
  in the *IoT SiteWise User Guide*.
  """
  def create_portal(%Client{} = client, input, options \\ []) do
    url_path = "/portals"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Creates a project in the specified portal.

  Make sure that the project name and description don't contain confidential
  information.
  """
  def create_project(%Client{} = client, input, options \\ []) do
    url_path = "/projects"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes an access policy that grants the specified identity access to the
  specified IoT SiteWise Monitor resource.

  You can use this operation to revoke access to an IoT SiteWise Monitor resource.
  """
  def delete_access_policy(%Client{} = client, access_policy_id, input, options \\ []) do
    url_path = "/access-policies/#{AWS.Util.encode_uri(access_policy_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes an asset.

  This action can't be undone. For more information, see [Deleting assets and models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html)
  in the *IoT SiteWise User Guide*.

  You can't delete an asset that's associated to another asset. For more
  information, see
  [DisassociateAssets](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DisassociateAssets.html).
  """
  def delete_asset(%Client{} = client, asset_id, input, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes an asset model.

  This action can't be undone. You must delete all assets created from an asset
  model before you can delete the model. Also, you can't delete an asset model if
  a parent asset model exists that contains a property formula expression that
  depends on the asset model that you want to delete. For more information, see
  [Deleting assets and models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html)
  in the *IoT SiteWise User Guide*.
  """
  def delete_asset_model(%Client{} = client, asset_model_id, input, options \\ []) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes a composite model.

  This action can't be undone. You must delete all assets created from a composite
  model before you can delete the model. Also, you can't delete a composite model
  if a parent asset model exists that contains a property formula expression that
  depends on the asset model that you want to delete. For more information, see
  [Deleting assets and models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html)
  in the *IoT SiteWise User Guide*.
  """
  def delete_asset_model_composite_model(
        %Client{} = client,
        asset_model_composite_model_id,
        asset_model_id,
        input,
        options \\ []
      ) do
    url_path =
      "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/composite-models/#{AWS.Util.encode_uri(asset_model_composite_model_id)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes a dashboard from IoT SiteWise Monitor.
  """
  def delete_dashboard(%Client{} = client, dashboard_id, input, options \\ []) do
    url_path = "/dashboards/#{AWS.Util.encode_uri(dashboard_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a gateway from IoT SiteWise.

  When you delete a gateway, some of the gateway's files remain in your gateway's
  file system.
  """
  def delete_gateway(%Client{} = client, gateway_id, input, options \\ []) do
    url_path = "/20200301/gateways/#{AWS.Util.encode_uri(gateway_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a portal from IoT SiteWise Monitor.
  """
  def delete_portal(%Client{} = client, portal_id, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_uri(portal_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes a project from IoT SiteWise Monitor.
  """
  def delete_project(%Client{} = client, project_id, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a time series (data stream).

  If you delete a time series that's associated with an asset property, the asset
  property still exists, but the time series will no longer be associated with
  this asset property.

  To identify a time series, do one of the following:

    * If the time series isn't associated with an asset property,
  specify the `alias` of the time series.

    * If the time series is associated with an asset property, specify
  one of the following:

      * The `alias` of the time series.

      * The `assetId` and `propertyId` that identifies the
  asset property.
  """
  def delete_time_series(%Client{} = client, input, options \\ []) do
    url_path = "/timeseries/delete/"
    headers = []

    {query_params, input} =
      [
        {"alias", "alias"},
        {"assetId", "assetId"},
        {"propertyId", "propertyId"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Describes an access policy, which specifies an identity's access to an IoT
  SiteWise Monitor portal or project.
  """
  def describe_access_policy(%Client{} = client, access_policy_id, options \\ []) do
    url_path = "/access-policies/#{AWS.Util.encode_uri(access_policy_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an action.
  """
  def describe_action(%Client{} = client, action_id, options \\ []) do
    url_path = "/actions/#{AWS.Util.encode_uri(action_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about an asset.
  """
  def describe_asset(%Client{} = client, asset_id, exclude_properties \\ nil, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(exclude_properties) do
        [{"excludeProperties", exclude_properties} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about an asset composite model (also known as an asset
  component).

  An `AssetCompositeModel` is an instance of an `AssetModelCompositeModel`. If you
  want to see information about the model this is based on, call
  [DescribeAssetModelCompositeModel](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModelCompositeModel.html).
  """
  def describe_asset_composite_model(
        %Client{} = client,
        asset_composite_model_id,
        asset_id,
        options \\ []
      ) do
    url_path =
      "/assets/#{AWS.Util.encode_uri(asset_id)}/composite-models/#{AWS.Util.encode_uri(asset_composite_model_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about an asset model.
  """
  def describe_asset_model(
        %Client{} = client,
        asset_model_id,
        exclude_properties \\ nil,
        options \\ []
      ) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(exclude_properties) do
        [{"excludeProperties", exclude_properties} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about an asset model composite model (also known as an
  asset model component).

  For more information, see [Custom composite models (Components)](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html)
  in the *IoT SiteWise User Guide*.
  """
  def describe_asset_model_composite_model(
        %Client{} = client,
        asset_model_composite_model_id,
        asset_model_id,
        options \\ []
      ) do
    url_path =
      "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/composite-models/#{AWS.Util.encode_uri(asset_model_composite_model_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about an asset property.

  When you call this operation for an attribute property, this response includes
  the default attribute value that you define in the asset model. If you update
  the default value in the model, this operation's response includes the new
  default value.

  This operation doesn't return the value of the asset property. To get the value
  of an asset property, use
  [GetAssetPropertyValue](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_GetAssetPropertyValue.html).
  """
  def describe_asset_property(%Client{} = client, asset_id, property_id, options \\ []) do
    url_path =
      "/assets/#{AWS.Util.encode_uri(asset_id)}/properties/#{AWS.Util.encode_uri(property_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about a bulk import job request.

  For more information, see [Describe a bulk import job (CLI)](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/DescribeBulkImportJob.html)
  in the *Amazon Simple Storage Service User Guide*.
  """
  def describe_bulk_import_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about a dashboard.
  """
  def describe_dashboard(%Client{} = client, dashboard_id, options \\ []) do
    url_path = "/dashboards/#{AWS.Util.encode_uri(dashboard_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the default encryption configuration for the Amazon
  Web Services account in the default or specified Region.

  For more information, see [Key management](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html)
  in the *IoT SiteWise User Guide*.
  """
  def describe_default_encryption_configuration(%Client{} = client, options \\ []) do
    url_path = "/configuration/account/encryption"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about a gateway.
  """
  def describe_gateway(%Client{} = client, gateway_id, options \\ []) do
    url_path = "/20200301/gateways/#{AWS.Util.encode_uri(gateway_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about a gateway capability configuration.

  Each gateway capability defines data sources for a gateway. A capability
  configuration can contain multiple data source configurations. If you define
  OPC-UA sources for a gateway in the IoT SiteWise console, all of your OPC-UA
  sources are stored in one capability configuration. To list all capability
  configurations for a gateway, use
  [DescribeGateway](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html).
  """
  def describe_gateway_capability_configuration(
        %Client{} = client,
        capability_namespace,
        gateway_id,
        options \\ []
      ) do
    url_path =
      "/20200301/gateways/#{AWS.Util.encode_uri(gateway_id)}/capability/#{AWS.Util.encode_uri(capability_namespace)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves the current IoT SiteWise logging options.
  """
  def describe_logging_options(%Client{} = client, options \\ []) do
    url_path = "/logging"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about a portal.
  """
  def describe_portal(%Client{} = client, portal_id, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_uri(portal_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a project.
  """
  def describe_project(%Client{} = client, project_id, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the storage configuration for IoT SiteWise.
  """
  def describe_storage_configuration(%Client{} = client, options \\ []) do
    url_path = "/configuration/account/storage"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about a time series (data stream).

  To identify a time series, do one of the following:

    * If the time series isn't associated with an asset property,
  specify the `alias` of the time series.

    * If the time series is associated with an asset property, specify
  one of the following:

      * The `alias` of the time series.

      * The `assetId` and `propertyId` that identifies the
  asset property.
  """
  def describe_time_series(
        %Client{} = client,
        alias \\ nil,
        asset_id \\ nil,
        property_id \\ nil,
        options \\ []
      ) do
    url_path = "/timeseries/describe/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(property_id) do
        [{"propertyId", property_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(asset_id) do
        [{"assetId", asset_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(alias) do
        [{"alias", alias} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Disassociates a child asset from the given parent asset through a hierarchy
  defined in the parent asset's model.
  """
  def disassociate_assets(%Client{} = client, asset_id, input, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}/disassociate"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Disassociates a time series (data stream) from an asset property.
  """
  def disassociate_time_series_from_asset_property(%Client{} = client, input, options \\ []) do
    url_path = "/timeseries/disassociate/"
    headers = []

    {query_params, input} =
      [
        {"alias", "alias"},
        {"assetId", "assetId"},
        {"propertyId", "propertyId"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Executes an action on a target resource.
  """
  def execute_action(%Client{} = client, input, options \\ []) do
    url_path = "/actions"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Run SQL queries to retrieve metadata and time-series data from asset models,
  assets, measurements, metrics, transforms, and aggregates.
  """
  def execute_query(%Client{} = client, input, options \\ []) do
    url_path = "/queries/execution"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Gets aggregated values for an asset property.

  For more information, see [Querying aggregates](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates)
  in the *IoT SiteWise User Guide*.

  To identify an asset property, you must specify one of the following:

    * The `assetId` and `propertyId` of an asset property.

    * A `propertyAlias`, which is a data stream alias (for example,
  `/company/windfarm/3/turbine/7/temperature`). To define an asset property's
  alias, see
  [UpdateAssetProperty](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).
  """
  def get_asset_property_aggregates(
        %Client{} = client,
        aggregate_types,
        asset_id \\ nil,
        end_date,
        max_results \\ nil,
        next_token \\ nil,
        property_alias \\ nil,
        property_id \\ nil,
        qualities \\ nil,
        resolution,
        start_date,
        time_ordering \\ nil,
        options \\ []
      ) do
    url_path = "/properties/aggregates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(time_ordering) do
        [{"timeOrdering", time_ordering} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_date) do
        [{"startDate", start_date} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resolution) do
        [{"resolution", resolution} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(qualities) do
        [{"qualities", qualities} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(property_id) do
        [{"propertyId", property_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(property_alias) do
        [{"propertyAlias", property_alias} | query_params]
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

    query_params =
      if !is_nil(end_date) do
        [{"endDate", end_date} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(asset_id) do
        [{"assetId", asset_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aggregate_types) do
        [{"aggregateTypes", aggregate_types} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets an asset property's current value.

  For more information, see [Querying current values](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values)
  in the *IoT SiteWise User Guide*.

  To identify an asset property, you must specify one of the following:

    * The `assetId` and `propertyId` of an asset property.

    * A `propertyAlias`, which is a data stream alias (for example,
  `/company/windfarm/3/turbine/7/temperature`). To define an asset property's
  alias, see
  [UpdateAssetProperty](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).
  """
  def get_asset_property_value(
        %Client{} = client,
        asset_id \\ nil,
        property_alias \\ nil,
        property_id \\ nil,
        options \\ []
      ) do
    url_path = "/properties/latest"
    headers = []
    query_params = []

    query_params =
      if !is_nil(property_id) do
        [{"propertyId", property_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(property_alias) do
        [{"propertyAlias", property_alias} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(asset_id) do
        [{"assetId", asset_id} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets the history of an asset property's values.

  For more information, see [Querying historical values](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values)
  in the *IoT SiteWise User Guide*.

  To identify an asset property, you must specify one of the following:

    * The `assetId` and `propertyId` of an asset property.

    * A `propertyAlias`, which is a data stream alias (for example,
  `/company/windfarm/3/turbine/7/temperature`). To define an asset property's
  alias, see
  [UpdateAssetProperty](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).
  """
  def get_asset_property_value_history(
        %Client{} = client,
        asset_id \\ nil,
        end_date \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        property_alias \\ nil,
        property_id \\ nil,
        qualities \\ nil,
        start_date \\ nil,
        time_ordering \\ nil,
        options \\ []
      ) do
    url_path = "/properties/history"
    headers = []
    query_params = []

    query_params =
      if !is_nil(time_ordering) do
        [{"timeOrdering", time_ordering} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_date) do
        [{"startDate", start_date} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(qualities) do
        [{"qualities", qualities} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(property_id) do
        [{"propertyId", property_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(property_alias) do
        [{"propertyAlias", property_alias} | query_params]
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

    query_params =
      if !is_nil(end_date) do
        [{"endDate", end_date} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(asset_id) do
        [{"assetId", asset_id} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Get interpolated values for an asset property for a specified time interval,
  during a period of time.

  If your time series is missing data points during the specified time interval,
  you can use interpolation to estimate the missing data.

  For example, you can use this operation to return the interpolated temperature
  values for a wind turbine every 24 hours over a duration of 7 days.

  To identify an asset property, you must specify one of the following:

    * The `assetId` and `propertyId` of an asset property.

    * A `propertyAlias`, which is a data stream alias (for example,
  `/company/windfarm/3/turbine/7/temperature`). To define an asset property's
  alias, see
  [UpdateAssetProperty](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html).
  """
  def get_interpolated_asset_property_values(
        %Client{} = client,
        asset_id \\ nil,
        end_time_in_seconds,
        end_time_offset_in_nanos \\ nil,
        interval_in_seconds,
        interval_window_in_seconds \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        property_alias \\ nil,
        property_id \\ nil,
        quality,
        start_time_in_seconds,
        start_time_offset_in_nanos \\ nil,
        type,
        options \\ []
      ) do
    url_path = "/properties/interpolated"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_time_offset_in_nanos) do
        [{"startTimeOffsetInNanos", start_time_offset_in_nanos} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_time_in_seconds) do
        [{"startTimeInSeconds", start_time_in_seconds} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(quality) do
        [{"quality", quality} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(property_id) do
        [{"propertyId", property_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(property_alias) do
        [{"propertyAlias", property_alias} | query_params]
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

    query_params =
      if !is_nil(interval_window_in_seconds) do
        [{"intervalWindowInSeconds", interval_window_in_seconds} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(interval_in_seconds) do
        [{"intervalInSeconds", interval_in_seconds} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time_offset_in_nanos) do
        [{"endTimeOffsetInNanos", end_time_offset_in_nanos} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time_in_seconds) do
        [{"endTimeInSeconds", end_time_in_seconds} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(asset_id) do
        [{"assetId", asset_id} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves a paginated list of access policies for an identity (an IAM Identity
  Center user, an IAM Identity Center group, or an IAM user) or an IoT SiteWise
  Monitor resource (a portal or project).
  """
  def list_access_policies(
        %Client{} = client,
        iam_arn \\ nil,
        identity_id \\ nil,
        identity_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        resource_id \\ nil,
        resource_type \\ nil,
        options \\ []
      ) do
    url_path = "/access-policies"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_id) do
        [{"resourceId", resource_id} | query_params]
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

    query_params =
      if !is_nil(identity_type) do
        [{"identityType", identity_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(identity_id) do
        [{"identityId", identity_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(iam_arn) do
        [{"iamArn", iam_arn} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of actions for a specific target resource.
  """
  def list_actions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        target_resource_id,
        target_resource_type,
        options \\ []
      ) do
    url_path = "/actions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target_resource_type) do
        [{"targetResourceType", target_resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(target_resource_id) do
        [{"targetResourceId", target_resource_id} | query_params]
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

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves a paginated list of composite models associated with the asset model
  """
  def list_asset_model_composite_models(
        %Client{} = client,
        asset_model_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/composite-models"
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

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves a paginated list of properties associated with an asset model.

  If you update properties associated with the model before you finish listing all
  the properties, you need to start all over again.
  """
  def list_asset_model_properties(
        %Client{} = client,
        asset_model_id,
        filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/properties"
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

    query_params =
      if !is_nil(filter) do
        [{"filter", filter} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves a paginated list of summaries of all asset models.
  """
  def list_asset_models(
        %Client{} = client,
        asset_model_types \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/asset-models"
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

    query_params =
      if !is_nil(asset_model_types) do
        [{"assetModelTypes", asset_model_types} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves a paginated list of properties associated with an asset.

  If you update properties associated with the model before you finish listing all
  the properties, you need to start all over again.
  """
  def list_asset_properties(
        %Client{} = client,
        asset_id,
        filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}/properties"
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

    query_params =
      if !is_nil(filter) do
        [{"filter", filter} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves a paginated list of asset relationships for an asset.

  You can use this operation to identify an asset's root asset and all associated
  assets between that asset and its root.
  """
  def list_asset_relationships(
        %Client{} = client,
        asset_id,
        max_results \\ nil,
        next_token \\ nil,
        traversal_type,
        options \\ []
      ) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}/assetRelationships"
    headers = []
    query_params = []

    query_params =
      if !is_nil(traversal_type) do
        [{"traversalType", traversal_type} | query_params]
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

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves a paginated list of asset summaries.

  You can use this operation to do the following:

    * List assets based on a specific asset model.

    * List top-level assets.

  You can't use this operation to list all assets. To retrieve summaries for all
  of your assets, use
  [ListAssetModels](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_ListAssetModels.html)
  to get all of your asset model IDs. Then, use ListAssets to get all assets for
  each asset model.
  """
  def list_assets(
        %Client{} = client,
        asset_model_id \\ nil,
        filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/assets"
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

    query_params =
      if !is_nil(filter) do
        [{"filter", filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(asset_model_id) do
        [{"assetModelId", asset_model_id} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves a paginated list of associated assets.

  You can use this operation to do the following:

    * List child assets associated to a parent asset by a hierarchy that
  you specify.

    * List an asset's parent asset.
  """
  def list_associated_assets(
        %Client{} = client,
        asset_id,
        hierarchy_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        traversal_direction \\ nil,
        options \\ []
      ) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}/hierarchies"
    headers = []
    query_params = []

    query_params =
      if !is_nil(traversal_direction) do
        [{"traversalDirection", traversal_direction} | query_params]
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

    query_params =
      if !is_nil(hierarchy_id) do
        [{"hierarchyId", hierarchy_id} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves a paginated list of bulk import job requests.

  For more information, see [List bulk import jobs (CLI)](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ListBulkImportJobs.html)
  in the *IoT SiteWise User Guide*.
  """
  def list_bulk_import_jobs(
        %Client{} = client,
        filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/jobs"
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

    query_params =
      if !is_nil(filter) do
        [{"filter", filter} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "data.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves a paginated list of composition relationships for an asset model of
  type `COMPONENT_MODEL`.
  """
  def list_composition_relationships(
        %Client{} = client,
        asset_model_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/composition-relationships"
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

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves a paginated list of dashboards for an IoT SiteWise Monitor project.
  """
  def list_dashboards(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        project_id,
        options \\ []
      ) do
    url_path = "/dashboards"
    headers = []
    query_params = []

    query_params =
      if !is_nil(project_id) do
        [{"projectId", project_id} | query_params]
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

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of gateways.
  """
  def list_gateways(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/20200301/gateways"
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

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves a paginated list of IoT SiteWise Monitor portals.
  """
  def list_portals(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/portals"
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

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of assets associated with an IoT SiteWise Monitor
  project.
  """
  def list_project_assets(
        %Client{} = client,
        project_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}/assets"
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

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of projects for an IoT SiteWise Monitor portal.
  """
  def list_projects(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        portal_id,
        options \\ []
      ) do
    url_path = "/projects"
    headers = []
    query_params = []

    query_params =
      if !is_nil(portal_id) do
        [{"portalId", portal_id} | query_params]
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

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the list of tags for an IoT SiteWise resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves a paginated list of time series (data streams).
  """
  def list_time_series(
        %Client{} = client,
        alias_prefix \\ nil,
        asset_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        time_series_type \\ nil,
        options \\ []
      ) do
    url_path = "/timeseries/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(time_series_type) do
        [{"timeSeriesType", time_series_type} | query_params]
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

    query_params =
      if !is_nil(asset_id) do
        [{"assetId", asset_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(alias_prefix) do
        [{"aliasPrefix", alias_prefix} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Sets the default encryption configuration for the Amazon Web Services account.

  For more information, see [Key management](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html)
  in the *IoT SiteWise User Guide*.
  """
  def put_default_encryption_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configuration/account/encryption"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Sets logging options for IoT SiteWise.
  """
  def put_logging_options(%Client{} = client, input, options \\ []) do
    url_path = "/logging"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Configures storage settings for IoT SiteWise.
  """
  def put_storage_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configuration/account/storage"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Adds tags to an IoT SiteWise resource.

  If a tag already exists for the resource, this operation updates the tag's
  value.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes a tag from an IoT SiteWise resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"},
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates an existing access policy that specifies an identity's access to an IoT
  SiteWise Monitor portal or project resource.
  """
  def update_access_policy(%Client{} = client, access_policy_id, input, options \\ []) do
    url_path = "/access-policies/#{AWS.Util.encode_uri(access_policy_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an asset's name.

  For more information, see [Updating assets and models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html)
  in the *IoT SiteWise User Guide*.
  """
  def update_asset(%Client{} = client, asset_id, input, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(asset_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates an asset model and all of the assets that were created from the model.

  Each asset created from the model inherits the updated asset model's property
  and hierarchy definitions. For more information, see [Updating assets and models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html)
  in the *IoT SiteWise User Guide*.

  This operation overwrites the existing model with the provided model. To avoid
  deleting your asset model's properties or hierarchies, you must include their
  IDs and definitions in the updated asset model payload. For more information,
  see
  [DescribeAssetModel](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModel.html).

  If you remove a property from an asset model, IoT SiteWise deletes all previous
  data for that property. If you remove a hierarchy definition from an asset
  model, IoT SiteWise disassociates every asset associated with that hierarchy.
  You can't change the type or data type of an existing property.
  """
  def update_asset_model(%Client{} = client, asset_model_id, input, options \\ []) do
    url_path = "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates a composite model and all of the assets that were created from the
  model.

  Each asset created from the model inherits the updated asset model's property
  and hierarchy definitions. For more information, see [Updating assets and models](https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html)
  in the *IoT SiteWise User Guide*.

  If you remove a property from a composite asset model, IoT SiteWise deletes all
  previous data for that property. You can’t change the type or data type of an
  existing property.

  To replace an existing composite asset model property with a new one with the
  same `name`, do the following:

     Submit an `UpdateAssetModelCompositeModel` request with the entire
  existing property removed.

     Submit a second `UpdateAssetModelCompositeModel` request that
  includes the new property. The new asset property will have the same `name` as
  the previous one and IoT SiteWise will generate a new unique `id`.
  """
  def update_asset_model_composite_model(
        %Client{} = client,
        asset_model_composite_model_id,
        asset_model_id,
        input,
        options \\ []
      ) do
    url_path =
      "/asset-models/#{AWS.Util.encode_uri(asset_model_id)}/composite-models/#{AWS.Util.encode_uri(asset_model_composite_model_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates an asset property's alias and notification state.

  This operation overwrites the property's existing alias and notification state.
  To keep your existing property's alias or notification state, you must include
  the existing values in the UpdateAssetProperty request. For more information,
  see
  [DescribeAssetProperty](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetProperty.html).
  """
  def update_asset_property(%Client{} = client, asset_id, property_id, input, options \\ []) do
    url_path =
      "/assets/#{AWS.Util.encode_uri(asset_id)}/properties/#{AWS.Util.encode_uri(property_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates an IoT SiteWise Monitor dashboard.
  """
  def update_dashboard(%Client{} = client, dashboard_id, input, options \\ []) do
    url_path = "/dashboards/#{AWS.Util.encode_uri(dashboard_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a gateway's name.
  """
  def update_gateway(%Client{} = client, gateway_id, input, options \\ []) do
    url_path = "/20200301/gateways/#{AWS.Util.encode_uri(gateway_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates a gateway capability configuration or defines a new capability
  configuration.

  Each gateway capability defines data sources for a gateway. A capability
  configuration can contain multiple data source configurations. If you define
  OPC-UA sources for a gateway in the IoT SiteWise console, all of your OPC-UA
  sources are stored in one capability configuration. To list all capability
  configurations for a gateway, use
  [DescribeGateway](https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html).
  """
  def update_gateway_capability_configuration(
        %Client{} = client,
        gateway_id,
        input,
        options \\ []
      ) do
    url_path = "/20200301/gateways/#{AWS.Util.encode_uri(gateway_id)}/capability"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Updates an IoT SiteWise Monitor portal.
  """
  def update_portal(%Client{} = client, portal_id, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_uri(portal_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates an IoT SiteWise Monitor project.
  """
  def update_project(%Client{} = client, project_id, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "monitor.")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
