# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Invoicing do
  @moduledoc """

  ## Amazon Web Services Invoice Configuration

  You can use Amazon Web Services Invoice Configuration APIs to programmatically
  create,
  update, delete, get, and list invoice units.

  You can also programmatically fetch the
  information of the invoice receiver. For example, business legal name, address,
  and invoicing
  contacts.

  You can use Amazon Web Services Invoice Configuration to receive separate Amazon
  Web Services invoices based your organizational needs. By using Amazon Web
  Services Invoice Configuration, you can configure invoice units that are groups
  of Amazon Web Services accounts that represent your business entities, and
  receive separate invoices for each business entity. You can also assign a unique
  member or payer account as the invoice receiver for each invoice unit. As you
  create new accounts within your Organizations using Amazon Web Services Invoice
  Configuration APIs, you can automate the creation of new invoice units and
  subsequently automate the addition of new accounts to your invoice units.

  Service endpoint

  You can use the following endpoints for Amazon Web Services Invoice
  Configuration:

    *

  `https://invoicing.us-east-1.api.aws`
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_invoice_profile_request() :: %{
        required("AccountIds") => list(String.t()())
      }
      
  """
  @type batch_get_invoice_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_invoice_profile_response() :: %{
        "Profiles" => list(invoice_profile()())
      }
      
  """
  @type batch_get_invoice_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_invoice_unit_request() :: %{
        optional("Description") => String.t(),
        optional("ResourceTags") => list(resource_tag()()),
        optional("TaxInheritanceDisabled") => boolean(),
        required("InvoiceReceiver") => String.t(),
        required("Name") => String.t(),
        required("Rule") => invoice_unit_rule()
      }
      
  """
  @type create_invoice_unit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_invoice_unit_response() :: %{
        "InvoiceUnitArn" => String.t()
      }
      
  """
  @type create_invoice_unit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_invoice_unit_request() :: %{
        required("InvoiceUnitArn") => String.t()
      }
      
  """
  @type delete_invoice_unit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_invoice_unit_response() :: %{
        "InvoiceUnitArn" => String.t()
      }
      
  """
  @type delete_invoice_unit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filters() :: %{
        "Accounts" => list(String.t()()),
        "InvoiceReceivers" => list(String.t()()),
        "Names" => list(String.t()())
      }
      
  """
  @type filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_invoice_unit_request() :: %{
        optional("AsOf") => non_neg_integer(),
        required("InvoiceUnitArn") => String.t()
      }
      
  """
  @type get_invoice_unit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_invoice_unit_response() :: %{
        "Description" => String.t(),
        "InvoiceReceiver" => String.t(),
        "InvoiceUnitArn" => String.t(),
        "LastModified" => non_neg_integer(),
        "Name" => String.t(),
        "Rule" => invoice_unit_rule(),
        "TaxInheritanceDisabled" => boolean()
      }
      
  """
  @type get_invoice_unit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invoice_profile() :: %{
        "AccountId" => String.t(),
        "Issuer" => String.t(),
        "ReceiverAddress" => receiver_address(),
        "ReceiverEmail" => String.t(),
        "ReceiverName" => String.t(),
        "TaxRegistrationNumber" => String.t()
      }
      
  """
  @type invoice_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invoice_unit() :: %{
        "Description" => String.t(),
        "InvoiceReceiver" => String.t(),
        "InvoiceUnitArn" => String.t(),
        "LastModified" => non_neg_integer(),
        "Name" => String.t(),
        "Rule" => invoice_unit_rule(),
        "TaxInheritanceDisabled" => boolean()
      }
      
  """
  @type invoice_unit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invoice_unit_rule() :: %{
        "LinkedAccounts" => list(String.t()())
      }
      
  """
  @type invoice_unit_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_invoice_units_request() :: %{
        optional("AsOf") => non_neg_integer(),
        optional("Filters") => filters(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_invoice_units_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_invoice_units_response() :: %{
        "InvoiceUnits" => list(invoice_unit()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_invoice_units_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "ResourceTags" => list(resource_tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      receiver_address() :: %{
        "AddressLine1" => String.t(),
        "AddressLine2" => String.t(),
        "AddressLine3" => String.t(),
        "City" => String.t(),
        "CompanyName" => String.t(),
        "CountryCode" => String.t(),
        "DistrictOrCounty" => String.t(),
        "PostalCode" => String.t(),
        "StateOrRegion" => String.t()
      }
      
  """
  @type receiver_address() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type resource_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("ResourceTags") => list(resource_tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("ResourceTagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_invoice_unit_request() :: %{
        optional("Description") => String.t(),
        optional("Rule") => invoice_unit_rule(),
        optional("TaxInheritanceDisabled") => boolean(),
        required("InvoiceUnitArn") => String.t()
      }
      
  """
  @type update_invoice_unit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_invoice_unit_response() :: %{
        "InvoiceUnitArn" => String.t()
      }
      
  """
  @type update_invoice_unit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => String.t(),
        "reason" => list(any()),
        "resourceName" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => String.t(),
        "name" => String.t()
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @type batch_get_invoice_profile_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type create_invoice_unit_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type delete_invoice_unit_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_invoice_unit_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_invoice_units_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type update_invoice_unit_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2024-12-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "invoicing",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Invoicing",
      signature_version: "v4",
      signing_name: "invoicing",
      target_prefix: "Invoicing"
    }
  end

  @doc """
  This gets the invoice profile associated with a set of accounts.

  The accounts must be linked accounts under the requester management account
  organization.
  """
  @spec batch_get_invoice_profile(map(), batch_get_invoice_profile_request(), list()) ::
          {:ok, batch_get_invoice_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_invoice_profile_errors()}
  def batch_get_invoice_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetInvoiceProfile", input, options)
  end

  @doc """
  This creates a new invoice unit with the provided definition.
  """
  @spec create_invoice_unit(map(), create_invoice_unit_request(), list()) ::
          {:ok, create_invoice_unit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_invoice_unit_errors()}
  def create_invoice_unit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateInvoiceUnit", input, options)
  end

  @doc """
  This deletes an invoice unit with the provided invoice unit ARN.
  """
  @spec delete_invoice_unit(map(), delete_invoice_unit_request(), list()) ::
          {:ok, delete_invoice_unit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_invoice_unit_errors()}
  def delete_invoice_unit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteInvoiceUnit", input, options)
  end

  @doc """
  This retrieves the invoice unit definition.
  """
  @spec get_invoice_unit(map(), get_invoice_unit_request(), list()) ::
          {:ok, get_invoice_unit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_invoice_unit_errors()}
  def get_invoice_unit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInvoiceUnit", input, options)
  end

  @doc """
  This fetches a list of all invoice unit definitions for a given account, as of
  the provided `AsOf` date.
  """
  @spec list_invoice_units(map(), list_invoice_units_request(), list()) ::
          {:ok, list_invoice_units_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_invoice_units_errors()}
  def list_invoice_units(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInvoiceUnits", input, options)
  end

  @doc """
  Lists the tags for a resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Adds a tag to a resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """

  Removes a tag from a resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  You can update the invoice unit configuration at any time, and Amazon Web
  Services will use the latest configuration at the end of the month.
  """
  @spec update_invoice_unit(map(), update_invoice_unit_request(), list()) ::
          {:ok, update_invoice_unit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_invoice_unit_errors()}
  def update_invoice_unit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateInvoiceUnit", input, options)
  end
end
