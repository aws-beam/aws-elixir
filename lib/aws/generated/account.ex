# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Account do
  @moduledoc """
  Operations for Amazon Web Services Account Management
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      accept_primary_email_update_request() :: %{
        required("AccountId") => String.t() | Atom.t(),
        required("Otp") => String.t() | Atom.t(),
        required("PrimaryEmail") => String.t() | Atom.t()
      }

  """
  @type accept_primary_email_update_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      accept_primary_email_update_response() :: %{
        "Status" => String.t() | Atom.t()
      }

  """
  @type accept_primary_email_update_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "errorType" => [String.t() | Atom.t()],
        "message" => [String.t() | Atom.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      alternate_contact() :: %{
        "AlternateContactType" => String.t() | Atom.t(),
        "EmailAddress" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "PhoneNumber" => String.t() | Atom.t(),
        "Title" => String.t() | Atom.t()
      }

  """
  @type alternate_contact() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "errorType" => [String.t() | Atom.t()],
        "message" => [String.t() | Atom.t()]
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      contact_information() :: %{
        "AddressLine1" => String.t() | Atom.t(),
        "AddressLine2" => String.t() | Atom.t(),
        "AddressLine3" => String.t() | Atom.t(),
        "City" => String.t() | Atom.t(),
        "CompanyName" => String.t() | Atom.t(),
        "CountryCode" => String.t() | Atom.t(),
        "DistrictOrCounty" => String.t() | Atom.t(),
        "FullName" => String.t() | Atom.t(),
        "PhoneNumber" => String.t() | Atom.t(),
        "PostalCode" => String.t() | Atom.t(),
        "StateOrRegion" => String.t() | Atom.t(),
        "WebsiteUrl" => String.t() | Atom.t()
      }

  """
  @type contact_information() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_alternate_contact_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        required("AlternateContactType") => String.t() | Atom.t()
      }

  """
  @type delete_alternate_contact_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      disable_region_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        required("RegionName") => String.t() | Atom.t()
      }

  """
  @type disable_region_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      enable_region_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        required("RegionName") => String.t() | Atom.t()
      }

  """
  @type enable_region_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_account_information_request() :: %{
        optional("AccountId") => String.t() | Atom.t()
      }

  """
  @type get_account_information_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_account_information_response() :: %{
        "AccountCreatedDate" => non_neg_integer(),
        "AccountId" => String.t() | Atom.t(),
        "AccountName" => String.t() | Atom.t()
      }

  """
  @type get_account_information_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_alternate_contact_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        required("AlternateContactType") => String.t() | Atom.t()
      }

  """
  @type get_alternate_contact_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_alternate_contact_response() :: %{
        "AlternateContact" => alternate_contact()
      }

  """
  @type get_alternate_contact_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_contact_information_request() :: %{
        optional("AccountId") => String.t() | Atom.t()
      }

  """
  @type get_contact_information_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_contact_information_response() :: %{
        "ContactInformation" => contact_information()
      }

  """
  @type get_contact_information_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_primary_email_request() :: %{
        required("AccountId") => String.t() | Atom.t()
      }

  """
  @type get_primary_email_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_primary_email_response() :: %{
        "PrimaryEmail" => String.t() | Atom.t()
      }

  """
  @type get_primary_email_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_region_opt_status_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        required("RegionName") => String.t() | Atom.t()
      }

  """
  @type get_region_opt_status_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_region_opt_status_response() :: %{
        "RegionName" => String.t() | Atom.t(),
        "RegionOptStatus" => String.t() | Atom.t()
      }

  """
  @type get_region_opt_status_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "errorType" => [String.t() | Atom.t()],
        "message" => [String.t() | Atom.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_regions_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | Atom.t()],
        optional("RegionOptStatusContains") => list(String.t() | Atom.t())
      }

  """
  @type list_regions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_regions_response() :: %{
        "NextToken" => [String.t() | Atom.t()],
        "Regions" => list(region())
      }

  """
  @type list_regions_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_account_name_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        required("AccountName") => String.t() | Atom.t()
      }

  """
  @type put_account_name_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_alternate_contact_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        required("AlternateContactType") => String.t() | Atom.t(),
        required("EmailAddress") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t(),
        required("PhoneNumber") => String.t() | Atom.t(),
        required("Title") => String.t() | Atom.t()
      }

  """
  @type put_alternate_contact_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_contact_information_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        required("ContactInformation") => contact_information()
      }

  """
  @type put_contact_information_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      region() :: %{
        "RegionName" => String.t() | Atom.t(),
        "RegionOptStatus" => String.t() | Atom.t()
      }

  """
  @type region() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "errorType" => [String.t() | Atom.t()],
        "message" => [String.t() | Atom.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_primary_email_update_request() :: %{
        required("AccountId") => String.t() | Atom.t(),
        required("PrimaryEmail") => String.t() | Atom.t()
      }

  """
  @type start_primary_email_update_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_primary_email_update_response() :: %{
        "Status" => String.t() | Atom.t()
      }

  """
  @type start_primary_email_update_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "errorType" => [String.t() | Atom.t()],
        "message" => [String.t() | Atom.t()]
      }

  """
  @type too_many_requests_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => String.t() | Atom.t(),
        "reason" => String.t() | Atom.t()
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => String.t() | Atom.t(),
        "name" => [String.t() | Atom.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() | Atom.t() => any()}

  @type accept_primary_email_update_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_alternate_contact_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type disable_region_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type enable_region_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_account_information_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_alternate_contact_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_contact_information_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_primary_email_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_region_opt_status_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_regions_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type put_account_name_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type put_alternate_contact_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type put_contact_information_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type start_primary_email_update_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2021-02-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "account",
      global?: true,
      hostname: "account.us-east-1.amazonaws.com",
      protocol: "rest-json",
      service_id: "Account",
      signature_version: "v4",
      signing_name: "account",
      target_prefix: nil
    }
  end

  @doc """
  Accepts the request that originated from `StartPrimaryEmailUpdate` to update the
  primary email address (also known as the root user email address) for the
  specified account.
  """
  @spec accept_primary_email_update(map(), accept_primary_email_update_request(), list()) ::
          {:ok, accept_primary_email_update_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_primary_email_update_errors()}
  def accept_primary_email_update(%Client{} = client, input, options \\ []) do
    url_path = "/acceptPrimaryEmailUpdate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
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
  @spec delete_alternate_contact(map(), delete_alternate_contact_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_alternate_contact_errors()}
  def delete_alternate_contact(%Client{} = client, input, options \\ []) do
    url_path = "/deleteAlternateContact"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disables (opts-out) a particular Region for an account.

  The act of disabling a Region will remove all IAM access to any resources that
  reside in that Region.
  """
  @spec disable_region(map(), disable_region_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_region_errors()}
  def disable_region(%Client{} = client, input, options \\ []) do
    url_path = "/disableRegion"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Enables (opts-in) a particular Region for an account.
  """
  @spec enable_region(map(), enable_region_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_region_errors()}
  def enable_region(%Client{} = client, input, options \\ []) do
    url_path = "/enableRegion"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves information about the specified account including its account name,
  account ID, and account creation date and time.

  To use this API, an IAM user or role must have the
  `account:GetAccountInformation` IAM permission.
  """
  @spec get_account_information(map(), get_account_information_request(), list()) ::
          {:ok, get_account_information_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_information_errors()}
  def get_account_information(%Client{} = client, input, options \\ []) do
    url_path = "/getAccountInformation"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec get_alternate_contact(map(), get_alternate_contact_request(), list()) ::
          {:ok, get_alternate_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_alternate_contact_errors()}
  def get_alternate_contact(%Client{} = client, input, options \\ []) do
    url_path = "/getAlternateContact"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec get_contact_information(map(), get_contact_information_request(), list()) ::
          {:ok, get_contact_information_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_contact_information_errors()}
  def get_contact_information(%Client{} = client, input, options \\ []) do
    url_path = "/getContactInformation"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves the primary email address for the specified account.
  """
  @spec get_primary_email(map(), get_primary_email_request(), list()) ::
          {:ok, get_primary_email_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_primary_email_errors()}
  def get_primary_email(%Client{} = client, input, options \\ []) do
    url_path = "/getPrimaryEmail"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves the opt-in status of a particular Region.
  """
  @spec get_region_opt_status(map(), get_region_opt_status_request(), list()) ::
          {:ok, get_region_opt_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_region_opt_status_errors()}
  def get_region_opt_status(%Client{} = client, input, options \\ []) do
    url_path = "/getRegionOptStatus"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec list_regions(map(), list_regions_request(), list()) ::
          {:ok, list_regions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_regions_errors()}
  def list_regions(%Client{} = client, input, options \\ []) do
    url_path = "/listRegions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the account name of the specified account.

  To use this API, IAM principals must have the `account:PutAccountName` IAM
  permission.
  """
  @spec put_account_name(map(), put_account_name_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_account_name_errors()}
  def put_account_name(%Client{} = client, input, options \\ []) do
    url_path = "/putAccountName"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec put_alternate_contact(map(), put_alternate_contact_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_alternate_contact_errors()}
  def put_alternate_contact(%Client{} = client, input, options \\ []) do
    url_path = "/putAlternateContact"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec put_contact_information(map(), put_contact_information_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_contact_information_errors()}
  def put_contact_information(%Client{} = client, input, options \\ []) do
    url_path = "/putContactInformation"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Starts the process to update the primary email address for the specified
  account.
  """
  @spec start_primary_email_update(map(), start_primary_email_update_request(), list()) ::
          {:ok, start_primary_email_update_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_primary_email_update_errors()}
  def start_primary_email_update(%Client{} = client, input, options \\ []) do
    url_path = "/startPrimaryEmailUpdate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
