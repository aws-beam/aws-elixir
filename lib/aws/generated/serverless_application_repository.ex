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
        "Dependencies" => list(application_dependency_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_application_dependencies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_cloud_formation_template_response() :: %{
        "ApplicationId" => String.t() | atom(),
        "CreationTime" => String.t() | atom(),
        "ExpirationTime" => String.t() | atom(),
        "SemanticVersion" => String.t() | atom(),
        "Status" => list(any()),
        "TemplateId" => String.t() | atom(),
        "TemplateUrl" => String.t() | atom()
      }

  """
  @type get_cloud_formation_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      application_dependency_summary() :: %{
        "ApplicationId" => String.t() | atom(),
        "SemanticVersion" => String.t() | atom()
      }

  """
  @type application_dependency_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type forbidden_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_cloud_formation_template_request() :: %{}

  """
  @type get_cloud_formation_template_request() :: %{}

  @typedoc """

  ## Example:

      parameter_definition() :: %{
        "AllowedPattern" => String.t() | atom(),
        "AllowedValues" => list(String.t() | atom()),
        "ConstraintDescription" => String.t() | atom(),
        "DefaultValue" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "MaxLength" => integer(),
        "MaxValue" => integer(),
        "MinLength" => integer(),
        "MinValue" => integer(),
        "Name" => String.t() | atom(),
        "NoEcho" => boolean(),
        "ReferencedByResources" => list(String.t() | atom()),
        "Type" => String.t() | atom()
      }

  """
  @type parameter_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_version_request() :: %{
        optional("SourceCodeArchiveUrl") => String.t() | atom(),
        optional("SourceCodeUrl") => String.t() | atom(),
        optional("TemplateBody") => String.t() | atom(),
        optional("TemplateUrl") => String.t() | atom()
      }

  """
  @type create_application_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_version_response() :: %{
        "ApplicationId" => String.t() | atom(),
        "CreationTime" => String.t() | atom(),
        "ParameterDefinitions" => list(parameter_definition()),
        "RequiredCapabilities" => list(list(any())()),
        "ResourcesSupported" => boolean(),
        "SemanticVersion" => String.t() | atom(),
        "SourceCodeArchiveUrl" => String.t() | atom(),
        "SourceCodeUrl" => String.t() | atom(),
        "TemplateUrl" => String.t() | atom()
      }

  """
  @type create_application_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_policy_response() :: %{
        "Statements" => list(application_policy_statement())
      }

  """
  @type get_application_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type too_many_requests_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      version_summary() :: %{
        "ApplicationId" => String.t() | atom(),
        "CreationTime" => String.t() | atom(),
        "SemanticVersion" => String.t() | atom(),
        "SourceCodeUrl" => String.t() | atom()
      }

  """
  @type version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      parameter_value() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type parameter_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_application_policy_request() :: %{
        required("Statements") => list(application_policy_statement())
      }

  """
  @type put_application_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("HomePageUrl") => String.t() | atom(),
        optional("Labels") => list(String.t() | atom()),
        optional("LicenseBody") => String.t() | atom(),
        optional("LicenseUrl") => String.t() | atom(),
        optional("ReadmeBody") => String.t() | atom(),
        optional("ReadmeUrl") => String.t() | atom(),
        optional("SemanticVersion") => String.t() | atom(),
        optional("SourceCodeArchiveUrl") => String.t() | atom(),
        optional("SourceCodeUrl") => String.t() | atom(),
        optional("SpdxLicenseId") => String.t() | atom(),
        optional("TemplateBody") => String.t() | atom(),
        optional("TemplateUrl") => String.t() | atom(),
        required("Author") => String.t() | atom(),
        required("Description") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_cloud_formation_template_response() :: %{
        "ApplicationId" => String.t() | atom(),
        "CreationTime" => String.t() | atom(),
        "ExpirationTime" => String.t() | atom(),
        "SemanticVersion" => String.t() | atom(),
        "Status" => list(any()),
        "TemplateId" => String.t() | atom(),
        "TemplateUrl" => String.t() | atom()
      }

  """
  @type create_cloud_formation_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_response() :: %{
        "ApplicationId" => String.t() | atom(),
        "Author" => String.t() | atom(),
        "CreationTime" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "HomePageUrl" => String.t() | atom(),
        "IsVerifiedAuthor" => boolean(),
        "Labels" => list(String.t() | atom()),
        "LicenseUrl" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ReadmeUrl" => String.t() | atom(),
        "SpdxLicenseId" => String.t() | atom(),
        "VerifiedAuthorUrl" => String.t() | atom(),
        "Version" => version()
      }

  """
  @type create_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_application_dependencies_request() :: %{
        optional("MaxItems") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SemanticVersion") => String.t() | atom()
      }

  """
  @type list_application_dependencies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      version() :: %{
        "ApplicationId" => String.t() | atom(),
        "CreationTime" => String.t() | atom(),
        "ParameterDefinitions" => list(parameter_definition()),
        "RequiredCapabilities" => list(list(any())()),
        "ResourcesSupported" => boolean(),
        "SemanticVersion" => String.t() | atom(),
        "SourceCodeArchiveUrl" => String.t() | atom(),
        "SourceCodeUrl" => String.t() | atom(),
        "TemplateUrl" => String.t() | atom()
      }

  """
  @type version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_application_request() :: %{
        optional("Author") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("HomePageUrl") => String.t() | atom(),
        optional("Labels") => list(String.t() | atom()),
        optional("ReadmeBody") => String.t() | atom(),
        optional("ReadmeUrl") => String.t() | atom()
      }

  """
  @type update_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_application_response() :: %{
        "ApplicationId" => String.t() | atom(),
        "Author" => String.t() | atom(),
        "CreationTime" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "HomePageUrl" => String.t() | atom(),
        "IsVerifiedAuthor" => boolean(),
        "Labels" => list(String.t() | atom()),
        "LicenseUrl" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ReadmeUrl" => String.t() | atom(),
        "SpdxLicenseId" => String.t() | atom(),
        "VerifiedAuthorUrl" => String.t() | atom(),
        "Version" => version()
      }

  """
  @type update_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_response() :: %{
        "ApplicationId" => String.t() | atom(),
        "Author" => String.t() | atom(),
        "CreationTime" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "HomePageUrl" => String.t() | atom(),
        "IsVerifiedAuthor" => boolean(),
        "Labels" => list(String.t() | atom()),
        "LicenseUrl" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ReadmeUrl" => String.t() | atom(),
        "SpdxLicenseId" => String.t() | atom(),
        "VerifiedAuthorUrl" => String.t() | atom(),
        "Version" => version()
      }

  """
  @type get_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("MaxItems") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_applications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_policy_request() :: %{}

  """
  @type get_application_policy_request() :: %{}

  @typedoc """

  ## Example:

      create_cloud_formation_change_set_request() :: %{
        optional("Capabilities") => list(String.t() | atom()),
        optional("ChangeSetName") => String.t() | atom(),
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("NotificationArns") => list(String.t() | atom()),
        optional("ParameterOverrides") => list(parameter_value()),
        optional("ResourceTypes") => list(String.t() | atom()),
        optional("RollbackConfiguration") => rollback_configuration(),
        optional("SemanticVersion") => String.t() | atom(),
        optional("Tags") => list(tag()),
        optional("TemplateId") => String.t() | atom(),
        required("StackName") => String.t() | atom()
      }

  """
  @type create_cloud_formation_change_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type internal_server_error_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      application_policy_statement() :: %{
        "Actions" => list(String.t() | atom()),
        "PrincipalOrgIDs" => list(String.t() | atom()),
        "Principals" => list(String.t() | atom()),
        "StatementId" => String.t() | atom()
      }

  """
  @type application_policy_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_application_versions_request() :: %{
        optional("MaxItems") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_application_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      application_summary() :: %{
        "ApplicationId" => String.t() | atom(),
        "Author" => String.t() | atom(),
        "CreationTime" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "HomePageUrl" => String.t() | atom(),
        "Labels" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "SpdxLicenseId" => String.t() | atom()
      }

  """
  @type application_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unshare_application_request() :: %{
        required("OrganizationId") => String.t() | atom()
      }

  """
  @type unshare_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_response() :: %{
        "Applications" => list(application_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_applications_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_application_versions_response() :: %{
        "NextToken" => String.t() | atom(),
        "Versions" => list(version_summary())
      }

  """
  @type list_application_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type bad_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rollback_configuration() :: %{
        "MonitoringTimeInMinutes" => integer(),
        "RollbackTriggers" => list(rollback_trigger())
      }

  """
  @type rollback_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rollback_trigger() :: %{
        "Arn" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type rollback_trigger() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_application_policy_response() :: %{
        "Statements" => list(application_policy_statement())
      }

  """
  @type put_application_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_request() :: %{
        optional("SemanticVersion") => String.t() | atom()
      }

  """
  @type get_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_cloud_formation_template_request() :: %{
        optional("SemanticVersion") => String.t() | atom()
      }

  """
  @type create_cloud_formation_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_application_request() :: %{}

  """
  @type delete_application_request() :: %{}

  @typedoc """

  ## Example:

      create_cloud_formation_change_set_response() :: %{
        "ApplicationId" => String.t() | atom(),
        "ChangeSetId" => String.t() | atom(),
        "SemanticVersion" => String.t() | atom(),
        "StackId" => String.t() | atom()
      }

  """
  @type create_cloud_formation_change_set_response() :: %{(String.t() | atom()) => any()}

  @type create_application_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_application_version_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_cloud_formation_change_set_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_cloud_formation_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_application_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_application_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_application_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_cloud_formation_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_application_dependencies_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_application_versions_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_applications_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type put_application_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type unshare_application_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_application_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  def metadata do
    %{
      api_version: "2017-09-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "serverlessrepo",
      global?: false,
      hostname: nil,
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
          | {:error, term()}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          String.t() | atom(),
          String.t() | atom(),
          create_application_version_request(),
          list()
        ) ::
          {:ok, create_application_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_version_errors()}
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
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates an AWS CloudFormation change set for the given application.
  """
  @spec create_cloud_formation_change_set(
          map(),
          String.t() | atom(),
          create_cloud_formation_change_set_request(),
          list()
        ) ::
          {:ok, create_cloud_formation_change_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cloud_formation_change_set_errors()}
  def create_cloud_formation_change_set(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/changesets"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
          String.t() | atom(),
          create_cloud_formation_template_request(),
          list()
        ) ::
          {:ok, create_cloud_formation_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cloud_formation_template_errors()}
  def create_cloud_formation_template(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/templates"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes the specified application.
  """
  @spec delete_application(map(), String.t() | atom(), delete_application_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Gets the specified application.
  """
  @spec get_application(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_application_errors()}
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
  @spec get_application_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_application_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_application_policy_errors()}
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
  @spec get_cloud_formation_template(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_cloud_formation_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cloud_formation_template_errors()}
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_application_dependencies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_application_dependencies_errors()}
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
  @spec list_application_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_application_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_application_versions_errors()}
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
  @spec list_applications(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_applications_errors()}
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
  @spec put_application_policy(
          map(),
          String.t() | atom(),
          put_application_policy_request(),
          list()
        ) ::
          {:ok, put_application_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_application_policy_errors()}
  def put_application_policy(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/policy"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Unshares an application from an AWS Organization.

  This operation can be called only from the organization's master account.
  """
  @spec unshare_application(map(), String.t() | atom(), unshare_application_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, unshare_application_errors()}
  def unshare_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/unshare"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates the specified application.
  """
  @spec update_application(map(), String.t() | atom(), update_application_request(), list()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
