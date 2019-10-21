# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeDeploy do
  @moduledoc """
  AWS CodeDeploy

  AWS CodeDeploy is a deployment service that automates application
  deployments to Amazon EC2 instances, on-premises instances running in your
  own facility, serverless AWS Lambda functions, or applications in an Amazon
  ECS service.

  You can deploy a nearly unlimited variety of application content, such as
  an updated Lambda function, updated applications in an Amazon ECS service,
  code, web and configuration files, executables, packages, scripts,
  multimedia files, and so on. AWS CodeDeploy can deploy application content
  stored in Amazon S3 buckets, GitHub repositories, or Bitbucket
  repositories. You do not need to make changes to your existing code before
  you can use AWS CodeDeploy.

  AWS CodeDeploy makes it easier for you to rapidly release new features,
  helps you avoid downtime during application deployment, and handles the
  complexity of updating your applications, without many of the risks
  associated with error-prone manual deployments.

  **AWS CodeDeploy Components**

  Use the information in this guide to help you work with the following AWS
  CodeDeploy components:

  <ul> <li> **Application**: A name that uniquely identifies the application
  you want to deploy. AWS CodeDeploy uses this name, which functions as a
  container, to ensure the correct combination of revision, deployment
  configuration, and deployment group are referenced during a deployment.

  </li> <li> **Deployment group**: A set of individual instances, CodeDeploy
  Lambda deployment configuration settings, or an Amazon ECS service and
  network details. A Lambda deployment group specifies how to route traffic
  to a new version of a Lambda function. An Amazon ECS deployment group
  specifies the service created in Amazon ECS to deploy, a load balancer, and
  a listener to reroute production traffic to an updated containerized
  application. An EC2/On-premises deployment group contains individually
  tagged instances, Amazon EC2 instances in Amazon EC2 Auto Scaling groups,
  or both. All deployment groups can specify optional trigger, alarm, and
  rollback settings.

  </li> <li> **Deployment configuration**: A set of deployment rules and
  deployment success and failure conditions used by AWS CodeDeploy during a
  deployment.

  </li> <li> **Deployment**: The process and the components used when
  updating a Lambda function, a containerized application in an Amazon ECS
  service, or of installing content on one or more instances.

  </li> <li> **Application revisions**: For an AWS Lambda deployment, this is
  an AppSpec file that specifies the Lambda function to be updated and one or
  more functions to validate deployment lifecycle events. For an Amazon ECS
  deployment, this is an AppSpec file that specifies the Amazon ECS task
  definition, container, and port where production traffic is rerouted. For
  an EC2/On-premises deployment, this is an archive file that contains source
  content—source code, webpages, executable files, and deployment
  scripts—along with an AppSpec file. Revisions are stored in Amazon S3
  buckets or GitHub repositories. For Amazon S3, a revision is uniquely
  identified by its Amazon S3 object key and its ETag, version, or both. For
  GitHub, a revision is uniquely identified by its commit ID.

  </li> </ul> This guide also contains information to help you get details
  about the instances in your deployments, to make on-premises instances
  available for AWS CodeDeploy deployments, to get details about a Lambda
  function deployment, and to get details about Amazon ECS service
  deployments.

  **AWS CodeDeploy Information Resources**

  <ul> <li> [AWS CodeDeploy User
  Guide](https://docs.aws.amazon.com/codedeploy/latest/userguide)

  </li> <li> [AWS CodeDeploy API Reference
  Guide](https://docs.aws.amazon.com/codedeploy/latest/APIReference/)

  </li> <li> [AWS CLI Reference for AWS
  CodeDeploy](https://docs.aws.amazon.com/cli/latest/reference/deploy/index.html)

  </li> <li> [AWS CodeDeploy Developer
  Forum](https://forums.aws.amazon.com/forum.jspa?forumID=179)

  </li> </ul>
  """

  @doc """
  Adds tags to on-premises instances.
  """
  def add_tags_to_on_premises_instances(client, input, options \\ []) do
    request(client, "AddTagsToOnPremisesInstances", input, options)
  end

  @doc """
  Gets information about one or more application revisions. The maximum
  number of application revisions that can be returned is 25.
  """
  def batch_get_application_revisions(client, input, options \\ []) do
    request(client, "BatchGetApplicationRevisions", input, options)
  end

  @doc """
  Gets information about one or more applications. The maximum number of
  applications that can be returned is 25.
  """
  def batch_get_applications(client, input, options \\ []) do
    request(client, "BatchGetApplications", input, options)
  end

  @doc """
  Gets information about one or more deployment groups.
  """
  def batch_get_deployment_groups(client, input, options \\ []) do
    request(client, "BatchGetDeploymentGroups", input, options)
  end

  @doc """
  <note> This method works, but is deprecated. Use
  `BatchGetDeploymentTargets` instead.

  </note> Returns an array of one or more instances associated with a
  deployment. This method works with EC2/On-premises and AWS Lambda compute
  platforms. The newer `BatchGetDeploymentTargets` works with all compute
  platforms. The maximum number of instances that can be returned is 25.
  """
  def batch_get_deployment_instances(client, input, options \\ []) do
    request(client, "BatchGetDeploymentInstances", input, options)
  end

  @doc """
  Returns an array of one or more targets associated with a deployment. This
  method works with all compute types and should be used instead of the
  deprecated `BatchGetDeploymentInstances`. The maximum number of targets
  that can be returned is 25.

  The type of targets returned depends on the deployment's compute platform:

  <ul> <li> **EC2/On-premises**: Information about EC2 instance targets.

  </li> <li> **AWS Lambda**: Information about Lambda functions targets.

  </li> <li> **Amazon ECS**: Information about Amazon ECS service targets.

  </li> </ul>
  """
  def batch_get_deployment_targets(client, input, options \\ []) do
    request(client, "BatchGetDeploymentTargets", input, options)
  end

  @doc """
  Gets information about one or more deployments. The maximum number of
  deployments that can be returned is 25.
  """
  def batch_get_deployments(client, input, options \\ []) do
    request(client, "BatchGetDeployments", input, options)
  end

  @doc """
  Gets information about one or more on-premises instances. The maximum
  number of on-premises instances that can be returned is 25.
  """
  def batch_get_on_premises_instances(client, input, options \\ []) do
    request(client, "BatchGetOnPremisesInstances", input, options)
  end

  @doc """
  For a blue/green deployment, starts the process of rerouting traffic from
  instances in the original environment to instances in the replacement
  environment without waiting for a specified wait time to elapse. (Traffic
  rerouting, which is achieved by registering instances in the replacement
  environment with the load balancer, can start as soon as all instances have
  a status of Ready.)
  """
  def continue_deployment(client, input, options \\ []) do
    request(client, "ContinueDeployment", input, options)
  end

  @doc """
  Creates an application.
  """
  def create_application(client, input, options \\ []) do
    request(client, "CreateApplication", input, options)
  end

  @doc """
  Deploys an application revision through the specified deployment group.
  """
  def create_deployment(client, input, options \\ []) do
    request(client, "CreateDeployment", input, options)
  end

  @doc """
  Creates a deployment configuration.
  """
  def create_deployment_config(client, input, options \\ []) do
    request(client, "CreateDeploymentConfig", input, options)
  end

  @doc """
  Creates a deployment group to which application revisions are deployed.
  """
  def create_deployment_group(client, input, options \\ []) do
    request(client, "CreateDeploymentGroup", input, options)
  end

  @doc """
  Deletes an application.
  """
  def delete_application(client, input, options \\ []) do
    request(client, "DeleteApplication", input, options)
  end

  @doc """
  Deletes a deployment configuration.

  <note> A deployment configuration cannot be deleted if it is currently in
  use. Predefined configurations cannot be deleted.

  </note>
  """
  def delete_deployment_config(client, input, options \\ []) do
    request(client, "DeleteDeploymentConfig", input, options)
  end

  @doc """
  Deletes a deployment group.
  """
  def delete_deployment_group(client, input, options \\ []) do
    request(client, "DeleteDeploymentGroup", input, options)
  end

  @doc """
  Deletes a GitHub account connection.
  """
  def delete_git_hub_account_token(client, input, options \\ []) do
    request(client, "DeleteGitHubAccountToken", input, options)
  end

  @doc """
  Deregisters an on-premises instance.
  """
  def deregister_on_premises_instance(client, input, options \\ []) do
    request(client, "DeregisterOnPremisesInstance", input, options)
  end

  @doc """
  Gets information about an application.
  """
  def get_application(client, input, options \\ []) do
    request(client, "GetApplication", input, options)
  end

  @doc """
  Gets information about an application revision.
  """
  def get_application_revision(client, input, options \\ []) do
    request(client, "GetApplicationRevision", input, options)
  end

  @doc """
  Gets information about a deployment.

  <note> The `content` property of the `appSpecContent` object in the
  returned revision is always null. Use `GetApplicationRevision` and the
  `sha256` property of the returned `appSpecContent` object to get the
  content of the deployment’s AppSpec file.

  </note>
  """
  def get_deployment(client, input, options \\ []) do
    request(client, "GetDeployment", input, options)
  end

  @doc """
  Gets information about a deployment configuration.
  """
  def get_deployment_config(client, input, options \\ []) do
    request(client, "GetDeploymentConfig", input, options)
  end

  @doc """
  Gets information about a deployment group.
  """
  def get_deployment_group(client, input, options \\ []) do
    request(client, "GetDeploymentGroup", input, options)
  end

  @doc """
  Gets information about an instance as part of a deployment.
  """
  def get_deployment_instance(client, input, options \\ []) do
    request(client, "GetDeploymentInstance", input, options)
  end

  @doc """
  Returns information about a deployment target.
  """
  def get_deployment_target(client, input, options \\ []) do
    request(client, "GetDeploymentTarget", input, options)
  end

  @doc """
  Gets information about an on-premises instance.
  """
  def get_on_premises_instance(client, input, options \\ []) do
    request(client, "GetOnPremisesInstance", input, options)
  end

  @doc """
  Lists information about revisions for an application.
  """
  def list_application_revisions(client, input, options \\ []) do
    request(client, "ListApplicationRevisions", input, options)
  end

  @doc """
  Lists the applications registered with the IAM user or AWS account.
  """
  def list_applications(client, input, options \\ []) do
    request(client, "ListApplications", input, options)
  end

  @doc """
  Lists the deployment configurations with the IAM user or AWS account.
  """
  def list_deployment_configs(client, input, options \\ []) do
    request(client, "ListDeploymentConfigs", input, options)
  end

  @doc """
  Lists the deployment groups for an application registered with the IAM user
  or AWS account.
  """
  def list_deployment_groups(client, input, options \\ []) do
    request(client, "ListDeploymentGroups", input, options)
  end

  @doc """
  <note> The newer BatchGetDeploymentTargets should be used instead because
  it works with all compute types. `ListDeploymentInstances` throws an
  exception if it is used with a compute platform other than EC2/On-premises
  or AWS Lambda.

  </note> Lists the instance for a deployment associated with the IAM user or
  AWS account.
  """
  def list_deployment_instances(client, input, options \\ []) do
    request(client, "ListDeploymentInstances", input, options)
  end

  @doc """
  Returns an array of target IDs that are associated a deployment.
  """
  def list_deployment_targets(client, input, options \\ []) do
    request(client, "ListDeploymentTargets", input, options)
  end

  @doc """
  Lists the deployments in a deployment group for an application registered
  with the IAM user or AWS account.
  """
  def list_deployments(client, input, options \\ []) do
    request(client, "ListDeployments", input, options)
  end

  @doc """
  Lists the names of stored connections to GitHub accounts.
  """
  def list_git_hub_account_token_names(client, input, options \\ []) do
    request(client, "ListGitHubAccountTokenNames", input, options)
  end

  @doc """
  Gets a list of names for one or more on-premises instances.

  Unless otherwise specified, both registered and deregistered on-premises
  instance names are listed. To list only registered or deregistered
  on-premises instance names, use the registration status parameter.
  """
  def list_on_premises_instances(client, input, options \\ []) do
    request(client, "ListOnPremisesInstances", input, options)
  end

  @doc """
  Returns a list of tags for the resource identified by a specified ARN. Tags
  are used to organize and categorize your CodeDeploy resources.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Sets the result of a Lambda validation function. The function validates one
  or both lifecycle events (`BeforeAllowTraffic` and `AfterAllowTraffic`) and
  returns `Succeeded` or `Failed`.
  """
  def put_lifecycle_event_hook_execution_status(client, input, options \\ []) do
    request(client, "PutLifecycleEventHookExecutionStatus", input, options)
  end

  @doc """
  Registers with AWS CodeDeploy a revision for the specified application.
  """
  def register_application_revision(client, input, options \\ []) do
    request(client, "RegisterApplicationRevision", input, options)
  end

  @doc """
  Registers an on-premises instance.

  <note> Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported
  in the request. You cannot use both.

  </note>
  """
  def register_on_premises_instance(client, input, options \\ []) do
    request(client, "RegisterOnPremisesInstance", input, options)
  end

  @doc """
  Removes one or more tags from one or more on-premises instances.
  """
  def remove_tags_from_on_premises_instances(client, input, options \\ []) do
    request(client, "RemoveTagsFromOnPremisesInstances", input, options)
  end

  @doc """
  In a blue/green deployment, overrides any specified wait time and starts
  terminating instances immediately after the traffic routing is complete.
  """
  def skip_wait_time_for_instance_termination(client, input, options \\ []) do
    request(client, "SkipWaitTimeForInstanceTermination", input, options)
  end

  @doc """
  Attempts to stop an ongoing deployment.
  """
  def stop_deployment(client, input, options \\ []) do
    request(client, "StopDeployment", input, options)
  end

  @doc """
  Associates the list of tags in the input `Tags` parameter with the resource
  identified by the `ResourceArn` input parameter.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Disassociates a resource from a list of tags. The resource is identified by
  the `ResourceArn` input parameter. The tags are identfied by the list of
  keys in the `TagKeys` input parameter.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Changes the name of an application.
  """
  def update_application(client, input, options \\ []) do
    request(client, "UpdateApplication", input, options)
  end

  @doc """
  Changes information about a deployment group.
  """
  def update_deployment_group(client, input, options \\ []) do
    request(client, "UpdateDeploymentGroup", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "codedeploy"}
    host = get_host("codedeploy", client)
    url = get_url(host, client)

    headers = if client.session_token do
      [{"X-Amz-Security-Token", client.session_token}]
    else
      []
    end

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "CodeDeploy_20141006.#{action}"} | headers]

    payload = Poison.Encoder.encode(input, %{})
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}
    
      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
