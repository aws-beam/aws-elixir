# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MarketplaceEntitlement do
  @moduledoc """
  AWS Marketplace Entitlement Service

  This reference provides descriptions of the AWS Marketplace Entitlement Service
  API.

  AWS Marketplace Entitlement Service is used to determine the entitlement of a
  customer to
  a given product. An entitlement represents capacity in a product owned by the
  customer. For
  example, a customer might own some number of users or seats in an SaaS
  application or some
  amount of data capacity in a multi-tenant database.

  ## Getting Entitlement Records

    *

  *GetEntitlements*- Gets the entitlements for a Marketplace
  product.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      entitlement() :: %{
        "CustomerAWSAccountId" => String.t() | Atom.t(),
        "CustomerIdentifier" => String.t() | Atom.t(),
        "Dimension" => String.t() | Atom.t(),
        "ExpirationDate" => non_neg_integer(),
        "ProductCode" => String.t() | Atom.t(),
        "Value" => entitlement_value()
      }
      
  """
  @type entitlement() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      entitlement_value() :: %{
        "BooleanValue" => boolean(),
        "DoubleValue" => float(),
        "IntegerValue" => integer(),
        "StringValue" => String.t() | Atom.t()
      }
      
  """
  @type entitlement_value() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_entitlements_request() :: %{
        optional("Filter") => map(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("ProductCode") => String.t() | Atom.t()
      }
      
  """
  @type get_entitlements_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_entitlements_result() :: %{
        "Entitlements" => list(entitlement()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type get_entitlements_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_error_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type internal_service_error_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @type get_entitlements_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_service_error_exception()

  def metadata do
    %{
      api_version: "2017-01-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "entitlement.marketplace",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Marketplace Entitlement Service",
      signature_version: "v4",
      signing_name: "aws-marketplace",
      target_prefix: "AWSMPEntitlementService"
    }
  end

  @doc """
  GetEntitlements retrieves entitlement values for a given product.

  The results can be
  filtered based on customer identifier, AWS account ID, or product dimensions.

  The `CustomerIdentifier` parameter is on path for deprecation. Use
  `CustomerAWSAccountID` instead.

  These parameters are mutually exclusive. You can't specify both
  `CustomerIdentifier` and `CustomerAWSAccountID` in the same request.
  """
  @spec get_entitlements(map(), get_entitlements_request(), list()) ::
          {:ok, get_entitlements_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_entitlements_errors()}
  def get_entitlements(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetEntitlements", input, options)
  end
end
