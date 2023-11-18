# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DLM do
  @moduledoc """
  Amazon Data Lifecycle Manager

  With Amazon Data Lifecycle Manager, you can manage the lifecycle of your Amazon
  Web Services resources.

  You create lifecycle policies, which are used to automate operations on the
  specified resources.

  Amazon Data Lifecycle Manager supports Amazon EBS volumes and snapshots. For
  information about using Amazon Data Lifecycle Manager with Amazon EBS, see [
  Amazon Data Lifecycle
  Manager](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-lifecycle.html)
  in the *Amazon EC2 User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-01-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "dlm",
      global?: false,
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

    * Custom EBS snapshot policy

    * Custom EBS-backed AMI policy

    * Cross-account copy event policy

    * Default policy for EBS snapshots

    * Default policy for EBS-backed AMIs

  For more information, see [ Default policies vs custom policies](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/policy-differences.html).

  If you create a default policy, you can specify the request parameters either in
  the request body, or in the PolicyDetails request structure, but not both.
  """
  def create_lifecycle_policy(%Client{} = client, input, options \\ []) do
    url_path = "/policies"
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
      nil
    )
  end

  @doc """
  Deletes the specified lifecycle policy and halts the automated operations that
  the policy specified.

  For more information about deleting a policy, see [Delete lifecycle policies](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/view-modify-delete.html#delete).
  """
  def delete_lifecycle_policy(%Client{} = client, policy_id, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_id)}"
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
      nil
    )
  end

  @doc """
  Gets summary information about all or the specified data lifecycle policies.

  To get complete information about a policy, use
  [GetLifecyclePolicy](https://docs.aws.amazon.com/dlm/latest/APIReference/API_GetLifecyclePolicy.html).
  """
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets detailed information about the specified lifecycle policy.
  """
  def get_lifecycle_policy(%Client{} = client, policy_id, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists the tags for the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Adds the specified tags to the specified resource.
  """
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
      nil
    )
  end

  @doc """
  Removes the specified tags from the specified resource.
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
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the specified lifecycle policy.

  For more information about updating a policy, see [Modify lifecycle policies](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/view-modify-delete.html#modify).
  """
  def update_lifecycle_policy(%Client{} = client, policy_id, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_id)}"
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
      nil
    )
  end
end
