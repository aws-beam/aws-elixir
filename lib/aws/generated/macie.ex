# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Macie do
  @moduledoc """
  Amazon Macie Classic

  Amazon Macie Classic has been discontinued and is no longer available.

  A new Amazon Macie is now available with significant design improvements and
  additional features, at a lower price and in most Amazon Web Services Regions.
  We encourage you to take advantage of the new and improved features, and benefit
  from the reduced cost. To learn about features and pricing for the new Macie,
  see [Amazon Macie](http://aws.amazon.com/macie/). To learn how to use the new Macie, see the [Amazon Macie User
  Guide](https://docs.aws.amazon.com/macie/latest/user/what-is-macie.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-12-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "macie",
      global?: false,
      protocol: "json",
      service_id: "Macie",
      signature_version: "v4",
      signing_name: "macie",
      target_prefix: "MacieService"
    }
  end

  @doc """
  (Discontinued) Associates a specified Amazon Web Services account with Amazon
  Macie Classic as a member account.
  """
  def associate_member_account(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateMemberAccount", input, options)
  end

  @doc """
  (Discontinued) Associates specified S3 resources with Amazon Macie Classic for
  monitoring and data classification.

  If `memberAccountId` isn't specified, the action associates specified S3
  resources with Macie Classic for the current Macie Classic administrator
  account. If `memberAccountId` is specified, the action associates specified S3
  resources with Macie Classic for the specified member account.
  """
  def associate_s3_resources(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateS3Resources", input, options)
  end

  @doc """
  (Discontinued) Removes the specified member account from Amazon Macie Classic.
  """
  def disassociate_member_account(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateMemberAccount", input, options)
  end

  @doc """
  (Discontinued) Removes specified S3 resources from being monitored by Amazon
  Macie Classic.

  If `memberAccountId` isn't specified, the action removes specified S3 resources
  from Macie Classic for the current Macie Classic administrator account. If
  `memberAccountId` is specified, the action removes specified S3 resources from
  Macie Classic for the specified member account.
  """
  def disassociate_s3_resources(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateS3Resources", input, options)
  end

  @doc """
  (Discontinued) Lists all Amazon Macie Classic member accounts for the current
  Macie Classic administrator account.
  """
  def list_member_accounts(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMemberAccounts", input, options)
  end

  @doc """
  (Discontinued) Lists all the S3 resources associated with Amazon Macie Classic.

  If `memberAccountId` isn't specified, the action lists the S3 resources
  associated with Macie Classic for the current Macie Classic administrator
  account. If `memberAccountId` is specified, the action lists the S3 resources
  associated with Macie Classic for the specified member account.
  """
  def list_s3_resources(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListS3Resources", input, options)
  end

  @doc """
  (Discontinued) Updates the classification types for the specified S3 resources.

  If `memberAccountId` isn't specified, the action updates the classification
  types of the S3 resources associated with Amazon Macie Classic for the current
  Macie Classic administrator account. If `memberAccountId` is specified, the
  action updates the classification types of the S3 resources associated with
  Macie Classic for the specified member account.
  """
  def update_s3_resources(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateS3Resources", input, options)
  end
end
