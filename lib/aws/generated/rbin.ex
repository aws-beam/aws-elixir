# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Rbin do
  @moduledoc """
  This is the *Recycle Bin API Reference*.

  This documentation provides descriptions and syntax for each of the actions and
  data types in Recycle Bin.

  Recycle Bin is a snapshot recovery feature that enables you to restore
  accidentally deleted snapshots. When using Recycle Bin, if your snapshots are
  deleted, they are retained in the Recycle Bin for a time period that you
  specify.

  You can restore a snapshot from the Recycle Bin at any time before its retention
  period expires. After you restore a snapshot from the Recycle Bin, the snapshot
  is removed from the Recycle Bin, and you can then use it in the same way you use
  any other snapshot in your account. If the retention period expires and the
  snapshot is not restored, the snapshot is permanently deleted from the Recycle
  Bin and is no longer available for recovery. For more information about Recycle
  Bin, see [ Recycle Bin](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-recycle-bin.html)
  in the *Amazon EC2 User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
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
  in the *Amazon EC2 User Guide*.
  """
  def create_rule(%Client{} = client, input, options \\ []) do
    url_path = "/rules"
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
  Deletes a Recycle Bin retention rule.

  For more information, see [ Delete Recycle Bin retention rules](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-delete-rule)
  in the *Amazon EC2 User Guide*.
  """
  def delete_rule(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(identifier)}"
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
  Gets information about a Recycle Bin retention rule.
  """
  def get_rule(%Client{} = client, identifier, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(identifier)}"
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
  Lists the Recycle Bin retention rules in the Region.
  """
  def list_rules(%Client{} = client, input, options \\ []) do
    url_path = "/list-rules"
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
  Lists the tags assigned a specific resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Assigns tags to the specified resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Unassigns a tag from a resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

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
  Updates an existing Recycle Bin retention rule.

  For more information, see [ Update Recycle Bin retention rules](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-update-rule)
  in the *Amazon EC2 User Guide*.
  """
  def update_rule(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(identifier)}"
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
