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
  access_denied_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  alternate_contact() :: %{
    "AlternateContactType" => String.t(),
    "EmailAddress" => String.t(),
    "Name" => String.t(),
    "PhoneNumber" => String.t(),
    "Title" => String.t()
  }
  """
  @type alternate_contact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  contact_information() :: %{
    "AddressLine1" => String.t(),
    "AddressLine2" => String.t(),
    "AddressLine3" => String.t(),
    "City" => String.t(),
    "CompanyName" => String.t(),
    "CountryCode" => String.t(),
    "DistrictOrCounty" => String.t(),
    "FullName" => String.t(),
    "PhoneNumber" => String.t(),
    "PostalCode" => String.t(),
    "StateOrRegion" => String.t(),
    "WebsiteUrl" => String.t()
  }
  """
  @type contact_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_alternate_contact_request() :: %{
    optional("AccountId") => String.t(),
    required("AlternateContactType") => String.t()
  }
  """
  @type delete_alternate_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disable_region_request() :: %{
    optional("AccountId") => String.t(),
    required("RegionName") => String.t()
  }
  """
  @type disable_region_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  enable_region_request() :: %{
    optional("AccountId") => String.t(),
    required("RegionName") => String.t()
  }
  """
  @type enable_region_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_alternate_contact_request() :: %{
    optional("AccountId") => String.t(),
    required("AlternateContactType") => String.t()
  }
  """
  @type get_alternate_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_alternate_contact_response() :: %{
    "AlternateContact" => alternate_contact()
  }
  """
  @type get_alternate_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_contact_information_request() :: %{
    optional("AccountId") => String.t()
  }
  """
  @type get_contact_information_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_contact_information_response() :: %{
    "ContactInformation" => contact_information()
  }
  """
  @type get_contact_information_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_region_opt_status_request() :: %{
    optional("AccountId") => String.t(),
    required("RegionName") => String.t()
  }
  """
  @type get_region_opt_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_region_opt_status_response() :: %{
    "RegionName" => String.t(),
    "RegionOptStatus" => String.t()
  }
  """
  @type get_region_opt_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_server_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_regions_request() :: %{
    optional("AccountId") => String.t(),
    optional("MaxResults") => [integer()],
    optional("NextToken") => [String.t()],
    optional("RegionOptStatusContains") => list(String.t()())
  }
  """
  @type list_regions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_regions_response() :: %{
    "NextToken" => [String.t()],
    "Regions" => list(region()())
  }
  """
  @type list_regions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_alternate_contact_request() :: %{
    optional("AccountId") => String.t(),
    required("AlternateContactType") => String.t(),
    required("EmailAddress") => String.t(),
    required("Name") => String.t(),
    required("PhoneNumber") => String.t(),
    required("Title") => String.t()
  }
  """
  @type put_alternate_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_contact_information_request() :: %{
    optional("AccountId") => String.t(),
    required("ContactInformation") => contact_information()
  }
  """
  @type put_contact_information_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  region() :: %{
    "RegionName" => String.t(),
    "RegionOptStatus" => String.t()
  }
  """
  @type region() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  too_many_requests_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception() :: %{
    "fieldList" => list(validation_exception_field()()),
    "message" => String.t(),
    "reason" => String.t()
  }
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception_field() :: %{
    "message" => String.t(),
    "name" => [String.t()]
  }
  """
  @type validation_exception_field() :: %{String.t() => any()}

  def metadata do
    %{
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
  [Access or updating the alternate
  contacts](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).

  Before you can update the alternate contact information for an
  Amazon Web Services account that is managed by Organizations, you must first
  enable integration between Amazon Web Services Account Management
  and Organizations. For more information, see [Enabling trusted access for Amazon Web Services Account
  Management](https://docs.aws.amazon.com/accounts/latest/reference/using-orgs-trusted-access.html).
  """
  @spec delete_alternate_contact(map(), delete_alternate_contact_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def delete_alternate_contact(%Client{} = client, input, options \\ []) do
    url_path = "/deleteAlternateContact"
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
  Disables (opts-out) a particular Region for an account.
  """
  @spec disable_region(map(), disable_region_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
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
  @spec enable_region(map(), enable_region_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
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
  [Access or updating the alternate
  contacts](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).

  Before you can update the alternate contact information for an
  Amazon Web Services account that is managed by Organizations, you must first
  enable integration between Amazon Web Services Account Management
  and Organizations. For more information, see [Enabling trusted access for Amazon Web Services Account
  Management](https://docs.aws.amazon.com/accounts/latest/reference/using-orgs-trusted-access.html).
  """
  @spec get_alternate_contact(map(), get_alternate_contact_request(), list()) ::
          {:ok, get_alternate_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def get_alternate_contact(%Client{} = client, input, options \\ []) do
    url_path = "/getAlternateContact"
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
  Retrieves the primary contact information of an Amazon Web Services account.

  For complete details about how to use the primary contact operations, see
  [Update the primary and alternate contact
  information](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).
  """
  @spec get_contact_information(map(), get_contact_information_request(), list()) ::
          {:ok, get_contact_information_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def get_contact_information(%Client{} = client, input, options \\ []) do
    url_path = "/getContactInformation"
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
  Retrieves the opt-in status of a particular Region.
  """
  @spec get_region_opt_status(map(), get_region_opt_status_request(), list()) ::
          {:ok, get_region_opt_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
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
  @spec list_regions(map(), list_regions_request(), list()) ::
          {:ok, list_regions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
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
  [Access or updating the alternate
  contacts](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).

  Before you can update the alternate contact information for an
  Amazon Web Services account that is managed by Organizations, you must first
  enable integration between Amazon Web Services Account Management
  and Organizations. For more information, see [Enabling trusted access for Amazon Web Services Account
  Management](https://docs.aws.amazon.com/accounts/latest/reference/using-orgs-trusted-access.html).
  """
  @spec put_alternate_contact(map(), put_alternate_contact_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def put_alternate_contact(%Client{} = client, input, options \\ []) do
    url_path = "/putAlternateContact"
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
  Updates the primary contact information of an Amazon Web Services account.

  For complete details about how to use the primary contact operations, see
  [Update the primary and alternate contact
  information](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).
  """
  @spec put_contact_information(map(), put_contact_information_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, validation_exception()}
  def put_contact_information(%Client{} = client, input, options \\ []) do
    url_path = "/putContactInformation"
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
