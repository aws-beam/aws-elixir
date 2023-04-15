# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ElasticInference do
  @moduledoc """
  Elastic Inference public APIs.

  February 15, 2023: Starting April 15, 2023, AWS will not onboard new customers
  to Amazon Elastic Inference (EI), and will help current customers migrate their
  workloads to options that offer better price and performance. After April 15,
  2023, new customers will not be able to launch instances with Amazon EI
  accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2. However, customers
  who have used Amazon EI at least once during the past 30-day period are
  considered current customers and will be able to continue using the service.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.elastic-inference",
      global?: false,
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
  workloads to options that offer better price and performance. After April 15,
  2023, new customers will not be able to launch instances with Amazon EI
  accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2. However, customers
  who have used Amazon EI at least once during the past 30-day period are
  considered current customers and will be able to continue using the service.
  """
  def describe_accelerator_offerings(%Client{} = client, input, options \\ []) do
    url_path = "/describe-accelerator-offerings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeAcceleratorOfferings",
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
  Describes the accelerator types available in a given region, as well as their
  characteristics, such as memory and throughput.

  February 15, 2023: Starting April 15, 2023, AWS will not onboard new customers
  to Amazon Elastic Inference (EI), and will help current customers migrate their
  workloads to options that offer better price and performance. After April 15,
  2023, new customers will not be able to launch instances with Amazon EI
  accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2. However, customers
  who have used Amazon EI at least once during the past 30-day period are
  considered current customers and will be able to continue using the service.
  """
  def describe_accelerator_types(%Client{} = client, options \\ []) do
    url_path = "/describe-accelerator-types"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeAcceleratorTypes",
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
  Describes information over a provided set of accelerators belonging to an
  account.

  February 15, 2023: Starting April 15, 2023, AWS will not onboard new customers
  to Amazon Elastic Inference (EI), and will help current customers migrate their
  workloads to options that offer better price and performance. After April 15,
  2023, new customers will not be able to launch instances with Amazon EI
  accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2. However, customers
  who have used Amazon EI at least once during the past 30-day period are
  considered current customers and will be able to continue using the service.
  """
  def describe_accelerators(%Client{} = client, input, options \\ []) do
    url_path = "/describe-accelerators"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeAccelerators",
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
  Returns all tags of an Elastic Inference Accelerator.

  February 15, 2023: Starting April 15, 2023, AWS will not onboard new customers
  to Amazon Elastic Inference (EI), and will help current customers migrate their
  workloads to options that offer better price and performance. After April 15,
  2023, new customers will not be able to launch instances with Amazon EI
  accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2. However, customers
  who have used Amazon EI at least once during the past 30-day period are
  considered current customers and will be able to continue using the service.
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
      nil
    )
  end

  @doc """
  Adds the specified tags to an Elastic Inference Accelerator.

  February 15, 2023: Starting April 15, 2023, AWS will not onboard new customers
  to Amazon Elastic Inference (EI), and will help current customers migrate their
  workloads to options that offer better price and performance. After April 15,
  2023, new customers will not be able to launch instances with Amazon EI
  accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2. However, customers
  who have used Amazon EI at least once during the past 30-day period are
  considered current customers and will be able to continue using the service.
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
      nil
    )
  end

  @doc """
  Removes the specified tags from an Elastic Inference Accelerator.

  February 15, 2023: Starting April 15, 2023, AWS will not onboard new customers
  to Amazon Elastic Inference (EI), and will help current customers migrate their
  workloads to options that offer better price and performance. After April 15,
  2023, new customers will not be able to launch instances with Amazon EI
  accelerators in Amazon SageMaker, Amazon ECS, or Amazon EC2. However, customers
  who have used Amazon EI at least once during the past 30-day period are
  considered current customers and will be able to continue using the service.
  """
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
      "UntagResource",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
