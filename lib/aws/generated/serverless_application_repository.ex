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

  @typedoc """

  ## Example:
  list_application_dependencies_response() :: %{
    "Dependencies" => list(application_dependency_summary()()),
    "NextToken" => String.t()
  }
  """
  @type list_application_dependencies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_cloud_formation_template_response() :: %{
    "ApplicationId" => String.t(),
    "CreationTime" => String.t(),
    "ExpirationTime" => String.t(),
    "SemanticVersion" => String.t(),
    "Status" => list(any()),
    "TemplateId" => String.t(),
    "TemplateUrl" => String.t()
  }
  """
  @type get_cloud_formation_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  application_dependency_summary() :: %{
    "ApplicationId" => String.t(),
    "SemanticVersion" => String.t()
  }
  """
  @type application_dependency_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  forbidden_exception() :: %{
    "ErrorCode" => String.t(),
    "Message" => String.t()
  }
  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_cloud_formation_template_request() :: %{

  }
  """
  @type get_cloud_formation_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  parameter_definition() :: %{
    "AllowedPattern" => String.t(),
    "AllowedValues" => list(String.t()()),
    "ConstraintDescription" => String.t(),
    "DefaultValue" => String.t(),
    "Description" => String.t(),
    "MaxLength" => integer(),
    "MaxValue" => integer(),
    "MinLength" => integer(),
    "MinValue" => integer(),
    "Name" => String.t(),
    "NoEcho" => boolean(),
    "ReferencedByResources" => list(String.t()()),
    "Type" => String.t()
  }
  """
  @type parameter_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_application_version_request() :: %{
    optional("SourceCodeArchiveUrl") => String.t(),
    optional("SourceCodeUrl") => String.t(),
    optional("TemplateBody") => String.t(),
    optional("TemplateUrl") => String.t()
  }
  """
  @type create_application_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_application_version_response() :: %{
    "ApplicationId" => String.t(),
    "CreationTime" => String.t(),
    "ParameterDefinitions" => list(parameter_definition()()),
    "RequiredCapabilities" => list(list(any())()),
    "ResourcesSupported" => boolean(),
    "SemanticVersion" => String.t(),
    "SourceCodeArchiveUrl" => String.t(),
    "SourceCodeUrl" => String.t(),
    "TemplateUrl" => String.t()
  }
  """
  @type create_application_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_application_policy_response() :: %{
    "Statements" => list(application_policy_statement()())
  }
  """
  @type get_application_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  too_many_requests_exception() :: %{
    "ErrorCode" => String.t(),
    "Message" => String.t()
  }
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  version_summary() :: %{
    "ApplicationId" => String.t(),
    "CreationTime" => String.t(),
    "SemanticVersion" => String.t(),
    "SourceCodeUrl" => String.t()
  }
  """
  @type version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  parameter_value() :: %{
    "Name" => String.t(),
    "Value" => String.t()
  }
  """
  @type parameter_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "ErrorCode" => String.t(),
    "Message" => String.t()
  }
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag() :: %{
    "Key" => String.t(),
    "Value" => String.t()
  }
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_application_policy_request() :: %{
    required("Statements") => list(application_policy_statement()())
  }
  """
  @type put_application_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  not_found_exception() :: %{
    "ErrorCode" => String.t(),
    "Message" => String.t()
  }
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_application_request() :: %{
    optional("HomePageUrl") => String.t(),
    optional("Labels") => list(String.t()()),
    optional("LicenseBody") => String.t(),
    optional("LicenseUrl") => String.t(),
    optional("ReadmeBody") => String.t(),
    optional("ReadmeUrl") => String.t(),
    optional("SemanticVersion") => String.t(),
    optional("SourceCodeArchiveUrl") => String.t(),
    optional("SourceCodeUrl") => String.t(),
    optional("SpdxLicenseId") => String.t(),
    optional("TemplateBody") => String.t(),
    optional("TemplateUrl") => String.t(),
    required("Author") => String.t(),
    required("Description") => String.t(),
    required("Name") => String.t()
  }
  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_cloud_formation_template_response() :: %{
    "ApplicationId" => String.t(),
    "CreationTime" => String.t(),
    "ExpirationTime" => String.t(),
    "SemanticVersion" => String.t(),
    "Status" => list(any()),
    "TemplateId" => String.t(),
    "TemplateUrl" => String.t()
  }
  """
  @type create_cloud_formation_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_application_response() :: %{
    "ApplicationId" => String.t(),
    "Author" => String.t(),
    "CreationTime" => String.t(),
    "Description" => String.t(),
    "HomePageUrl" => String.t(),
    "IsVerifiedAuthor" => boolean(),
    "Labels" => list(String.t()()),
    "LicenseUrl" => String.t(),
    "Name" => String.t(),
    "ReadmeUrl" => String.t(),
    "SpdxLicenseId" => String.t(),
    "VerifiedAuthorUrl" => String.t(),
    "Version" => version()
  }
  """
  @type create_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_application_dependencies_request() :: %{
    optional("MaxItems") => integer(),
    optional("NextToken") => String.t(),
    optional("SemanticVersion") => String.t()
  }
  """
  @type list_application_dependencies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  version() :: %{
    "ApplicationId" => String.t(),
    "CreationTime" => String.t(),
    "ParameterDefinitions" => list(parameter_definition()()),
    "RequiredCapabilities" => list(list(any())()),
    "ResourcesSupported" => boolean(),
    "SemanticVersion" => String.t(),
    "SourceCodeArchiveUrl" => String.t(),
    "SourceCodeUrl" => String.t(),
    "TemplateUrl" => String.t()
  }
  """
  @type version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_application_request() :: %{
    optional("Author") => String.t(),
    optional("Description") => String.t(),
    optional("HomePageUrl") => String.t(),
    optional("Labels") => list(String.t()()),
    optional("ReadmeBody") => String.t(),
    optional("ReadmeUrl") => String.t()
  }
  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_application_response() :: %{
    "ApplicationId" => String.t(),
    "Author" => String.t(),
    "CreationTime" => String.t(),
    "Description" => String.t(),
    "HomePageUrl" => String.t(),
    "IsVerifiedAuthor" => boolean(),
    "Labels" => list(String.t()()),
    "LicenseUrl" => String.t(),
    "Name" => String.t(),
    "ReadmeUrl" => String.t(),
    "SpdxLicenseId" => String.t(),
    "VerifiedAuthorUrl" => String.t(),
    "Version" => version()
  }
  """
  @type update_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_application_response() :: %{
    "ApplicationId" => String.t(),
    "Author" => String.t(),
    "CreationTime" => String.t(),
    "Description" => String.t(),
    "HomePageUrl" => String.t(),
    "IsVerifiedAuthor" => boolean(),
    "Labels" => list(String.t()()),
    "LicenseUrl" => String.t(),
    "Name" => String.t(),
    "ReadmeUrl" => String.t(),
    "SpdxLicenseId" => String.t(),
    "VerifiedAuthorUrl" => String.t(),
    "Version" => version()
  }
  """
  @type get_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_applications_request() :: %{
    optional("MaxItems") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_application_policy_request() :: %{

  }
  """
  @type get_application_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_cloud_formation_change_set_request() :: %{
    optional("Capabilities") => list(String.t()()),
    optional("ChangeSetName") => String.t(),
    optional("ClientToken") => String.t(),
    optional("Description") => String.t(),
    optional("NotificationArns") => list(String.t()()),
    optional("ParameterOverrides") => list(parameter_value()()),
    optional("ResourceTypes") => list(String.t()()),
    optional("RollbackConfiguration") => rollback_configuration(),
    optional("SemanticVersion") => String.t(),
    optional("Tags") => list(tag()()),
    optional("TemplateId") => String.t(),
    required("StackName") => String.t()
  }
  """
  @type create_cloud_formation_change_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_server_error_exception() :: %{
    "ErrorCode" => String.t(),
    "Message" => String.t()
  }
  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  application_policy_statement() :: %{
    "Actions" => list(String.t()()),
    "PrincipalOrgIDs" => list(String.t()()),
    "Principals" => list(String.t()()),
    "StatementId" => String.t()
  }
  """
  @type application_policy_statement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_application_versions_request() :: %{
    optional("MaxItems") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_application_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  application_summary() :: %{
    "ApplicationId" => String.t(),
    "Author" => String.t(),
    "CreationTime" => String.t(),
    "Description" => String.t(),
    "HomePageUrl" => String.t(),
    "Labels" => list(String.t()()),
    "Name" => String.t(),
    "SpdxLicenseId" => String.t()
  }
  """
  @type application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  unshare_application_request() :: %{
    required("OrganizationId") => String.t()
  }
  """
  @type unshare_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_applications_response() :: %{
    "Applications" => list(application_summary()()),
    "NextToken" => String.t()
  }
  """
  @type list_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_application_versions_response() :: %{
    "NextToken" => String.t(),
    "Versions" => list(version_summary()())
  }
  """
  @type list_application_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  bad_request_exception() :: %{
    "ErrorCode" => String.t(),
    "Message" => String.t()
  }
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  rollback_configuration() :: %{
    "MonitoringTimeInMinutes" => integer(),
    "RollbackTriggers" => list(rollback_trigger()())
  }
  """
  @type rollback_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  rollback_trigger() :: %{
    "Arn" => String.t(),
    "Type" => String.t()
  }
  """
  @type rollback_trigger() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_application_policy_response() :: %{
    "Statements" => list(application_policy_statement()())
  }
  """
  @type put_application_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_application_request() :: %{
    optional("SemanticVersion") => String.t()
  }
  """
  @type get_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_cloud_formation_template_request() :: %{
    optional("SemanticVersion") => String.t()
  }
  """
  @type create_cloud_formation_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_application_request() :: %{

  }
  """
  @type delete_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_cloud_formation_change_set_response() :: %{
    "ApplicationId" => String.t(),
    "ChangeSetId" => String.t(),
    "SemanticVersion" => String.t(),
    "StackId" => String.t()
  }
  """
  @type create_cloud_formation_change_set_response() :: %{String.t() => any()}

  def metadata do
    %{
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
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, conflict_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, too_many_requests_exception()}
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
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
      201
    )
  end

  @doc """
  Creates an application version.
  """
  @spec create_application_version(
          map(),
          String.t(),
          String.t(),
          create_application_version_request(),
          list()
        ) ::
          {:ok, create_application_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, conflict_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, too_many_requests_exception()}
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 201)
  end

  @doc """
  Creates an AWS CloudFormation change set for the given application.
  """
  @spec create_cloud_formation_change_set(
          map(),
          String.t(),
          create_cloud_formation_change_set_request(),
          list()
        ) ::
          {:ok, create_cloud_formation_change_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, too_many_requests_exception()}
  def create_cloud_formation_change_set(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/changesets"
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
      201
    )
  end

  @doc """
  Creates an AWS CloudFormation template.
  """
  @spec create_cloud_formation_template(
          map(),
          String.t(),
          create_cloud_formation_template_request(),
          list()
        ) ::
          {:ok, create_cloud_formation_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
  def create_cloud_formation_template(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/templates"
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
      201
    )
  end

  @doc """
  Deletes the specified application.
  """
  @spec delete_application(map(), String.t(), delete_application_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, conflict_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
  def delete_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
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
      204
    )
  end

  @doc """
  Gets the specified application.
  """
  @spec get_application(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the policy for the application.
  """
  @spec get_application_policy(map(), String.t(), list()) ::
          {:ok, get_application_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
  def get_application_policy(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the specified AWS CloudFormation template.
  """
  @spec get_cloud_formation_template(map(), String.t(), String.t(), list()) ::
          {:ok, get_cloud_formation_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
  def get_cloud_formation_template(%Client{} = client, application_id, template_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/templates/#{AWS.Util.encode_uri(template_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the list of applications nested in the containing application.
  """
  @spec list_application_dependencies(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_application_dependencies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists versions for the specified application.
  """
  @spec list_application_versions(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_application_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists applications owned by the requester.
  """
  @spec list_applications(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Sets the permission policy for an application.

  For the list of actions supported for this operation, see
  [Application Permissions](https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions)

  .
  """
  @spec put_application_policy(map(), String.t(), put_application_policy_request(), list()) ::
          {:ok, put_application_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
  def put_application_policy(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Unshares an application from an AWS Organization.

  This operation can be called only from the organization's master account.
  """
  @spec unshare_application(map(), String.t(), unshare_application_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
  def unshare_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/unshare"
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
      204
    )
  end

  @doc """
  Updates the specified application.
  """
  @spec update_application(map(), String.t(), update_application_request(), list()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, conflict_exception()}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, too_many_requests_exception()}
  def update_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    query_params = []

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
