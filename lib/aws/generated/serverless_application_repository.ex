# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ServerlessApplicationRepository do
  @moduledoc """
  The AWS Serverless Application Repository makes it easy for developers and
  enterprises to quickly find
  and deploy serverless applications in the AWS Cloud.

  For more information about serverless applications,
  see Serverless Computing and Applications on the AWS website.

  The AWS Serverless Application Repository is deeply integrated with the AWS
  Lambda console, so that developers of
  all levels can get started with serverless computing without needing to learn
  anything new. You can use category
  keywords to browse for applications such as web and mobile backends, data
  processing applications, or chatbots.
  You can also search for applications by name, publisher, or event source. To use
  an application, you simply choose it,
  configure any required fields, and deploy it with a few clicks.

  You can also easily publish applications, sharing them publicly with the
  community at large, or privately
  within your team or across your organization. To publish a serverless
  application (or app), you can use the
  AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS SDKs to
  upload the code. Along with the
  code, you upload a simple manifest file, also known as the AWS Serverless
  Application Model (AWS SAM) template.
  For more information about AWS SAM, see AWS Serverless Application Model (AWS
  SAM) on the AWS Labs
  GitHub repository.

  The AWS Serverless Application Repository Developer Guide contains more
  information about the two developer
  experiences available:

    *
  Consuming Applications – Browse for applications and view information about
  them, including
  source code and readme files. Also install, configure, and deploy applications
  of your choosing.

  Publishing Applications – Configure and upload applications to make them
  available to other
  developers, and publish new versions of applications.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-09-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "serverlessrepo",
      global?: false,
      protocol: "rest-json",
      service_id: "ServerlessApplicationRepository",
      signature_version: "v4",
      signing_name: "serverlessrepo",
      target_prefix: nil
    }
  end

  @doc """
  Creates an application, optionally including an AWS SAM file to create the first
  application version in the same call.
  """
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
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
      201
    )
  end

  @doc """
  Creates an application version.
  """
  def create_application_version(
        %Client{} = client,
        application_id,
        semantic_version,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/versions/#{AWS.Util.encode_uri(semantic_version)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates an AWS CloudFormation change set for the given application.
  """
  def create_cloud_formation_change_set(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/changesets"
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
      201
    )
  end

  @doc """
  Creates an AWS CloudFormation template.
  """
  def create_cloud_formation_template(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/templates"
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
      201
    )
  end

  @doc """
  Deletes the specified application.
  """
  def delete_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
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
      204
    )
  end

  @doc """
  Gets the specified application.
  """
  def get_application(%Client{} = client, application_id, semantic_version \\ nil, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(semantic_version) do
        [{"semanticVersion", semantic_version} | query_params]
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
      200
    )
  end

  @doc """
  Retrieves the policy for the application.
  """
  def get_application_policy(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/policy"
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
  Gets the specified AWS CloudFormation template.
  """
  def get_cloud_formation_template(%Client{} = client, application_id, template_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/templates/#{AWS.Util.encode_uri(template_id)}"

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
  Retrieves the list of applications nested in the containing application.
  """
  def list_application_dependencies(
        %Client{} = client,
        application_id,
        max_items \\ nil,
        next_token \\ nil,
        semantic_version \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/dependencies"
    headers = []
    query_params = []

    query_params =
      if !is_nil(semantic_version) do
        [{"semanticVersion", semantic_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxItems", max_items} | query_params]
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
      200
    )
  end

  @doc """
  Lists versions for the specified application.
  """
  def list_application_versions(
        %Client{} = client,
        application_id,
        max_items \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxItems", max_items} | query_params]
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
      200
    )
  end

  @doc """
  Lists applications owned by the requester.
  """
  def list_applications(%Client{} = client, max_items \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/applications"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxItems", max_items} | query_params]
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
      200
    )
  end

  @doc """
  Sets the permission policy for an application.

  For the list of actions supported for this operation, see
  [Application Permissions](https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions)

  .
  """
  def put_application_policy(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/policy"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Unshares an application from an AWS Organization.

  This operation can be called only from the organization's master account.
  """
  def unshare_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/unshare"
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
      204
    )
  end

  @doc """
  Updates the specified application.
  """
  def update_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
