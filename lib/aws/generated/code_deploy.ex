# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeDeploy do
  @moduledoc """
  CodeDeploy is a deployment service that automates application deployments to
  Amazon EC2 instances, on-premises instances running in your own facility,
  serverless Lambda functions, or applications in an Amazon ECS service.

  You can deploy a nearly unlimited variety of application content, such as an
  updated Lambda function, updated applications in an Amazon ECS service, code,
  web and configuration files, executables, packages, scripts, multimedia files,
  and so on. CodeDeploy can deploy application content stored in Amazon S3
  buckets, GitHub repositories, or Bitbucket repositories. You do not need to make
  changes to your existing code before you can use CodeDeploy.

  CodeDeploy makes it easier for you to rapidly release new features, helps you
  avoid downtime during application deployment, and handles the complexity of
  updating your applications, without many of the risks associated with
  error-prone manual deployments.

  ## CodeDeploy Components

  Use the information in this guide to help you work with the following CodeDeploy
  components:

    * **Application**: A name that uniquely identifies the application
  you want to deploy. CodeDeploy uses this name, which functions as a container,
  to ensure the correct combination of revision, deployment configuration, and
  deployment group are referenced during a deployment.

    * **Deployment group**: A set of individual instances, CodeDeploy
  Lambda deployment configuration settings, or an Amazon ECS service and network
  details. A Lambda deployment group specifies how to route traffic to a new
  version of a Lambda function. An Amazon ECS deployment group specifies the
  service created in Amazon ECS to deploy, a load balancer, and a listener to
  reroute production traffic to an updated containerized application. An Amazon
  EC2/On-premises deployment group contains individually tagged instances, Amazon
  EC2 instances in Amazon EC2 Auto Scaling groups, or both. All deployment groups
  can specify optional trigger, alarm, and rollback settings.

    * **Deployment configuration**: A set of deployment rules and
  deployment success and failure conditions used by CodeDeploy during a
  deployment.

    * **Deployment**: The process and the components used when updating
  a Lambda function, a containerized application in an Amazon ECS service, or of
  installing content on one or more instances.

    * **Application revisions**: For an Lambda deployment, this is an
  AppSpec file that specifies the Lambda function to be updated and one or more
  functions to validate deployment lifecycle events. For an Amazon ECS deployment,
  this is an AppSpec file that specifies the Amazon ECS task definition,
  container, and port where production traffic is rerouted. For an EC2/On-premises
  deployment, this is an archive file that contains source content—source code,
  webpages, executable files, and deployment scripts—along with an AppSpec file.
  Revisions are stored in Amazon S3 buckets or GitHub repositories. For Amazon S3,
  a revision is uniquely identified by its Amazon S3 object key and its ETag,
  version, or both. For GitHub, a revision is uniquely identified by its commit
  ID.

  This guide also contains information to help you get details about the instances
  in your deployments, to make on-premises instances available for CodeDeploy
  deployments, to get details about a Lambda function deployment, and to get
  details about Amazon ECS service deployments.

  ## CodeDeploy Information Resources

    * [CodeDeploy User Guide](https://docs.aws.amazon.com/codedeploy/latest/userguide)

    * [CodeDeploy API Reference Guide](https://docs.aws.amazon.com/codedeploy/latest/APIReference/)

    * [CLI Reference for CodeDeploy](https://docs.aws.amazon.com/cli/latest/reference/deploy/index.html)

    * [CodeDeploy Developer Forum](https://forums.aws.amazon.com/forum.jspa?forumID=179)
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "CodeDeploy",
      api_version: "2014-10-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codedeploy",
      global?: false,
      protocol: "json",
      service_id: "CodeDeploy",
      signature_version: "v4",
      signing_name: "codedeploy",
      target_prefix: "CodeDeploy_20141006"
    }
  end

  @doc """
  Adds tags to on-premises instances.
  """
  def add_tags_to_on_premises_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddTagsToOnPremisesInstances", input, options)
  end

  @doc """
  Gets information about one or more application revisions.

  The maximum number of application revisions that can be returned is 25.
  """
  def batch_get_application_revisions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetApplicationRevisions", input, options)
  end

  @doc """
  Gets information about one or more applications.

  The maximum number of applications that can be returned is 100.
  """
  def batch_get_applications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetApplications", input, options)
  end

  @doc """
  Gets information about one or more deployment groups.
  """
  def batch_get_deployment_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetDeploymentGroups", input, options)
  end

  @doc """
  This method works, but is deprecated.

  Use `BatchGetDeploymentTargets` instead.

  Returns an array of one or more instances associated with a deployment. This
  method works with EC2/On-premises and Lambda compute platforms. The newer
  `BatchGetDeploymentTargets` works with all compute platforms. The maximum number
  of instances that can be returned is 25.
  """
  def batch_get_deployment_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetDeploymentInstances", input, options)
  end

  @doc """
  Returns an array of one or more targets associated with a deployment.

  This method works with all compute types and should be used instead of the
  deprecated `BatchGetDeploymentInstances`. The maximum number of targets that can
  be returned is 25.

  The type of targets returned depends on the deployment's compute platform or
  deployment method:

    * **EC2/On-premises**: Information about Amazon EC2 instance
  targets.

    * **Lambda**: Information about Lambda functions targets.

    * **Amazon ECS**: Information about Amazon ECS service targets.

    * **CloudFormation**: Information about targets of blue/green
  deployments initiated by a CloudFormation stack update.
  """
  def batch_get_deployment_targets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetDeploymentTargets", input, options)
  end

  @doc """
  Gets information about one or more deployments.

  The maximum number of deployments that can be returned is 25.
  """
  def batch_get_deployments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetDeployments", input, options)
  end

  @doc """
  Gets information about one or more on-premises instances.

  The maximum number of on-premises instances that can be returned is 25.
  """
  def batch_get_on_premises_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetOnPremisesInstances", input, options)
  end

  @doc """
  For a blue/green deployment, starts the process of rerouting traffic from
  instances in the original environment to instances in the replacement
  environment without waiting for a specified wait time to elapse.

  (Traffic rerouting, which is achieved by registering instances in the
  replacement environment with the load balancer, can start as soon as all
  instances have a status of Ready.)
  """
  def continue_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ContinueDeployment", input, options)
  end

  @doc """
  Creates an application.
  """
  def create_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateApplication", input, options)
  end

  @doc """
  Deploys an application revision through the specified deployment group.
  """
  def create_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDeployment", input, options)
  end

  @doc """
  Creates a deployment configuration.
  """
  def create_deployment_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDeploymentConfig", input, options)
  end

  @doc """
  Creates a deployment group to which application revisions are deployed.
  """
  def create_deployment_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDeploymentGroup", input, options)
  end

  @doc """
  Deletes an application.
  """
  def delete_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplication", input, options)
  end

  @doc """
  Deletes a deployment configuration.

  A deployment configuration cannot be deleted if it is currently in use.
  Predefined configurations cannot be deleted.
  """
  def delete_deployment_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDeploymentConfig", input, options)
  end

  @doc """
  Deletes a deployment group.
  """
  def delete_deployment_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDeploymentGroup", input, options)
  end

  @doc """
  Deletes a GitHub account connection.
  """
  def delete_git_hub_account_token(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGitHubAccountToken", input, options)
  end

  @doc """
  Deletes resources linked to an external ID.

  This action only applies if you have configured blue/green deployments through
  CloudFormation.

  It is not necessary to call this action directly. CloudFormation calls it on
  your behalf when it needs to delete stack resources. This action is offered
  publicly in case you need to delete resources to comply with General Data
  Protection Regulation (GDPR) requirements.
  """
  def delete_resources_by_external_id(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourcesByExternalId", input, options)
  end

  @doc """
  Deregisters an on-premises instance.
  """
  def deregister_on_premises_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterOnPremisesInstance", input, options)
  end

  @doc """
  Gets information about an application.
  """
  def get_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetApplication", input, options)
  end

  @doc """
  Gets information about an application revision.
  """
  def get_application_revision(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetApplicationRevision", input, options)
  end

  @doc """
  Gets information about a deployment.

  The `content` property of the `appSpecContent` object in the returned revision
  is always null. Use `GetApplicationRevision` and the `sha256` property of the
  returned `appSpecContent` object to get the content of the deployment’s AppSpec
  file.
  """
  def get_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDeployment", input, options)
  end

  @doc """
  Gets information about a deployment configuration.
  """
  def get_deployment_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDeploymentConfig", input, options)
  end

  @doc """
  Gets information about a deployment group.
  """
  def get_deployment_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDeploymentGroup", input, options)
  end

  @doc """
  Gets information about an instance as part of a deployment.
  """
  def get_deployment_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDeploymentInstance", input, options)
  end

  @doc """
  Returns information about a deployment target.
  """
  def get_deployment_target(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDeploymentTarget", input, options)
  end

  @doc """
  Gets information about an on-premises instance.
  """
  def get_on_premises_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOnPremisesInstance", input, options)
  end

  @doc """
  Lists information about revisions for an application.
  """
  def list_application_revisions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplicationRevisions", input, options)
  end

  @doc """
  Lists the applications registered with the user or Amazon Web Services account.
  """
  def list_applications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplications", input, options)
  end

  @doc """
  Lists the deployment configurations with the user or Amazon Web Services
  account.
  """
  def list_deployment_configs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDeploymentConfigs", input, options)
  end

  @doc """
  Lists the deployment groups for an application registered with the Amazon Web
  Services user or Amazon Web Services account.
  """
  def list_deployment_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDeploymentGroups", input, options)
  end

  @doc """
  The newer `BatchGetDeploymentTargets` should be used instead because it works
  with all compute types.

  `ListDeploymentInstances` throws an exception if it is used with a compute
  platform other than EC2/On-premises or Lambda.

  Lists the instance for a deployment associated with the user or Amazon Web
  Services account.
  """
  def list_deployment_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDeploymentInstances", input, options)
  end

  @doc """
  Returns an array of target IDs that are associated a deployment.
  """
  def list_deployment_targets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDeploymentTargets", input, options)
  end

  @doc """
  Lists the deployments in a deployment group for an application registered with
  the user or Amazon Web Services account.
  """
  def list_deployments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDeployments", input, options)
  end

  @doc """
  Lists the names of stored connections to GitHub accounts.
  """
  def list_git_hub_account_token_names(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGitHubAccountTokenNames", input, options)
  end

  @doc """
  Gets a list of names for one or more on-premises instances.

  Unless otherwise specified, both registered and deregistered on-premises
  instance names are listed. To list only registered or deregistered on-premises
  instance names, use the registration status parameter.
  """
  def list_on_premises_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOnPremisesInstances", input, options)
  end

  @doc """
  Returns a list of tags for the resource identified by a specified Amazon
  Resource Name (ARN).

  Tags are used to organize and categorize your CodeDeploy resources.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Sets the result of a Lambda validation function.

  The function validates lifecycle hooks during a deployment that uses the Lambda
  or Amazon ECS compute platform. For Lambda deployments, the available lifecycle
  hooks are `BeforeAllowTraffic` and `AfterAllowTraffic`. For Amazon ECS
  deployments, the available lifecycle hooks are `BeforeInstall`, `AfterInstall`,
  `AfterAllowTestTraffic`, `BeforeAllowTraffic`, and `AfterAllowTraffic`. Lambda
  validation functions return `Succeeded` or `Failed`. For more information, see
  [AppSpec 'hooks' Section for an Lambda Deployment
  ](https://docs.aws.amazon.com/codedeploy/latest/userguide/reference-appspec-file-structure-hooks.html#appspec-hooks-lambda)
  and [AppSpec 'hooks' Section for an Amazon ECS Deployment](https://docs.aws.amazon.com/codedeploy/latest/userguide/reference-appspec-file-structure-hooks.html#appspec-hooks-ecs).
  """
  def put_lifecycle_event_hook_execution_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutLifecycleEventHookExecutionStatus", input, options)
  end

  @doc """
  Registers with CodeDeploy a revision for the specified application.
  """
  def register_application_revision(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterApplicationRevision", input, options)
  end

  @doc """
  Registers an on-premises instance.

  Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in the
  request. You cannot use both.
  """
  def register_on_premises_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterOnPremisesInstance", input, options)
  end

  @doc """
  Removes one or more tags from one or more on-premises instances.
  """
  def remove_tags_from_on_premises_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveTagsFromOnPremisesInstances", input, options)
  end

  @doc """
  In a blue/green deployment, overrides any specified wait time and starts
  terminating instances immediately after the traffic routing is complete.
  """
  def skip_wait_time_for_instance_termination(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SkipWaitTimeForInstanceTermination", input, options)
  end

  @doc """
  Attempts to stop an ongoing deployment.
  """
  def stop_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopDeployment", input, options)
  end

  @doc """
  Associates the list of tags in the input `Tags` parameter with the resource
  identified by the `ResourceArn` input parameter.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Disassociates a resource from a list of tags.

  The resource is identified by the `ResourceArn` input parameter. The tags are
  identified by the list of keys in the `TagKeys` input parameter.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Changes the name of an application.
  """
  def update_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateApplication", input, options)
  end

  @doc """
  Changes information about a deployment group.
  """
  def update_deployment_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDeploymentGroup", input, options)
  end
end
