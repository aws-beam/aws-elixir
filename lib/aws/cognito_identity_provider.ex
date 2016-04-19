# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Cognito.IdentityProvider do
  @moduledoc """
  You can create a user pool in Amazon Cognito Identity to manage directories
  and users. You can authenticate a user to obtain tokens related to user
  identity and access policies.

  This API reference provides information about user pools in Amazon Cognito
  Identity, which is a new capability that is available as a beta.
  """

  @doc """
  Adds additional user attributes to the user pool schema.
  """
  def add_custom_attributes(client, input, options \\ []) do
    request(client, "AddCustomAttributes", input, options)
  end

  @doc """
  Confirms user registration as an admin without using a confirmation code.
  Works on any user.
  """
  def admin_confirm_sign_up(client, input, options \\ []) do
    request(client, "AdminConfirmSignUp", input, options)
  end

  @doc """
  Deletes a user as an administrator. Works on any user.
  """
  def admin_delete_user(client, input, options \\ []) do
    request(client, "AdminDeleteUser", input, options)
  end

  @doc """
  Deletes the user attributes in a user pool as an administrator. Works on
  any user.
  """
  def admin_delete_user_attributes(client, input, options \\ []) do
    request(client, "AdminDeleteUserAttributes", input, options)
  end

  @doc """
  Disables the specified user as an administrator. Works on any user.
  """
  def admin_disable_user(client, input, options \\ []) do
    request(client, "AdminDisableUser", input, options)
  end

  @doc """
  Enables the specified user as an administrator. Works on any user.
  """
  def admin_enable_user(client, input, options \\ []) do
    request(client, "AdminEnableUser", input, options)
  end

  @doc """
  Gets the specified user by user name in a user pool as an administrator.
  Works on any user.
  """
  def admin_get_user(client, input, options \\ []) do
    request(client, "AdminGetUser", input, options)
  end

  @doc """
  Resets the specified user's password in a user pool as an administrator.
  Works on any user.
  """
  def admin_reset_user_password(client, input, options \\ []) do
    request(client, "AdminResetUserPassword", input, options)
  end

  @doc """
  Sets all the user settings for a specified user name. Works on any user.
  """
  def admin_set_user_settings(client, input, options \\ []) do
    request(client, "AdminSetUserSettings", input, options)
  end

  @doc """
  Updates the specified user's attributes, including developer attributes, as
  an administrator. Works on any user.
  """
  def admin_update_user_attributes(client, input, options \\ []) do
    request(client, "AdminUpdateUserAttributes", input, options)
  end

  @doc """
  Changes the password for a specified user in a user pool.
  """
  def change_password(client, input, options \\ []) do
    request(client, "ChangePassword", input, options)
  end

  @doc """
  Allows a user to enter a code provided when they reset their password to
  update their password.
  """
  def confirm_forgot_password(client, input, options \\ []) do
    request(client, "ConfirmForgotPassword", input, options)
  end

  @doc """
  Confirms registration of a user and handles the existing alias from a
  previous user.
  """
  def confirm_sign_up(client, input, options \\ []) do
    request(client, "ConfirmSignUp", input, options)
  end

  @doc """
  Creates a new Amazon Cognito user pool and sets the password policy for the
  pool.
  """
  def create_user_pool(client, input, options \\ []) do
    request(client, "CreateUserPool", input, options)
  end

  @doc """
  Creates the user pool client.
  """
  def create_user_pool_client(client, input, options \\ []) do
    request(client, "CreateUserPoolClient", input, options)
  end

  @doc """
  Allows a user to delete one's self.
  """
  def delete_user(client, input, options \\ []) do
    request(client, "DeleteUser", input, options)
  end

  @doc """
  Deletes the attributes for a user.
  """
  def delete_user_attributes(client, input, options \\ []) do
    request(client, "DeleteUserAttributes", input, options)
  end

  @doc """
  Deletes the specified Amazon Cognito user pool.
  """
  def delete_user_pool(client, input, options \\ []) do
    request(client, "DeleteUserPool", input, options)
  end

  @doc """
  Allows the developer to delete the user pool client.
  """
  def delete_user_pool_client(client, input, options \\ []) do
    request(client, "DeleteUserPoolClient", input, options)
  end

  @doc """
  Returns the configuration information and metadata of the specified user
  pool.
  """
  def describe_user_pool(client, input, options \\ []) do
    request(client, "DescribeUserPool", input, options)
  end

  @doc """
  Client method for returning the configuration information and metadata of
  the specified user pool client.
  """
  def describe_user_pool_client(client, input, options \\ []) do
    request(client, "DescribeUserPoolClient", input, options)
  end

  @doc """
  Retrieves the password for the specified client ID or username.
  """
  def forgot_password(client, input, options \\ []) do
    request(client, "ForgotPassword", input, options)
  end

  @doc """
  Gets the JSON Web keys for the specified user pool.
  """
  def get_j_w_k_s(client, input, options \\ []) do
    request(client, "GetJWKS", input, options)
  end

  @doc """
  Gets the OpenId configuration information for the specified user pool.
  """
  def get_open_id_configuration(client, input, options \\ []) do
    request(client, "GetOpenIdConfiguration", input, options)
  end

  @doc """
  Gets the user attributes and metadata for a user.
  """
  def get_user(client, input, options \\ []) do
    request(client, "GetUser", input, options)
  end

  @doc """
  Gets the user attribute verification code for the specified attribute name.
  """
  def get_user_attribute_verification_code(client, input, options \\ []) do
    request(client, "GetUserAttributeVerificationCode", input, options)
  end

  @doc """
  Lists the clients that have been created for the specified user pool.
  """
  def list_user_pool_clients(client, input, options \\ []) do
    request(client, "ListUserPoolClients", input, options)
  end

  @doc """
  Lists the user pools associated with an AWS account.
  """
  def list_user_pools(client, input, options \\ []) do
    request(client, "ListUserPools", input, options)
  end

  @doc """
  Lists the users in the Amazon Cognito user pool.
  """
  def list_users(client, input, options \\ []) do
    request(client, "ListUsers", input, options)
  end

  @doc """
  Resends the confirmation (for confirmation of registration) to a specific
  user in the user pool.
  """
  def resend_confirmation_code(client, input, options \\ []) do
    request(client, "ResendConfirmationCode", input, options)
  end

  @doc """
  Sets the user settings like multi-factor authentication (MFA). If MFA is to
  be removed for a particular attribute pass the attribute with code delivery
  as null. If null list is passed, all MFA options are removed.
  """
  def set_user_settings(client, input, options \\ []) do
    request(client, "SetUserSettings", input, options)
  end

  @doc """
  Registers the user in the specified user pool and creates a user name,
  password, and user attributes.
  """
  def sign_up(client, input, options \\ []) do
    request(client, "SignUp", input, options)
  end

  @doc """
  Allows a user to update a specific attribute (one at a time).
  """
  def update_user_attributes(client, input, options \\ []) do
    request(client, "UpdateUserAttributes", input, options)
  end

  @doc """
  Updates the specified user pool with the specified attributes.
  """
  def update_user_pool(client, input, options \\ []) do
    request(client, "UpdateUserPool", input, options)
  end

  @doc """
  Allows the developer to update the specified user pool client and password
  policy.
  """
  def update_user_pool_client(client, input, options \\ []) do
    request(client, "UpdateUserPoolClient", input, options)
  end

  @doc """
  Verifies the specified user attributes in the user pool.
  """
  def verify_user_attribute(client, input, options \\ []) do
    request(client, "VerifyUserAttribute", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "cognito-idp"}
    host = get_host("cognito-idp", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "AWSCognitoIdentityProviderService.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
