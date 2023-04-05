# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AmplifyUIBuilder do
  @moduledoc """
  The Amplify UI Builder API provides a programmatic interface for creating and
  configuring user interface (UI) component libraries and themes for use in your
  Amplify applications.

  You can then connect these UI components to an application's backend Amazon Web
  Services resources.

  You can also use the Amplify Studio visual designer to create UI components and
  model data for an app. For more information, see
  [Introduction](https://docs.amplify.aws/console/adminui/intro) in the *Amplify Docs*.

  The Amplify Framework is a comprehensive set of SDKs, libraries, tools, and
  documentation for client app development. For more information, see the [Amplify
  Framework](https://docs.amplify.aws/). For more information about deploying an
  Amplify application to Amazon Web Services, see the [Amplify User Guide](https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2021-08-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "amplifyuibuilder",
      global?: false,
      protocol: "rest-json",
      service_id: "AmplifyUIBuilder",
      signature_version: "v4",
      signing_name: "amplifyuibuilder",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new component for an Amplify app.
  """
  def create_component(%Client{} = client, app_id, environment_name, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/components"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Creates a new form for an Amplify app.
  """
  def create_form(%Client{} = client, app_id, environment_name, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/forms"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Creates a theme to apply to the components in an Amplify app.
  """
  def create_theme(%Client{} = client, app_id, environment_name, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/themes"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Deletes a component from an Amplify app.
  """
  def delete_component(%Client{} = client, app_id, environment_name, id, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/components/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a form from an Amplify app.
  """
  def delete_form(%Client{} = client, app_id, environment_name, id, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/forms/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a theme from an Amplify app.
  """
  def delete_theme(%Client{} = client, app_id, environment_name, id, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/themes/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Exchanges an access code for a token.
  """
  def exchange_code_for_token(%Client{} = client, provider, input, options \\ []) do
    url_path = "/tokens/#{AWS.Util.encode_uri(provider)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Exports component configurations to code that is ready to integrate into an
  Amplify app.
  """
  def export_components(
        %Client{} = client,
        app_id,
        environment_name,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/export/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/components"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Exports form configurations to code that is ready to integrate into an Amplify
  app.
  """
  def export_forms(%Client{} = client, app_id, environment_name, next_token \\ nil, options \\ []) do
    url_path =
      "/export/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/forms"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Exports theme configurations to code that is ready to integrate into an Amplify
  app.
  """
  def export_themes(
        %Client{} = client,
        app_id,
        environment_name,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/export/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/themes"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns an existing component for an Amplify app.
  """
  def get_component(%Client{} = client, app_id, environment_name, id, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/components/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns an existing form for an Amplify app.
  """
  def get_form(%Client{} = client, app_id, environment_name, id, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/forms/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns existing metadata for an Amplify app.
  """
  def get_metadata(%Client{} = client, app_id, environment_name, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/metadata"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns an existing theme for an Amplify app.
  """
  def get_theme(%Client{} = client, app_id, environment_name, id, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/themes/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of components for a specified Amplify app and backend
  environment.
  """
  def list_components(
        %Client{} = client,
        app_id,
        environment_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/components"

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of forms for a specified Amplify app and backend environment.
  """
  def list_forms(
        %Client{} = client,
        app_id,
        environment_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/forms"

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of themes for a specified Amplify app and backend environment.
  """
  def list_themes(
        %Client{} = client,
        app_id,
        environment_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/themes"

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Stores the metadata information about a feature on a form.
  """
  def put_metadata_flag(
        %Client{} = client,
        app_id,
        environment_name,
        feature_name,
        input,
        options \\ []
      ) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/metadata/features/#{AWS.Util.encode_uri(feature_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Refreshes a previously issued access token that might have expired.
  """
  def refresh_token(%Client{} = client, provider, input, options \\ []) do
    url_path = "/tokens/#{AWS.Util.encode_uri(provider)}/refresh"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Updates an existing component.
  """
  def update_component(%Client{} = client, app_id, environment_name, id, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/components/#{AWS.Util.encode_uri(id)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing form.
  """
  def update_form(%Client{} = client, app_id, environment_name, id, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/forms/#{AWS.Util.encode_uri(id)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing theme.
  """
  def update_theme(%Client{} = client, app_id, environment_name, id, input, options \\ []) do
    url_path =
      "/app/#{AWS.Util.encode_uri(app_id)}/environment/#{AWS.Util.encode_uri(environment_name)}/themes/#{AWS.Util.encode_uri(id)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
