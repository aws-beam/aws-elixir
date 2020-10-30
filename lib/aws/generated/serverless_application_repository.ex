# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ServerlessApplicationRepository do
  @moduledoc """
  The AWS Serverless Application Repository makes it easy for developers and
  enterprises to quickly find

  and deploy serverless applications in the AWS Cloud. For more information
  about serverless applications,

  see Serverless Computing and Applications on the AWS website.

  The AWS Serverless Application Repository is deeply integrated with the AWS
  Lambda console, so that developers of

  all levels can get started with serverless computing without needing to
  learn anything new. You can use category

  keywords to browse for applications such as web and mobile backends, data
  processing applications, or chatbots.

  You can also search for applications by name, publisher, or event source.
  To use an application, you simply choose it,

  configure any required fields, and deploy it with a few clicks.

  You can also easily publish applications, sharing them publicly with the
  community at large, or privately

  within your team or across your organization. To publish a serverless
  application (or app), you can use the

  AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS SDKs
  to upload the code. Along with the

  code, you upload a simple manifest file, also known as the AWS Serverless
  Application Model (AWS SAM) template.

  For more information about AWS SAM, see AWS Serverless Application Model
  (AWS SAM) on the AWS Labs

  GitHub repository.

  The AWS Serverless Application Repository Developer Guide contains more
  information about the two developer

  experiences available:

  <ul>

  <li>

  Consuming Applications – Browse for applications and view information about
  them, including

  source code and readme files. Also install, configure, and deploy
  applications of your choosing.

  Publishing Applications – Configure and upload applications to make them
  available to other

  developers, and publish new versions of applications.

  </li>

  </ul>
  """

  @doc """
  Creates an application, optionally including an AWS SAM file to create the
  first application version in the same call.
  """
  def create_application(client, input, options \\ []) do
    path_ = "/applications"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates an application version.
  """
  def create_application_version(client, application_id, semantic_version, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/versions/#{URI.encode(semantic_version)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates an AWS CloudFormation change set for the given application.
  """
  def create_cloud_formation_change_set(client, application_id, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/changesets"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates an AWS CloudFormation template.
  """
  def create_cloud_formation_template(client, application_id, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/templates"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Deletes the specified application.
  """
  def delete_application(client, application_id, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Gets the specified application.
  """
  def get_application(client, application_id, semantic_version \\ nil, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(semantic_version) do
      [{"semanticVersion", semantic_version} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the policy for the application.
  """
  def get_application_policy(client, application_id, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/policy"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets the specified AWS CloudFormation template.
  """
  def get_cloud_formation_template(client, application_id, template_id, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/templates/#{URI.encode(template_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the list of applications nested in the containing application.
  """
  def list_application_dependencies(client, application_id, max_items \\ nil, next_token \\ nil, semantic_version \\ nil, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/dependencies"
    headers = []
    query_ = []
    query_ = if !is_nil(semantic_version) do
      [{"semanticVersion", semantic_version} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_items) do
      [{"maxItems", max_items} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists versions for the specified application.
  """
  def list_application_versions(client, application_id, max_items \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/versions"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_items) do
      [{"maxItems", max_items} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists applications owned by the requester.
  """
  def list_applications(client, max_items \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/applications"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_items) do
      [{"maxItems", max_items} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Sets the permission policy for an application. For the list of actions
  supported for this operation, see

  <a
  href="https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions">Application

  Permissions`

  .
  """
  def put_application_policy(client, application_id, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/policy"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Unshares an application from an AWS Organization.

  This operation can be called only from the organization's master account.
  """
  def unshare_application(client, application_id, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}/unshare"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Updates the specified application.
  """
  def update_application(client, application_id, input, options \\ []) do
    path_ = "/applications/#{URI.encode(application_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "serverlessrepo"}
    host = build_host("serverlessrepo", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} -> error
    end
  end


  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
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

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
