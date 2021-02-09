# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Macie do
  @moduledoc """
  Amazon Macie Classic

  Amazon Macie Classic is a security service that uses machine learning to
  automatically discover, classify, and protect sensitive data in AWS.

  Macie Classic recognizes sensitive data such as personally identifiable
  information (PII) or intellectual property, and provides you with dashboards and
  alerts that give visibility into how this data is being accessed or moved. For
  more information, see the [Amazon Macie Classic User Guide](https://docs.aws.amazon.com/macie/latest/userguide/what-is-macie.html).
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
  Associates a specified AWS account with Amazon Macie Classic as a member
  account.
  """
  def associate_member_account(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateMemberAccount", input, options)
  end

  @doc """
  Associates specified S3 resources with Amazon Macie Classic for monitoring and
  data classification.

  If memberAccountId isn't specified, the action associates specified S3 resources
  with Macie Classic for the current Macie Classic administrator account. If
  memberAccountId is specified, the action associates specified S3 resources with
  Macie Classic for the specified member account.
  """
  def associate_s3_resources(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateS3Resources", input, options)
  end

  @doc """
  Removes the specified member account from Amazon Macie Classic.
  """
  def disassociate_member_account(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateMemberAccount", input, options)
  end

  @doc """
  Removes specified S3 resources from being monitored by Amazon Macie Classic.

  If memberAccountId isn't specified, the action removes specified S3 resources
  from Macie Classic for the current Macie Classic administrator account. If
  memberAccountId is specified, the action removes specified S3 resources from
  Macie Classic for the specified member account.
  """
  def disassociate_s3_resources(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateS3Resources", input, options)
  end

  @doc """
  Lists all Amazon Macie Classic member accounts for the current Macie Classic
  administrator account.
  """
  def list_member_accounts(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMemberAccounts", input, options)
  end

  @doc """
  Lists all the S3 resources associated with Amazon Macie Classic.

  If memberAccountId isn't specified, the action lists the S3 resources associated
  with Macie Classic for the current Macie Classic administrator account. If
  memberAccountId is specified, the action lists the S3 resources associated with
  Macie Classic for the specified member account.
  """
  def list_s3_resources(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListS3Resources", input, options)
  end

  @doc """
  Updates the classification types for the specified S3 resources.

  If memberAccountId isn't specified, the action updates the classification types
  of the S3 resources associated with Amazon Macie Classic for the current Macie
  Classic administrator account. If memberAccountId is specified, the action
  updates the classification types of the S3 resources associated with Macie
  Classic for the specified member account.
  """
  def update_s3_resources(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateS3Resources", input, options)
  end
end