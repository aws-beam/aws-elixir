# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LicenseManagerLinuxSubscriptions do
  @moduledoc """
  With License Manager, you can discover and track your commercial Linux
  subscriptions on running Amazon EC2 instances.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "license-manager-linux-subscriptions",
      global?: false,
      protocol: "rest-json",
      service_id: "License Manager Linux Subscriptions",
      signature_version: "v4",
      signing_name: "license-manager-linux-subscriptions",
      target_prefix: nil
    }
  end

  @doc """
  Lists the Linux subscriptions service settings.
  """
  def get_service_settings(%Client{} = client, input, options \\ []) do
    url_path = "/subscription/GetServiceSettings"
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
  Lists the running Amazon EC2 instances that were discovered with commercial
  Linux subscriptions.
  """
  def list_linux_subscription_instances(%Client{} = client, input, options \\ []) do
    url_path = "/subscription/ListLinuxSubscriptionInstances"
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
  Lists the Linux subscriptions that have been discovered.

  If you have linked your organization, the returned results will include data
  aggregated across your accounts in Organizations.
  """
  def list_linux_subscriptions(%Client{} = client, input, options \\ []) do
    url_path = "/subscription/ListLinuxSubscriptions"
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
  Updates the service settings for Linux subscriptions.
  """
  def update_service_settings(%Client{} = client, input, options \\ []) do
    url_path = "/subscription/UpdateServiceSettings"
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
