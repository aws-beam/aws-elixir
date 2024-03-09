# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KendraRanking do
  @moduledoc """
  Amazon Kendra Intelligent Ranking uses Amazon Kendra
  semantic search capabilities to intelligently re-rank a search
  service's results.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2022-10-19",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "kendra-ranking",
      global?: false,
      protocol: "json",
      service_id: "Kendra Ranking",
      signature_version: "v4",
      signing_name: "kendra-ranking",
      target_prefix: "AWSKendraRerankingFrontendService"
    }
  end

  @doc """
  Creates a rescore execution plan.

  A rescore execution
  plan is an Amazon Kendra Intelligent Ranking resource
  used for provisioning the `Rescore` API. You set
  the number of capacity units that you require for
  Amazon Kendra Intelligent Ranking to rescore or re-rank
  a search service's results.

  For an example of using the
  `CreateRescoreExecutionPlan` API, including using
  the Python and Java SDKs, see [Semantically ranking a search service's
  results](https://docs.aws.amazon.com/kendra/latest/dg/search-service-rerank.html).
  """
  def create_rescore_execution_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRescoreExecutionPlan", input, options)
  end

  @doc """
  Deletes a rescore execution plan.

  A rescore execution
  plan is an Amazon Kendra Intelligent Ranking resource
  used for provisioning the `Rescore` API.
  """
  def delete_rescore_execution_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRescoreExecutionPlan", input, options)
  end

  @doc """
  Gets information about a rescore execution plan.

  A rescore
  execution plan is an Amazon Kendra Intelligent Ranking
  resource used for provisioning the `Rescore` API.
  """
  def describe_rescore_execution_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRescoreExecutionPlan", input, options)
  end

  @doc """
  Lists your rescore execution plans.

  A rescore execution plan
  is an Amazon Kendra Intelligent Ranking resource used for
  provisioning the `Rescore` API.
  """
  def list_rescore_execution_plans(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRescoreExecutionPlans", input, options)
  end

  @doc """
  Gets a list of tags associated with a specified resource.

  A rescore execution plan is an example of a resource that
  can have tags associated with it.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Rescores or re-ranks search results from a search service
  such as OpenSearch (self managed).

  You use the semantic search
  capabilities of Amazon Kendra Intelligent Ranking to
  improve the search service's results.
  """
  def rescore(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "Rescore", input, options)
  end

  @doc """
  Adds a specified tag to a specified rescore execution
  plan.

  A rescore execution plan is an Amazon Kendra
  Intelligent Ranking resource used for provisioning the
  `Rescore` API. If the tag already exists,
  the existing value is replaced with the new value.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes a tag from a rescore execution plan.

  A rescore
  execution plan is an Amazon Kendra Intelligent
  Ranking resource used for provisioning the
  `Rescore` operation.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates a rescore execution plan.

  A rescore execution plan
  is an Amazon Kendra Intelligent Ranking resource used for
  provisioning the `Rescore` API. You can update the
  number of capacity units you require for Amazon Kendra
  Intelligent Ranking to rescore or re-rank a search service's
  results.
  """
  def update_rescore_execution_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRescoreExecutionPlan", input, options)
  end
end
