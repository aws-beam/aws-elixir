# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSOAdmin do
  @moduledoc """

  """

  @doc """
  Attaches an IAM managed policy ARN to a permission set.

  <note> If the permission set is already referenced by one or more account
  assignments, you will need to call ` `ProvisionPermissionSet` ` after this
  action to apply the corresponding IAM policy updates to all assigned
  accounts.

  </note>
  """
  def attach_managed_policy_to_permission_set(client, input, options \\ []) do
    request(client, "AttachManagedPolicyToPermissionSet", input, options)
  end

  @doc """
  Assigns access to a principal for a specified AWS account using a specified
  permission set.

  <note> The term *principal* here refers to a user or group that is defined
  in AWS SSO.

  </note> <note> As part of a successful `CreateAccountAssignment` call, the
  specified permission set will automatically be provisioned to the account
  in the form of an IAM policy attached to the SSO-created IAM role. If the
  permission set is subsequently updated, the corresponding IAM policies
  attached to roles in your accounts will not be updated automatically. In
  this case, you will need to call ` `ProvisionPermissionSet` ` to make these
  updates.

  </note>
  """
  def create_account_assignment(client, input, options \\ []) do
    request(client, "CreateAccountAssignment", input, options)
  end

  @doc """
  Creates a permission set within a specified SSO instance.

  <note> To grant users and groups access to AWS account resources, use `
  `CreateAccountAssignment` `.

  </note>
  """
  def create_permission_set(client, input, options \\ []) do
    request(client, "CreatePermissionSet", input, options)
  end

  @doc """
  Deletes a principal's access from a specified AWS account using a specified
  permission set.
  """
  def delete_account_assignment(client, input, options \\ []) do
    request(client, "DeleteAccountAssignment", input, options)
  end

  @doc """
  Deletes the inline policy from a specified permission set.
  """
  def delete_inline_policy_from_permission_set(client, input, options \\ []) do
    request(client, "DeleteInlinePolicyFromPermissionSet", input, options)
  end

  @doc """
  Deletes the specified permission set.
  """
  def delete_permission_set(client, input, options \\ []) do
    request(client, "DeletePermissionSet", input, options)
  end

  @doc """
  Describes the status of the assignment creation request.
  """
  def describe_account_assignment_creation_status(client, input, options \\ []) do
    request(client, "DescribeAccountAssignmentCreationStatus", input, options)
  end

  @doc """
  Describes the status of the assignment deletion request.
  """
  def describe_account_assignment_deletion_status(client, input, options \\ []) do
    request(client, "DescribeAccountAssignmentDeletionStatus", input, options)
  end

  @doc """
  Gets the details of the permission set.
  """
  def describe_permission_set(client, input, options \\ []) do
    request(client, "DescribePermissionSet", input, options)
  end

  @doc """
  Describes the status for the given permission set provisioning request.
  """
  def describe_permission_set_provisioning_status(client, input, options \\ []) do
    request(client, "DescribePermissionSetProvisioningStatus", input, options)
  end

  @doc """
  Detaches the attached IAM managed policy ARN from the specified permission
  set.
  """
  def detach_managed_policy_from_permission_set(client, input, options \\ []) do
    request(client, "DetachManagedPolicyFromPermissionSet", input, options)
  end

  @doc """
  Obtains the inline policy assigned to the permission set.
  """
  def get_inline_policy_for_permission_set(client, input, options \\ []) do
    request(client, "GetInlinePolicyForPermissionSet", input, options)
  end

  @doc """
  Lists the status of the AWS account assignment creation requests for a
  specified SSO instance.
  """
  def list_account_assignment_creation_status(client, input, options \\ []) do
    request(client, "ListAccountAssignmentCreationStatus", input, options)
  end

  @doc """
  Lists the status of the AWS account assignment deletion requests for a
  specified SSO instance.
  """
  def list_account_assignment_deletion_status(client, input, options \\ []) do
    request(client, "ListAccountAssignmentDeletionStatus", input, options)
  end

  @doc """
  Lists the assignee of the specified AWS account with the specified
  permission set.
  """
  def list_account_assignments(client, input, options \\ []) do
    request(client, "ListAccountAssignments", input, options)
  end

  @doc """
  Lists all the AWS accounts where the specified permission set is
  provisioned.
  """
  def list_accounts_for_provisioned_permission_set(client, input, options \\ []) do
    request(client, "ListAccountsForProvisionedPermissionSet", input, options)
  end

  @doc """
  Lists the SSO instances that the caller has access to.
  """
  def list_instances(client, input, options \\ []) do
    request(client, "ListInstances", input, options)
  end

  @doc """
  Lists the IAM managed policy that is attached to a specified permission
  set.
  """
  def list_managed_policies_in_permission_set(client, input, options \\ []) do
    request(client, "ListManagedPoliciesInPermissionSet", input, options)
  end

  @doc """
  Lists the status of the permission set provisioning requests for a
  specified SSO instance.
  """
  def list_permission_set_provisioning_status(client, input, options \\ []) do
    request(client, "ListPermissionSetProvisioningStatus", input, options)
  end

  @doc """
  Lists the `PermissionSet`s in an SSO instance.
  """
  def list_permission_sets(client, input, options \\ []) do
    request(client, "ListPermissionSets", input, options)
  end

  @doc """
  Lists all the permission sets that are provisioned to a specified AWS
  account.
  """
  def list_permission_sets_provisioned_to_account(client, input, options \\ []) do
    request(client, "ListPermissionSetsProvisionedToAccount", input, options)
  end

  @doc """
  Lists the tags that are attached to a specified resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  The process by which a specified permission set is provisioned to the
  specified target.
  """
  def provision_permission_set(client, input, options \\ []) do
    request(client, "ProvisionPermissionSet", input, options)
  end

  @doc """
  Attaches an IAM inline policy to a permission set.

  <note> If the permission set is already referenced by one or more account
  assignments, you will need to call ` `ProvisionPermissionSet` ` after this
  action to apply the corresponding IAM policy updates to all assigned
  accounts.

  </note>
  """
  def put_inline_policy_to_permission_set(client, input, options \\ []) do
    request(client, "PutInlinePolicyToPermissionSet", input, options)
  end

  @doc """
  Associates a set of tags with a specified resource.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Disassociates a set of tags from a specified resource.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates an existing permission set.
  """
  def update_permission_set(client, input, options \\ []) do
    request(client, "UpdatePermissionSet", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "sso"}
    host = build_host("sso", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "SWBExternalService.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
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

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
