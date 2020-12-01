# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Identitystore do
  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "IdentityStore",
      api_version: "2020-06-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "identitystore",
      global?: false,
      protocol: "json",
      service_id: "identitystore",
      signature_version: "v4",
      signing_name: "identitystore",
      target_prefix: "AWSIdentityStore"
    }
  end

  @doc """
  Retrieves the group metadata and attributes from `GroupId` in an identity store.
  """
  def describe_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeGroup", input, options)
  end

  @doc """
  Retrieves the user metadata and attributes from `UserId` in an identity store.
  """
  def describe_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeUser", input, options)
  end

  @doc """
  Lists the attribute name and value of the group that you specified in the
  search.

  We only support `DisplayName` as a valid filter attribute path currently, and
  filter is required. This API returns minimum attributes, including `GroupId` and
  group `DisplayName` in the response.
  """
  def list_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListGroups", input, options)
  end

  @doc """
  Lists the attribute name and value of the user that you specified in the search.

  We only support `UserName` as a valid filter attribute path currently, and
  filter is required. This API returns minimum attributes, including `UserId` and
  `UserName` in the response.
  """
  def list_users(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListUsers", input, options)
  end
end