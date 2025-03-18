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

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      capacity_units_configuration() :: %{
        "RescoreCapacityUnits" => integer()
      }
      
  """
  @type capacity_units_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rescore_execution_plan_request() :: %{
        optional("CapacityUnits") => capacity_units_configuration(),
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t()
      }
      
  """
  @type create_rescore_execution_plan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rescore_execution_plan_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }
      
  """
  @type create_rescore_execution_plan_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rescore_execution_plan_request() :: %{}
      
  """
  @type delete_rescore_execution_plan_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_rescore_execution_plan_request() :: %{}
      
  """
  @type describe_rescore_execution_plan_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_rescore_execution_plan_response() :: %{
        "Arn" => String.t(),
        "CapacityUnits" => capacity_units_configuration(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t(),
        "ErrorMessage" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type describe_rescore_execution_plan_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document() :: %{
        "Body" => String.t(),
        "GroupId" => String.t(),
        "Id" => String.t(),
        "OriginalScore" => float(),
        "Title" => String.t(),
        "TokenizedBody" => list(String.t()()),
        "TokenizedTitle" => list(String.t()())
      }
      
  """
  @type document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rescore_execution_plans_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_rescore_execution_plans_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rescore_execution_plans_response() :: %{
        "NextToken" => String.t(),
        "SummaryItems" => list(rescore_execution_plan_summary()())
      }
      
  """
  @type list_rescore_execution_plans_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rescore_execution_plan_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type rescore_execution_plan_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rescore_request() :: %{
        required("Documents") => list(document()()),
        required("SearchQuery") => String.t()
      }
      
  """
  @type rescore_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rescore_result() :: %{
        "RescoreId" => String.t(),
        "ResultItems" => list(rescore_result_item()())
      }
      
  """
  @type rescore_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rescore_result_item() :: %{
        "DocumentId" => String.t(),
        "Score" => float()
      }
      
  """
  @type rescore_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_unavailable_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_rescore_execution_plan_request() :: %{
        optional("CapacityUnits") => capacity_units_configuration(),
        optional("Description") => String.t(),
        optional("Name") => String.t()
      }
      
  """
  @type update_rescore_execution_plan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @type create_rescore_execution_plan_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_rescore_execution_plan_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type describe_rescore_execution_plan_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_rescore_execution_plans_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_unavailable_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type rescore_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_unavailable_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_unavailable_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type update_rescore_execution_plan_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2022-10-19",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "kendra-ranking",
      global?: false,
      hostname: nil,
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
  @spec create_rescore_execution_plan(map(), create_rescore_execution_plan_request(), list()) ::
          {:ok, create_rescore_execution_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_rescore_execution_plan_errors()}
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
  @spec delete_rescore_execution_plan(map(), delete_rescore_execution_plan_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_rescore_execution_plan_errors()}
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
  @spec describe_rescore_execution_plan(map(), describe_rescore_execution_plan_request(), list()) ::
          {:ok, describe_rescore_execution_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_rescore_execution_plan_errors()}
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
  @spec list_rescore_execution_plans(map(), list_rescore_execution_plans_request(), list()) ::
          {:ok, list_rescore_execution_plans_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_rescore_execution_plans_errors()}
  def list_rescore_execution_plans(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRescoreExecutionPlans", input, options)
  end

  @doc """
  Gets a list of tags associated with a specified resource.

  A rescore execution plan is an example of a resource that
  can have tags associated with it.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
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
  @spec rescore(map(), rescore_request(), list()) ::
          {:ok, rescore_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, rescore_errors()}
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
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
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
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
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
  @spec update_rescore_execution_plan(map(), update_rescore_execution_plan_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_rescore_execution_plan_errors()}
  def update_rescore_execution_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRescoreExecutionPlan", input, options)
  end
end
