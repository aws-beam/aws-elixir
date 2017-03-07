# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Cognito.IdentityProvider do
  @moduledoc """
  Using the Amazon Cognito Your User Pools API, you can create a user pool to
  manage directories and users. You can authenticate a user to obtain tokens
  related to user identity and access policies.

  This API reference provides information about user pools in Amazon Cognito
  Your User Pools.

  For more information, see the Amazon Cognito Documentation.
  """

  @doc """
  Adds additional user attributes to the user pool schema.
  """
  def add_custom_attributes(client, input, options \\ []) do
    request(client, "AddCustomAttributes", input, options)
  end

  @doc """
  Adds the specified user to the specified group.

  Requires developer credentials.
  """
  def admin_add_user_to_group(client, input, options \\ []) do
    request(client, "AdminAddUserToGroup", input, options)
  end

  @doc """
  Confirms user registration as an admin without using a confirmation code.
  Works on any user.

  Requires developer credentials.
  """
  def admin_confirm_sign_up(client, input, options \\ []) do
    request(client, "AdminConfirmSignUp", input, options)
  end

  @doc """
  Creates a new user in the specified user pool and sends a welcome message
  via email or phone (SMS). This message is based on a template that you
  configured in your call to CreateUserPool or UpdateUserPool. This template
  includes your custom sign-up instructions and placeholders for user name
  and temporary password.

  Requires developer credentials.
  """
  def admin_create_user(client, input, options \\ []) do
    request(client, "AdminCreateUser", input, options)
  end

  @doc """
  Deletes a user as an administrator. Works on any user.

  Requires developer credentials.
  """
  def admin_delete_user(client, input, options \\ []) do
    request(client, "AdminDeleteUser", input, options)
  end

  @doc """
  Deletes the user attributes in a user pool as an administrator. Works on
  any user.

  Requires developer credentials.
  """
  def admin_delete_user_attributes(client, input, options \\ []) do
    request(client, "AdminDeleteUserAttributes", input, options)
  end

  @doc """
  Disables the specified user as an administrator. Works on any user.

  Requires developer credentials.
  """
  def admin_disable_user(client, input, options \\ []) do
    request(client, "AdminDisableUser", input, options)
  end

  @doc """
  Enables the specified user as an administrator. Works on any user.

  Requires developer credentials.
  """
  def admin_enable_user(client, input, options \\ []) do
    request(client, "AdminEnableUser", input, options)
  end

  @doc """
  Forgets the device, as an administrator.

  Requires developer credentials.
  """
  def admin_forget_device(client, input, options \\ []) do
    request(client, "AdminForgetDevice", input, options)
  end

  @doc """
  Gets the device, as an administrator.

  Requires developer credentials.
  """
  def admin_get_device(client, input, options \\ []) do
    request(client, "AdminGetDevice", input, options)
  end

  @doc """
  Gets the specified user by user name in a user pool as an administrator.
  Works on any user.

  Requires developer credentials.
  """
  def admin_get_user(client, input, options \\ []) do
    request(client, "AdminGetUser", input, options)
  end

  @doc """
  Initiates the authentication flow, as an administrator.

  Requires developer credentials.
  """
  def admin_initiate_auth(client, input, options \\ []) do
    request(client, "AdminInitiateAuth", input, options)
  end

  @doc """
  Lists devices, as an administrator.

  Requires developer credentials.
  """
  def admin_list_devices(client, input, options \\ []) do
    request(client, "AdminListDevices", input, options)
  end

  @doc """
  Lists the groups that the user belongs to.

  Requires developer credentials.
  """
  def admin_list_groups_for_user(client, input, options \\ []) do
    request(client, "AdminListGroupsForUser", input, options)
  end

  @doc """
  Removes the specified user from the specified group.

  Requires developer credentials.
  """
  def admin_remove_user_from_group(client, input, options \\ []) do
    request(client, "AdminRemoveUserFromGroup", input, options)
  end

  @doc """
  Resets the specified user's password in a user pool as an administrator.
  Works on any user.

  When a developer calls this API, the current password is invalidated, so it
  must be changed. If a user tries to sign in after the API is called, the
  app will get a PasswordResetRequiredException exception back and should
  direct the user down the flow to reset the password, which is the same as
  the forgot password flow. In addition, if the user pool has phone
  verification selected and a verified phone number exists for the user, or
  if email verification is selected and a verified email exists for the user,
  calling this API will also result in sending a message to the end user with
  the code to change their password.

  Requires developer credentials.
  """
  def admin_reset_user_password(client, input, options \\ []) do
    request(client, "AdminResetUserPassword", input, options)
  end

  @doc """
  Responds to an authentication challenge, as an administrator.

  Requires developer credentials.
  """
  def admin_respond_to_auth_challenge(client, input, options \\ []) do
    request(client, "AdminRespondToAuthChallenge", input, options)
  end

  @doc """
  Sets all the user settings for a specified user name. Works on any user.

  Requires developer credentials.
  """
  def admin_set_user_settings(client, input, options \\ []) do
    request(client, "AdminSetUserSettings", input, options)
  end

  @doc """
  Updates the device status as an administrator.

  Requires developer credentials.
  """
  def admin_update_device_status(client, input, options \\ []) do
    request(client, "AdminUpdateDeviceStatus", input, options)
  end

  @doc """
  Updates the specified user's attributes, including developer attributes, as
  an administrator. Works on any user.

  Requires developer credentials.
  """
  def admin_update_user_attributes(client, input, options \\ []) do
    request(client, "AdminUpdateUserAttributes", input, options)
  end

  @doc """
  Signs out users from all devices, as an administrator.

  Requires developer credentials.
  """
  def admin_user_global_sign_out(client, input, options \\ []) do
    request(client, "AdminUserGlobalSignOut", input, options)
  end

  @doc """
  Changes the password for a specified user in a user pool.
  """
  def change_password(client, input, options \\ []) do
    request(client, "ChangePassword", input, options)
  end

  @doc """
  Confirms tracking of the device. This API call is the call that beings
  device tracking.
  """
  def confirm_device(client, input, options \\ []) do
    request(client, "ConfirmDevice", input, options)
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
  Creates a new group in the specified user pool.

  Requires developer credentials.
  """
  def create_group(client, input, options \\ []) do
    request(client, "CreateGroup", input, options)
  end

  @doc """
  Creates the user import job.
  """
  def create_user_import_job(client, input, options \\ []) do
    request(client, "CreateUserImportJob", input, options)
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
  Deletes a group. Currently only groups with no members can be deleted.

  Requires developer credentials.
  """
  def delete_group(client, input, options \\ []) do
    request(client, "DeleteGroup", input, options)
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
  Describes the user import job.
  """
  def describe_user_import_job(client, input, options \\ []) do
    request(client, "DescribeUserImportJob", input, options)
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
  Forgets the specified device.
  """
  def forget_device(client, input, options \\ []) do
    request(client, "ForgetDevice", input, options)
  end

  @doc """
  Retrieves the password for the specified client ID or username.
  """
  def forgot_password(client, input, options \\ []) do
    request(client, "ForgotPassword", input, options)
  end

  @doc """
  Gets the header information for the .csv file to be used as input for the
  user import job.
  """
  def get_csv_header(client, input, options \\ []) do
    request(client, "GetCSVHeader", input, options)
  end

  @doc """
  Gets the device.
  """
  def get_device(client, input, options \\ []) do
    request(client, "GetDevice", input, options)
  end

  @doc """
  Gets a group.

  Requires developer credentials.
  """
  def get_group(client, input, options \\ []) do
    request(client, "GetGroup", input, options)
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
  Signs out users from all devices.
  """
  def global_sign_out(client, input, options \\ []) do
    request(client, "GlobalSignOut", input, options)
  end

  @doc """
  Initiates the authentication flow.
  """
  def initiate_auth(client, input, options \\ []) do
    request(client, "InitiateAuth", input, options)
  end

  @doc """
  Lists the devices.
  """
  def list_devices(client, input, options \\ []) do
    request(client, "ListDevices", input, options)
  end

  @doc """
  Lists the groups associated with a user pool.

  Requires developer credentials.
  """
  def list_groups(client, input, options \\ []) do
    request(client, "ListGroups", input, options)
  end

  @doc """
  Lists the user import jobs.
  """
  def list_user_import_jobs(client, input, options \\ []) do
    request(client, "ListUserImportJobs", input, options)
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
  Lists the users in the specified group.

  Requires developer credentials.
  """
  def list_users_in_group(client, input, options \\ []) do
    request(client, "ListUsersInGroup", input, options)
  end

  @doc """
  Resends the confirmation (for confirmation of registration) to a specific
  user in the user pool.
  """
  def resend_confirmation_code(client, input, options \\ []) do
    request(client, "ResendConfirmationCode", input, options)
  end

  @doc """
  Responds to the authentication challenge.
  """
  def respond_to_auth_challenge(client, input, options \\ []) do
    request(client, "RespondToAuthChallenge", input, options)
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
  Starts the user import.
  """
  def start_user_import_job(client, input, options \\ []) do
    request(client, "StartUserImportJob", input, options)
  end

  @doc """
  Stops the user import job.
  """
  def stop_user_import_job(client, input, options \\ []) do
    request(client, "StopUserImportJob", input, options)
  end

  @doc """
  Updates the device status.
  """
  def update_device_status(client, input, options \\ []) do
    request(client, "UpdateDeviceStatus", input, options)
  end

  @doc """
  Updates the specified group with the specified attributes.

  Requires developer credentials.
  """
  def update_group(client, input, options \\ []) do
    request(client, "UpdateGroup", input, options)
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
