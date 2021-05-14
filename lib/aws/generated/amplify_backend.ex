# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AmplifyBackend do
  @moduledoc """
  AWS Amplify Admin API
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-08-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "amplifybackend",
      global?: false,
      protocol: "rest-json",
      service_id: "AmplifyBackend",
      signature_version: "v4",
      signing_name: "amplifybackend",
      target_prefix: nil
    }
  end

  @doc """
  This operation clones an existing backend.
  """
  def clone_backend(%Client{} = client, app_id, backend_environment_name, input, options \\ []) do
    url_path =
      "/backend/#{URI.encode(app_id)}/environments/#{URI.encode(backend_environment_name)}/clone"

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
      200
    )
  end

  @doc """
  This operation creates a backend for an Amplify app.

  Backends are automatically created at the time of app creation.
  """
  def create_backend(%Client{} = client, input, options \\ []) do
    url_path = "/backend"
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
      200
    )
  end

  @doc """
  Creates a new backend API resource.
  """
  def create_backend_api(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/backend/#{URI.encode(app_id)}/api"
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
      200
    )
  end

  @doc """
  Creates a new backend authentication resource.
  """
  def create_backend_auth(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/backend/#{URI.encode(app_id)}/auth"
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
      200
    )
  end

  @doc """
  Creates a config object for a backend.
  """
  def create_backend_config(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/backend/#{URI.encode(app_id)}/config"
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
      200
    )
  end

  @doc """
  Generates a one-time challenge code to authenticate a user into your Amplify
  Admin UI.
  """
  def create_token(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/backend/#{URI.encode(app_id)}/challenge"
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
      200
    )
  end

  @doc """
  Removes an existing environment from your Amplify project.
  """
  def delete_backend(%Client{} = client, app_id, backend_environment_name, input, options \\ []) do
    url_path =
      "/backend/#{URI.encode(app_id)}/environments/#{URI.encode(backend_environment_name)}/remove"

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
      200
    )
  end

  @doc """
  Deletes an existing backend API resource.
  """
  def delete_backend_api(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path = "/backend/#{URI.encode(app_id)}/api/#{URI.encode(backend_environment_name)}/remove"
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
      200
    )
  end

  @doc """
  Deletes an existing backend authentication resource.
  """
  def delete_backend_auth(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path =
      "/backend/#{URI.encode(app_id)}/auth/#{URI.encode(backend_environment_name)}/remove"

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
      200
    )
  end

  @doc """
  Deletes the challenge token based on the given appId and sessionId.
  """
  def delete_token(%Client{} = client, app_id, session_id, input, options \\ []) do
    url_path = "/backend/#{URI.encode(app_id)}/challenge/#{URI.encode(session_id)}/remove"
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
      200
    )
  end

  @doc """
  Generates a model schema for an existing backend API resource.
  """
  def generate_backend_api_models(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path =
      "/backend/#{URI.encode(app_id)}/api/#{URI.encode(backend_environment_name)}/generateModels"

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
      200
    )
  end

  @doc """
  Provides project-level details for your Amplify UI project.
  """
  def get_backend(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/backend/#{URI.encode(app_id)}/details"
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
      200
    )
  end

  @doc """
  Gets the details for a backend API.
  """
  def get_backend_api(%Client{} = client, app_id, backend_environment_name, input, options \\ []) do
    url_path =
      "/backend/#{URI.encode(app_id)}/api/#{URI.encode(backend_environment_name)}/details"

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
      200
    )
  end

  @doc """
  Generates a model schema for existing backend API resource.
  """
  def get_backend_api_models(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path =
      "/backend/#{URI.encode(app_id)}/api/#{URI.encode(backend_environment_name)}/getModels"

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
      200
    )
  end

  @doc """
  Gets backend auth details.
  """
  def get_backend_auth(%Client{} = client, app_id, backend_environment_name, input, options \\ []) do
    url_path =
      "/backend/#{URI.encode(app_id)}/auth/#{URI.encode(backend_environment_name)}/details"

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
      200
    )
  end

  @doc """
  Returns information about a specific job.
  """
  def get_backend_job(%Client{} = client, app_id, backend_environment_name, job_id, options \\ []) do
    url_path =
      "/backend/#{URI.encode(app_id)}/job/#{URI.encode(backend_environment_name)}/#{
        URI.encode(job_id)
      }"

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
      200
    )
  end

  @doc """
  Gets the challenge token based on the given appId and sessionId.
  """
  def get_token(%Client{} = client, app_id, session_id, options \\ []) do
    url_path = "/backend/#{URI.encode(app_id)}/challenge/#{URI.encode(session_id)}"
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
      200
    )
  end

  @doc """
  Lists the jobs for the backend of an Amplify app.
  """
  def list_backend_jobs(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path = "/backend/#{URI.encode(app_id)}/job/#{URI.encode(backend_environment_name)}"
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
      200
    )
  end

  @doc """
  Removes all backend environments from your Amplify project.
  """
  def remove_all_backends(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/backend/#{URI.encode(app_id)}/remove"
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
      200
    )
  end

  @doc """
  Removes the AWS resources that are required to access the Amplify Admin UI.
  """
  def remove_backend_config(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/backend/#{URI.encode(app_id)}/config/remove"
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
      200
    )
  end

  @doc """
  Updates an existing backend API resource.
  """
  def update_backend_api(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path = "/backend/#{URI.encode(app_id)}/api/#{URI.encode(backend_environment_name)}"
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
      200
    )
  end

  @doc """
  Updates an existing backend authentication resource.
  """
  def update_backend_auth(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path = "/backend/#{URI.encode(app_id)}/auth/#{URI.encode(backend_environment_name)}"
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
      200
    )
  end

  @doc """
  Updates the AWS resources that are required to access the Amplify Admin UI.
  """
  def update_backend_config(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/backend/#{URI.encode(app_id)}/config/update"
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
      200
    )
  end

  @doc """
  Updates a specific job.
  """
  def update_backend_job(
        %Client{} = client,
        app_id,
        backend_environment_name,
        job_id,
        input,
        options \\ []
      ) do
    url_path =
      "/backend/#{URI.encode(app_id)}/job/#{URI.encode(backend_environment_name)}/#{
        URI.encode(job_id)
      }"

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
      200
    )
  end
end
