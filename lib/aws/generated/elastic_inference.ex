# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ElasticInference do
  @moduledoc """

  Elastic Inference public APIs.

  February 15, 2023: Starting April 15, 2023, AWS will not onboard new customers
  to Amazon Elastic Inference (EI), and will help current customers migrate their
  workloads to options that offer better price and performance.
  After April 15, 2023, new customers will not be able to launch instances with
  Amazon EI accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2.
  However, customers who have used Amazon EI at least once during the past 30-day
  period are considered current customers and will be able to continue using the
  service.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      accelerator_type() :: %{
        "acceleratorTypeName" => String.t(),
        "memoryInfo" => memory_info(),
        "throughputInfo" => list(key_value_pair()())
      }

  """
  @type accelerator_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      accelerator_type_offering() :: %{
        "acceleratorType" => String.t(),
        "location" => String.t(),
        "locationType" => list(any())
      }

  """
  @type accelerator_type_offering() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_accelerator_offerings_request() :: %{
        optional("acceleratorTypes") => list(String.t()()),
        required("locationType") => list(any())
      }

  """
  @type describe_accelerator_offerings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_accelerator_offerings_response() :: %{
        "acceleratorTypeOfferings" => list(accelerator_type_offering()())
      }

  """
  @type describe_accelerator_offerings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_accelerator_types_request() :: %{}

  """
  @type describe_accelerator_types_request() :: %{}

  @typedoc """

  ## Example:

      describe_accelerator_types_response() :: %{
        "acceleratorTypes" => list(accelerator_type()())
      }

  """
  @type describe_accelerator_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_accelerators_request() :: %{
        optional("acceleratorIds") => list(String.t()()),
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type describe_accelerators_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_accelerators_response() :: %{
        "acceleratorSet" => list(elastic_inference_accelerator()()),
        "nextToken" => String.t()
      }

  """
  @type describe_accelerators_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      elastic_inference_accelerator() :: %{
        "acceleratorHealth" => elastic_inference_accelerator_health(),
        "acceleratorId" => String.t(),
        "acceleratorType" => String.t(),
        "attachedResource" => String.t(),
        "availabilityZone" => String.t()
      }

  """
  @type elastic_inference_accelerator() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      elastic_inference_accelerator_health() :: %{
        "status" => String.t()
      }

  """
  @type elastic_inference_accelerator_health() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "name" => String.t(),
        "values" => list(String.t()())
      }

  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      key_value_pair() :: %{
        "key" => String.t(),
        "value" => integer()
      }

  """
  @type key_value_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_result() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      memory_info() :: %{
        "sizeInMiB" => integer()
      }

  """
  @type memory_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_result() :: %{}

  """
  @type tag_resource_result() :: %{}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_result() :: %{}

  """
  @type untag_resource_result() :: %{}

  @type describe_accelerator_offerings_errors() ::
          resource_not_found_exception() | internal_server_exception() | bad_request_exception()

  @type describe_accelerator_types_errors() :: internal_server_exception()

  @type describe_accelerators_errors() ::
          resource_not_found_exception() | internal_server_exception() | bad_request_exception()

  @type list_tags_for_resource_errors() ::
          resource_not_found_exception() | internal_server_exception() | bad_request_exception()

  @type tag_resource_errors() ::
          resource_not_found_exception() | internal_server_exception() | bad_request_exception()

  @type untag_resource_errors() ::
          resource_not_found_exception() | internal_server_exception() | bad_request_exception()

  def metadata do
    %{
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.elastic-inference",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Elastic Inference",
      signature_version: "v4",
      signing_name: "elastic-inference",
      target_prefix: nil
    }
  end

  @doc """

  Describes the locations in which a given accelerator type or set of types is
  present in a given region.

  February 15, 2023: Starting April 15, 2023, AWS will not onboard new customers
  to Amazon Elastic Inference (EI), and will help current customers migrate their
  workloads to options that offer better price and performance.
  After April 15, 2023, new customers will not be able to launch instances with
  Amazon EI accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2.
  However, customers who have used Amazon EI at least once during the past 30-day
  period are considered current customers and will be able to continue using the
  service.
  """
  @spec describe_accelerator_offerings(map(), describe_accelerator_offerings_request(), list()) ::
          {:ok, describe_accelerator_offerings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_accelerator_offerings_errors()}
  def describe_accelerator_offerings(%Client{} = client, input, options \\ []) do
    url_path = "/describe-accelerator-offerings"
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

  Describes the accelerator types available in a given region, as well as their
  characteristics, such as memory and throughput.

  February 15, 2023: Starting April 15, 2023, AWS will not onboard new customers
  to Amazon Elastic Inference (EI), and will help current customers migrate their
  workloads to options that offer better price and performance.
  After April 15, 2023, new customers will not be able to launch instances with
  Amazon EI accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2.
  However, customers who have used Amazon EI at least once during the past 30-day
  period are considered current customers and will be able to continue using the
  service.
  """
  @spec describe_accelerator_types(map(), list()) ::
          {:ok, describe_accelerator_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_accelerator_types_errors()}
  def describe_accelerator_types(%Client{} = client, options \\ []) do
    url_path = "/describe-accelerator-types"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Describes information over a provided set of accelerators belonging to an
  account.

  February 15, 2023: Starting April 15, 2023, AWS will not onboard new customers
  to Amazon Elastic Inference (EI), and will help current customers migrate their
  workloads to options that offer better price and performance.
  After April 15, 2023, new customers will not be able to launch instances with
  Amazon EI accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2.
  However, customers who have used Amazon EI at least once during the past 30-day
  period are considered current customers and will be able to continue using the
  service.
  """
  @spec describe_accelerators(map(), describe_accelerators_request(), list()) ::
          {:ok, describe_accelerators_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_accelerators_errors()}
  def describe_accelerators(%Client{} = client, input, options \\ []) do
    url_path = "/describe-accelerators"
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

  Returns all tags of an Elastic Inference Accelerator.

  February 15, 2023: Starting April 15, 2023, AWS will not onboard new customers
  to Amazon Elastic Inference (EI), and will help current customers migrate their
  workloads to options that offer better price and performance.
  After April 15, 2023, new customers will not be able to launch instances with
  Amazon EI accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2.
  However, customers who have used Amazon EI at least once during the past 30-day
  period are considered current customers and will be able to continue using the
  service.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Adds the specified tags to an Elastic Inference Accelerator.

  February 15, 2023: Starting April 15, 2023, AWS will not onboard new customers
  to Amazon Elastic Inference (EI), and will help current customers migrate their
  workloads to options that offer better price and performance.
  After April 15, 2023, new customers will not be able to launch instances with
  Amazon EI accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2.
  However, customers who have used Amazon EI at least once during the past 30-day
  period are considered current customers and will be able to continue using the
  service.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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

  Removes the specified tags from an Elastic Inference Accelerator.

  February 15, 2023: Starting April 15, 2023, AWS will not onboard new customers
  to Amazon Elastic Inference (EI), and will help current customers migrate their
  workloads to options that offer better price and performance.
  After April 15, 2023, new customers will not be able to launch instances with
  Amazon EI accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2.
  However, customers who have used Amazon EI at least once during the past 30-day
  period are considered current customers and will be able to continue using the
  service.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
      input,
      options,
      200
    )
  end
end
