# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Macie do
  @moduledoc """
  Amazon Macie Classic

  Amazon Macie Classic is a security service that uses machine learning to
  automatically discover, classify, and protect sensitive data in AWS. Macie
  Classic recognizes sensitive data such as personally identifiable
  information (PII) or intellectual property, and provides you with
  dashboards and alerts that give visibility into how this data is being
  accessed or moved. For more information, see the [Amazon Macie Classic User
  Guide](https://docs.aws.amazon.com/macie/latest/userguide/what-is-macie.html).

  A new Amazon Macie is now available with significant design improvements
  and additional features, at a lower price and in most AWS Regions. We
  encourage you to explore and use the new and improved features, and benefit
  from the reduced cost. To learn about features and pricing for the new
  Amazon Macie, see [Amazon Macie](https://aws.amazon.com/macie/).
  """

  @doc """
  Associates a specified AWS account with Amazon Macie Classic as a member
  account.
  """
  def associate_member_account(client, input, options \\ []) do
    request(client, "AssociateMemberAccount", input, options)
  end

  @doc """
  Associates specified S3 resources with Amazon Macie Classic for monitoring
  and data classification. If memberAccountId isn't specified, the action
  associates specified S3 resources with Macie Classic for the current master
  account. If memberAccountId is specified, the action associates specified
  S3 resources with Macie Classic for the specified member account.
  """
  def associate_s3_resources(client, input, options \\ []) do
    request(client, "AssociateS3Resources", input, options)
  end

  @doc """
  Removes the specified member account from Amazon Macie Classic.
  """
  def disassociate_member_account(client, input, options \\ []) do
    request(client, "DisassociateMemberAccount", input, options)
  end

  @doc """
  Removes specified S3 resources from being monitored by Amazon Macie
  Classic. If memberAccountId isn't specified, the action removes specified
  S3 resources from Macie Classic for the current master account. If
  memberAccountId is specified, the action removes specified S3 resources
  from Macie Classic for the specified member account.
  """
  def disassociate_s3_resources(client, input, options \\ []) do
    request(client, "DisassociateS3Resources", input, options)
  end

  @doc """
  Lists all Amazon Macie Classic member accounts for the current Amazon Macie
  Classic master account.
  """
  def list_member_accounts(client, input, options \\ []) do
    request(client, "ListMemberAccounts", input, options)
  end

  @doc """
  Lists all the S3 resources associated with Amazon Macie Classic. If
  memberAccountId isn't specified, the action lists the S3 resources
  associated with Amazon Macie Classic for the current master account. If
  memberAccountId is specified, the action lists the S3 resources associated
  with Amazon Macie Classic for the specified member account.
  """
  def list_s3_resources(client, input, options \\ []) do
    request(client, "ListS3Resources", input, options)
  end

  @doc """
  Updates the classification types for the specified S3 resources. If
  memberAccountId isn't specified, the action updates the classification
  types of the S3 resources associated with Amazon Macie Classic for the
  current master account. If memberAccountId is specified, the action updates
  the classification types of the S3 resources associated with Amazon Macie
  Classic for the specified member account.
  """
  def update_s3_resources(client, input, options \\ []) do
    request(client, "UpdateS3Resources", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "macie"}
    host = build_host("macie", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "MacieService.#{action}"}
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

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

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
