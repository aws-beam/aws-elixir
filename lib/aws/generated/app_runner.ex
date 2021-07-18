# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppRunner do
  @moduledoc """
  AWS App Runner

  AWS App Runner is an application service that provides a fast, simple, and
  cost-effective way to go directly from an existing container image or source
  code to a running service in the AWS cloud in seconds.

  You don't need to learn new technologies, decide which compute service to use,
  or understand how to provision and configure AWS resources.

  App Runner connects directly to your container registry or source code
  repository. It provides an automatic delivery pipeline with fully managed
  operations, high performance, scalability, and security.

  For more information about App Runner, see the [AWS App Runner Developer Guide](https://docs.aws.amazon.com/apprunner/latest/dg/). For release
  information, see the [AWS App Runner Release Notes](https://docs.aws.amazon.com/apprunner/latest/relnotes/).

  To install the Software Development Kits (SDKs), Integrated Development
  Environment (IDE) Toolkits, and command line tools that you can use to access
  the API, see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).  ## Endpoints

  For a list of Region-specific endpoints that App Runner supports, see [AWS App
  Runner endpoints and
  quotas](https://docs.aws.amazon.com/general/latest/gr/apprunner.html) in the
  *AWS General Reference*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-05-15",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "apprunner",
      global?: false,
      protocol: "json",
      service_id: "AppRunner",
      signature_version: "v4",
      signing_name: "apprunner",
      target_prefix: "AppRunner"
    }
  end

  @doc """
  Associate your own domain name with the AWS App Runner subdomain URL of your App
  Runner service.

  After you call `AssociateCustomDomain` and receive a successful response, use
  the information in the `CustomDomain` record that's returned to add CNAME
  records to your Domain Name System (DNS). For each mapped domain name, add a
  mapping to the target App Runner subdomain and one or more certificate
  validation records. App Runner then performs DNS validation to verify that you
  own or control the domain name that you associated. App Runner tracks domain
  validity in a certificate stored in [AWS Certificate Manager (ACM)](https://docs.aws.amazon.com/acm/latest/userguide).
  """
  def associate_custom_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateCustomDomain", input, options)
  end

  @doc """
  Create an AWS App Runner automatic scaling configuration resource.

  App Runner requires this resource when you create App Runner services that
  require non-default auto scaling settings. You can share an auto scaling
  configuration across multiple services.

  Create multiple revisions of a configuration by using the same
  `AutoScalingConfigurationName` and different `AutoScalingConfigurationRevision`
  values. When you create a service, you can set it to use the latest active
  revision of an auto scaling configuration or a specific revision.

  Configure a higher `MinSize` to increase the spread of your App Runner service
  over more Availability Zones in the AWS Region. The tradeoff is a higher minimal
  cost.

  Configure a lower `MaxSize` to control your cost. The tradeoff is lower
  responsiveness during peak demand.
  """
  def create_auto_scaling_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAutoScalingConfiguration", input, options)
  end

  @doc """
  Create an AWS App Runner connection resource.

  App Runner requires a connection resource when you create App Runner services
  that access private repositories from certain third-party providers. You can
  share a connection across multiple services.

  A connection resource is needed to access GitHub repositories. GitHub requires a
  user interface approval process through the App Runner console before you can
  use the connection.
  """
  def create_connection(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateConnection", input, options)
  end

  @doc """
  Create an AWS App Runner service.

  After the service is created, the action also automatically starts a deployment.

  This is an asynchronous operation. On a successful call, you can use the
  returned `OperationId` and the
  [ListOperations](https://docs.aws.amazon.com/apprunner/latest/api/API_ListOperations.html)
  call to track the operation's progress.
  """
  def create_service(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateService", input, options)
  end

  @doc """
  Delete an AWS App Runner automatic scaling configuration resource.

  You can delete a specific revision or the latest active revision. You can't
  delete a configuration that's used by one or more App Runner services.
  """
  def delete_auto_scaling_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAutoScalingConfiguration", input, options)
  end

  @doc """
  Delete an AWS App Runner connection.

  You must first ensure that there are no running App Runner services that use
  this connection. If there are any, the `DeleteConnection` action fails.
  """
  def delete_connection(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteConnection", input, options)
  end

  @doc """
  Delete an AWS App Runner service.

  This is an asynchronous operation. On a successful call, you can use the
  returned `OperationId` and the `ListOperations` call to track the operation's
  progress.
  """
  def delete_service(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteService", input, options)
  end

  @doc """
  Return a full description of an AWS App Runner automatic scaling configuration
  resource.
  """
  def describe_auto_scaling_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAutoScalingConfiguration", input, options)
  end

  @doc """
  Return a description of custom domain names that are associated with an AWS App
  Runner service.
  """
  def describe_custom_domains(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeCustomDomains", input, options)
  end

  @doc """
  Return a full description of an AWS App Runner service.
  """
  def describe_service(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeService", input, options)
  end

  @doc """
  Disassociate a custom domain name from an AWS App Runner service.

  Certificates tracking domain validity are associated with a custom domain and
  are stored in [AWS Certificate Manager (ACM)](https://docs.aws.amazon.com/acm/latest/userguide). These certificates
  aren't deleted as part of this action. App Runner delays certificate deletion
  for 30 days after a domain is disassociated from your service.
  """
  def disassociate_custom_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateCustomDomain", input, options)
  end

  @doc """
  Returns a list of AWS App Runner automatic scaling configurations in your AWS
  account.

  You can query the revisions for a specific configuration name or the revisions
  for all configurations in your account. You can optionally query only the latest
  revision of each requested name.
  """
  def list_auto_scaling_configurations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAutoScalingConfigurations", input, options)
  end

  @doc """
  Returns a list of AWS App Runner connections that are associated with your AWS
  account.
  """
  def list_connections(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListConnections", input, options)
  end

  @doc """
  Return a list of operations that occurred on an AWS App Runner service.

  The resulting list of `OperationSummary` objects is sorted in reverse
  chronological order. The first object on the list represents the last started
  operation.
  """
  def list_operations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListOperations", input, options)
  end

  @doc """
  Returns a list of running AWS App Runner services in your AWS account.
  """
  def list_services(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListServices", input, options)
  end

  @doc """
  List tags that are associated with for an AWS App Runner resource.

  The response contains a list of tag key-value pairs.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Pause an active AWS App Runner service.

  App Runner reduces compute capacity for the service to zero and loses state (for
  example, ephemeral storage is removed).

  This is an asynchronous operation. On a successful call, you can use the
  returned `OperationId` and the `ListOperations` call to track the operation's
  progress.
  """
  def pause_service(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PauseService", input, options)
  end

  @doc """
  Resume an active AWS App Runner service.

  App Runner provisions compute capacity for the service.

  This is an asynchronous operation. On a successful call, you can use the
  returned `OperationId` and the `ListOperations` call to track the operation's
  progress.
  """
  def resume_service(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ResumeService", input, options)
  end

  @doc """
  Initiate a manual deployment of the latest commit in a source code repository or
  the latest image in a source image repository to an AWS App Runner service.

  For a source code repository, App Runner retrieves the commit and builds a
  Docker image. For a source image repository, App Runner retrieves the latest
  Docker image. In both cases, App Runner then deploys the new image to your
  service and starts a new container instance.

  This is an asynchronous operation. On a successful call, you can use the
  returned `OperationId` and the `ListOperations` call to track the operation's
  progress.
  """
  def start_deployment(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartDeployment", input, options)
  end

  @doc """
  Add tags to, or update the tag values of, an App Runner resource.

  A tag is a key-value pair.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Remove tags from an App Runner resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Update an AWS App Runner service.

  You can update the source configuration and instance configuration of the
  service. You can also update the ARN of the auto scaling configuration resource
  that's associated with the service. However, you can't change the name or the
  encryption configuration of the service. These can be set only when you create
  the service.

  To update the tags applied to your service, use the separate actions
  `TagResource` and `UntagResource`.

  This is an asynchronous operation. On a successful call, you can use the
  returned `OperationId` and the `ListOperations` call to track the operation's
  progress.
  """
  def update_service(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateService", input, options)
  end
end
