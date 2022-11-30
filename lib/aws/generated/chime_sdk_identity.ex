# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ChimeSDKIdentity do
  @moduledoc """
  The Amazon Chime SDK Identity APIs in this section allow software developers to
  create and manage unique instances of their messaging applications.

  These APIs provide the overarching framework for creating and sending messages.
  For more information about the identity APIs, refer to [Amazon Chime SDK identity](https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Identity.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2021-04-20",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "identity-chime",
      global?: false,
      protocol: "rest-json",
      service_id: "Chime SDK Identity",
      signature_version: "v4",
      signing_name: "chime",
      target_prefix: nil
    }
  end

  @doc """
  Creates an Amazon Chime SDK messaging `AppInstance` under an AWS account.

  Only SDK messaging customers use this API. `CreateAppInstance` supports
  idempotency behavior as described in the AWS API Standard.

  identity
  """
  def create_app_instance(%Client{} = client, input, options \\ []) do
    url_path = "/app-instances"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateAppInstance",
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
  Promotes an `AppInstanceUser` to an `AppInstanceAdmin`.

  The promoted user can perform the following actions.

    * `ChannelModerator` actions across all channels in the
  `AppInstance`.

    * `DeleteChannelMessage` actions.

  Only an `AppInstanceUser` can be promoted to an `AppInstanceAdmin` role.
  """
  def create_app_instance_admin(%Client{} = client, app_instance_arn, input, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateAppInstanceAdmin",
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
  Creates a user under an Amazon Chime `AppInstance`.

  The request consists of a unique `appInstanceUserId` and `Name` for that user.
  """
  def create_app_instance_user(%Client{} = client, input, options \\ []) do
    url_path = "/app-instance-users"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateAppInstanceUser",
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
  Deletes an `AppInstance` and all associated data asynchronously.
  """
  def delete_app_instance(%Client{} = client, app_instance_arn, input, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteAppInstance",
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
  Demotes an `AppInstanceAdmin` to an `AppInstanceUser`.

  This action does not delete the user.
  """
  def delete_app_instance_admin(
        %Client{} = client,
        app_instance_admin_arn,
        app_instance_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins/#{AWS.Util.encode_uri(app_instance_admin_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteAppInstanceAdmin",
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
  Deletes an `AppInstanceUser`.
  """
  def delete_app_instance_user(%Client{} = client, app_instance_user_arn, input, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteAppInstanceUser",
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
  Deregisters an `AppInstanceUserEndpoint`.
  """
  def deregister_app_instance_user_endpoint(
        %Client{} = client,
        app_instance_user_arn,
        endpoint_id,
        input,
        options \\ []
      ) do
    url_path =
      "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeregisterAppInstanceUserEndpoint",
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
  Returns the full details of an `AppInstance`.
  """
  def describe_app_instance(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeAppInstance",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns the full details of an `AppInstanceAdmin`.
  """
  def describe_app_instance_admin(
        %Client{} = client,
        app_instance_admin_arn,
        app_instance_arn,
        options \\ []
      ) do
    url_path =
      "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins/#{AWS.Util.encode_uri(app_instance_admin_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeAppInstanceAdmin",
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
  Returns the full details of an `AppInstanceUser`.
  """
  def describe_app_instance_user(%Client{} = client, app_instance_user_arn, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeAppInstanceUser",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns the full details of an `AppInstanceUserEndpoint`.
  """
  def describe_app_instance_user_endpoint(
        %Client{} = client,
        app_instance_user_arn,
        endpoint_id,
        options \\ []
      ) do
    url_path =
      "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeAppInstanceUserEndpoint",
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
  Gets the retention settings for an `AppInstance`.
  """
  def get_app_instance_retention_settings(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/retention-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetAppInstanceRetentionSettings",
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
  Returns a list of the administrators in the `AppInstance`.
  """
  def list_app_instance_admins(
        %Client{} = client,
        app_instance_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListAppInstanceAdmins",
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
  Lists all the `AppInstanceUserEndpoints` created under a single
  `AppInstanceUser`.
  """
  def list_app_instance_user_endpoints(
        %Client{} = client,
        app_instance_user_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListAppInstanceUserEndpoints",
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
  List all `AppInstanceUsers` created under a single `AppInstance`.
  """
  def list_app_instance_users(
        %Client{} = client,
        app_instance_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/app-instance-users"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(app_instance_arn) do
        [{"app-instance-arn", app_instance_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListAppInstanceUsers",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists all Amazon Chime `AppInstance`s created under a single AWS account.
  """
  def list_app_instances(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/app-instances"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListAppInstances",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the tags applied to an Amazon Chime SDK identity resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"arn", resource_arn} | query_params]
      else
        query_params
      end

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
  Sets the amount of time in days that a given `AppInstance` retains data.
  """
  def put_app_instance_retention_settings(
        %Client{} = client,
        app_instance_arn,
        input,
        options \\ []
      ) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/retention-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "PutAppInstanceRetentionSettings",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Registers an endpoint under an Amazon Chime `AppInstanceUser`.

  The endpoint receives messages for a user. For push notifications, the endpoint
  is a mobile device used to receive mobile push notifications for a user.
  """
  def register_app_instance_user_endpoint(
        %Client{} = client,
        app_instance_user_arn,
        input,
        options \\ []
      ) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "RegisterAppInstanceUserEndpoint",
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
  Applies the specified tags to the specified Amazon Chime SDK identity resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=tag-resource"
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
      204
    )
  end

  @doc """
  Removes the specified tags from the specified Amazon Chime SDK identity
  resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=untag-resource"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UntagResource",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates `AppInstance` metadata.
  """
  def update_app_instance(%Client{} = client, app_instance_arn, input, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateAppInstance",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the details of an `AppInstanceUser`.

  You can update names and metadata.
  """
  def update_app_instance_user(%Client{} = client, app_instance_user_arn, input, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateAppInstanceUser",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the details of an `AppInstanceUserEndpoint`.

  You can update the name and `AllowMessage` values.
  """
  def update_app_instance_user_endpoint(
        %Client{} = client,
        app_instance_user_arn,
        endpoint_id,
        input,
        options \\ []
      ) do
    url_path =
      "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateAppInstanceUserEndpoint",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
