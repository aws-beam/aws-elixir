# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Account do
  @moduledoc """
  Operations for Amazon Web Services Account Management
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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

  Before you can update the alternate contact information for an Amazon Web
  Services account that is managed by Organizations, you must first enable
  integration between Amazon Web Services Account Management and Organizations.
  For more information, see [Enabling trusted access for Amazon Web Services Account
  Management](https://docs.aws.amazon.com/accounts/latest/reference/using-orgs-trusted-access.html).
  """
  def delete_alternate_contact(%Client{} = client, input, options \\ []) do
    url_path = "/deleteAlternateContact"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteAlternateContact",
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
  Disables (opts-out) a particular Region for an account.
  """
  def disable_region(%Client{} = client, input, options \\ []) do
    url_path = "/disableRegion"
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
  Enables (opts-in) a particular Region for an account.
  """
  def enable_region(%Client{} = client, input, options \\ []) do
    url_path = "/enableRegion"
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
  Retrieves the specified alternate contact attached to an Amazon Web Services
  account.

  For complete details about how to use the alternate contact operations, see
  [Access or updating the alternate contacts](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).

  Before you can update the alternate contact information for an Amazon Web
  Services account that is managed by Organizations, you must first enable
  integration between Amazon Web Services Account Management and Organizations.
  For more information, see [Enabling trusted access for Amazon Web Services Account
  Management](https://docs.aws.amazon.com/accounts/latest/reference/using-orgs-trusted-access.html).
  """
  def get_alternate_contact(%Client{} = client, input, options \\ []) do
    url_path = "/getAlternateContact"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetAlternateContact",
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
  Retrieves the primary contact information of an Amazon Web Services account.

  For complete details about how to use the primary contact operations, see
  [Update the primary and alternate contact information](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).
  """
  def get_contact_information(%Client{} = client, input, options \\ []) do
    url_path = "/getContactInformation"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetContactInformation",
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
  Retrieves the opt-in status of a particular Region.
  """
  def get_region_opt_status(%Client{} = client, input, options \\ []) do
    url_path = "/getRegionOptStatus"
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
  Lists all the Regions for a given account and their respective opt-in statuses.

  Optionally, this list can be filtered by the `region-opt-status-contains`
  parameter.
  """
  def list_regions(%Client{} = client, input, options \\ []) do
    url_path = "/listRegions"
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
  Modifies the specified alternate contact attached to an Amazon Web Services
  account.

  For complete details about how to use the alternate contact operations, see
  [Access or updating the alternate contacts](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).

  Before you can update the alternate contact information for an Amazon Web
  Services account that is managed by Organizations, you must first enable
  integration between Amazon Web Services Account Management and Organizations.
  For more information, see [Enabling trusted access for Amazon Web Services Account
  Management](https://docs.aws.amazon.com/accounts/latest/reference/using-orgs-trusted-access.html).
  """
  def put_alternate_contact(%Client{} = client, input, options \\ []) do
    url_path = "/putAlternateContact"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "PutAlternateContact",
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
  Updates the primary contact information of an Amazon Web Services account.

  For complete details about how to use the primary contact operations, see
  [Update the primary and alternate contact information](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).
  """
  def put_contact_information(%Client{} = client, input, options \\ []) do
    url_path = "/putContactInformation"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "PutContactInformation",
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
