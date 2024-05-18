# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerFeatureStoreRuntime do
  @moduledoc """
  Contains all data plane API operations and data types for the Amazon SageMaker
  Feature
  Store.

  Use this API to put, delete, and retrieve (get) features from a feature
  store.

  Use the following operations to configure your `OnlineStore` and
  `OfflineStore` features, and to create and manage feature groups:

    *

  [CreateFeatureGroup](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateFeatureGroup.html) 

    *

  [DeleteFeatureGroup](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteFeatureGroup.html)

    *

  [DescribeFeatureGroup](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeFeatureGroup.html) 

    *

  [ListFeatureGroups](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListFeatureGroups.html)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_forbidden() :: %{
        "Message" => String.t()
      }

  """
  @type access_forbidden() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_record_error() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "FeatureGroupName" => String.t(),
        "RecordIdentifierValueAsString" => String.t()
      }

  """
  @type batch_get_record_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_record_identifier() :: %{
        "FeatureGroupName" => String.t(),
        "FeatureNames" => list(String.t()()),
        "RecordIdentifiersValueAsString" => list(String.t()())
      }

  """
  @type batch_get_record_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_record_request() :: %{
        optional("ExpirationTimeResponse") => list(any()),
        required("Identifiers") => list(batch_get_record_identifier()())
      }

  """
  @type batch_get_record_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_record_response() :: %{
        "Errors" => list(batch_get_record_error()()),
        "Records" => list(batch_get_record_result_detail()()),
        "UnprocessedIdentifiers" => list(batch_get_record_identifier()())
      }

  """
  @type batch_get_record_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_record_result_detail() :: %{
        "ExpiresAt" => String.t(),
        "FeatureGroupName" => String.t(),
        "Record" => list(feature_value()()),
        "RecordIdentifierValueAsString" => String.t()
      }

  """
  @type batch_get_record_result_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_record_request() :: %{
        optional("DeletionMode") => list(any()),
        optional("TargetStores") => list(list(any())()),
        required("EventTime") => String.t(),
        required("RecordIdentifierValueAsString") => String.t()
      }

  """
  @type delete_record_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      feature_value() :: %{
        "FeatureName" => String.t(),
        "ValueAsString" => String.t(),
        "ValueAsStringList" => list(String.t()())
      }

  """
  @type feature_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_record_request() :: %{
        optional("ExpirationTimeResponse") => list(any()),
        optional("FeatureNames") => list(String.t()()),
        required("RecordIdentifierValueAsString") => String.t()
      }

  """
  @type get_record_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_record_response() :: %{
        "ExpiresAt" => String.t(),
        "Record" => list(feature_value()())
      }

  """
  @type get_record_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_failure() :: %{
        "Message" => String.t()
      }

  """
  @type internal_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_record_request() :: %{
        optional("TargetStores") => list(list(any())()),
        optional("TtlDuration") => ttl_duration(),
        required("Record") => list(feature_value()())
      }

  """
  @type put_record_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable() :: %{
        "Message" => String.t()
      }

  """
  @type service_unavailable() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ttl_duration() :: %{
        "Unit" => list(any()),
        "Value" => integer()
      }

  """
  @type ttl_duration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_error() :: %{
        "Message" => String.t()
      }

  """
  @type validation_error() :: %{String.t() => any()}

  @type batch_get_record_errors() ::
          validation_error() | service_unavailable() | internal_failure() | access_forbidden()

  @type delete_record_errors() ::
          validation_error() | service_unavailable() | internal_failure() | access_forbidden()

  @type get_record_errors() ::
          validation_error()
          | service_unavailable()
          | resource_not_found()
          | internal_failure()
          | access_forbidden()

  @type put_record_errors() ::
          validation_error() | service_unavailable() | internal_failure() | access_forbidden()

  def metadata do
    %{
      api_version: "2020-07-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "featurestore-runtime.sagemaker",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SageMaker FeatureStore Runtime",
      signature_version: "v4",
      signing_name: "sagemaker",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves a batch of `Records` from a `FeatureGroup`.
  """
  @spec batch_get_record(map(), batch_get_record_request(), list()) ::
          {:ok, batch_get_record_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_record_errors()}
  def batch_get_record(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGetRecord"
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
  Deletes a `Record` from a `FeatureGroup` in the
  `OnlineStore`.

  Feature Store supports both `SoftDelete` and
  `HardDelete`. For `SoftDelete` (default), feature columns are set
  to `null` and the record is no longer retrievable by `GetRecord` or
  `BatchGetRecord`. For `HardDelete`, the complete
  `Record` is removed from the `OnlineStore`. In both cases, Feature
  Store appends the deleted record marker to the `OfflineStore`. The deleted
  record marker is a record with the same `RecordIdentifer` as the original, but
  with `is_deleted` value set to `True`, `EventTime` set to
  the delete input `EventTime`, and other feature values set to
  `null`.

  Note that the `EventTime` specified in `DeleteRecord` should be
  set later than the `EventTime` of the existing record in the
  `OnlineStore` for that `RecordIdentifer`. If it is not, the
  deletion does not occur:

    *
  For `SoftDelete`, the existing (not deleted) record remains in the
  `OnlineStore`, though the delete record marker is still written to the
  `OfflineStore`.

    *

  `HardDelete` returns `EventTime`:

  ```
  400
  ValidationException
  ```

  to indicate that the delete operation failed. No delete
  record marker is written to the `OfflineStore`.

  When a record is deleted from the `OnlineStore`, the deleted record marker is
  appended to the `OfflineStore`. If you have the Iceberg table format enabled for
  your `OfflineStore`, you can remove all history of a record from the
  `OfflineStore` using Amazon Athena or Apache Spark. For information on how to
  hard delete a record from the `OfflineStore` with the Iceberg table format
  enabled, see [Delete records from the offline store](https://docs.aws.amazon.com/sagemaker/latest/dg/feature-store-delete-records-offline-store.html#feature-store-delete-records-offline-store).
  """
  @spec delete_record(map(), String.t(), delete_record_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_record_errors()}
  def delete_record(%Client{} = client, feature_group_name, input, options \\ []) do
    url_path = "/FeatureGroup/#{AWS.Util.encode_uri(feature_group_name)}"
    headers = []

    {query_params, input} =
      [
        {"DeletionMode", "DeletionMode"},
        {"EventTime", "EventTime"},
        {"RecordIdentifierValueAsString", "RecordIdentifierValueAsString"},
        {"TargetStores", "TargetStores"}
      ]
      |> Request.build_params(input)

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
  Use for `OnlineStore` serving from a `FeatureStore`.

  Only the
  latest records stored in the `OnlineStore` can be retrieved. If no Record with
  `RecordIdentifierValue` is found, then an empty result is returned.
  """
  @spec get_record(map(), String.t(), String.t() | nil, String.t() | nil, String.t(), list()) ::
          {:ok, get_record_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_record_errors()}
  def get_record(
        %Client{} = client,
        feature_group_name,
        expiration_time_response \\ nil,
        feature_names \\ nil,
        record_identifier_value_as_string,
        options \\ []
      ) do
    url_path = "/FeatureGroup/#{AWS.Util.encode_uri(feature_group_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(record_identifier_value_as_string) do
        [{"RecordIdentifierValueAsString", record_identifier_value_as_string} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(feature_names) do
        [{"FeatureName", feature_names} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(expiration_time_response) do
        [{"ExpirationTimeResponse", expiration_time_response} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `PutRecord` API is used to ingest a list of `Records` into
  your feature group.

  If a new record’s `EventTime` is greater, the new record is written to both
  the `OnlineStore` and `OfflineStore`. Otherwise, the record is a
  historic record and it is written only to the `OfflineStore`.

  You can specify the ingestion to be applied to the `OnlineStore`,
  `OfflineStore`, or both by using the `TargetStores` request
  parameter.

  You can set the ingested record to expire at a given time to live (TTL) duration
  after
  the record’s event time, `ExpiresAt` = `EventTime` +
  `TtlDuration`, by specifying the `TtlDuration` parameter. A record
  level `TtlDuration` is set when specifying the `TtlDuration`
  parameter using the `PutRecord` API call. If the input `TtlDuration`
  is `null` or unspecified, `TtlDuration` is set to the default feature
  group level `TtlDuration`. A record level `TtlDuration` supersedes
  the group level `TtlDuration`.
  """
  @spec put_record(map(), String.t(), put_record_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_record_errors()}
  def put_record(%Client{} = client, feature_group_name, input, options \\ []) do
    url_path = "/FeatureGroup/#{AWS.Util.encode_uri(feature_group_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
