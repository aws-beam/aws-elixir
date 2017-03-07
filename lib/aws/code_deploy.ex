# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.CodeDeploy do
  @moduledoc """
  AWS CodeDeploy

  **Overview**

  This reference guide provides descriptions of the AWS CodeDeploy APIs. For
  more information about AWS CodeDeploy, see the [AWS CodeDeploy User
  Guide](http://docs.aws.amazon.com/codedeploy/latest/userguide).

  **Using the APIs**

  You can use the AWS CodeDeploy APIs to work with the following:

  <ul> <li> Applications are unique identifiers used by AWS CodeDeploy to
  ensure the correct combinations of revisions, deployment configurations,
  and deployment groups are being referenced during deployments.

  You can use the AWS CodeDeploy APIs to create, delete, get, list, and
  update applications.

  </li> <li> Deployment configurations are sets of deployment rules and
  success and failure conditions used by AWS CodeDeploy during deployments.

  You can use the AWS CodeDeploy APIs to create, delete, get, and list
  deployment configurations.

  </li> <li> Deployment groups are groups of instances to which application
  revisions can be deployed.

  You can use the AWS CodeDeploy APIs to create, delete, get, list, and
  update deployment groups.

  </li> <li> Instances represent Amazon EC2 instances to which application
  revisions are deployed. Instances are identified by their Amazon EC2 tags
  or Auto Scaling group names. Instances belong to deployment groups.

  You can use the AWS CodeDeploy APIs to get and list instance.

  </li> <li> Deployments represent the process of deploying revisions to
  instances.

  You can use the AWS CodeDeploy APIs to create, get, list, and stop
  deployments.

  </li> <li> Application revisions are archive files stored in Amazon S3
  buckets or GitHub repositories. These revisions contain source content
  (such as source code, web pages, executable files, and deployment scripts)
  along with an application specification (AppSpec) file. (The AppSpec file
  is unique to AWS CodeDeploy; it defines the deployment actions you want AWS
  CodeDeploy to execute.) For application revisions stored in Amazon S3
  buckets, an application revision is uniquely identified by its Amazon S3
  object key and its ETag, version, or both. For application revisions stored
  in GitHub repositories, an application revision is uniquely identified by
  its repository name and commit ID. Application revisions are deployed
  through deployment groups.

  You can use the AWS CodeDeploy APIs to get, list, and register application
  revisions.

  </li> </ul>
  """

  @doc """
  Adds tags to on-premises instances.
  """
  def add_tags_to_on_premises_instances(client, input, options \\ []) do
    request(client, "AddTagsToOnPremisesInstances", input, options)
  end

  @doc """
  Gets information about one or more application revisions.
  """
  def batch_get_application_revisions(client, input, options \\ []) do
    request(client, "BatchGetApplicationRevisions", input, options)
  end

  @doc """
  Gets information about one or more applications.
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
  Gets information about one or more instance that are part of a deployment
  group.
  """
  def batch_get_deployment_instances(client, input, options \\ []) do
    request(client, "BatchGetDeploymentInstances", input, options)
  end

  @doc """
  Gets information about one or more deployments.
  """
  def batch_get_deployments(client, input, options \\ []) do
    request(client, "BatchGetDeployments", input, options)
  end

  @doc """
  Gets information about one or more on-premises instances.
  """
  def batch_get_on_premises_instances(client, input, options \\ []) do
    request(client, "BatchGetOnPremisesInstances", input, options)
  end

  @doc """
  Starts the process of rerouting traffic from instances in the original
  environment to instances in thereplacement environment without waiting for
  a specified wait time to elapse. (Traffic rerouting, which is achieved by
  registering instances in the replacement environment with the load
  balancer, can start as soon as all instances have a status of Ready.)
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
  Creates a deployment group to which application revisions will be deployed.
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
  Lists the applications registered with the applicable IAM user or AWS
  account.
  """
  def list_applications(client, input, options \\ []) do
    request(client, "ListApplications", input, options)
  end

  @doc """
  Lists the deployment configurations with the applicable IAM user or AWS
  account.
  """
  def list_deployment_configs(client, input, options \\ []) do
    request(client, "ListDeploymentConfigs", input, options)
  end

  @doc """
  Lists the deployment groups for an application registered with the
  applicable IAM user or AWS account.
  """
  def list_deployment_groups(client, input, options \\ []) do
    request(client, "ListDeploymentGroups", input, options)
  end

  @doc """
  Lists the instance for a deployment associated with the applicable IAM user
  or AWS account.
  """
  def list_deployment_instances(client, input, options \\ []) do
    request(client, "ListDeploymentInstances", input, options)
  end

  @doc """
  Lists the deployments in a deployment group for an application registered
  with the applicable IAM user or AWS account.
  """
  def list_deployments(client, input, options \\ []) do
    request(client, "ListDeployments", input, options)
  end

  @doc """
  Gets a list of names for one or more on-premises instances.

  Unless otherwise specified, both registered and deregistered on-premises
  instance names will be listed. To list only registered or deregistered
  on-premises instance names, use the registration status parameter.
  """
  def list_on_premises_instances(client, input, options \\ []) do
    request(client, "ListOnPremisesInstances", input, options)
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
  terminating instances immediately after the traffic routing is completed.
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

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "codedeploy"}
    host = get_host("codedeploy", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "CodeDeploy_20141006.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
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
