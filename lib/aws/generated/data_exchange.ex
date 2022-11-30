# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DataExchange do
  @moduledoc """
  AWS Data Exchange is a service that makes it easy for AWS customers to exchange
  data in the cloud.

  You can use the AWS Data Exchange APIs to create, update, manage, and access
  file-based data set in the AWS Cloud.

  As a subscriber, you can view and access the data sets that you have an
  entitlement to through a subscription. You can use the APIs to download or copy
  your entitled data sets to Amazon Simple Storage Service (Amazon S3) for use
  across a variety of AWS analytics and machine learning services.

  As a provider, you can create and manage your data sets that you would like to
  publish to a product. Being able to package and provide your data sets into
  products requires a few steps to determine eligibility. For more information,
  visit the *AWS Data Exchange User Guide*.

  A data set is a collection of data that can be changed or updated over time.
  Data sets can be updated using revisions, which represent a new version or
  incremental change to a data set. A revision contains one or more assets. An
  asset in AWS Data Exchange is a piece of data that can be stored as an Amazon S3
  object, Redshift datashare, API Gateway API, AWS Lake Formation data permission,
  or Amazon S3 data access. The asset can be a structured data file, an image
  file, or some other data file. Jobs are asynchronous import or export operations
  used to create or copy assets.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "dataexchange",
      global?: false,
      protocol: "rest-json",
      service_id: "DataExchange",
      signature_version: "v4",
      signing_name: "dataexchange",
      target_prefix: nil
    }
  end

  @doc """
  This operation cancels a job.

  Jobs can be cancelled only when they are in the WAITING state.
  """
  def cancel_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/v1/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CancelJob",
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
  This operation creates a data set.
  """
  def create_data_set(%Client{} = client, input, options \\ []) do
    url_path = "/v1/data-sets"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateDataSet",
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
  This operation creates an event action.
  """
  def create_event_action(%Client{} = client, input, options \\ []) do
    url_path = "/v1/event-actions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateEventAction",
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
  This operation creates a job.
  """
  def create_job(%Client{} = client, input, options \\ []) do
    url_path = "/v1/jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateJob",
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
  This operation creates a revision for a data set.
  """
  def create_revision(%Client{} = client, data_set_id, input, options \\ []) do
    url_path = "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateRevision",
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
  This operation deletes an asset.
  """
  def delete_asset(%Client{} = client, asset_id, data_set_id, revision_id, input, options \\ []) do
    url_path =
      "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions/#{AWS.Util.encode_uri(revision_id)}/assets/#{AWS.Util.encode_uri(asset_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteAsset",
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
  This operation deletes a data set.
  """
  def delete_data_set(%Client{} = client, data_set_id, input, options \\ []) do
    url_path = "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteDataSet",
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
  This operation deletes the event action.
  """
  def delete_event_action(%Client{} = client, event_action_id, input, options \\ []) do
    url_path = "/v1/event-actions/#{AWS.Util.encode_uri(event_action_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteEventAction",
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
  This operation deletes a revision.
  """
  def delete_revision(%Client{} = client, data_set_id, revision_id, input, options \\ []) do
    url_path =
      "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions/#{AWS.Util.encode_uri(revision_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteRevision",
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
  This operation returns information about an asset.
  """
  def get_asset(%Client{} = client, asset_id, data_set_id, revision_id, options \\ []) do
    url_path =
      "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions/#{AWS.Util.encode_uri(revision_id)}/assets/#{AWS.Util.encode_uri(asset_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetAsset",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  This operation returns information about a data set.
  """
  def get_data_set(%Client{} = client, data_set_id, options \\ []) do
    url_path = "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetDataSet",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  This operation retrieves information about an event action.
  """
  def get_event_action(%Client{} = client, event_action_id, options \\ []) do
    url_path = "/v1/event-actions/#{AWS.Util.encode_uri(event_action_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetEventAction",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  This operation returns information about a job.
  """
  def get_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/v1/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetJob",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  This operation returns information about a revision.
  """
  def get_revision(%Client{} = client, data_set_id, revision_id, options \\ []) do
    url_path =
      "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions/#{AWS.Util.encode_uri(revision_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetRevision",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  This operation lists a data set's revisions sorted by CreatedAt in descending
  order.
  """
  def list_data_set_revisions(
        %Client{} = client,
        data_set_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions"
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

    Request.request_rest(
      client,
      meta,
      "ListDataSetRevisions",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  This operation lists your data sets.

  When listing by origin OWNED, results are sorted by CreatedAt in descending
  order. When listing by origin ENTITLED, there is no order and the maxResults
  parameter is ignored.
  """
  def list_data_sets(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        origin \\ nil,
        options \\ []
      ) do
    url_path = "/v1/data-sets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(origin) do
        [{"origin", origin} | query_params]
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

    Request.request_rest(
      client,
      meta,
      "ListDataSets",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  This operation lists your event actions.
  """
  def list_event_actions(
        %Client{} = client,
        event_source_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/event-actions"
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
      if !is_nil(event_source_id) do
        [{"eventSourceId", event_source_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListEventActions",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  This operation lists your jobs sorted by CreatedAt in descending order.
  """
  def list_jobs(
        %Client{} = client,
        data_set_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        revision_id \\ nil,
        options \\ []
      ) do
    url_path = "/v1/jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(revision_id) do
        [{"revisionId", revision_id} | query_params]
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
      if !is_nil(data_set_id) do
        [{"dataSetId", data_set_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListJobs",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  This operation lists a revision's assets sorted alphabetically in descending
  order.
  """
  def list_revision_assets(
        %Client{} = client,
        data_set_id,
        revision_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions/#{AWS.Util.encode_uri(revision_id)}/assets"

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

    Request.request_rest(
      client,
      meta,
      "ListRevisionAssets",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  This operation lists the tags on the resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListTagsForResource",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  This operation revokes subscribers' access to a revision.
  """
  def revoke_revision(%Client{} = client, data_set_id, revision_id, input, options \\ []) do
    url_path =
      "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions/#{AWS.Util.encode_uri(revision_id)}/revoke"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "RevokeRevision",
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
  This operation invokes an API Gateway API asset.

  The request is proxied to the provider’s API Gateway API.
  """
  def send_api_asset(%Client{} = client, input, options \\ []) do
    url_path = "/v1"

    {headers, input} =
      [
        {"AssetId", "x-amzn-dataexchange-asset-id"},
        {"DataSetId", "x-amzn-dataexchange-data-set-id"},
        {"Method", "x-amzn-dataexchange-http-method"},
        {"Path", "x-amzn-dataexchange-path"},
        {"RevisionId", "x-amzn-dataexchange-revision-id"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"QueryStringParameters", ""}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

    options =
      Keyword.put(
        options,
        :receive_body_as_binary?,
        true
      )

    meta = metadata() |> Map.put_new(:host_prefix, "api-fulfill.")

    Request.request_rest(
      client,
      meta,
      "SendApiAsset",
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
  This operation starts a job.
  """
  def start_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/v1/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartJob",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  This operation tags a resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "TagResource",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  This operation removes one or more tags from a resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UntagResource",
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
  This operation updates an asset.
  """
  def update_asset(%Client{} = client, asset_id, data_set_id, revision_id, input, options \\ []) do
    url_path =
      "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions/#{AWS.Util.encode_uri(revision_id)}/assets/#{AWS.Util.encode_uri(asset_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateAsset",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  This operation updates a data set.
  """
  def update_data_set(%Client{} = client, data_set_id, input, options \\ []) do
    url_path = "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateDataSet",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  This operation updates the event action.
  """
  def update_event_action(%Client{} = client, event_action_id, input, options \\ []) do
    url_path = "/v1/event-actions/#{AWS.Util.encode_uri(event_action_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateEventAction",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  This operation updates a revision.
  """
  def update_revision(%Client{} = client, data_set_id, revision_id, input, options \\ []) do
    url_path =
      "/v1/data-sets/#{AWS.Util.encode_uri(data_set_id)}/revisions/#{AWS.Util.encode_uri(revision_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateRevision",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
