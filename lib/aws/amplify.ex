# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Amplify do
  @moduledoc """
  Amplify enables developers to develop and deploy cloud-powered mobile and
  web apps. The Amplify Console provides a continuous delivery and hosting
  service for web applications. For more information, see the [Amplify
  Console User
  Guide](https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html).
  The Amplify Framework is a comprehensive set of SDKs, libraries, tools, and
  documentation for client app development. For more information, see the
  [Amplify Framework.](https://docs.amplify.aws/)
  """

  @doc """
  Creates a new Amplify app.
  """
  def create_app(client, input, options \\ []) do
    path_ = "/apps"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new backend environment for an Amplify app.
  """
  def create_backend_environment(client, app_id, input, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/backendenvironments"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new branch for an Amplify app.
  """
  def create_branch(client, app_id, input, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/branches"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a deployment for a manually deployed Amplify app. Manually deployed
  apps are not connected to a repository.
  """
  def create_deployment(client, app_id, branch_name, input, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/branches/#{URI.encode(branch_name)}/deployments"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new domain association for an Amplify app. This action associates
  a custom domain with the Amplify app
  """
  def create_domain_association(client, app_id, input, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/domains"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new webhook on an Amplify app.
  """
  def create_webhook(client, app_id, input, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/webhooks"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes an existing Amplify app specified by an app ID.
  """
  def delete_app(client, app_id, input, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a backend environment for an Amplify app.
  """
  def delete_backend_environment(client, app_id, environment_name, input, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/backendenvironments/#{URI.encode(environment_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a branch for an Amplify app.
  """
  def delete_branch(client, app_id, branch_name, input, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/branches/#{URI.encode(branch_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a domain association for an Amplify app.
  """
  def delete_domain_association(client, app_id, domain_name, input, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/domains/#{URI.encode(domain_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a job for a branch of an Amplify app.
  """
  def delete_job(client, app_id, branch_name, job_id, input, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/branches/#{URI.encode(branch_name)}/jobs/#{URI.encode(job_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a webhook.
  """
  def delete_webhook(client, webhook_id, input, options \\ []) do
    path_ = "/webhooks/#{URI.encode(webhook_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns the website access logs for a specific time range using a presigned
  URL.
  """
  def generate_access_logs(client, app_id, input, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/accesslogs"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns an existing Amplify app by appID.
  """
  def get_app(client, app_id, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the artifact info that corresponds to an artifact id.
  """
  def get_artifact_url(client, artifact_id, options \\ []) do
    path_ = "/artifacts/#{URI.encode(artifact_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a backend environment for an Amplify app.
  """
  def get_backend_environment(client, app_id, environment_name, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/backendenvironments/#{URI.encode(environment_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a branch for an Amplify app.
  """
  def get_branch(client, app_id, branch_name, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/branches/#{URI.encode(branch_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the domain information for an Amplify app.
  """
  def get_domain_association(client, app_id, domain_name, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/domains/#{URI.encode(domain_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a job for a branch of an Amplify app.
  """
  def get_job(client, app_id, branch_name, job_id, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/branches/#{URI.encode(branch_name)}/jobs/#{URI.encode(job_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the webhook information that corresponds to a specified webhook ID.
  """
  def get_webhook(client, webhook_id, options \\ []) do
    path_ = "/webhooks/#{URI.encode(webhook_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a list of the existing Amplify apps.
  """
  def list_apps(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/apps"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a list of artifacts for a specified app, branch, and job.
  """
  def list_artifacts(client, app_id, branch_name, job_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/branches/#{URI.encode(branch_name)}/jobs/#{URI.encode(job_id)}/artifacts"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the backend environments for an Amplify app.
  """
  def list_backend_environments(client, app_id, environment_name \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/backendenvironments"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(environment_name) do
      [{"environmentName", environment_name} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the branches of an Amplify app.
  """
  def list_branches(client, app_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/branches"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the domain associations for an Amplify app.
  """
  def list_domain_associations(client, app_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/domains"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the jobs for a branch of an Amplify app.
  """
  def list_jobs(client, app_id, branch_name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/branches/#{URI.encode(branch_name)}/jobs"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a list of tags for a specified Amazon Resource Name (ARN).
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a list of webhooks for an Amplify app.
  """
  def list_webhooks(client, app_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/webhooks"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Starts a deployment for a manually deployed app. Manually deployed apps are
  not connected to a repository.
  """
  def start_deployment(client, app_id, branch_name, input, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/branches/#{URI.encode(branch_name)}/deployments/start"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Starts a new job for a branch of an Amplify app.
  """
  def start_job(client, app_id, branch_name, input, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/branches/#{URI.encode(branch_name)}/jobs"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Stops a job that is in progress for a branch of an Amplify app.
  """
  def stop_job(client, app_id, branch_name, job_id, input, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/branches/#{URI.encode(branch_name)}/jobs/#{URI.encode(job_id)}/stop"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Tags the resource with a tag key and value.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Untags a resource with a specified Amazon Resource Name (ARN).
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"tagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an existing Amplify app.
  """
  def update_app(client, app_id, input, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a branch for an Amplify app.
  """
  def update_branch(client, app_id, branch_name, input, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/branches/#{URI.encode(branch_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new domain association for an Amplify app.
  """
  def update_domain_association(client, app_id, domain_name, input, options \\ []) do
    path_ = "/apps/#{URI.encode(app_id)}/domains/#{URI.encode(domain_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a webhook.
  """
  def update_webhook(client, webhook_id, input, options \\ []) do
    path_ = "/webhooks/#{URI.encode(webhook_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, Poison.Parser.t(), Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "amplify"}
    host = build_host("amplify", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, response}

      {:ok, %HTTPoison.Response{status_code: status_code, body: body} = response}
      when status_code == 200 or status_code == 202 or status_code == 204 ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, %{}, response}

      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: Poison.Encoder.encode(input, %{}), else: ""
  end
end
