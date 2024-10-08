# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MarketplaceReporting do
  @moduledoc """
  The Amazon Web Services Marketplace `GetBuyerDashboard` API enables you to get a
  procurement insights
  dashboard programmatically.

  The API gets the agreement and cost analysis dashboards with
  data for all of the Amazon Web Services accounts in your Amazon Web Services
  Organization.

  To use the Amazon Web Services Marketplace Reporting API, you must complete the
  following prerequisites:

    *
  Enable all features for your organization. For more information, see [Enabling all features for an organization with
  Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html),
  in the
  *Organizations User Guide*.

    *
  Call the service as the Organizations management account or an account
  registered
  as a delegated administrator for the procurement insights service.

  For more information about management accounts, see [Tutorial: Creating and configuring an
  organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tutorials_basic.html)
  and [Managing the management account with Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/orgs-manage_accounts_management.html),
  both in the
  *Organizations User Guide*.

  For more information about delegated administrators, see [Using delegated
  administrators](https://docs.aws.amazon.com/marketplace/latest/buyerguide/management-delegates.html),
  in the *Amazon Web Services Marketplace Buyer
  Guide*.

    *
  Create an IAM policy that enables the
  `aws-marketplace:GetBuyerDashboard` and
  `organizations:DescribeOrganization` permissions. In addition,
  the management account requires the
  `organizations:EnableAWSServiceAccess` and
  `iam:CreateServiceLinkedRole` permissions to create. For more
  information about creating the policy, see [Policies and permissions in Identity and Access
  Management](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html),
  in the *IAM User Guide*.

  Access can be shared only by registering the desired linked account as a
  delegated administrator. That requires
  `organizations:RegisterDelegatedAdministrator`
  `organizations:ListDelegatedAdministrators` and
  `organizations:DeregisterDelegatedAdministrator`
  permissions.

    *
  Use the Amazon Web Services Marketplace console to create the
  `AWSServiceRoleForProcurementInsightsPolicy` service-linked role.
  The role enables Amazon Web Services Marketplace procurement visibility
  integration. The management
  account requires an IAM policy with the
  `organizations:EnableAWSServiceAccess` and
  `iam:CreateServiceLinkedRole` permissions to create the
  service-linked role and enable the service access. For more information, see
  [Granting access to Organizations](https://docs.aws.amazon.com/marketplace/latest/buyerguide/orgs-access-slr.html)
  and [Service-linked role to share procurement data](https://docs.aws.amazon.com/marketplace/latest/buyerguide/buyer-service-linked-role-procurement.html)
  in the
  *Amazon Web Services Marketplace Buyer Guide*.

    *
  After creating the service-linked role, you must enable trusted access that
  grants Amazon Web Services Marketplace permission to access data from your
  Organizations. For more information,
  see [Granting access to Organizations](https://docs.aws.amazon.com/marketplace/latest/buyerguide/orgs-access-slr.html)
  in the *Amazon Web Services Marketplace Buyer Guide*.
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

      bad_request_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_buyer_dashboard_input() :: %{
        required("dashboardIdentifier") => String.t(),
        required("embeddingDomains") => list(String.t()())
      }

  """
  @type get_buyer_dashboard_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_buyer_dashboard_output() :: %{
        "dashboardIdentifier" => String.t(),
        "embedUrl" => [String.t()],
        "embeddingDomains" => list(String.t()())
      }

  """
  @type get_buyer_dashboard_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @type get_buyer_dashboard_errors() ::
          unauthorized_exception()
          | internal_server_exception()
          | bad_request_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "reporting-marketplace",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Marketplace Reporting",
      signature_version: "v4",
      signing_name: "aws-marketplace",
      target_prefix: nil
    }
  end

  @doc """
  Generates an embedding URL for an Amazon QuickSight dashboard for an anonymous
  user.

  This API is available only to Amazon Web Services Organization management
  accounts or
  delegated administrators registered for the procurement insights
  (`procurement-insights.marketplace.amazonaws.com`) feature.

  The following rules apply to a generated URL:

    *
  It contains a temporary bearer token, valid for 5 minutes after it is generated.
  Once redeemed within that period, it cannot be re-used again.

    *
  It has a session lifetime of one hour. The 5-minute validity period runs
  separately from the session lifetime.
  """
  @spec get_buyer_dashboard(map(), get_buyer_dashboard_input(), list()) ::
          {:ok, get_buyer_dashboard_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_buyer_dashboard_errors()}
  def get_buyer_dashboard(%Client{} = client, input, options \\ []) do
    url_path = "/getBuyerDashboard"
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
