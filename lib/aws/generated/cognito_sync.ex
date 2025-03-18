# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CognitoSync do
  @moduledoc """
  Amazon Cognito Sync

  Amazon Cognito Sync provides an AWS service and client library that enable
  cross-device syncing of
  application-related user data.

  High-level client libraries are available for both iOS and
  Android. You can use these libraries to persist data locally so that it's
  available even if
  the device is offline. Developer credentials don't need to be stored on the
  mobile device
  to access the service. You can use Amazon Cognito to obtain a normalized user ID
  and
  credentials. User data is persisted in a dataset that can store up to 1 MB of
  key-value
  pairs, and you can have up to 20 datasets per user identity.

  With Amazon Cognito Sync, the data stored for each identity is accessible only
  to
  credentials assigned to that identity. In order to use the Cognito Sync service,
  you need
  to make API calls using credentials retrieved with [Amazon Cognito Identity service](http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html).

  If you want to use Cognito Sync in an Android or iOS application, you will
  probably want to
  make API calls via the AWS Mobile SDK. To learn more, see the [Developer Guide for
  Android](http://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-sync.html)
  and the [Developer Guide for iOS](http://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-sync.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      register_device_response() :: %{
        "DeviceId" => String.t()
      }

  """
  @type register_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_records_response() :: %{
        "Count" => integer(),
        "DatasetDeletedAfterRequestedSyncCount" => boolean(),
        "DatasetExists" => boolean(),
        "DatasetSyncCount" => float(),
        "LastModifiedBy" => String.t(),
        "MergedDatasetNames" => list(String.t()()),
        "NextToken" => String.t(),
        "Records" => list(record()()),
        "SyncSessionToken" => String.t()
      }

  """
  @type list_records_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_identity_pool_usage_request() :: %{}

  """
  @type describe_identity_pool_usage_request() :: %{}

  @typedoc """

  ## Example:

      record() :: %{
        "DeviceLastModifiedDate" => non_neg_integer(),
        "Key" => String.t(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "SyncCount" => float(),
        "Value" => String.t()
      }

  """
  @type record() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_dataset_response() :: %{
        "Dataset" => dataset()
      }

  """
  @type delete_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_identity_pool_usage_response() :: %{
        "Count" => integer(),
        "IdentityPoolUsages" => list(identity_pool_usage()()),
        "MaxResults" => integer(),
        "NextToken" => String.t()
      }

  """
  @type list_identity_pool_usage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_bulk_publish_details_request() :: %{}

  """
  @type get_bulk_publish_details_request() :: %{}

  @typedoc """

  ## Example:

      push_sync() :: %{
        "ApplicationArns" => list(String.t()()),
        "RoleArn" => String.t()
      }

  """
  @type push_sync() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_identity_usage_response() :: %{
        "IdentityUsage" => identity_usage()
      }

  """
  @type describe_identity_usage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bulk_publish_response() :: %{
        "IdentityPoolId" => String.t()
      }

  """
  @type bulk_publish_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_identity_pool_usage_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_identity_pool_usage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_datasets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_datasets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      set_identity_pool_configuration_response() :: %{
        "CognitoStreams" => cognito_streams(),
        "IdentityPoolId" => String.t(),
        "PushSync" => push_sync()
      }

  """
  @type set_identity_pool_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_records_request() :: %{
        optional("ClientContext") => String.t(),
        optional("DeviceId") => String.t(),
        optional("RecordPatches") => list(record_patch()()),
        required("SyncSessionToken") => String.t()
      }

  """
  @type update_records_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cognito_events_request() :: %{}

  """
  @type get_cognito_events_request() :: %{}

  @typedoc """

  ## Example:

      cognito_streams() :: %{
        "RoleArn" => String.t(),
        "StreamName" => String.t(),
        "StreamingStatus" => list(any())
      }

  """
  @type cognito_streams() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "message" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset() :: %{
        "CreationDate" => non_neg_integer(),
        "DataStorage" => float(),
        "DatasetName" => String.t(),
        "IdentityId" => String.t(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "NumRecords" => float()
      }

  """
  @type dataset() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_lambda_function_output_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_lambda_function_output_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      already_streamed_exception() :: %{
        "message" => String.t()
      }

  """
  @type already_streamed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bulk_publish_request() :: %{}

  """
  @type bulk_publish_request() :: %{}

  @typedoc """

  ## Example:

      list_records_request() :: %{
        optional("LastSyncCount") => float(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SyncSessionToken") => String.t()
      }

  """
  @type list_records_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      identity_pool_usage() :: %{
        "DataStorage" => float(),
        "IdentityPoolId" => String.t(),
        "LastModifiedDate" => non_neg_integer(),
        "SyncSessionsCount" => float()
      }

  """
  @type identity_pool_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      duplicate_request_exception() :: %{
        "message" => String.t()
      }

  """
  @type duplicate_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_bulk_publish_details_response() :: %{
        "BulkPublishCompleteTime" => non_neg_integer(),
        "BulkPublishStartTime" => non_neg_integer(),
        "BulkPublishStatus" => list(any()),
        "FailureMessage" => String.t(),
        "IdentityPoolId" => String.t()
      }

  """
  @type get_bulk_publish_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unsubscribe_from_dataset_request() :: %{}

  """
  @type unsubscribe_from_dataset_request() :: %{}

  @typedoc """

  ## Example:

      describe_identity_usage_request() :: %{}

  """
  @type describe_identity_usage_request() :: %{}

  @typedoc """

  ## Example:

      lambda_throttled_exception() :: %{
        "message" => String.t()
      }

  """
  @type lambda_throttled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_authorized_exception() :: %{
        "message" => String.t()
      }

  """
  @type not_authorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      set_cognito_events_request() :: %{
        required("Events") => map()
      }

  """
  @type set_cognito_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_identity_pool_configuration_response() :: %{
        "CognitoStreams" => cognito_streams(),
        "IdentityPoolId" => String.t(),
        "PushSync" => push_sync()
      }

  """
  @type get_identity_pool_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_configuration_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      concurrent_modification_exception() :: %{
        "message" => String.t()
      }

  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dataset_response() :: %{
        "Dataset" => dataset()
      }

  """
  @type describe_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_records_response() :: %{
        "Records" => list(record()())
      }

  """
  @type update_records_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_device_request() :: %{
        required("Platform") => list(any()),
        required("Token") => String.t()
      }

  """
  @type register_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      record_patch() :: %{
        "DeviceLastModifiedDate" => non_neg_integer(),
        "Key" => String.t(),
        "Op" => list(any()),
        "SyncCount" => float(),
        "Value" => String.t()
      }

  """
  @type record_patch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      set_identity_pool_configuration_request() :: %{
        optional("CognitoStreams") => cognito_streams(),
        optional("PushSync") => push_sync()
      }

  """
  @type set_identity_pool_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cognito_events_response() :: %{
        "Events" => map()
      }

  """
  @type get_cognito_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dataset_request() :: %{}

  """
  @type describe_dataset_request() :: %{}

  @typedoc """

  ## Example:

      delete_dataset_request() :: %{}

  """
  @type delete_dataset_request() :: %{}

  @typedoc """

  ## Example:

      list_datasets_response() :: %{
        "Count" => integer(),
        "Datasets" => list(dataset()()),
        "NextToken" => String.t()
      }

  """
  @type list_datasets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      identity_usage() :: %{
        "DataStorage" => float(),
        "DatasetCount" => integer(),
        "IdentityId" => String.t(),
        "IdentityPoolId" => String.t(),
        "LastModifiedDate" => non_neg_integer()
      }

  """
  @type identity_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subscribe_to_dataset_request() :: %{}

  """
  @type subscribe_to_dataset_request() :: %{}

  @typedoc """

  ## Example:

      unsubscribe_from_dataset_response() :: %{}

  """
  @type unsubscribe_from_dataset_response() :: %{}

  @typedoc """

  ## Example:

      resource_conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_identity_pool_configuration_request() :: %{}

  """
  @type get_identity_pool_configuration_request() :: %{}

  @typedoc """

  ## Example:

      internal_error_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subscribe_to_dataset_response() :: %{}

  """
  @type subscribe_to_dataset_response() :: %{}

  @typedoc """

  ## Example:

      describe_identity_pool_usage_response() :: %{
        "IdentityPoolUsage" => identity_pool_usage()
      }

  """
  @type describe_identity_pool_usage_response() :: %{String.t() => any()}

  @type bulk_publish_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | duplicate_request_exception()
          | already_streamed_exception()
          | resource_not_found_exception()

  @type delete_dataset_errors() ::
          internal_error_exception()
          | resource_conflict_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_dataset_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_identity_pool_usage_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_identity_usage_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_bulk_publish_details_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()

  @type get_cognito_events_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_identity_pool_configuration_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_datasets_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | too_many_requests_exception()

  @type list_identity_pool_usage_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | too_many_requests_exception()

  @type list_records_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | too_many_requests_exception()

  @type register_device_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | invalid_configuration_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type set_cognito_events_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type set_identity_pool_configuration_errors() ::
          internal_error_exception()
          | concurrent_modification_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type subscribe_to_dataset_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | invalid_configuration_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type unsubscribe_from_dataset_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | invalid_configuration_exception()
          | not_authorized_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_records_errors() ::
          internal_error_exception()
          | resource_conflict_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | not_authorized_exception()
          | lambda_throttled_exception()
          | invalid_lambda_function_output_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2014-06-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cognito-sync",
      global?: false,
      hostname: nil,
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
  @spec bulk_publish(map(), String.t(), bulk_publish_request(), list()) ::
          {:ok, bulk_publish_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, bulk_publish_errors()}
  def bulk_publish(%Client{} = client, identity_pool_id, input, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/bulkpublish"
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
  Deletes the specific dataset.

  The dataset will be deleted permanently, and the action can't
  be undone. Datasets that this dataset was merged with will no longer report the
  merge. Any
  subsequent operation on this dataset will result in a
  ResourceNotFoundException.

  This API can be called with temporary user credentials provided by Cognito
  Identity or with developer credentials.
  """
  @spec delete_dataset(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_dataset_request(),
          list()
        ) ::
          {:ok, delete_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_dataset_errors()}
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
  Gets meta data about a dataset by identity and dataset name.

  With Amazon Cognito Sync, each
  identity has access only to its own data. Thus, the credentials used to make
  this API call
  need to have access to the identity data.

  This API can be called with temporary user credentials provided by Cognito
  Identity or with developer credentials. You should use Cognito Identity
  credentials to make this API call.
  """
  @spec describe_dataset(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_dataset_errors()}
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

  <examples>
  <example>
  <name>DescribeIdentityPoolUsage</name>
  <description>The following examples have been edited for
  readability.</description>
  <request>
  POST / HTTP/1.1
  CONTENT-TYPE: application/json
  X-AMZN-REQUESTID: 8dc0e749-c8cd-48bd-8520-da6be00d528b
  X-AMZ-TARGET:
  com.amazonaws.cognito.sync.model.AWSCognitoSyncService.DescribeIdentityPoolUsage
  HOST: cognito-sync.us-east-1.amazonaws.com:443
  X-AMZ-DATE: 20141111T205737Z
  AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>,
  SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid,
  Signature=<signature>

  {
  "Operation": "com.amazonaws.cognito.sync.model#DescribeIdentityPoolUsage",
  "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
  "Input":
  {
  "IdentityPoolId": "IDENTITY_POOL_ID"
  }
  }
  </signature></credential></request>
  <response>
  1.1 200 OK
  x-amzn-requestid: 8dc0e749-c8cd-48bd-8520-da6be00d528b
  content-type: application/json
  content-length: 271
  date: Tue, 11 Nov 2014 20:57:37 GMT

  {
  "Output":
  {
  "__type": "com.amazonaws.cognito.sync.model#DescribeIdentityPoolUsageResponse",
  "IdentityPoolUsage":
  {
  "DataStorage": 0,
  "IdentityPoolId": "IDENTITY_POOL_ID",
  "LastModifiedDate": 1.413231134115E9,
  "SyncSessionsCount": null
  }
  },
  "Version": "1.0"
  }
  </response>
  </example>
  </examples>
  """
  @spec describe_identity_pool_usage(map(), String.t(), list()) ::
          {:ok, describe_identity_pool_usage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_identity_pool_usage_errors()}
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

  <examples>
  <example>
  <name>DescribeIdentityUsage</name>
  <description>The following examples have been edited for
  readability.</description>
  <request>
  POST / HTTP/1.1
  CONTENT-TYPE: application/json
  X-AMZN-REQUESTID: 33f9b4e4-a177-4aad-a3bb-6edb7980b283
  X-AMZ-TARGET:
  com.amazonaws.cognito.sync.model.AWSCognitoSyncService.DescribeIdentityUsage
  HOST: cognito-sync.us-east-1.amazonaws.com:443
  X-AMZ-DATE: 20141111T215129Z
  AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>,
  SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid,
  Signature=<signature>

  {
  "Operation": "com.amazonaws.cognito.sync.model#DescribeIdentityUsage",
  "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
  "Input":
  {
  "IdentityPoolId": "IDENTITY_POOL_ID",
  "IdentityId": "IDENTITY_ID"
  }
  }
  </signature></credential></request>
  <response>
  1.1 200 OK
  x-amzn-requestid: 33f9b4e4-a177-4aad-a3bb-6edb7980b283
  content-type: application/json
  content-length: 318
  date: Tue, 11 Nov 2014 21:51:29 GMT

  {
  "Output":
  {
  "__type": "com.amazonaws.cognito.sync.model#DescribeIdentityUsageResponse",
  "IdentityUsage":
  {
  "DataStorage": 16,
  "DatasetCount": 1,
  "IdentityId": "IDENTITY_ID",
  "IdentityPoolId": "IDENTITY_POOL_ID",
  "LastModifiedDate": 1.412974081336E9
  }
  },
  "Version": "1.0"
  }
  </response>
  </example>
  </examples>
  """
  @spec describe_identity_usage(map(), String.t(), String.t(), list()) ::
          {:ok, describe_identity_usage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_identity_usage_errors()}
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
  @spec get_bulk_publish_details(map(), String.t(), get_bulk_publish_details_request(), list()) ::
          {:ok, get_bulk_publish_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bulk_publish_details_errors()}
  def get_bulk_publish_details(%Client{} = client, identity_pool_id, input, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/getBulkPublishDetails"
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
  Gets the events and the corresponding Lambda functions associated with an
  identity pool.

  This API can only be called with developer credentials. You cannot call this API
  with the temporary user credentials provided by Cognito Identity.
  """
  @spec get_cognito_events(map(), String.t(), list()) ::
          {:ok, get_cognito_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cognito_events_errors()}
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

  <examples>
  <example>
  <name>GetIdentityPoolConfiguration</name>
  <description>The following examples have been edited for
  readability.</description>
  <request>
  POST / HTTP/1.1
  CONTENT-TYPE: application/json
  X-AMZN-REQUESTID: b1cfdd4b-f620-4fe4-be0f-02024a1d33da
  X-AMZ-TARGET:
  com.amazonaws.cognito.sync.model.AWSCognitoSyncService.GetIdentityPoolConfiguration
  HOST: cognito-sync.us-east-1.amazonaws.com
  X-AMZ-DATE: 20141004T195722Z
  AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>,
  SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target,
  Signature=<signature>

  {
  "Operation": "com.amazonaws.cognito.sync.model#GetIdentityPoolConfiguration",
  "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
  "Input":
  {
  "IdentityPoolId": "ID_POOL_ID"
  }
  }

  </signature></credential></request>
  <response>
  1.1 200 OK
  x-amzn-requestid: b1cfdd4b-f620-4fe4-be0f-02024a1d33da
  date: Sat, 04 Oct 2014 19:57:22 GMT
  content-type: application/json
  content-length: 332

  {
  "Output":
  {
  "__type":
  "com.amazonaws.cognito.sync.model#GetIdentityPoolConfigurationResponse",
  "IdentityPoolId": "ID_POOL_ID",
  "PushSync":
  {
  "ApplicationArns": ["PLATFORMARN1", "PLATFORMARN2"],
  "RoleArn": "ROLEARN"
  }
  },
  "Version": "1.0"
  }
  </response>
  </example>
  </examples>
  """
  @spec get_identity_pool_configuration(map(), String.t(), list()) ::
          {:ok, get_identity_pool_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_identity_pool_configuration_errors()}
  def get_identity_pool_configuration(%Client{} = client, identity_pool_id, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists datasets for an identity.

  With Amazon Cognito Sync, each identity has access only to
  its own data. Thus, the credentials used to make this API call need to have
  access to the
  identity data.

  ListDatasets can be called with temporary user credentials provided by Cognito
  Identity or with developer credentials. You should use the Cognito Identity
  credentials to
  make this API call.

  <examples>
  <example>
  <name>ListDatasets</name>
  <description>The following examples have been edited for
  readability.</description>
  <request>
  POST / HTTP/1.1
  CONTENT-TYPE: application/json
  X-AMZN-REQUESTID: 15225768-209f-4078-aaed-7494ace9f2db
  X-AMZ-TARGET:
  com.amazonaws.cognito.sync.model.AWSCognitoSyncService.ListDatasets
  HOST: cognito-sync.us-east-1.amazonaws.com:443
  X-AMZ-DATE: 20141111T215640Z
  AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>,
  SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid,
  Signature=<signature>

  {
  "Operation": "com.amazonaws.cognito.sync.model#ListDatasets",
  "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
  "Input":
  {
  "IdentityPoolId": "IDENTITY_POOL_ID",
  "IdentityId": "IDENTITY_ID",
  "MaxResults": "3"
  }
  }
  </signature></credential></request>
  <response>
  1.1 200 OK
  x-amzn-requestid: 15225768-209f-4078-aaed-7494ace9f2db,
  15225768-209f-4078-aaed-7494ace9f2db
  content-type: application/json
  content-length: 355
  date: Tue, 11 Nov 2014 21:56:40 GMT

  {
  "Output":
  {
  "__type": "com.amazonaws.cognito.sync.model#ListDatasetsResponse",
  "Count": 1,
  "Datasets": [
  {
  "CreationDate": 1.412974057151E9,
  "DataStorage": 16,
  "DatasetName": "my_list",
  "IdentityId": "IDENTITY_ID",
  "LastModifiedBy": "123456789012",
  "LastModifiedDate": 1.412974057244E9,
  "NumRecords": 1
  }],
  "NextToken": null
  },
  "Version": "1.0"
  }
  </response>
  </example>
  </examples>
  """
  @spec list_datasets(map(), String.t(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_datasets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_datasets_errors()}
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

  ListIdentityPoolUsage can only be called with developer credentials. You
  cannot make this API call with the temporary user credentials provided by
  Cognito
  Identity.

  <examples>
  <example>
  <name>ListIdentityPoolUsage</name>
  <description>The following examples have been edited for
  readability.</description>
  <request>
  POST / HTTP/1.1
  CONTENT-TYPE: application/json
  X-AMZN-REQUESTID: 9be7c425-ef05-48c0-aef3-9f0ff2fe17d3
  X-AMZ-TARGET:
  com.amazonaws.cognito.sync.model.AWSCognitoSyncService.ListIdentityPoolUsage
  HOST: cognito-sync.us-east-1.amazonaws.com:443
  X-AMZ-DATE: 20141111T211414Z
  AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>,
  SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid,
  Signature=<signature>

  {
  "Operation": "com.amazonaws.cognito.sync.model#ListIdentityPoolUsage",
  "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
  "Input":
  {
  "MaxResults": "2"
  }
  }
  </signature></credential></request>
  <response>
  1.1 200 OK
  x-amzn-requestid: 9be7c425-ef05-48c0-aef3-9f0ff2fe17d3
  content-type: application/json
  content-length: 519
  date: Tue, 11 Nov 2014 21:14:14 GMT

  {
  "Output":
  {
  "__type": "com.amazonaws.cognito.sync.model#ListIdentityPoolUsageResponse",
  "Count": 2,
  "IdentityPoolUsages": [
  {
  "DataStorage": 0,
  "IdentityPoolId": "IDENTITY_POOL_ID",
  "LastModifiedDate": 1.413836234607E9,
  "SyncSessionsCount": null
  },
  {
  "DataStorage": 0,
  "IdentityPoolId": "IDENTITY_POOL_ID",
  "LastModifiedDate": 1.410892165601E9,
  "SyncSessionsCount": null
  }],
  "MaxResults": 2,
  "NextToken": "dXMtZWFzdC0xOjBjMWJhMDUyLWUwOTgtNDFmYS1hNzZlLWVhYTJjMTI1Zjg2MQ=="
  },
  "Version": "1.0"
  }
  </response>
  </example>
  </examples>
  """
  @spec list_identity_pool_usage(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_identity_pool_usage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_identity_pool_usage_errors()}
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
  dataset and
  identity.

  With Amazon Cognito Sync, each identity has access only to its own data. Thus,
  the credentials used to make this API call need to have access to the identity
  data.

  ListRecords can be called with temporary user credentials provided by Cognito
  Identity or with developer credentials. You should use Cognito Identity
  credentials to make
  this API call.

  <examples>
  <example>
  <name>ListRecords</name>
  <description>The following examples have been edited for
  readability.</description>
  <request>
  POST / HTTP/1.1
  CONTENT-TYPE: application/json
  X-AMZN-REQUESTID: b3d2e31e-d6b7-4612-8e84-c9ba288dab5d
  X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.ListRecords
  HOST: cognito-sync.us-east-1.amazonaws.com:443
  X-AMZ-DATE: 20141111T183230Z
  AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>,
  SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid,
  Signature=<signature>

  {
  "Operation": "com.amazonaws.cognito.sync.model#ListRecords",
  "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
  "Input":
  {
  "IdentityPoolId": "IDENTITY_POOL_ID",
  "IdentityId": "IDENTITY_ID",
  "DatasetName": "newDataSet"
  }
  }
  </signature></credential></request>
  <response>
  1.1 200 OK
  x-amzn-requestid: b3d2e31e-d6b7-4612-8e84-c9ba288dab5d
  content-type: application/json
  content-length: 623
  date: Tue, 11 Nov 2014 18:32:30 GMT

  {
  "Output":
  {
  "__type": "com.amazonaws.cognito.sync.model#ListRecordsResponse",
  "Count": 0,
  "DatasetDeletedAfterRequestedSyncCount": false,
  "DatasetExists": false,
  "DatasetSyncCount": 0,
  "LastModifiedBy": null,
  "MergedDatasetNames": null,
  "NextToken": null,
  "Records": [],
  "SyncSessionToken": "SYNC_SESSION_TOKEN"
  },
  "Version": "1.0"
  }
  </response>
  </example>
  </examples>
  """
  @spec list_records(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_records_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_records_errors()}
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

  <examples>
  <example>
  <name>RegisterDevice</name>
  <description>The following examples have been edited for
  readability.</description>
  <request>
  POST / HTTP/1.1
  CONTENT-TYPE: application/json
  X-AMZN-REQUESTID: 368f9200-3eca-449e-93b3-7b9c08d8e185
  X-AMZ-TARGET:
  com.amazonaws.cognito.sync.model.AWSCognitoSyncService.RegisterDevice
  HOST: cognito-sync.us-east-1.amazonaws.com
  X-AMZ-DATE: 20141004T194643Z
  X-AMZ-SECURITY-TOKEN: <securitytoken>
  AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>,
  SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target,
  Signature=<signature>

  {
  "Operation": "com.amazonaws.cognito.sync.model#RegisterDevice",
  "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
  "Input":
  {
  "IdentityPoolId": "ID_POOL_ID",
  "IdentityId": "IDENTITY_ID",
  "Platform": "GCM",
  "Token": "PUSH_TOKEN"
  }
  }
  </signature></credential></securitytoken></request>
  <response>
  1.1 200 OK
  x-amzn-requestid: 368f9200-3eca-449e-93b3-7b9c08d8e185
  date: Sat, 04 Oct 2014 19:46:44 GMT
  content-type: application/json
  content-length: 145

  {
  "Output":
  {
  "__type": "com.amazonaws.cognito.sync.model#RegisterDeviceResponse",
  "DeviceId": "5cd28fbe-dd83-47ab-9f83-19093a5fb014"
  },
  "Version": "1.0"
  }
  </response>
  </example>
  </examples>
  """
  @spec register_device(map(), String.t(), String.t(), register_device_request(), list()) ::
          {:ok, register_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_device_errors()}
  def register_device(%Client{} = client, identity_id, identity_pool_id, input, options \\ []) do
    url_path =
      "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/identity/#{AWS.Util.encode_uri(identity_id)}/device"

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
  Sets the AWS Lambda function for a given event type for an identity pool.

  This request only updates the key/value pair specified. Other key/values pairs
  are not updated. To remove a key value pair, pass a empty value for the
  particular key.

  This API can only be called with developer credentials. You cannot call this API
  with the temporary user credentials provided by Cognito Identity.
  """
  @spec set_cognito_events(map(), String.t(), set_cognito_events_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_cognito_events_errors()}
  def set_cognito_events(%Client{} = client, identity_pool_id, input, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/events"
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
  Sets the necessary configuration for push sync.

  This API can only be called with developer credentials. You cannot call this API
  with the temporary user credentials provided by Cognito Identity.

  <examples>
  <example>
  <name>SetIdentityPoolConfiguration</name>
  <description>The following examples have been edited for
  readability.</description>
  <request>
  POST / HTTP/1.1
  CONTENT-TYPE: application/json
  X-AMZN-REQUESTID: a46db021-f5dd-45d6-af5b-7069fa4a211b
  X-AMZ-TARGET:
  com.amazonaws.cognito.sync.model.AWSCognitoSyncService.SetIdentityPoolConfiguration
  HOST: cognito-sync.us-east-1.amazonaws.com
  X-AMZ-DATE: 20141004T200006Z
  AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>,
  SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target,
  Signature=<signature>

  {
  "Operation": "com.amazonaws.cognito.sync.model#SetIdentityPoolConfiguration",
  "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
  "Input":
  {
  "IdentityPoolId": "ID_POOL_ID",
  "PushSync":
  {
  "ApplicationArns": ["PLATFORMARN1", "PLATFORMARN2"], "RoleArn": "ROLEARN"
  }
  }
  }
  </signature></credential></request>
  <response>
  1.1 200 OK
  x-amzn-requestid: a46db021-f5dd-45d6-af5b-7069fa4a211b
  date: Sat, 04 Oct 2014 20:00:06 GMT
  content-type: application/json
  content-length: 332

  {
  "Output":
  {
  "__type":
  "com.amazonaws.cognito.sync.model#SetIdentityPoolConfigurationResponse",
  "IdentityPoolId": "ID_POOL_ID",
  "PushSync":
  {
  "ApplicationArns": ["PLATFORMARN1", "PLATFORMARN2"],
  "RoleArn": "ROLEARN"
  }
  },
  "Version": "1.0"
  }
  </response>
  </example>
  </examples>
  """
  @spec set_identity_pool_configuration(
          map(),
          String.t(),
          set_identity_pool_configuration_request(),
          list()
        ) ::
          {:ok, set_identity_pool_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_identity_pool_configuration_errors()}
  def set_identity_pool_configuration(%Client{} = client, identity_pool_id, input, options \\ []) do
    url_path = "/identitypools/#{AWS.Util.encode_uri(identity_pool_id)}/configuration"
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
  Subscribes to receive notifications when a dataset is modified by another
  device.

  This API can only be called with temporary credentials provided by Cognito
  Identity. You cannot call this API with developer credentials.

  <examples>
  <example>
  <name>SubscribeToDataset</name>
  <description>The following examples have been edited for
  readability.</description>
  <request>
  POST / HTTP/1.1
  CONTENT-TYPE: application/json
  X-AMZN-REQUESTID: 8b9932b7-201d-4418-a960-0a470e11de9f
  X-AMZ-TARGET:
  com.amazonaws.cognito.sync.model.AWSCognitoSyncService.SubscribeToDataset
  HOST: cognito-sync.us-east-1.amazonaws.com
  X-AMZ-DATE: 20141004T195350Z
  X-AMZ-SECURITY-TOKEN: <securitytoken>
  AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>,
  SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target,
  Signature=<signature>

  {
  "Operation": "com.amazonaws.cognito.sync.model#SubscribeToDataset",
  "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
  "Input":
  {
  "IdentityPoolId": "ID_POOL_ID",
  "IdentityId": "IDENTITY_ID",
  "DatasetName": "Rufus",
  "DeviceId": "5cd28fbe-dd83-47ab-9f83-19093a5fb014"
  }
  }
  </signature></credential></securitytoken></request>
  <response>
  1.1 200 OK
  x-amzn-requestid: 8b9932b7-201d-4418-a960-0a470e11de9f
  date: Sat, 04 Oct 2014 19:53:50 GMT
  content-type: application/json
  content-length: 99

  {
  "Output":
  {
  "__type": "com.amazonaws.cognito.sync.model#SubscribeToDatasetResponse"
  },
  "Version": "1.0"
  }
  </response>
  </example>
  </examples>
  """
  @spec subscribe_to_dataset(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          subscribe_to_dataset_request(),
          list()
        ) ::
          {:ok, subscribe_to_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, subscribe_to_dataset_errors()}
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
  Unsubscribes from receiving notifications when a dataset is modified by another
  device.

  This API can only be called with temporary credentials provided by Cognito
  Identity. You cannot call this API with developer credentials.

  <examples>
  <example>
  <name>UnsubscribeFromDataset</name>
  <description>The following examples have been edited for
  readability.</description>
  <request>
  POST / HTTP/1.1
  CONTENT-TYPE: application/json
  X-AMZ-REQUESTSUPERTRACE: true
  X-AMZN-REQUESTID: 676896d6-14ca-45b1-8029-6d36b10a077e
  X-AMZ-TARGET:
  com.amazonaws.cognito.sync.model.AWSCognitoSyncService.UnsubscribeFromDataset
  HOST: cognito-sync.us-east-1.amazonaws.com
  X-AMZ-DATE: 20141004T195446Z
  X-AMZ-SECURITY-TOKEN: <securitytoken>
  AUTHORIZATION: AWS4-HMAC-SHA256 Credential=<credential>,
  SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target,
  Signature=<signature>

  {
  "Operation": "com.amazonaws.cognito.sync.model#UnsubscribeFromDataset",
  "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService",
  "Input":
  {
  "IdentityPoolId": "ID_POOL_ID",
  "IdentityId": "IDENTITY_ID",
  "DatasetName": "Rufus",
  "DeviceId": "5cd28fbe-dd83-47ab-9f83-19093a5fb014"
  }
  }
  </signature></credential></securitytoken></request>
  <response>
  1.1 200 OK
  x-amzn-requestid: 676896d6-14ca-45b1-8029-6d36b10a077e
  date: Sat, 04 Oct 2014 19:54:46 GMT
  content-type: application/json
  content-length: 103

  {
  "Output":
  {
  "__type": "com.amazonaws.cognito.sync.model#UnsubscribeFromDatasetResponse"
  },
  "Version": "1.0"
  }
  </response>
  </example>
  </examples>
  """
  @spec unsubscribe_from_dataset(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          unsubscribe_from_dataset_request(),
          list()
        ) ::
          {:ok, unsubscribe_from_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, unsubscribe_from_dataset_errors()}
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
  @spec update_records(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_records_request(),
          list()
        ) ::
          {:ok, update_records_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_records_errors()}
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
