# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Repostspace do
  @moduledoc """
  AWS re:Post Private is a private version of AWS re:Post for enterprises with
  Enterprise Support or Enterprise On-Ramp Support plans.

  It provides access to knowledge and experts to accelerate cloud adoption and
  increase developer productivity. With your organization-specific private
  re:Post, you can build an organization-specific developer community that drives
  efficiencies at scale and provides access to valuable knowledge resources.
  Additionally, re:Post Private centralizes trusted AWS technical content and
  offers private discussion forums to improve how your teams collaborate
  internally and with AWS to remove technical obstacles, accelerate innovation,
  and scale more efficiently in the cloud.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2022-05-13",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "repostspace",
      global?: false,
      protocol: "rest-json",
      service_id: "repostspace",
      signature_version: "v4",
      signing_name: "repostspace",
      target_prefix: nil
    }
  end

  @doc """
  Creates an AWS re:Post Private private re:Post.
  """
  def create_space(%Client{} = client, input, options \\ []) do
    url_path = "/spaces"
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
  Deletes an AWS re:Post Private private re:Post.
  """
  def delete_space(%Client{} = client, space_id, input, options \\ []) do
    url_path = "/spaces/#{AWS.Util.encode_uri(space_id)}"
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
      200
    )
  end

  @doc """
  Removes the user or group from the list of administrators of the private
  re:Post.
  """
  def deregister_admin(%Client{} = client, admin_id, space_id, input, options \\ []) do
    url_path = "/spaces/#{AWS.Util.encode_uri(space_id)}/admins/#{AWS.Util.encode_uri(admin_id)}"
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
      200
    )
  end

  @doc """
  Displays information about the AWS re:Post Private private re:Post.
  """
  def get_space(%Client{} = client, space_id, options \\ []) do
    url_path = "/spaces/#{AWS.Util.encode_uri(space_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of AWS re:Post Private private re:Posts in the account with some
  information about each private re:Post.
  """
  def list_spaces(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/spaces"
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
  Returns the tags that are associated with the AWS re:Post Private resource
  specified by the resourceArn.

  The only resource that can be tagged is a private re:Post.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds a user or group to the list of administrators of the private re:Post.
  """
  def register_admin(%Client{} = client, admin_id, space_id, input, options \\ []) do
    url_path = "/spaces/#{AWS.Util.encode_uri(space_id)}/admins/#{AWS.Util.encode_uri(admin_id)}"
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
  Sends an invitation email to selected users and groups.
  """
  def send_invites(%Client{} = client, space_id, input, options \\ []) do
    url_path = "/spaces/#{AWS.Util.encode_uri(space_id)}/invite"
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
  Associates tags with an AWS re:Post Private resource.

  Currently, the only resource that can be tagged is the private re:Post. If you
  specify a new tag key for the resource, the tag is appended to the list of tags
  that are associated with the resource. If you specify a tag key that’s already
  associated with the resource, the new tag value that you specify replaces the
  previous value for that tag.
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
      200
    )
  end

  @doc """
  Removes the association of the tag with the AWS re:Post Private resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Modifies an existing AWS re:Post Private private re:Post.
  """
  def update_space(%Client{} = client, space_id, input, options \\ []) do
    url_path = "/spaces/#{AWS.Util.encode_uri(space_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
