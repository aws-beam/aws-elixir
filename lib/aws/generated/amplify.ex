# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Amplify do
  @moduledoc """
  Amplify enables developers to develop and deploy cloud-powered mobile and web
  apps.

  The Amplify Console provides a continuous delivery and hosting service for web
  applications. For more information, see the [Amplify Console User Guide](https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html). The
  Amplify Framework is a comprehensive set of SDKs, libraries, tools, and
  documentation for client app development. For more information, see the [Amplify Framework.](https://docs.amplify.aws/)
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "amplify",
      global?: false,
      protocol: "rest-json",
      service_id: "Amplify",
      signature_version: "v4",
      signing_name: "amplify",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new Amplify app.
  """
  def create_app(%Client{} = client, input, options \\ []) do
    url_path = "/apps"
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
  Creates a new backend environment for an Amplify app.
  """
  def create_backend_environment(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/backendenvironments"
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
  Creates a new branch for an Amplify app.
  """
  def create_branch(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/branches"
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
  Creates a deployment for a manually deployed Amplify app.

  Manually deployed apps are not connected to a repository.
  """
  def create_deployment(%Client{} = client, app_id, branch_name, input, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/deployments"

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
  Creates a new domain association for an Amplify app.

  This action associates a custom domain with the Amplify app
  """
  def create_domain_association(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/domains"
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
  Creates a new webhook on an Amplify app.
  """
  def create_webhook(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/webhooks"
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
  Deletes an existing Amplify app specified by an app ID.
  """
  def delete_app(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}"
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
  Deletes a backend environment for an Amplify app.
  """
  def delete_backend_environment(
        %Client{} = client,
        app_id,
        environment_name,
        input,
        options \\ []
      ) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/backendenvironments/#{AWS.Util.encode_uri(environment_name)}"

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
  Deletes a branch for an Amplify app.
  """
  def delete_branch(%Client{} = client, app_id, branch_name, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}"
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
  Deletes a domain association for an Amplify app.
  """
  def delete_domain_association(%Client{} = client, app_id, domain_name, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/domains/#{AWS.Util.encode_uri(domain_name)}"
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
  Deletes a job for a branch of an Amplify app.
  """
  def delete_job(%Client{} = client, app_id, branch_name, job_id, input, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/jobs/#{AWS.Util.encode_uri(job_id)}"

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
  Deletes a webhook.
  """
  def delete_webhook(%Client{} = client, webhook_id, input, options \\ []) do
    url_path = "/webhooks/#{AWS.Util.encode_uri(webhook_id)}"
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
  Returns the website access logs for a specific time range using a presigned URL.
  """
  def generate_access_logs(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/accesslogs"
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
  Returns an existing Amplify app by appID.
  """
  def get_app(%Client{} = client, app_id, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}"
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
  Returns the artifact info that corresponds to an artifact id.
  """
  def get_artifact_url(%Client{} = client, artifact_id, options \\ []) do
    url_path = "/artifacts/#{AWS.Util.encode_uri(artifact_id)}"
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
  Returns a backend environment for an Amplify app.
  """
  def get_backend_environment(%Client{} = client, app_id, environment_name, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/backendenvironments/#{AWS.Util.encode_uri(environment_name)}"

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
  Returns a branch for an Amplify app.
  """
  def get_branch(%Client{} = client, app_id, branch_name, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}"
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
  Returns the domain information for an Amplify app.
  """
  def get_domain_association(%Client{} = client, app_id, domain_name, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/domains/#{AWS.Util.encode_uri(domain_name)}"
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
  Returns a job for a branch of an Amplify app.
  """
  def get_job(%Client{} = client, app_id, branch_name, job_id, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/jobs/#{AWS.Util.encode_uri(job_id)}"

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
  Returns the webhook information that corresponds to a specified webhook ID.
  """
  def get_webhook(%Client{} = client, webhook_id, options \\ []) do
    url_path = "/webhooks/#{AWS.Util.encode_uri(webhook_id)}"
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
  Returns a list of the existing Amplify apps.
  """
  def list_apps(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/apps"
    headers = []
    query_params = []

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
  Returns a list of artifacts for a specified app, branch, and job.
  """
  def list_artifacts(
        %Client{} = client,
        app_id,
        branch_name,
        job_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/jobs/#{AWS.Util.encode_uri(job_id)}/artifacts"

    headers = []
    query_params = []

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
  Lists the backend environments for an Amplify app.
  """
  def list_backend_environments(
        %Client{} = client,
        app_id,
        environment_name \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/backendenvironments"
    headers = []
    query_params = []

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
      if !is_nil(environment_name) do
        [{"environmentName", environment_name} | query_params]
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
  Lists the branches of an Amplify app.
  """
  def list_branches(
        %Client{} = client,
        app_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/branches"
    headers = []
    query_params = []

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
  Returns the domain associations for an Amplify app.
  """
  def list_domain_associations(
        %Client{} = client,
        app_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/domains"
    headers = []
    query_params = []

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
  Lists the jobs for a branch of an Amplify app.
  """
  def list_jobs(
        %Client{} = client,
        app_id,
        branch_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/jobs"

    headers = []
    query_params = []

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
  Returns a list of tags for a specified Amazon Resource Name (ARN).
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
  Returns a list of webhooks for an Amplify app.
  """
  def list_webhooks(
        %Client{} = client,
        app_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/webhooks"
    headers = []
    query_params = []

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
  Starts a deployment for a manually deployed app.

  Manually deployed apps are not connected to a repository.
  """
  def start_deployment(%Client{} = client, app_id, branch_name, input, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/deployments/start"

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
  Starts a new job for a branch of an Amplify app.
  """
  def start_job(%Client{} = client, app_id, branch_name, input, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/jobs"

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
  Stops a job that is in progress for a branch of an Amplify app.
  """
  def stop_job(%Client{} = client, app_id, branch_name, job_id, input, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/jobs/#{AWS.Util.encode_uri(job_id)}/stop"

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
  Tags the resource with a tag key and value.
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
  Untags a resource with a specified Amazon Resource Name (ARN).
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

  @doc """
  Updates an existing Amplify app.
  """
  def update_app(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}"
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
  Updates a branch for an Amplify app.
  """
  def update_branch(%Client{} = client, app_id, branch_name, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}"
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
  Creates a new domain association for an Amplify app.
  """
  def update_domain_association(%Client{} = client, app_id, domain_name, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/domains/#{AWS.Util.encode_uri(domain_name)}"
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
  Updates a webhook.
  """
  def update_webhook(%Client{} = client, webhook_id, input, options \\ []) do
    url_path = "/webhooks/#{AWS.Util.encode_uri(webhook_id)}"
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
end
