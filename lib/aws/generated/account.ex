# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Account do
  @moduledoc """
  Operations for Amazon Web Services Account Management
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2021-02-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "account",
      global?: true,
      protocol: "rest-json",
      service_id: "Account",
      signature_version: "v4",
      signing_name: "account",
      target_prefix: nil
    }
  end

  @doc """
  Deletes the specified alternate contact from an Amazon Web Services account.

  For complete details about how to use the alternate contact operations, see
  [Access or updating the alternate contacts](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).
  """
  def delete_alternate_contact(%Client{} = client, input, options \\ []) do
    url_path = "/deleteAlternateContact"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Retrieves the specified alternate contact attached to an Amazon Web Services
  account.

  For complete details about how to use the alternate contact operations, see
  [Access or updating the alternate contacts](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).
  """
  def get_alternate_contact(%Client{} = client, input, options \\ []) do
    url_path = "/getAlternateContact"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Modifies the specified alternate contact attached to an Amazon Web Services
  account.

  For complete details about how to use the alternate contact operations, see
  [Access or updating the alternate contacts](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).
  """
  def put_alternate_contact(%Client{} = client, input, options \\ []) do
    url_path = "/putAlternateContact"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
