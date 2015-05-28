# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.CodeDeploy do
  @moduledoc """
  AWS CodeDeploy

  **Overview** This is the AWS CodeDeploy API Reference. This guide provides
  descriptions of the AWS CodeDeploy APIs. For additional information, see
  the [AWS CodeDeploy User
  Guide](http://docs.aws.amazon.com/codedeploy/latest/userguide).

  **Using the APIs** You can use the AWS CodeDeploy APIs to work with the
  following items:

  <ul> <li> *Applications*, which are unique identifiers that AWS CodeDeploy
  uses to ensure that the correct combinations of revisions, deployment
  configurations, and deployment groups are being referenced during
  deployments.

  You can work with applications by calling `CreateApplication`,
  `DeleteApplication`, `GetApplication`, `ListApplications`,
  `BatchGetApplications`, and `UpdateApplication` to create, delete, and get
  information about applications, and to change information about an
  application, respectively.

  </li> <li> *Deployment configurations*, which are sets of deployment rules
  and deployment success and failure conditions that AWS CodeDeploy uses
  during deployments.

  You can work with deployment configurations by calling
  `CreateDeploymentConfig`, `DeleteDeploymentConfig`, `GetDeploymentConfig`,
  and `ListDeploymentConfigs` to create, delete, and get information about
  deployment configurations, respectively.

  </li> <li> *Deployment groups*, which represent groups of Amazon EC2
  instances to which application revisions can be deployed.

  You can work with deployment groups by calling `CreateDeploymentGroup`,
  `DeleteDeploymentGroup`, `GetDeploymentGroup`, `ListDeploymentGroups`, and
  `UpdateDeploymentGroup` to create, delete, and get information about single
  and multiple deployment groups, and to change information about a
  deployment group, respectively.

  </li> <li> *Deployment instances* (also known simply as *instances*), which
  represent Amazon EC2 instances to which application revisions are deployed.
  Deployment instances are identified by their Amazon EC2 tags or Auto
  Scaling group names. Deployment instances belong to deployment groups.

  You can work with deployment instances by calling `GetDeploymentInstance`
  and `ListDeploymentInstances` to get information about single and multiple
  deployment instances, respectively.

  </li> <li> *Deployments*, which represent the process of deploying
  revisions to deployment groups.

  You can work with deployments by calling `CreateDeployment`,
  `GetDeployment`, `ListDeployments`, `BatchGetDeployments`, and
  `StopDeployment` to create and get information about deployments, and to
  stop a deployment, respectively.

  </li> <li> *Application revisions* (also known simply as *revisions*),
  which are archive files that are stored in Amazon S3 buckets or GitHub
  repositories. These revisions contain source content (such as source code,
  web pages, executable files, any deployment scripts, and similar) along
  with an Application Specification file (AppSpec file). (The AppSpec file is
  unique to AWS CodeDeploy; it defines a series of deployment actions that
  you want AWS CodeDeploy to execute.) An application revision is uniquely
  identified by its Amazon S3 object key and its ETag, version, or both.
  Application revisions are deployed to deployment groups.

  You can work with application revisions by calling
  `GetApplicationRevision`, `ListApplicationRevisions`, and
  `RegisterApplicationRevision` to get information about application
  revisions and to inform AWS CodeDeploy about an application revision,
  respectively.

  </li> </ul>
  """

  @doc """
  Gets information about one or more applications.
  """
  def batch_get_applications(client, input, options \\ []) do
    request(client, "BatchGetApplications", input, options)
  end

  @doc """
  Gets information about one or more deployments.
  """
  def batch_get_deployments(client, input, options \\ []) do
    request(client, "BatchGetDeployments", input, options)
  end

  @doc """
  Creates a new application.
  """
  def create_application(client, input, options \\ []) do
    request(client, "CreateApplication", input, options)
  end

  @doc """
  Deploys an application revision to the specified deployment group.
  """
  def create_deployment(client, input, options \\ []) do
    request(client, "CreateDeployment", input, options)
  end

  @doc """
  Creates a new deployment configuration.
  """
  def create_deployment_config(client, input, options \\ []) do
    request(client, "CreateDeploymentConfig", input, options)
  end

  @doc """
  Creates a new deployment group for application revisions to be deployed to.
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

  <note>A deployment configuration cannot be deleted if it is currently in
  use. Also, predefined configurations cannot be deleted.</note>
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
  Gets information about an Amazon EC2 instance as part of a deployment.
  """
  def get_deployment_instance(client, input, options \\ []) do
    request(client, "GetDeploymentInstance", input, options)
  end

  @doc """
  Lists information about revisions for an application.
  """
  def list_application_revisions(client, input, options \\ []) do
    request(client, "ListApplicationRevisions", input, options)
  end

  @doc """
  Lists the applications registered within the AWS user account.
  """
  def list_applications(client, input, options \\ []) do
    request(client, "ListApplications", input, options)
  end

  @doc """
  Lists the deployment configurations within the AWS user account.
  """
  def list_deployment_configs(client, input, options \\ []) do
    request(client, "ListDeploymentConfigs", input, options)
  end

  @doc """
  Lists the deployment groups for an application registered within the AWS
  user account.
  """
  def list_deployment_groups(client, input, options \\ []) do
    request(client, "ListDeploymentGroups", input, options)
  end

  @doc """
  Lists the Amazon EC2 instances for a deployment within the AWS user
  account.
  """
  def list_deployment_instances(client, input, options \\ []) do
    request(client, "ListDeploymentInstances", input, options)
  end

  @doc """
  Lists the deployments under a deployment group for an application
  registered within the AWS user account.
  """
  def list_deployments(client, input, options \\ []) do
    request(client, "ListDeployments", input, options)
  end

  @doc """
  Registers with AWS CodeDeploy a revision for the specified application.
  """
  def register_application_revision(client, input, options \\ []) do
    request(client, "RegisterApplicationRevision", input, options)
  end

  @doc """
  Attempts to stop an ongoing deployment.
  """
  def stop_deployment(client, input, options \\ []) do
    request(client, "StopDeployment", input, options)
  end

  @doc """
  Changes an existing application's name.
  """
  def update_application(client, input, options \\ []) do
    request(client, "UpdateApplication", input, options)
  end

  @doc """
  Changes information about an existing deployment group.
  """
  def update_deployment_group(client, input, options \\ []) do
    request(client, "UpdateDeploymentGroup", input, options)
  end

  defp request(client, action, input, options) do
    client = %{client | service: "codedeploy"}
    host = "codedeploy.#{client.region}.#{client.endpoint}"
    url = "https://#{host}/"
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "CodeDeploy_20141006.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["__type"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end
end

