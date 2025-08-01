# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DLM do
  @moduledoc """
  Amazon Data Lifecycle Manager

  With Amazon Data Lifecycle Manager, you can manage the lifecycle of your Amazon
  Web Services resources.

  You create
  lifecycle policies, which are used to automate operations on the specified
  resources.

  Amazon Data Lifecycle Manager supports Amazon EBS volumes and snapshots. For
  information about using Amazon Data Lifecycle Manager
  with Amazon EBS, see [
  Amazon Data Lifecycle
  Manager](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-lifecycle.html)
  in the *Amazon EC2 User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      archive_retain_rule() :: %{
        "RetentionArchiveTier" => retention_archive_tier()
      }

  """
  @type archive_retain_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      encryption_configuration() :: %{
        "CmkArn" => String.t() | Atom.t(),
        "Encrypted" => boolean()
      }

  """
  @type encryption_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_lifecycle_policy_request() :: %{
        optional("CopyTags") => boolean(),
        optional("CreateInterval") => integer(),
        optional("CrossRegionCopyTargets") => list(cross_region_copy_target()),
        optional("Description") => String.t() | Atom.t(),
        optional("Exclusions") => exclusions(),
        optional("ExecutionRoleArn") => String.t() | Atom.t(),
        optional("ExtendDeletion") => boolean(),
        optional("PolicyDetails") => policy_details(),
        optional("RetainInterval") => integer(),
        optional("State") => list(any())
      }

  """
  @type update_lifecycle_policy_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cross_region_copy_action() :: %{
        "EncryptionConfiguration" => encryption_configuration(),
        "RetainRule" => cross_region_copy_retain_rule(),
        "Target" => String.t() | Atom.t()
      }

  """
  @type cross_region_copy_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_lifecycle_policy_response() :: %{}

  """
  @type update_lifecycle_policy_response() :: %{}

  @typedoc """

  ## Example:

      retain_rule() :: %{
        "Count" => integer(),
        "Interval" => integer(),
        "IntervalUnit" => list(any())
      }

  """
  @type retain_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      deprecate_rule() :: %{
        "Count" => integer(),
        "Interval" => integer(),
        "IntervalUnit" => list(any())
      }

  """
  @type deprecate_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_lifecycle_policies_request() :: %{
        optional("DefaultPolicyType") => list(any()),
        optional("PolicyIds") => list(String.t() | Atom.t()),
        optional("ResourceTypes") => list(list(any())()),
        optional("State") => list(any()),
        optional("TagsToAdd") => list(String.t() | Atom.t()),
        optional("TargetTags") => list(String.t() | Atom.t())
      }

  """
  @type get_lifecycle_policies_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      event_parameters() :: %{
        "DescriptionRegex" => String.t() | Atom.t(),
        "EventType" => list(any()),
        "SnapshotOwner" => list(String.t() | Atom.t())
      }

  """
  @type event_parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      fast_restore_rule() :: %{
        "AvailabilityZones" => list(String.t() | Atom.t()),
        "Count" => integer(),
        "Interval" => integer(),
        "IntervalUnit" => list(any())
      }

  """
  @type fast_restore_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      parameters() :: %{
        "ExcludeBootVolume" => boolean(),
        "ExcludeDataVolumeTags" => list(tag()),
        "NoReboot" => boolean()
      }

  """
  @type parameters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      event_source() :: %{
        "Parameters" => event_parameters(),
        "Type" => list(any())
      }

  """
  @type event_source() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_lifecycle_policy_response() :: %{}

  """
  @type delete_lifecycle_policy_response() :: %{}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Code" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t(),
        "ResourceIds" => list(String.t() | Atom.t()),
        "ResourceType" => String.t() | Atom.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      lifecycle_policy_summary() :: %{
        "DefaultPolicy" => boolean(),
        "Description" => String.t() | Atom.t(),
        "PolicyId" => String.t() | Atom.t(),
        "PolicyType" => list(any()),
        "State" => list(any()),
        "Tags" => map()
      }

  """
  @type lifecycle_policy_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }

  """
  @type tag() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cross_region_copy_deprecate_rule() :: %{
        "Interval" => integer(),
        "IntervalUnit" => list(any())
      }

  """
  @type cross_region_copy_deprecate_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "Code" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t(),
        "MutuallyExclusiveParameters" => list(String.t() | Atom.t()),
        "RequiredParameters" => list(String.t() | Atom.t())
      }

  """
  @type invalid_request_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      exclusions() :: %{
        "ExcludeBootVolumes" => boolean(),
        "ExcludeTags" => list(tag()),
        "ExcludeVolumeTypes" => list(String.t() | Atom.t())
      }

  """
  @type exclusions() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_lifecycle_policy_response() :: %{
        "PolicyId" => String.t() | Atom.t()
      }

  """
  @type create_lifecycle_policy_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_lifecycle_policies_response() :: %{
        "Policies" => list(lifecycle_policy_summary())
      }

  """
  @type get_lifecycle_policies_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cross_region_copy_rule() :: %{
        "CmkArn" => String.t() | Atom.t(),
        "CopyTags" => boolean(),
        "DeprecateRule" => cross_region_copy_deprecate_rule(),
        "Encrypted" => boolean(),
        "RetainRule" => cross_region_copy_retain_rule(),
        "Target" => String.t() | Atom.t(),
        "TargetRegion" => String.t() | Atom.t()
      }

  """
  @type cross_region_copy_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cross_region_copy_target() :: %{
        "TargetRegion" => String.t() | Atom.t()
      }

  """
  @type cross_region_copy_target() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      lifecycle_policy() :: %{
        "DateCreated" => non_neg_integer(),
        "DateModified" => non_neg_integer(),
        "DefaultPolicy" => boolean(),
        "Description" => String.t() | Atom.t(),
        "ExecutionRoleArn" => String.t() | Atom.t(),
        "PolicyArn" => String.t() | Atom.t(),
        "PolicyDetails" => policy_details(),
        "PolicyId" => String.t() | Atom.t(),
        "State" => list(any()),
        "StatusMessage" => String.t() | Atom.t(),
        "Tags" => map()
      }

  """
  @type lifecycle_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Code" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      archive_rule() :: %{
        "RetainRule" => archive_retain_rule()
      }

  """
  @type archive_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      schedule() :: %{
        "ArchiveRule" => archive_rule(),
        "CopyTags" => boolean(),
        "CreateRule" => create_rule(),
        "CrossRegionCopyRules" => list(cross_region_copy_rule()),
        "DeprecateRule" => deprecate_rule(),
        "FastRestoreRule" => fast_restore_rule(),
        "Name" => String.t() | Atom.t(),
        "RetainRule" => retain_rule(),
        "ShareRules" => list(share_rule()),
        "TagsToAdd" => list(tag()),
        "VariableTags" => list(tag())
      }

  """
  @type schedule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_lifecycle_policy_request() :: %{}

  """
  @type delete_lifecycle_policy_request() :: %{}

  @typedoc """

  ## Example:

      action() :: %{
        "CrossRegionCopy" => list(cross_region_copy_action()),
        "Name" => String.t() | Atom.t()
      }

  """
  @type action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_rule() :: %{
        "CronExpression" => String.t() | Atom.t(),
        "Interval" => integer(),
        "IntervalUnit" => list(any()),
        "Location" => list(any()),
        "Scripts" => list(script()),
        "Times" => list(String.t() | Atom.t())
      }

  """
  @type create_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      retention_archive_tier() :: %{
        "Count" => integer(),
        "Interval" => integer(),
        "IntervalUnit" => list(any())
      }

  """
  @type retention_archive_tier() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_lifecycle_policy_request() :: %{}

  """
  @type get_lifecycle_policy_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      cross_region_copy_retain_rule() :: %{
        "Interval" => integer(),
        "IntervalUnit" => list(any())
      }

  """
  @type cross_region_copy_retain_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_lifecycle_policy_request() :: %{
        optional("CopyTags") => boolean(),
        optional("CreateInterval") => integer(),
        optional("CrossRegionCopyTargets") => list(cross_region_copy_target()),
        optional("DefaultPolicy") => list(any()),
        optional("Exclusions") => exclusions(),
        optional("ExtendDeletion") => boolean(),
        optional("PolicyDetails") => policy_details(),
        optional("RetainInterval") => integer(),
        optional("Tags") => map(),
        required("Description") => String.t() | Atom.t(),
        required("ExecutionRoleArn") => String.t() | Atom.t(),
        required("State") => list(any())
      }

  """
  @type create_lifecycle_policy_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      script() :: %{
        "ExecuteOperationOnScriptFailure" => boolean(),
        "ExecutionHandler" => String.t() | Atom.t(),
        "ExecutionHandlerService" => list(any()),
        "ExecutionTimeout" => integer(),
        "MaximumRetryCount" => integer(),
        "Stages" => list(list(any())())
      }

  """
  @type script() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "Code" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t(),
        "ResourceType" => String.t() | Atom.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      policy_details() :: %{
        "Actions" => list(action()),
        "CopyTags" => boolean(),
        "CreateInterval" => integer(),
        "CrossRegionCopyTargets" => list(cross_region_copy_target()),
        "EventSource" => event_source(),
        "Exclusions" => exclusions(),
        "ExtendDeletion" => boolean(),
        "Parameters" => parameters(),
        "PolicyLanguage" => list(any()),
        "PolicyType" => list(any()),
        "ResourceLocations" => list(list(any())()),
        "ResourceType" => list(any()),
        "ResourceTypes" => list(list(any())()),
        "RetainInterval" => integer(),
        "Schedules" => list(schedule()),
        "TargetTags" => list(tag())
      }

  """
  @type policy_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      share_rule() :: %{
        "TargetAccounts" => list(String.t() | Atom.t()),
        "UnshareInterval" => integer(),
        "UnshareIntervalUnit" => list(any())
      }

  """
  @type share_rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_lifecycle_policy_response() :: %{
        "Policy" => lifecycle_policy()
      }

  """
  @type get_lifecycle_policy_response() :: %{String.t() | Atom.t() => any()}

  @type create_lifecycle_policy_errors() ::
          limit_exceeded_exception() | internal_server_exception() | invalid_request_exception()

  @type delete_lifecycle_policy_errors() ::
          limit_exceeded_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_lifecycle_policies_errors() ::
          limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type get_lifecycle_policy_errors() ::
          limit_exceeded_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_lifecycle_policy_errors() ::
          limit_exceeded_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2018-01-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "dlm",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "DLM",
      signature_version: "v4",
      signing_name: "dlm",
      target_prefix: nil
    }
  end

  @doc """
  Creates an Amazon Data Lifecycle Manager lifecycle policy.

  Amazon Data Lifecycle Manager supports the following policy types:

    *
  Custom EBS snapshot policy

    *
  Custom EBS-backed AMI policy

    *
  Cross-account copy event policy

    *
  Default policy for EBS snapshots

    *
  Default policy for EBS-backed AMIs

  For more information, see [
  Default policies vs custom
  policies](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/policy-differences.html).

  If you create a default policy, you can specify the request parameters either in
  the request body, or in the PolicyDetails request structure, but not both.
  """
  @spec create_lifecycle_policy(map(), create_lifecycle_policy_request(), list()) ::
          {:ok, create_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_lifecycle_policy_errors()}
  def create_lifecycle_policy(%Client{} = client, input, options \\ []) do
    url_path = "/policies"
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
  Deletes the specified lifecycle policy and halts the automated operations that
  the
  policy specified.

  For more information about deleting a policy, see [Delete lifecycle policies](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/view-modify-delete.html#delete).
  """
  @spec delete_lifecycle_policy(
          map(),
          String.t() | Atom.t(),
          delete_lifecycle_policy_request(),
          list()
        ) ::
          {:ok, delete_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_lifecycle_policy_errors()}
  def delete_lifecycle_policy(%Client{} = client, policy_id, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_id)}"
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
  Gets summary information about all or the specified data lifecycle policies.

  To get complete information about a policy, use
  [GetLifecyclePolicy](https://docs.aws.amazon.com/dlm/latest/APIReference/API_GetLifecyclePolicy.html).
  """
  @spec get_lifecycle_policies(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, get_lifecycle_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_lifecycle_policies_errors()}
  def get_lifecycle_policies(
        %Client{} = client,
        default_policy_type \\ nil,
        policy_ids \\ nil,
        resource_types \\ nil,
        state \\ nil,
        tags_to_add \\ nil,
        target_tags \\ nil,
        options \\ []
      ) do
    url_path = "/policies"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target_tags) do
        [{"targetTags", target_tags} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(tags_to_add) do
        [{"tagsToAdd", tags_to_add} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(state) do
        [{"state", state} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_types) do
        [{"resourceTypes", resource_types} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(policy_ids) do
        [{"policyIds", policy_ids} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(default_policy_type) do
        [{"defaultPolicyType", default_policy_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets detailed information about the specified lifecycle policy.
  """
  @spec get_lifecycle_policy(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_lifecycle_policy_errors()}
  def get_lifecycle_policy(%Client{} = client, policy_id, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for the specified resource.
  """
  @spec list_tags_for_resource(map(), String.t() | Atom.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
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
  Adds the specified tags to the specified resource.
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
  Removes the specified tags from the specified resource.
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
        {"TagKeys", "tagKeys"}
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
  Updates the specified lifecycle policy.

  For more information about updating a policy, see [Modify lifecycle policies](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/view-modify-delete.html#modify).
  """
  @spec update_lifecycle_policy(
          map(),
          String.t() | Atom.t(),
          update_lifecycle_policy_request(),
          list()
        ) ::
          {:ok, update_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_lifecycle_policy_errors()}
  def update_lifecycle_policy(%Client{} = client, policy_id, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_id)}"
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
