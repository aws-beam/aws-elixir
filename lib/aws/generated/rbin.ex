# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Rbin do
  @moduledoc """
  This is the *Recycle Bin API Reference*.

  This documentation provides
  descriptions and syntax for each of the actions and data types in Recycle Bin.

  Recycle Bin is a resource recovery feature that enables you to restore
  accidentally
  deleted snapshots and EBS-backed AMIs. When using Recycle Bin, if your resources
  are
  deleted, they are retained in the Recycle Bin for a time period that you
  specify.

  You can restore a resource from the Recycle Bin at any time before its retention
  period
  expires. After you restore a resource from the Recycle Bin, the resource is
  removed from the
  Recycle Bin, and you can then use it in the same way you use any other resource
  of that type
  in your account. If the retention period expires and the resource is not
  restored, the resource
  is permanently deleted from the Recycle Bin and is no longer available for
  recovery. For more
  information about Recycle Bin, see [
  Recycle
  Bin](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin.html) in
  the *Amazon Elastic Compute Cloud User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_rule_request() :: %{
        optional("Description") => String.t(),
        optional("LockConfiguration") => lock_configuration(),
        optional("ResourceTags") => list(resource_tag()()),
        optional("Tags") => list(tag()()),
        required("ResourceType") => list(any()),
        required("RetentionPeriod") => retention_period()
      }

  """
  @type create_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_rule_response() :: %{
        "Description" => String.t(),
        "Identifier" => String.t(),
        "LockConfiguration" => lock_configuration(),
        "LockState" => list(any()),
        "ResourceTags" => list(resource_tag()()),
        "ResourceType" => list(any()),
        "RetentionPeriod" => retention_period(),
        "RuleArn" => String.t(),
        "Status" => list(any()),
        "Tags" => list(tag()())
      }

  """
  @type create_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_rule_request() :: %{}

  """
  @type delete_rule_request() :: %{}

  @typedoc """

  ## Example:

      delete_rule_response() :: %{}

  """
  @type delete_rule_response() :: %{}

  @typedoc """

  ## Example:

      get_rule_request() :: %{}

  """
  @type get_rule_request() :: %{}

  @typedoc """

  ## Example:

      get_rule_response() :: %{
        "Description" => String.t(),
        "Identifier" => String.t(),
        "LockConfiguration" => lock_configuration(),
        "LockEndTime" => non_neg_integer(),
        "LockState" => list(any()),
        "ResourceTags" => list(resource_tag()()),
        "ResourceType" => list(any()),
        "RetentionPeriod" => retention_period(),
        "RuleArn" => String.t(),
        "Status" => list(any())
      }

  """
  @type get_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rules_request() :: %{
        optional("LockState") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceTags") => list(resource_tag()()),
        required("ResourceType") => list(any())
      }

  """
  @type list_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rules_response() :: %{
        "NextToken" => String.t(),
        "Rules" => list(rule_summary()())
      }

  """
  @type list_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lock_configuration() :: %{
        "UnlockDelay" => unlock_delay()
      }

  """
  @type lock_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lock_rule_request() :: %{
        required("LockConfiguration") => lock_configuration()
      }

  """
  @type lock_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lock_rule_response() :: %{
        "Description" => String.t(),
        "Identifier" => String.t(),
        "LockConfiguration" => lock_configuration(),
        "LockState" => list(any()),
        "ResourceTags" => list(resource_tag()()),
        "ResourceType" => list(any()),
        "RetentionPeriod" => retention_period(),
        "RuleArn" => String.t(),
        "Status" => list(any())
      }

  """
  @type lock_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_tag() :: %{
        "ResourceTagKey" => String.t(),
        "ResourceTagValue" => String.t()
      }

  """
  @type resource_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retention_period() :: %{
        "RetentionPeriodUnit" => list(any()),
        "RetentionPeriodValue" => integer()
      }

  """
  @type retention_period() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rule_summary() :: %{
        "Description" => String.t(),
        "Identifier" => String.t(),
        "LockState" => list(any()),
        "RetentionPeriod" => retention_period(),
        "RuleArn" => String.t()
      }

  """
  @type rule_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

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

      tag_resource_request() :: %{
        required("Tags") => list(tag()())
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      unlock_delay() :: %{
        "UnlockDelayUnit" => list(any()),
        "UnlockDelayValue" => integer()
      }

  """
  @type unlock_delay() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unlock_rule_request() :: %{}

  """
  @type unlock_rule_request() :: %{}

  @typedoc """

  ## Example:

      unlock_rule_response() :: %{
        "Description" => String.t(),
        "Identifier" => String.t(),
        "LockConfiguration" => lock_configuration(),
        "LockEndTime" => non_neg_integer(),
        "LockState" => list(any()),
        "ResourceTags" => list(resource_tag()()),
        "ResourceType" => list(any()),
        "RetentionPeriod" => retention_period(),
        "RuleArn" => String.t(),
        "Status" => list(any())
      }

  """
  @type unlock_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_rule_request() :: %{
        optional("Description") => String.t(),
        optional("ResourceTags") => list(resource_tag()()),
        optional("ResourceType") => list(any()),
        optional("RetentionPeriod") => retention_period()
      }

  """
  @type update_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_rule_response() :: %{
        "Description" => String.t(),
        "Identifier" => String.t(),
        "LockEndTime" => non_neg_integer(),
        "LockState" => list(any()),
        "ResourceTags" => list(resource_tag()()),
        "ResourceType" => list(any()),
        "RetentionPeriod" => retention_period(),
        "RuleArn" => String.t(),
        "Status" => list(any())
      }

  """
  @type update_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t(),
        "Reason" => list(any())
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @type create_rule_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()

  @type delete_rule_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()

  @type get_rule_errors() ::
          validation_exception() | resource_not_found_exception() | internal_server_exception()

  @type list_rules_errors() :: validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_server_exception()

  @type lock_rule_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type unlock_rule_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_server_exception()

  @type update_rule_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2021-06-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "rbin",
      global?: false,
      protocol: "rest-json",
      service_id: "rbin",
      signature_version: "v4",
      signing_name: "rbin",
      target_prefix: nil
    }
  end

  @doc """
  Creates a Recycle Bin retention rule.

  For more information, see [
  Create Recycle Bin retention
  rules](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-create-rule)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  @spec create_rule(map(), create_rule_request(), list()) ::
          {:ok, create_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_rule_errors()}
  def create_rule(%Client{} = client, input, options \\ []) do
    url_path = "/rules"
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
  Deletes a Recycle Bin retention rule.

  For more information, see [
  Delete Recycle Bin retention
  rules](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-delete-rule)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  @spec delete_rule(map(), String.t(), delete_rule_request(), list()) ::
          {:ok, delete_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_rule_errors()}
  def delete_rule(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(identifier)}"
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
  Gets information about a Recycle Bin retention rule.
  """
  @spec get_rule(map(), String.t(), list()) ::
          {:ok, get_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_rule_errors()}
  def get_rule(%Client{} = client, identifier, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Recycle Bin retention rules in the Region.
  """
  @spec list_rules(map(), list_rules_request(), list()) ::
          {:ok, list_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_rules_errors()}
  def list_rules(%Client{} = client, input, options \\ []) do
    url_path = "/list-rules"
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
  Lists the tags assigned to a retention rule.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Locks a retention rule.

  A locked retention rule can't be modified or deleted.
  """
  @spec lock_rule(map(), String.t(), lock_rule_request(), list()) ::
          {:ok, lock_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, lock_rule_errors()}
  def lock_rule(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(identifier)}/lock"
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

  @doc """
  Assigns tags to the specified retention rule.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Unlocks a retention rule.

  After a retention rule is unlocked, it can be modified or deleted
  only after the unlock delay period expires.
  """
  @spec unlock_rule(map(), String.t(), unlock_rule_request(), list()) ::
          {:ok, unlock_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, unlock_rule_errors()}
  def unlock_rule(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(identifier)}/unlock"
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

  @doc """
  Unassigns a tag from a retention rule.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates an existing Recycle Bin retention rule.

  You can update a retention rule's description,
  resource tags, and retention period at any time after creation. You can't update
  a retention rule's
  resource type after creation. For more information, see [
  Update Recycle Bin retention
  rules](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-update-rule)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  @spec update_rule(map(), String.t(), update_rule_request(), list()) ::
          {:ok, update_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_rule_errors()}
  def update_rule(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(identifier)}"
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
