# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaStore do
  @moduledoc """
  An AWS Elemental MediaStore container is a namespace that holds folders and
  objects.

  You use a container endpoint to create, read, and delete objects.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      put_cors_policy_output() :: %{}
      
  """
  @type put_cors_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      delete_container_input() :: %{
        required("ContainerName") => String.t() | atom()
      }
      
  """
  @type delete_container_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container() :: %{
        "ARN" => String.t() | atom(),
        "AccessLoggingEnabled" => boolean(),
        "CreationTime" => non_neg_integer(),
        "Endpoint" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type container() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_lifecycle_policy_output() :: %{}
      
  """
  @type delete_lifecycle_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      stop_access_logging_output() :: %{}
      
  """
  @type stop_access_logging_output() :: %{}

  @typedoc """

  ## Example:
      
      put_container_policy_input() :: %{
        required("ContainerName") => String.t() | atom(),
        required("Policy") => String.t() | atom()
      }
      
  """
  @type put_container_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_container_output() :: %{
        "Container" => container()
      }
      
  """
  @type describe_container_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_access_logging_input() :: %{
        required("ContainerName") => String.t() | atom()
      }
      
  """
  @type start_access_logging_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_metric_policy_output() :: %{
        "MetricPolicy" => metric_policy()
      }
      
  """
  @type get_metric_policy_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_container_policy_output() :: %{}
      
  """
  @type put_container_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_container_policy_output() :: %{
        "Policy" => String.t() | atom()
      }
      
  """
  @type get_container_policy_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_container_output() :: %{}
      
  """
  @type delete_container_output() :: %{}

  @typedoc """

  ## Example:
      
      put_cors_policy_input() :: %{
        required("ContainerName") => String.t() | atom(),
        required("CorsPolicy") => list(cors_rule())
      }
      
  """
  @type put_cors_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cors_policy_input() :: %{
        required("ContainerName") => String.t() | atom()
      }
      
  """
  @type delete_cors_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cors_policy_output() :: %{
        "CorsPolicy" => list(cors_rule())
      }
      
  """
  @type get_cors_policy_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      policy_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type policy_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_container_policy_input() :: %{
        required("ContainerName") => String.t() | atom()
      }
      
  """
  @type delete_container_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cors_policy_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type cors_policy_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cors_policy_input() :: %{
        required("ContainerName") => String.t() | atom()
      }
      
  """
  @type get_cors_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_container_input() :: %{
        optional("ContainerName") => String.t() | atom()
      }
      
  """
  @type describe_container_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_access_logging_input() :: %{
        required("ContainerName") => String.t() | atom()
      }
      
  """
  @type stop_access_logging_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_containers_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_containers_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_containers_output() :: %{
        "Containers" => list(container()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_containers_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_lifecycle_policy_input() :: %{
        required("ContainerName") => String.t() | atom()
      }
      
  """
  @type get_lifecycle_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("Resource") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_lifecycle_policy_output() :: %{}
      
  """
  @type put_lifecycle_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      metric_policy_rule() :: %{
        "ObjectGroup" => String.t() | atom(),
        "ObjectGroupName" => String.t() | atom()
      }
      
  """
  @type metric_policy_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_metric_policy_output() :: %{}
      
  """
  @type delete_metric_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_output() :: %{}
      
  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      cors_rule() :: %{
        "AllowedHeaders" => list(String.t() | atom()),
        "AllowedMethods" => list(list(any())()),
        "AllowedOrigins" => list(String.t() | atom()),
        "ExposeHeaders" => list(String.t() | atom()),
        "MaxAgeSeconds" => integer()
      }
      
  """
  @type cors_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_container_policy_output() :: %{}
      
  """
  @type delete_container_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      delete_lifecycle_policy_input() :: %{
        required("ContainerName") => String.t() | atom()
      }
      
  """
  @type delete_lifecycle_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_metric_policy_input() :: %{
        required("ContainerName") => String.t() | atom(),
        required("MetricPolicy") => metric_policy()
      }
      
  """
  @type put_metric_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type container_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_container_output() :: %{
        "Container" => container()
      }
      
  """
  @type create_container_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_error() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type internal_server_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_metric_policy_output() :: %{}
      
  """
  @type put_metric_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("Resource") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_metric_policy_input() :: %{
        required("ContainerName") => String.t() | atom()
      }
      
  """
  @type delete_metric_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      metric_policy() :: %{
        "ContainerLevelMetrics" => list(any()),
        "MetricPolicyRules" => list(metric_policy_rule())
      }
      
  """
  @type metric_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_in_use_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type container_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_input() :: %{
        required("Resource") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_output() :: %{}
      
  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      start_access_logging_output() :: %{}
      
  """
  @type start_access_logging_output() :: %{}

  @typedoc """

  ## Example:
      
      delete_cors_policy_output() :: %{}
      
  """
  @type delete_cors_policy_output() :: %{}

  @typedoc """

  ## Example:
      
      get_container_policy_input() :: %{
        required("ContainerName") => String.t() | atom()
      }
      
  """
  @type get_container_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_lifecycle_policy_input() :: %{
        required("ContainerName") => String.t() | atom(),
        required("LifecyclePolicy") => String.t() | atom()
      }
      
  """
  @type put_lifecycle_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_metric_policy_input() :: %{
        required("ContainerName") => String.t() | atom()
      }
      
  """
  @type get_metric_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_lifecycle_policy_output() :: %{
        "LifecyclePolicy" => String.t() | atom()
      }
      
  """
  @type get_lifecycle_policy_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_container_input() :: %{
        optional("Tags") => list(tag()),
        required("ContainerName") => String.t() | atom()
      }
      
  """
  @type create_container_input() :: %{(String.t() | atom()) => any()}

  @type create_container_errors() ::
          limit_exceeded_exception() | container_in_use_exception() | internal_server_error()

  @type delete_container_errors() ::
          container_in_use_exception() | internal_server_error() | container_not_found_exception()

  @type delete_container_policy_errors() ::
          container_in_use_exception()
          | internal_server_error()
          | container_not_found_exception()
          | policy_not_found_exception()

  @type delete_cors_policy_errors() ::
          container_in_use_exception()
          | internal_server_error()
          | container_not_found_exception()
          | cors_policy_not_found_exception()

  @type delete_lifecycle_policy_errors() ::
          container_in_use_exception()
          | internal_server_error()
          | container_not_found_exception()
          | policy_not_found_exception()

  @type delete_metric_policy_errors() ::
          container_in_use_exception()
          | internal_server_error()
          | container_not_found_exception()
          | policy_not_found_exception()

  @type describe_container_errors() :: internal_server_error() | container_not_found_exception()

  @type get_container_policy_errors() ::
          container_in_use_exception()
          | internal_server_error()
          | container_not_found_exception()
          | policy_not_found_exception()

  @type get_cors_policy_errors() ::
          container_in_use_exception()
          | internal_server_error()
          | container_not_found_exception()
          | cors_policy_not_found_exception()

  @type get_lifecycle_policy_errors() ::
          container_in_use_exception()
          | internal_server_error()
          | container_not_found_exception()
          | policy_not_found_exception()

  @type get_metric_policy_errors() ::
          container_in_use_exception()
          | internal_server_error()
          | container_not_found_exception()
          | policy_not_found_exception()

  @type list_containers_errors() :: internal_server_error()

  @type list_tags_for_resource_errors() ::
          container_in_use_exception() | internal_server_error() | container_not_found_exception()

  @type put_container_policy_errors() ::
          container_in_use_exception() | internal_server_error() | container_not_found_exception()

  @type put_cors_policy_errors() ::
          container_in_use_exception() | internal_server_error() | container_not_found_exception()

  @type put_lifecycle_policy_errors() ::
          container_in_use_exception() | internal_server_error() | container_not_found_exception()

  @type put_metric_policy_errors() ::
          container_in_use_exception() | internal_server_error() | container_not_found_exception()

  @type start_access_logging_errors() ::
          container_in_use_exception() | internal_server_error() | container_not_found_exception()

  @type stop_access_logging_errors() ::
          container_in_use_exception() | internal_server_error() | container_not_found_exception()

  @type tag_resource_errors() ::
          container_in_use_exception() | internal_server_error() | container_not_found_exception()

  @type untag_resource_errors() ::
          container_in_use_exception() | internal_server_error() | container_not_found_exception()

  def metadata do
    %{
      api_version: "2017-09-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mediastore",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "MediaStore",
      signature_version: "v4",
      signing_name: "mediastore",
      target_prefix: "MediaStore_20170901"
    }
  end

  @doc """
  Creates a storage container to hold objects.

  A container is similar to a bucket in
  the Amazon S3 service.
  """
  @spec create_container(map(), create_container_input(), list()) ::
          {:ok, create_container_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_container_errors()}
  def create_container(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateContainer", input, options)
  end

  @doc """
  Deletes the specified container.

  Before you make a `DeleteContainer`
  request, delete any objects in the container or in any folders in the container.
  You can
  delete only empty containers.
  """
  @spec delete_container(map(), delete_container_input(), list()) ::
          {:ok, delete_container_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_container_errors()}
  def delete_container(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteContainer", input, options)
  end

  @doc """
  Deletes the access policy that is associated with the specified container.
  """
  @spec delete_container_policy(map(), delete_container_policy_input(), list()) ::
          {:ok, delete_container_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_container_policy_errors()}
  def delete_container_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteContainerPolicy", input, options)
  end

  @doc """
  Deletes the cross-origin resource sharing (CORS) configuration information that
  is
  set for the container.

  To use this operation, you must have permission to perform the
  `MediaStore:DeleteCorsPolicy` action. The container owner has this permission
  by default and can grant this permission to others.
  """
  @spec delete_cors_policy(map(), delete_cors_policy_input(), list()) ::
          {:ok, delete_cors_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cors_policy_errors()}
  def delete_cors_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCorsPolicy", input, options)
  end

  @doc """
  Removes an object lifecycle policy from a container.

  It takes up to 20 minutes for the change to take effect.
  """
  @spec delete_lifecycle_policy(map(), delete_lifecycle_policy_input(), list()) ::
          {:ok, delete_lifecycle_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_lifecycle_policy_errors()}
  def delete_lifecycle_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLifecyclePolicy", input, options)
  end

  @doc """
  Deletes the metric policy that is associated with the specified container.

  If there is no metric policy associated with the container, MediaStore doesn't
  send metrics to CloudWatch.
  """
  @spec delete_metric_policy(map(), delete_metric_policy_input(), list()) ::
          {:ok, delete_metric_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_metric_policy_errors()}
  def delete_metric_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteMetricPolicy", input, options)
  end

  @doc """
  Retrieves the properties of the requested container.

  This request is commonly used to
  retrieve the endpoint of a container. An endpoint is a value assigned by the
  service when a
  new container is created. A container's endpoint does not change after it has
  been
  assigned. The `DescribeContainer` request returns a single
  `Container` object based on `ContainerName`. To return all
  `Container` objects that are associated with a specified AWS account, use
  `ListContainers`.
  """
  @spec describe_container(map(), describe_container_input(), list()) ::
          {:ok, describe_container_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_container_errors()}
  def describe_container(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeContainer", input, options)
  end

  @doc """
  Retrieves the access policy for the specified container.

  For information about the
  data that is included in an access policy, see the [AWS Identity and Access Management User
  Guide](https://aws.amazon.com/documentation/iam/).
  """
  @spec get_container_policy(map(), get_container_policy_input(), list()) ::
          {:ok, get_container_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_container_policy_errors()}
  def get_container_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetContainerPolicy", input, options)
  end

  @doc """
  Returns the cross-origin resource sharing (CORS) configuration information that
  is
  set for the container.

  To use this operation, you must have permission to perform the
  `MediaStore:GetCorsPolicy` action. By default, the container owner has this
  permission and can grant it to others.
  """
  @spec get_cors_policy(map(), get_cors_policy_input(), list()) ::
          {:ok, get_cors_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cors_policy_errors()}
  def get_cors_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCorsPolicy", input, options)
  end

  @doc """
  Retrieves the object lifecycle policy that is assigned to a container.
  """
  @spec get_lifecycle_policy(map(), get_lifecycle_policy_input(), list()) ::
          {:ok, get_lifecycle_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_lifecycle_policy_errors()}
  def get_lifecycle_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetLifecyclePolicy", input, options)
  end

  @doc """
  Returns the metric policy for the specified container.
  """
  @spec get_metric_policy(map(), get_metric_policy_input(), list()) ::
          {:ok, get_metric_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_metric_policy_errors()}
  def get_metric_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMetricPolicy", input, options)
  end

  @doc """
  Lists the properties of all containers in AWS Elemental MediaStore.

  You can query to receive all the containers in one response. Or you can include
  the
  `MaxResults` parameter to receive a limited number of containers in each
  response. In this case, the response includes a token. To get the next set of
  containers,
  send the command again, this time with the `NextToken` parameter (with the
  returned token as its value). The next set of responses appears, with a token if
  there are
  still more containers to receive.

  See also `DescribeContainer`, which gets the properties of one
  container.
  """
  @spec list_containers(map(), list_containers_input(), list()) ::
          {:ok, list_containers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_containers_errors()}
  def list_containers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListContainers", input, options)
  end

  @doc """
  Returns a list of the tags assigned to the specified container.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_input(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Creates an access policy for the specified container to restrict the users and
  clients that can access it.

  For information about the data that is included in an access
  policy, see the [AWS Identity and Access Management User Guide](https://aws.amazon.com/documentation/iam/).

  For this release of the REST API, you can create only one policy for a
  container. If
  you enter `PutContainerPolicy` twice, the second command modifies the existing
  policy.
  """
  @spec put_container_policy(map(), put_container_policy_input(), list()) ::
          {:ok, put_container_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_container_policy_errors()}
  def put_container_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutContainerPolicy", input, options)
  end

  @doc """
  Sets the cross-origin resource sharing (CORS) configuration on a container so
  that
  the container can service cross-origin requests.

  For example, you might want to enable a
  request whose origin is http://www.example.com to access your AWS Elemental
  MediaStore
  container at my.example.container.com by using the browser's XMLHttpRequest
  capability.

  To enable CORS on a container, you attach a CORS policy to the container. In the
  CORS
  policy, you configure rules that identify origins and the HTTP methods that can
  be executed
  on your container. The policy can contain up to 398,000 characters. You can add
  up to 100
  rules to a CORS policy. If more than one rule applies, the service uses the
  first
  applicable rule listed.

  To learn more about CORS, see [Cross-Origin Resource Sharing (CORS) in AWS Elemental
  MediaStore](https://docs.aws.amazon.com/mediastore/latest/ug/cors-policy.html).
  """
  @spec put_cors_policy(map(), put_cors_policy_input(), list()) ::
          {:ok, put_cors_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_cors_policy_errors()}
  def put_cors_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutCorsPolicy", input, options)
  end

  @doc """
  Writes an object lifecycle policy to a container.

  If the container already has an object lifecycle policy, the service replaces
  the existing policy with the new policy. It takes up to 20 minutes for the
  change to take effect.

  For information about how to construct an object lifecycle policy, see
  [Components of an Object Lifecycle Policy](https://docs.aws.amazon.com/mediastore/latest/ug/policies-object-lifecycle-components.html).
  """
  @spec put_lifecycle_policy(map(), put_lifecycle_policy_input(), list()) ::
          {:ok, put_lifecycle_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_lifecycle_policy_errors()}
  def put_lifecycle_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutLifecyclePolicy", input, options)
  end

  @doc """
  The metric policy that you want to add to the container.

  A metric policy allows AWS Elemental MediaStore to send metrics to Amazon
  CloudWatch. It takes up to 20 minutes for the new policy to take effect.
  """
  @spec put_metric_policy(map(), put_metric_policy_input(), list()) ::
          {:ok, put_metric_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_metric_policy_errors()}
  def put_metric_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutMetricPolicy", input, options)
  end

  @doc """
  Starts access logging on the specified container.

  When you enable access logging on a container, MediaStore delivers access logs
  for objects stored in that container to Amazon CloudWatch Logs.
  """
  @spec start_access_logging(map(), start_access_logging_input(), list()) ::
          {:ok, start_access_logging_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_access_logging_errors()}
  def start_access_logging(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartAccessLogging", input, options)
  end

  @doc """
  Stops access logging on the specified container.

  When you stop access logging on a container, MediaStore stops sending access
  logs to Amazon CloudWatch Logs. These access logs are not saved and are not
  retrievable.
  """
  @spec stop_access_logging(map(), stop_access_logging_input(), list()) ::
          {:ok, stop_access_logging_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_access_logging_errors()}
  def stop_access_logging(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopAccessLogging", input, options)
  end

  @doc """
  Adds tags to the specified AWS Elemental MediaStore container.

  Tags are key:value pairs that you can associate with AWS resources. For example,
  the
  tag key might be "customer" and the tag value might be "companyA." You can
  specify one or more tags to add to each container. You can add up to 50
  tags to each container. For more information about tagging, including naming and
  usage conventions, see [Tagging Resources in MediaStore](https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html).
  """
  @spec tag_resource(map(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes tags from the specified container.

  You can specify one or more tags to remove.
  """
  @spec untag_resource(map(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
