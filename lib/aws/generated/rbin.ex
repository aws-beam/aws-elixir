# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Rbin do
  @moduledoc """
  This is the *Recycle Bin API Reference*.

  This documentation provides descriptions and syntax for each of the actions and
  data types in Recycle Bin.

  Recycle Bin is a resource recovery feature that enables you to restore
  accidentally deleted snapshots and EBS-backed AMIs. When using Recycle Bin, if
  your resources are deleted, they are retained in the Recycle Bin for a time
  period that you specify.

  You can restore a resource from the Recycle Bin at any time before its retention
  period expires. After you restore a resource from the Recycle Bin, the resource
  is removed from the Recycle Bin, and you can then use it in the same way you use
  any other resource of that type in your account. If the retention period expires
  and the resource is not restored, the resource is permanently deleted from the
  Recycle Bin and is no longer available for recovery. For more information about
  Recycle Bin, see [ Recycle Bin](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-recycle-bin.html)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
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

  For more information, see [ Create Recycle Bin retention rules](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-create-rule)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def create_rule(%Client{} = client, input, options \\ []) do
    url_path = "/rules"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateRule",
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

  For more information, see [ Delete Recycle Bin retention rules](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-delete-rule)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def delete_rule(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteRule",
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
  def get_rule(%Client{} = client, identifier, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetRule",
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
  Lists the Recycle Bin retention rules in the Region.
  """
  def list_rules(%Client{} = client, input, options \\ []) do
    url_path = "/list-rules"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListRules",
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
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListTagsForResource",
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
  Locks a retention rule.

  A locked retention rule can't be modified or deleted.
  """
  def lock_rule(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(identifier)}/lock"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "LockRule",
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
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "TagResource",
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

  After a retention rule is unlocked, it can be modified or deleted only after the
  unlock delay period expires.
  """
  def unlock_rule(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(identifier)}/unlock"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UnlockRule",
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
      "UntagResource",
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

  You can update a retention rule's description, resource tags, and retention
  period at any time after creation. You can't update a retention rule's resource
  type after creation. For more information, see [ Update Recycle Bin retention rules](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-update-rule)
  in the *Amazon Elastic Compute Cloud User Guide*.
  """
  def update_rule(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateRule",
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
