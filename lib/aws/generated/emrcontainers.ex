# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EMRcontainers do
  @moduledoc """
  Amazon EMR on EKS provides a deployment option for Amazon EMR that allows you to
  run open-source big data frameworks on Amazon Elastic Kubernetes Service (Amazon
  EKS).

  With this deployment option, you can focus on running analytics workloads while
  Amazon EMR on EKS builds, configures, and manages containers for open-source
  applications. For more information about Amazon EMR on EKS concepts and tasks,
  see [What is Amazon EMR on EKS](https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/emr-eks.html).

  *Amazon EMR containers* is the API name for Amazon EMR on EKS. The
  `emr-containers` prefix is used in the following scenarios:

    * It is the prefix in the CLI commands for Amazon EMR on EKS. For
  example, `aws emr-containers start-job-run`.

    * It is the prefix before IAM policy actions for Amazon EMR on EKS.
  For example, `"Action": [ "emr-containers:StartJobRun"]`. For more information, see [Policy actions for Amazon EMR on
  EKS](https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-actions).

    * It is the prefix used in Amazon EMR on EKS service endpoints. For
  example, `emr-containers.us-east-2.amazonaws.com`. For more information, see
  [Amazon EMR on EKS Service Endpoints](https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/service-quotas.html#service-endpoints).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-10-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "emr-containers",
      global?: false,
      protocol: "rest-json",
      service_id: "EMR containers",
      signature_version: "v4",
      signing_name: "emr-containers",
      target_prefix: nil
    }
  end

  @doc """
  Cancels a job run.

  A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL
  query, that you submit to Amazon EMR on EKS.
  """
  def cancel_job_run(%Client{} = client, id, virtual_cluster_id, input, options \\ []) do
    url_path =
      "/virtualclusters/#{AWS.Util.encode_uri(virtual_cluster_id)}/jobruns/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Creates a managed endpoint.

  A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on EKS so
  that EMR Studio can communicate with your virtual cluster.
  """
  def create_managed_endpoint(%Client{} = client, virtual_cluster_id, input, options \\ []) do
    url_path = "/virtualclusters/#{AWS.Util.encode_uri(virtual_cluster_id)}/endpoints"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Creates a virtual cluster.

  Virtual cluster is a managed entity on Amazon EMR on EKS. You can create,
  describe, list and delete virtual clusters. They do not consume any additional
  resource in your system. A single virtual cluster maps to a single Kubernetes
  namespace. Given this relationship, you can model virtual clusters the same way
  you model Kubernetes namespaces to meet your requirements.
  """
  def create_virtual_cluster(%Client{} = client, input, options \\ []) do
    url_path = "/virtualclusters"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Deletes a managed endpoint.

  A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on EKS so
  that EMR Studio can communicate with your virtual cluster.
  """
  def delete_managed_endpoint(%Client{} = client, id, virtual_cluster_id, input, options \\ []) do
    url_path =
      "/virtualclusters/#{AWS.Util.encode_uri(virtual_cluster_id)}/endpoints/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Deletes a virtual cluster.

  Virtual cluster is a managed entity on Amazon EMR on EKS. You can create,
  describe, list and delete virtual clusters. They do not consume any additional
  resource in your system. A single virtual cluster maps to a single Kubernetes
  namespace. Given this relationship, you can model virtual clusters the same way
  you model Kubernetes namespaces to meet your requirements.
  """
  def delete_virtual_cluster(%Client{} = client, id, input, options \\ []) do
    url_path = "/virtualclusters/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Displays detailed information about a job run.

  A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL
  query, that you submit to Amazon EMR on EKS.
  """
  def describe_job_run(%Client{} = client, id, virtual_cluster_id, options \\ []) do
    url_path =
      "/virtualclusters/#{AWS.Util.encode_uri(virtual_cluster_id)}/jobruns/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Displays detailed information about a managed endpoint.

  A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on EKS so
  that EMR Studio can communicate with your virtual cluster.
  """
  def describe_managed_endpoint(%Client{} = client, id, virtual_cluster_id, options \\ []) do
    url_path =
      "/virtualclusters/#{AWS.Util.encode_uri(virtual_cluster_id)}/endpoints/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Displays detailed information about a specified virtual cluster.

  Virtual cluster is a managed entity on Amazon EMR on EKS. You can create,
  describe, list and delete virtual clusters. They do not consume any additional
  resource in your system. A single virtual cluster maps to a single Kubernetes
  namespace. Given this relationship, you can model virtual clusters the same way
  you model Kubernetes namespaces to meet your requirements.
  """
  def describe_virtual_cluster(%Client{} = client, id, options \\ []) do
    url_path = "/virtualclusters/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Lists job runs based on a set of parameters.

  A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL
  query, that you submit to Amazon EMR on EKS.
  """
  def list_job_runs(
        %Client{} = client,
        virtual_cluster_id,
        created_after \\ nil,
        created_before \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        states \\ nil,
        options \\ []
      ) do
    url_path = "/virtualclusters/#{AWS.Util.encode_uri(virtual_cluster_id)}/jobruns"
    headers = []
    query_params = []

    query_params =
      if !is_nil(states) do
        [{"states", states} | query_params]
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
      if !is_nil(name) do
        [{"name", name} | query_params]
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
      if !is_nil(created_before) do
        [{"createdBefore", created_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(created_after) do
        [{"createdAfter", created_after} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
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
  Lists managed endpoints based on a set of parameters.

  A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on EKS so
  that EMR Studio can communicate with your virtual cluster.
  """
  def list_managed_endpoints(
        %Client{} = client,
        virtual_cluster_id,
        created_after \\ nil,
        created_before \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        states \\ nil,
        types \\ nil,
        options \\ []
      ) do
    url_path = "/virtualclusters/#{AWS.Util.encode_uri(virtual_cluster_id)}/endpoints"
    headers = []
    query_params = []

    query_params =
      if !is_nil(types) do
        [{"types", types} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(states) do
        [{"states", states} | query_params]
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
      if !is_nil(created_before) do
        [{"createdBefore", created_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(created_after) do
        [{"createdAfter", created_after} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
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
  Lists the tags assigned to the resources.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Lists information about the specified virtual cluster.

  Virtual cluster is a managed entity on Amazon EMR on EKS. You can create,
  describe, list and delete virtual clusters. They do not consume any additional
  resource in your system. A single virtual cluster maps to a single Kubernetes
  namespace. Given this relationship, you can model virtual clusters the same way
  you model Kubernetes namespaces to meet your requirements.
  """
  def list_virtual_clusters(
        %Client{} = client,
        container_provider_id \\ nil,
        container_provider_type \\ nil,
        created_after \\ nil,
        created_before \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        states \\ nil,
        options \\ []
      ) do
    url_path = "/virtualclusters"
    headers = []
    query_params = []

    query_params =
      if !is_nil(states) do
        [{"states", states} | query_params]
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
      if !is_nil(created_before) do
        [{"createdBefore", created_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(created_after) do
        [{"createdAfter", created_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(container_provider_type) do
        [{"containerProviderType", container_provider_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(container_provider_id) do
        [{"containerProviderId", container_provider_id} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
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
  Starts a job run.

  A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL
  query, that you submit to Amazon EMR on EKS.
  """
  def start_job_run(%Client{} = client, virtual_cluster_id, input, options \\ []) do
    url_path = "/virtualclusters/#{AWS.Util.encode_uri(virtual_cluster_id)}/jobruns"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Assigns tags to resources.

  A tag is a label that you assign to an AWS resource. Each tag consists of a key
  and an optional value, both of which you define. Tags enable you to categorize
  your AWS resources by attributes such as purpose, owner, or environment. When
  you have many resources of the same type, you can quickly identify a specific
  resource based on the tags you've assigned to it. For example, you can define a
  set of tags for your Amazon EMR on EKS clusters to help you track each cluster's
  owner and stack level. We recommend that you devise a consistent set of tag keys
  for each resource type. You can then search and filter the resources based on
  the tags that you add.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Removes tags from resources.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
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
