# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerFeatureStoreRuntime do
  @moduledoc """
  Contains all data plane API operations and data types for the Amazon SageMaker
  Feature Store.

  Use this API to put, delete, and retrieve (get) features from a feature store.

  Use the following operations to configure your `OnlineStore` and `OfflineStore`
  features, and to create and manage feature groups:

    *
  [CreateFeatureGroup](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateFeatureGroup.html)     *
  [DeleteFeatureGroup](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteFeatureGroup.html)

    *
  [DescribeFeatureGroup](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeFeatureGroup.html)     *
  [ListFeatureGroups](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListFeatureGroups.html)
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2020-07-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "featurestore-runtime.sagemaker",
      global?: false,
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
  def batch_get_record(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGetRecord"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "BatchGetRecord",
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
  Deletes a `Record` from a `FeatureGroup` in the `OnlineStore`.

  Feature Store supports both `SOFT_DELETE` and `HARD_DELETE`. For `SOFT_DELETE`
  (default), feature columns are set to `null` and the record is no longer
  retrievable by `GetRecord` or `BatchGetRecord`. For` HARD_DELETE`, the complete
  `Record` is removed from the `OnlineStore`. In both cases, Feature Store appends
  the deleted record marker to the `OfflineStore` with feature values set to
  `null`, `is_deleted` value set to `True`, and `EventTime` set to the delete
  input `EventTime`.

  Note that the `EventTime` specified in `DeleteRecord` should be set later than
  the `EventTime` of the existing record in the `OnlineStore` for that
  `RecordIdentifer`. If it is not, the deletion does not occur:

    * For `SOFT_DELETE`, the existing (undeleted) record remains in the
  `OnlineStore`, though the delete record marker is still written to the
  `OfflineStore`.

    * `HARD_DELETE` returns `EventTime`: `400 ValidationException` to
  indicate that the delete operation failed. No delete record marker is written to
  the `OfflineStore`.
  """
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
      "DeleteRecord",
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
  Use for `OnlineStore` serving from a `FeatureStore`.

  Only the latest records stored in the `OnlineStore` can be retrieved. If no
  Record with `RecordIdentifierValue` is found, then an empty result is returned.
  """
  def get_record(
        %Client{} = client,
        feature_group_name,
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetRecord",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Used for data ingestion into the `FeatureStore`.

  The `PutRecord` API writes to both the `OnlineStore` and `OfflineStore`. If the
  record is the latest record for the `recordIdentifier`, the record is written to
  both the `OnlineStore` and `OfflineStore`. If the record is a historic record,
  it is written only to the `OfflineStore`.
  """
  def put_record(%Client{} = client, feature_group_name, input, options \\ []) do
    url_path = "/FeatureGroup/#{AWS.Util.encode_uri(feature_group_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "PutRecord",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
