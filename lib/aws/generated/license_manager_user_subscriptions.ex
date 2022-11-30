# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LicenseManagerUserSubscriptions do
  @moduledoc """
  With License Manager, you can create user-based subscriptions to utilize
  licensed software with a per user subscription fee on Amazon EC2 instances.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "license-manager-user-subscriptions",
      global?: false,
      protocol: "rest-json",
      service_id: "License Manager User Subscriptions",
      signature_version: "v4",
      signing_name: "license-manager-user-subscriptions",
      target_prefix: nil
    }
  end

  @doc """
  Associates the user to an EC2 instance to utilize user-based subscriptions.

  Your estimated bill for charges on the number of users and related costs will
  take 48 hours to appear for billing periods that haven't closed (marked as
  **Pending** billing status) in Amazon Web Services Billing. For more
  information, see [Viewing your monthly charges](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/invoice.html)
  in the *Amazon Web Services Billing User Guide*.
  """
  def associate_user(%Client{} = client, input, options \\ []) do
    url_path = "/user/AssociateUser"
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
  Deregisters the identity provider from providing user-based subscriptions.
  """
  def deregister_identity_provider(%Client{} = client, input, options \\ []) do
    url_path = "/identity-provider/DeregisterIdentityProvider"
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
  Disassociates the user from an EC2 instance providing user-based subscriptions.
  """
  def disassociate_user(%Client{} = client, input, options \\ []) do
    url_path = "/user/DisassociateUser"
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
  Lists the identity providers for user-based subscriptions.
  """
  def list_identity_providers(%Client{} = client, input, options \\ []) do
    url_path = "/identity-provider/ListIdentityProviders"
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
  Lists the EC2 instances providing user-based subscriptions.
  """
  def list_instances(%Client{} = client, input, options \\ []) do
    url_path = "/instance/ListInstances"
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
  Lists the user-based subscription products available from an identity provider.
  """
  def list_product_subscriptions(%Client{} = client, input, options \\ []) do
    url_path = "/user/ListProductSubscriptions"
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
  Lists user associations for an identity provider.
  """
  def list_user_associations(%Client{} = client, input, options \\ []) do
    url_path = "/user/ListUserAssociations"
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
  Registers an identity provider for user-based subscriptions.
  """
  def register_identity_provider(%Client{} = client, input, options \\ []) do
    url_path = "/identity-provider/RegisterIdentityProvider"
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
  Starts a product subscription for a user with the specified identity provider.

  Your estimated bill for charges on the number of users and related costs will
  take 48 hours to appear for billing periods that haven't closed (marked as
  **Pending** billing status) in Amazon Web Services Billing. For more
  information, see [Viewing your monthly charges](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/invoice.html)
  in the *Amazon Web Services Billing User Guide*.
  """
  def start_product_subscription(%Client{} = client, input, options \\ []) do
    url_path = "/user/StartProductSubscription"
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
  Stops a product subscription for a user with the specified identity provider.
  """
  def stop_product_subscription(%Client{} = client, input, options \\ []) do
    url_path = "/user/StopProductSubscription"
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
  Updates additional product configuration settings for the registered identity
  provider.
  """
  def update_identity_provider_settings(%Client{} = client, input, options \\ []) do
    url_path = "/identity-provider/UpdateIdentityProviderSettings"
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
end
