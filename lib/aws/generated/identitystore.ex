# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Identitystore do
  @moduledoc """
  The Identity Store service used by AWS IAM Identity Center (successor to AWS
  Single Sign-On) provides a single place to retrieve all of your identities
  (users and groups).

  For more information, see the [IAM Identity Center User Guide](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html).

  Although AWS Single Sign-On was renamed, the `sso` and `identitystore` API
  namespaces will continue to retain their original name for backward
  compatibility purposes. For more information, see [IAM Identity Center rename](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html#renamed).

  This reference guide describes the identity store operations that you can call
  programatically and includes detailed information on data types and errors.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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
