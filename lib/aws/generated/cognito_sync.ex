# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CognitoSync do
  @moduledoc """
  Amazon Cognito Sync

  Amazon Cognito Sync provides an AWS service and client library that enable
  cross-device syncing of application-related user data.

  High-level client libraries are available for both iOS and Android. You can use
  these libraries to persist data locally so that it's available even if the
  device is offline. Developer credentials don't need to be stored on the mobile
  device to access the service. You can use Amazon Cognito to obtain a normalized
  user ID and credentials. User data is persisted in a dataset that can store up
  to 1 MB of key-value pairs, and you can have up to 20 datasets per user
  identity.

  With Amazon Cognito Sync, the data stored for each identity is accessible only
  to credentials assigned to that identity. In order to use the Cognito Sync
  service, you need to make API calls using credentials retrieved with [Amazon Cognito Identity
  service](http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html).

  If you want to use Cognito Sync in an Android or iOS application, you will
  probably want to make API calls via the AWS Mobile SDK. To learn more, see the
  [Developer Guide for Android](http://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-sync.html)
  and the [Developer Guide for iOS](http://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-sync.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2014-06-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cognito-sync",
      global?: false,
      protocol: "rest-json",
      service_id: "Cognito Sync",
      signature_version: "v4",
      signing_name: "cognito-sync",
      target_prefix: nil
    }
  end

  @doc """
  Initiates a bulk publish of all existing datasets for an Identity Pool to the
  configured stream.

  Customers are limited to one successful bulk publish per 24 hours. Bulk publish
  is an asynchronous request, customers can see the status of the request via the
  GetBulkPublishDetails operation.

  This API can only be called with developer credentials. You cannot call this API
  with the temporary user credentials provided by Cognito Identity.
  """
  def bulk_publish(%Client{} = client, identity_pool_id, input, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/bulkpublish"
    headers = []
    query_params = []

    meta = metadata()

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
  Deletes the specific dataset.

  The dataset will be deleted permanently, and the action can't be undone.
  Datasets that this dataset was merged with will no longer report the merge. Any
  subsequent operation on this dataset will result in a ResourceNotFoundException.

  This API can be called with temporary user credentials provided by Cognito
  Identity or with developer credentials.
  """
  def delete_dataset(
        %Client{} = client,
        dataset_name,
        identity_id,
        identity_pool_id,
        input,
        options \\ []
      ) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identities/#{AWS.Util.encode_uri(identity_id)}/datasets/#{AWS.Util.encode_uri(dataset_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets meta data about a dataset by identity and dataset name.

  With Amazon Cognito Sync, each identity has access only to its own data. Thus,
  the credentials used to make this API call need to have access to the identity
  data.

  This API can be called with temporary user credentials provided by Cognito
  Identity or with developer credentials. You should use Cognito Identity
  credentials to make this API call.
  """
  def describe_dataset(
        %Client{} = client,
        dataset_name,
        identity_id,
        identity_pool_id,
        options \\ []
      ) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identities/#{AWS.Util.encode_uri(identity_id)}/datasets/#{AWS.Util.encode_uri(dataset_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets usage details (for example, data storage) about a particular identity pool.

  This API can only be called with developer credentials. You cannot call this API
  with the temporary user credentials provided by Cognito Identity.
  """
  def describe_identity_pool_usage(%Client{} = client, identity_pool_id, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets usage information for an identity, including number of datasets and data
  usage.

  This API can be called with temporary user credentials provided by Cognito
  Identity or with developer credentials.
  """
  def describe_identity_usage(%Client{} = client, identity_id, identity_pool_id, options \\ []) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identities/#{AWS.Util.encode_uri(identity_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the status of the last BulkPublish operation for an identity pool.

  This API can only be called with developer credentials. You cannot call this API
  with the temporary user credentials provided by Cognito Identity.
  """
  def get_bulk_publish_details(%Client{} = client, identity_pool_id, input, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/getBulkPublishDetails"
    headers = []
    query_params = []

    meta = metadata()

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
  Gets the events and the corresponding Lambda functions associated with an
  identity pool.

  This API can only be called with developer credentials. You cannot call this API
  with the temporary user credentials provided by Cognito Identity.
  """
  def get_cognito_events(%Client{} = client, identity_pool_id, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/events"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the configuration settings of an identity pool.

  This API can only be called with developer credentials. You cannot call this API
  with the temporary user credentials provided by Cognito Identity.
  """
  def get_identity_pool_configuration(%Client{} = client, identity_pool_id, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists datasets for an identity.

  With Amazon Cognito Sync, each identity has access only to its own data. Thus,
  the credentials used to make this API call need to have access to the identity
  data.

  ListDatasets can be called with temporary user credentials provided by Cognito
  Identity or with developer credentials. You should use the Cognito Identity
  credentials to make this API call.
  """
  def list_datasets(
        %Client{} = client,
        identity_id,
        identity_pool_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identities/#{AWS.Util.encode_uri(identity_id)}/datasets"

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
  Gets a list of identity pools registered with Cognito.

  ListIdentityPoolUsage can only be called with developer credentials. You cannot
  make this API call with the temporary user credentials provided by Cognito
  Identity.
  """
  def list_identity_pool_usage(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/identitypools"
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
  Gets paginated records, optionally changed after a particular sync count for a
  dataset and identity.

  With Amazon Cognito Sync, each identity has access only to its own data. Thus,
  the credentials used to make this API call need to have access to the identity
  data.

  ListRecords can be called with temporary user credentials provided by Cognito
  Identity or with developer credentials. You should use Cognito Identity
  credentials to make this API call.
  """
  def list_records(
        %Client{} = client,
        dataset_name,
        identity_id,
        identity_pool_id,
        last_sync_count \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        sync_session_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identities/#{AWS.Util.encode_uri(identity_id)}/datasets/#{AWS.Util.encode_uri(dataset_name)}/records"

    headers = []
    query_params = []

    query_params =
      if !is_nil(sync_session_token) do
        [{"syncSessionToken", sync_session_token} | query_params]
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
      if !is_nil(last_sync_count) do
        [{"lastSyncCount", last_sync_count} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Registers a device to receive push sync notifications.

  This API can only be called with temporary credentials provided by Cognito
  Identity. You cannot call this API with developer credentials.
  """
  def register_device(%Client{} = client, identity_id, identity_pool_id, input, options \\ []) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identity/#{AWS.Util.encode_uri(identity_id)}/device"

    headers = []
    query_params = []

    meta = metadata()

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
  Sets the AWS Lambda function for a given event type for an identity pool.

  This request only updates the key/value pair specified. Other key/values pairs
  are not updated. To remove a key value pair, pass a empty value for the
  particular key.

  This API can only be called with developer credentials. You cannot call this API
  with the temporary user credentials provided by Cognito Identity.
  """
  def set_cognito_events(%Client{} = client, identity_pool_id, input, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/events"
    headers = []
    query_params = []

    meta = metadata()

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
  Sets the necessary configuration for push sync.

  This API can only be called with developer credentials. You cannot call this API
  with the temporary user credentials provided by Cognito Identity.
  """
  def set_identity_pool_configuration(%Client{} = client, identity_pool_id, input, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/configuration"
    headers = []
    query_params = []

    meta = metadata()

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
  Subscribes to receive notifications when a dataset is modified by another
  device.

  This API can only be called with temporary credentials provided by Cognito
  Identity. You cannot call this API with developer credentials.
  """
  def subscribe_to_dataset(
        %Client{} = client,
        dataset_name,
        device_id,
        identity_id,
        identity_pool_id,
        input,
        options \\ []
      ) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identities/#{AWS.Util.encode_uri(identity_id)}/datasets/#{AWS.Util.encode_uri(dataset_name)}/subscriptions/#{AWS.Util.encode_uri(device_id)}"

    headers = []
    query_params = []

    meta = metadata()

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
  Unsubscribes from receiving notifications when a dataset is modified by another
  device.

  This API can only be called with temporary credentials provided by Cognito
  Identity. You cannot call this API with developer credentials.
  """
  def unsubscribe_from_dataset(
        %Client{} = client,
        dataset_name,
        device_id,
        identity_id,
        identity_pool_id,
        input,
        options \\ []
      ) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identities/#{AWS.Util.encode_uri(identity_id)}/datasets/#{AWS.Util.encode_uri(dataset_name)}/subscriptions/#{AWS.Util.encode_uri(device_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Posts updates to records and adds and deletes records for a dataset and user.

  The sync count in the record patch is your last known sync count for that
  record. The server will reject an UpdateRecords request with a
  ResourceConflictException if you try to patch a record with a new value but a
  stale sync count.

  For example, if the sync count on the server is 5 for a key called highScore and
  you try and submit a new highScore with sync count of 4, the request will be
  rejected. To obtain the current sync count for a record, call ListRecords. On a
  successful update of the record, the response returns the new sync count for
  that record. You should present that sync count the next time you try to update
  that same record. When the record does not exist, specify the sync count as 0.

  This API can be called with temporary user credentials provided by Cognito
  Identity or with developer credentials.
  """
  def update_records(
        %Client{} = client,
        dataset_name,
        identity_id,
        identity_pool_id,
        input,
        options \\ []
      ) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identities/#{AWS.Util.encode_uri(identity_id)}/datasets/#{AWS.Util.encode_uri(dataset_name)}"

    {headers, input} =
      [
        {"ClientContext", "x-amz-Client-Context"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

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
end
