# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AIOps do
  @moduledoc """
  The CloudWatch investigations feature is a generative AI-powered assistant that
  can help you respond to incidents in your system.

  It uses generative AI to scan your system's telemetry and quickly surface
  suggestions that might be related to your issue. These suggestions include
  metrics, logs, deployment events, and root-cause hypotheses.

  You can use API actions to create, manage, and delete investigation groups and
  investigation group policies. To start and manage investigations, you must use
  the CloudWatch console.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_investigation_group_input() :: %{
        optional("chatbotNotificationChannel") => map(),
        optional("crossAccountConfigurations") => list(cross_account_configuration()),
        optional("encryptionConfiguration") => encryption_configuration(),
        optional("isCloudTrailEventHistoryEnabled") => [boolean()],
        optional("retentionInDays") => float(),
        optional("tagKeyBoundaries") => list(String.t() | Atom.t()),
        optional("tags") => map(),
        required("name") => String.t() | Atom.t(),
        required("roleArn") => String.t() | Atom.t()
      }

  """
  @type create_investigation_group_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_investigation_group_output() :: %{
        "arn" => String.t() | Atom.t()
      }

  """
  @type create_investigation_group_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cross_account_configuration() :: %{
        "sourceRoleArn" => String.t() | Atom.t()
      }

  """
  @type cross_account_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_investigation_group_policy_output() :: %{}

  """
  @type delete_investigation_group_policy_output() :: %{}

  @typedoc """

  ## Example:

      delete_investigation_group_policy_request() :: %{}

  """
  @type delete_investigation_group_policy_request() :: %{}

  @typedoc """

  ## Example:

      delete_investigation_group_request() :: %{}

  """
  @type delete_investigation_group_request() :: %{}

  @typedoc """

  ## Example:

      encryption_configuration() :: %{
        "kmsKeyId" => String.t() | Atom.t(),
        "type" => list(any())
      }

  """
  @type encryption_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type forbidden_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_investigation_group_policy_request() :: %{}

  """
  @type get_investigation_group_policy_request() :: %{}

  @typedoc """

  ## Example:

      get_investigation_group_policy_response() :: %{
        "investigationGroupArn" => String.t() | Atom.t(),
        "policy" => String.t() | Atom.t()
      }

  """
  @type get_investigation_group_policy_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_investigation_group_request() :: %{}

  """
  @type get_investigation_group_request() :: %{}

  @typedoc """

  ## Example:

      get_investigation_group_response() :: %{
        "arn" => String.t() | Atom.t(),
        "chatbotNotificationChannel" => map(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t() | Atom.t(),
        "crossAccountConfigurations" => list(cross_account_configuration()),
        "encryptionConfiguration" => encryption_configuration(),
        "isCloudTrailEventHistoryEnabled" => [boolean()],
        "lastModifiedAt" => [non_neg_integer()],
        "lastModifiedBy" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t(),
        "retentionInDays" => float(),
        "roleArn" => String.t() | Atom.t(),
        "tagKeyBoundaries" => list(String.t() | Atom.t())
      }

  """
  @type get_investigation_group_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_investigation_groups_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_investigation_groups_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_investigation_groups_model() :: %{
        "arn" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t()
      }

  """
  @type list_investigation_groups_model() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_investigation_groups_output() :: %{
        "investigationGroups" => list(list_investigation_groups_model()),
        "nextToken" => String.t() | Atom.t()
      }

  """
  @type list_investigation_groups_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      put_investigation_group_policy_request() :: %{
        required("policy") => String.t() | Atom.t()
      }

  """
  @type put_investigation_group_policy_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_investigation_group_policy_response() :: %{
        "investigationGroupArn" => String.t() | Atom.t()
      }

  """
  @type put_investigation_group_policy_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "quotaCode" => [String.t() | Atom.t()],
        "resourceId" => [String.t() | Atom.t()],
        "resourceType" => [String.t() | Atom.t()],
        "serviceCode" => [String.t() | Atom.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_investigation_group_output() :: %{}

  """
  @type update_investigation_group_output() :: %{}

  @typedoc """

  ## Example:

      update_investigation_group_request() :: %{
        optional("chatbotNotificationChannel") => map(),
        optional("crossAccountConfigurations") => list(cross_account_configuration()),
        optional("encryptionConfiguration") => encryption_configuration(),
        optional("isCloudTrailEventHistoryEnabled") => [boolean()],
        optional("roleArn") => String.t() | Atom.t(),
        optional("tagKeyBoundaries") => list(String.t() | Atom.t())
      }

  """
  @type update_investigation_group_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @type create_investigation_group_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_investigation_group_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type delete_investigation_group_policy_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_investigation_group_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_investigation_group_policy_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_investigation_groups_errors() ::
          throttling_exception() | internal_server_exception() | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type put_investigation_group_policy_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_investigation_group_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "aiops",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "AIOps",
      signature_version: "v4",
      signing_name: "aiops",
      target_prefix: nil
    }
  end

  @doc """
  Creates an *investigation group* in your account.

  Creating an investigation group is a one-time setup task for each Region in your
  account. It is a necessary task to be able to perform investigations.

  Settings in the investigation group help you centrally manage the common
  properties of your investigations, such as the following:

    * Who can access the investigations

    * Whether investigation data is encrypted with a customer managed
  Key Management Service key.

    * How long investigations and their data are retained by default.

  Currently, you can have one investigation group in each Region in your account.
  Each investigation in a Region is a part of the investigation group in that
  Region

  To create an investigation group and set up CloudWatch investigations, you must
  be signed in to an IAM principal that has the either the
  `AIOpsConsoleAdminPolicy` or the `AdministratorAccess` IAM policy attached, or
  to an account that has similar permissions.

  You can configure CloudWatch alarms to start investigations and add events to
  investigations. If you create your investigation group with
  `CreateInvestigationGroup` and you want to enable alarms to do this, you must
  use
  [PutInvestigationGroupPolicy](https://docs.aws.amazon.com/operationalinvestigations/latest/AmazonQDeveloperOperationalInvestigationsAPIReference/API_PutInvestigationGroupPolicy.html)
  to create a resource policy that grants this permission to CloudWatch alarms.

  For more information about configuring CloudWatch alarms to work with CloudWatch
  investigations, see
  """
  @spec create_investigation_group(map(), create_investigation_group_input(), list()) ::
          {:ok, create_investigation_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_investigation_group_errors()}
  def create_investigation_group(%Client{} = client, input, options \\ []) do
    url_path = "/investigationGroups"
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
  Deletes the specified investigation group from your account.

  You can currently have one investigation group per Region in your account. After
  you delete an investigation group, you can later create a new investigation
  group in the same Region.
  """
  @spec delete_investigation_group(
          map(),
          String.t() | Atom.t(),
          delete_investigation_group_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_investigation_group_errors()}
  def delete_investigation_group(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/investigationGroups/#{AWS.Util.encode_uri(identifier)}"
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
      200
    )
  end

  @doc """
  Removes the IAM resource policy from being associated with the investigation
  group that you specify.
  """
  @spec delete_investigation_group_policy(
          map(),
          String.t() | Atom.t(),
          delete_investigation_group_policy_request(),
          list()
        ) ::
          {:ok, delete_investigation_group_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_investigation_group_policy_errors()}
  def delete_investigation_group_policy(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/investigationGroups/#{AWS.Util.encode_uri(identifier)}/policy"
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
      200
    )
  end

  @doc """
  Returns the configuration information for the specified investigation group.
  """
  @spec get_investigation_group(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_investigation_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_investigation_group_errors()}
  def get_investigation_group(%Client{} = client, identifier, options \\ []) do
    url_path = "/investigationGroups/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the IAM resource policy that is associated with the specified
  investigation group.
  """
  @spec get_investigation_group_policy(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_investigation_group_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_investigation_group_policy_errors()}
  def get_investigation_group_policy(%Client{} = client, identifier, options \\ []) do
    url_path = "/investigationGroups/#{AWS.Util.encode_uri(identifier)}/policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the ARN and name of each investigation group in the account.
  """
  @spec list_investigation_groups(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_investigation_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_investigation_groups_errors()}
  def list_investigation_groups(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/investigationGroups"
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
  Displays the tags associated with a CloudWatch investigations resource.

  Currently, investigation groups support tagging.
  """
  @spec list_tags_for_resource(map(), String.t() | Atom.t(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates an IAM resource policy and assigns it to the specified investigation
  group.

  If you create your investigation group with `CreateInvestigationGroup` and you
  want to enable CloudWatch alarms to create investigations and add events to
  investigations, you must use this operation to create a policy similar to this
  example.

  `{ "Version": "2008-10-17", "Statement": [{ "Effect": "Allow", "Principal": { "Service": "aiops.alarms.cloudwatch.amazonaws.com" }, "Action":
  ["aiops:CreateInvestigation", "aiops:CreateInvestigationEvent"], "Resource":
  "*", "Condition": { "StringEquals": { "aws:SourceAccount": "*account-id*" },
  "ArnLike": { "aws:SourceArn": "arn:aws:cloudwatch:*region*:*account-id*:alarm:*"
  } } }] }`
  """
  @spec put_investigation_group_policy(
          map(),
          String.t() | Atom.t(),
          put_investigation_group_policy_request(),
          list()
        ) ::
          {:ok, put_investigation_group_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_investigation_group_policy_errors()}
  def put_investigation_group_policy(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/investigationGroups/#{AWS.Util.encode_uri(identifier)}/policy"
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
      200
    )
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified resource.

  Tags can help you organize and categorize your resources. You can also use them
  to scope user permissions by granting a user permission to access or change only
  resources with certain tag values.

  Tags don't have any semantic meaning to Amazon Web Services and are interpreted
  strictly as strings of characters.

  You can associate as many as 50 tags with a resource.
  """
  @spec tag_resource(map(), String.t() | Atom.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      200
    )
  end

  @doc """
  Removes one or more tags from the specified resource.
  """
  @spec untag_resource(map(), String.t() | Atom.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

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
      200
    )
  end

  @doc """
  Updates the configuration of the specified investigation group.
  """
  @spec update_investigation_group(
          map(),
          String.t() | Atom.t(),
          update_investigation_group_request(),
          list()
        ) ::
          {:ok, update_investigation_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_investigation_group_errors()}
  def update_investigation_group(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/investigationGroups/#{AWS.Util.encode_uri(identifier)}"
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
