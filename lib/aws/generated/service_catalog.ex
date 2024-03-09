# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ServiceCatalog do
  @moduledoc """
  Service Catalog

  [Service Catalog](http://aws.amazon.com/servicecatalog) enables organizations to create and manage catalogs of IT services that are approved for
  Amazon Web Services.

  To
  get the most out of this documentation, you should be familiar with the
  terminology
  discussed in [Service Catalog
  Concepts](http://docs.aws.amazon.com/servicecatalog/latest/adminguide/what-is_concepts.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2015-12-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "servicecatalog",
      global?: false,
      protocol: "json",
      service_id: "Service Catalog",
      signature_version: "v4",
      signing_name: "servicecatalog",
      target_prefix: "AWS242ServiceCatalogService"
    }
  end

  @doc """
  Accepts an offer to share the specified portfolio.
  """
  def accept_portfolio_share(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptPortfolioShare", input, options)
  end

  @doc """
  Associates the specified budget with the specified resource.
  """
  def associate_budget_with_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateBudgetWithResource", input, options)
  end

  @doc """
  Associates the specified principal ARN with the specified portfolio.

  If you share the portfolio with principal name sharing enabled, the
  `PrincipalARN` association is
  included in the share.

  The `PortfolioID`, `PrincipalARN`, and `PrincipalType` parameters are
  required.

  You can associate a maximum of 10 Principals with a portfolio using
  `PrincipalType` as `IAM_PATTERN`.

  When you associate a principal with portfolio, a potential privilege escalation
  path may occur when that portfolio is
  then shared with other accounts. For a user in a recipient account who is *not*
  an Service Catalog Admin,
  but still has the ability to create Principals (Users/Groups/Roles), that user
  could create a role that matches a principal
  name association for the portfolio. Although this user may not know which
  principal names are associated through
  Service Catalog, they may be able to guess the user. If this potential
  escalation path is a concern, then
  Service Catalog recommends using `PrincipalType` as `IAM`. With this
  configuration,
  the `PrincipalARN` must already exist in the recipient account before it can be
  associated.
  """
  def associate_principal_with_portfolio(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociatePrincipalWithPortfolio", input, options)
  end

  @doc """
  Associates the specified product with the specified portfolio.

  A delegated admin is authorized to invoke this command.
  """
  def associate_product_with_portfolio(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateProductWithPortfolio", input, options)
  end

  @doc """
  Associates a self-service action with a provisioning artifact.
  """
  def associate_service_action_with_provisioning_artifact(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "AssociateServiceActionWithProvisioningArtifact",
      input,
      options
    )
  end

  @doc """
  Associate the specified TagOption with the specified portfolio or product.
  """
  def associate_tag_option_with_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateTagOptionWithResource", input, options)
  end

  @doc """
  Associates multiple self-service actions with provisioning artifacts.
  """
  def batch_associate_service_action_with_provisioning_artifact(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "BatchAssociateServiceActionWithProvisioningArtifact",
      input,
      options
    )
  end

  @doc """
  Disassociates a batch of self-service actions from the specified provisioning
  artifact.
  """
  def batch_disassociate_service_action_from_provisioning_artifact(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "BatchDisassociateServiceActionFromProvisioningArtifact",
      input,
      options
    )
  end

  @doc """
  Copies the specified source product to the specified target product or a new
  product.

  You can copy a product to the same account or another account. You can copy a
  product
  to the same Region or another Region. If you copy a product to another account,
  you must
  first share the product in a portfolio using `CreatePortfolioShare`.

  This operation is performed asynchronously. To track the progress of the
  operation, use `DescribeCopyProductStatus`.
  """
  def copy_product(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CopyProduct", input, options)
  end

  @doc """
  Creates a constraint.

  A delegated admin is authorized to invoke this command.
  """
  def create_constraint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateConstraint", input, options)
  end

  @doc """
  Creates a portfolio.

  A delegated admin is authorized to invoke this command.
  """
  def create_portfolio(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePortfolio", input, options)
  end

  @doc """
  Shares the specified portfolio with the specified account or organization node.

  Shares to an organization node can only be created by the management account of
  an
  organization or by a delegated administrator. You can share portfolios to an
  organization,
  an organizational unit, or a specific account.

  Note that if a delegated admin is de-registered, they can no longer create
  portfolio shares.

  `AWSOrganizationsAccess` must be enabled in order to create a portfolio share to
  an organization node.

  You can't share a shared resource, including portfolios that contain a shared
  product.

  If the portfolio share with the specified account or organization node already
  exists, this action will have no effect
  and will not return an error. To update an existing share, you must use the `
  UpdatePortfolioShare` API instead.

  When you associate a principal with portfolio, a potential privilege escalation
  path may occur when that portfolio is
  then shared with other accounts. For a user in a recipient account who is *not*
  an Service Catalog Admin,
  but still has the ability to create Principals (Users/Groups/Roles), that user
  could create a role that matches a principal
  name association for the portfolio. Although this user may not know which
  principal names are associated through
  Service Catalog, they may be able to guess the user. If this potential
  escalation path is a concern, then
  Service Catalog recommends using `PrincipalType` as `IAM`. With this
  configuration,
  the `PrincipalARN` must already exist in the recipient account before it can be
  associated.
  """
  def create_portfolio_share(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePortfolioShare", input, options)
  end

  @doc """
  Creates a product.

  A delegated admin is authorized to invoke this command.

  The user or role that performs this operation must have the
  `cloudformation:GetTemplate` IAM policy permission. This policy permission is
  required when using the `ImportFromPhysicalId` template source in the
  information data section.
  """
  def create_product(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateProduct", input, options)
  end

  @doc """
  Creates a plan.

  A plan includes the list of resources to be
  created (when provisioning a new product) or modified (when updating a
  provisioned product)
  when the plan is executed.

  You can create one plan for each provisioned product. To create a plan for an
  existing
  provisioned product, the product status must be AVAILABLE or TAINTED.

  To view the resource changes in the change set, use
  `DescribeProvisionedProductPlan`.
  To create or modify the provisioned product, use
  `ExecuteProvisionedProductPlan`.
  """
  def create_provisioned_product_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateProvisionedProductPlan", input, options)
  end

  @doc """
  Creates a provisioning artifact (also known as a version) for the specified
  product.

  You cannot create a provisioning artifact for a product that was shared with
  you.

  The user or role that performs this operation must have the
  `cloudformation:GetTemplate`
  IAM policy permission. This policy permission is required when using the
  `ImportFromPhysicalId` template source in the information data section.
  """
  def create_provisioning_artifact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateProvisioningArtifact", input, options)
  end

  @doc """
  Creates a self-service action.
  """
  def create_service_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateServiceAction", input, options)
  end

  @doc """
  Creates a TagOption.
  """
  def create_tag_option(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTagOption", input, options)
  end

  @doc """
  Deletes the specified constraint.

  A delegated admin is authorized to invoke this command.
  """
  def delete_constraint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConstraint", input, options)
  end

  @doc """
  Deletes the specified portfolio.

  You cannot delete a portfolio if it was shared with you or if it has associated
  products, users, constraints, or shared accounts.

  A delegated admin is authorized to invoke this command.
  """
  def delete_portfolio(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePortfolio", input, options)
  end

  @doc """
  Stops sharing the specified portfolio with the specified account or organization
  node.

  Shares to an organization node can only be deleted by the management account of
  an
  organization or by a delegated administrator.

  Note that if a delegated admin is de-registered, portfolio shares created from
  that account are removed.
  """
  def delete_portfolio_share(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePortfolioShare", input, options)
  end

  @doc """
  Deletes the specified product.

  You cannot delete a product if it was shared with you or is associated with a
  portfolio.

  A delegated admin is authorized to invoke this command.
  """
  def delete_product(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteProduct", input, options)
  end

  @doc """
  Deletes the specified plan.
  """
  def delete_provisioned_product_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteProvisionedProductPlan", input, options)
  end

  @doc """
  Deletes the specified provisioning artifact (also known as a version) for the
  specified product.

  You cannot delete a provisioning artifact associated with a product that was
  shared with you.
  You cannot delete the last provisioning artifact for a product, because a
  product must have at
  least one provisioning artifact.
  """
  def delete_provisioning_artifact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteProvisioningArtifact", input, options)
  end

  @doc """
  Deletes a self-service action.
  """
  def delete_service_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteServiceAction", input, options)
  end

  @doc """
  Deletes the specified TagOption.

  You cannot delete a TagOption if it is associated with a product or portfolio.
  """
  def delete_tag_option(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTagOption", input, options)
  end

  @doc """
  Gets information about the specified constraint.
  """
  def describe_constraint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConstraint", input, options)
  end

  @doc """
  Gets the status of the specified copy product operation.
  """
  def describe_copy_product_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCopyProductStatus", input, options)
  end

  @doc """
  Gets information about the specified portfolio.

  A delegated admin is authorized to invoke this command.
  """
  def describe_portfolio(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePortfolio", input, options)
  end

  @doc """
  Gets the status of the specified portfolio share operation.

  This API can only be called
  by the management account in the organization or by a delegated admin.
  """
  def describe_portfolio_share_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePortfolioShareStatus", input, options)
  end

  @doc """
  Returns a summary of each of the portfolio shares that were created for the
  specified portfolio.

  You can use this API to determine which accounts or organizational nodes this
  portfolio have been shared, whether the recipient entity has imported the share,
  and
  whether TagOptions are included with the share.

  The `PortfolioId` and `Type` parameters are both required.
  """
  def describe_portfolio_shares(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePortfolioShares", input, options)
  end

  @doc """
  Gets information about the specified product.

  Running this operation
  with administrator access
  results
  in a failure.
  `DescribeProductAsAdmin` should be used instead.
  """
  def describe_product(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeProduct", input, options)
  end

  @doc """
  Gets information about the specified product.

  This operation is run with administrator access.
  """
  def describe_product_as_admin(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeProductAsAdmin", input, options)
  end

  @doc """
  Gets information about the specified product.
  """
  def describe_product_view(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeProductView", input, options)
  end

  @doc """
  Gets information about the specified provisioned product.
  """
  def describe_provisioned_product(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeProvisionedProduct", input, options)
  end

  @doc """
  Gets information about the resource changes for the specified plan.
  """
  def describe_provisioned_product_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeProvisionedProductPlan", input, options)
  end

  @doc """
  Gets information about the specified provisioning artifact (also known as a
  version) for the specified product.
  """
  def describe_provisioning_artifact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeProvisioningArtifact", input, options)
  end

  @doc """
  Gets information about the configuration required to provision the specified
  product using
  the specified provisioning artifact.

  If the output contains a TagOption key with an empty list of values, there is a
  TagOption conflict for that key. The end user cannot take action to fix the
  conflict, and
  launch is not blocked. In subsequent calls to `ProvisionProduct`,
  do not include conflicted TagOption keys as tags, or this causes the error
  "Parameter validation failed: Missing required parameter in Tags[*N*]:*Value*".
  Tag the provisioned product with the value
  `sc-tagoption-conflict-portfolioId-productId`.
  """
  def describe_provisioning_parameters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeProvisioningParameters", input, options)
  end

  @doc """
  Gets information about the specified request operation.

  Use this operation after calling a request operation (for example,
  `ProvisionProduct`,
  `TerminateProvisionedProduct`, or `UpdateProvisionedProduct`).

  If a provisioned product was transferred to a new owner using
  `UpdateProvisionedProductProperties`, the new owner
  will be able to describe all past records for that product. The previous owner
  will no longer be able to describe the records, but will be able to
  use `ListRecordHistory` to see the product's history from when he was the owner.
  """
  def describe_record(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRecord", input, options)
  end

  @doc """
  Describes a self-service action.
  """
  def describe_service_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeServiceAction", input, options)
  end

  @doc """
  Finds the default parameters for a specific self-service action on a specific
  provisioned product and returns a map of the results to the user.
  """
  def describe_service_action_execution_parameters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeServiceActionExecutionParameters", input, options)
  end

  @doc """
  Gets information about the specified TagOption.
  """
  def describe_tag_option(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTagOption", input, options)
  end

  @doc """
  Disable portfolio sharing through the Organizations service.

  This command will not
  delete your current shares, but prevents you from creating new shares throughout
  your
  organization. Current shares are not kept in sync with your organization
  structure if the structure
  changes after calling this API. Only the management account in the organization
  can call this API.

  You cannot call this API if there are active delegated administrators in the
  organization.

  Note that a delegated administrator is not authorized to invoke
  `DisableAWSOrganizationsAccess`.

  If you share an Service Catalog portfolio in an organization within
  Organizations, and then disable Organizations access for Service Catalog,
  the portfolio access permissions will not sync with the latest changes to the
  organization
  structure. Specifically, accounts that you removed from the organization after
  disabling Service Catalog access will retain access to the previously shared
  portfolio.
  """
  def disable_aws_organizations_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableAWSOrganizationsAccess", input, options)
  end

  @doc """
  Disassociates the specified budget from the specified resource.
  """
  def disassociate_budget_from_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateBudgetFromResource", input, options)
  end

  @doc """
  Disassociates a previously associated principal ARN from a specified
  portfolio.

  The `PrincipalType` and `PrincipalARN` must match the
  `AssociatePrincipalWithPortfolio` call request details. For example,
  to disassociate an association created with a `PrincipalARN` of `PrincipalType`
  IAM you must use the `PrincipalType` IAM when calling
  `DisassociatePrincipalFromPortfolio`.

  For portfolios that have been shared with principal name sharing enabled: after
  disassociating a principal,
  share recipient accounts will no longer be able to provision products in this
  portfolio using a role matching the name
  of the associated principal.

  For more information, review
  [associate-principal-with-portfolio](https://docs.aws.amazon.com/cli/latest/reference/servicecatalog/associate-principal-with-portfolio.html#options)
  in the Amazon Web Services CLI Command Reference.

  If you disassociate a principal from a portfolio, with PrincipalType as `IAM`,
  the same principal will
  still have access to the portfolio if it matches one of the associated
  principals of type `IAM_PATTERN`.
  To fully remove access for a principal, verify all the associated Principals of
  type `IAM_PATTERN`,
  and then ensure you disassociate any `IAM_PATTERN` principals that match the
  principal
  whose access you are removing.
  """
  def disassociate_principal_from_portfolio(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociatePrincipalFromPortfolio", input, options)
  end

  @doc """
  Disassociates the specified product from the specified portfolio.

  A delegated admin is authorized to invoke this command.
  """
  def disassociate_product_from_portfolio(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateProductFromPortfolio", input, options)
  end

  @doc """
  Disassociates the specified self-service action association from the specified
  provisioning artifact.
  """
  def disassociate_service_action_from_provisioning_artifact(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DisassociateServiceActionFromProvisioningArtifact",
      input,
      options
    )
  end

  @doc """
  Disassociates the specified TagOption from the specified resource.
  """
  def disassociate_tag_option_from_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateTagOptionFromResource", input, options)
  end

  @doc """
  Enable portfolio sharing feature through Organizations.

  This API will allow Service Catalog to receive updates on your organization in
  order to sync your shares with the
  current structure. This API can only be called by the management account in the
  organization.

  When you call this API, Service Catalog calls
  `organizations:EnableAWSServiceAccess` on your behalf so that your shares stay
  in sync with any changes in your Organizations structure.

  Note that a delegated administrator is not authorized to invoke
  `EnableAWSOrganizationsAccess`.

  If you have previously disabled Organizations access for Service Catalog, and
  then
  enable access again, the portfolio access permissions might not sync with the
  latest changes to
  the organization structure. Specifically, accounts that you removed from the
  organization after
  disabling Service Catalog access, and before you enabled access again, can
  retain access to the
  previously shared portfolio. As a result, an account that has been removed from
  the organization
  might still be able to create or manage Amazon Web Services resources when it is
  no longer
  authorized to do so. Amazon Web Services is working to resolve this issue.
  """
  def enable_aws_organizations_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableAWSOrganizationsAccess", input, options)
  end

  @doc """
  Provisions or modifies a product based on the resource changes for the specified
  plan.
  """
  def execute_provisioned_product_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExecuteProvisionedProductPlan", input, options)
  end

  @doc """
  Executes a self-service action against a provisioned product.
  """
  def execute_provisioned_product_service_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExecuteProvisionedProductServiceAction", input, options)
  end

  @doc """
  Get the Access Status for Organizations portfolio share feature.

  This API can only be
  called by the management account in the organization or by a delegated admin.
  """
  def get_aws_organizations_access_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAWSOrganizationsAccessStatus", input, options)
  end

  @doc """
  This API takes either a `ProvisonedProductId` or a `ProvisionedProductName`,
  along with a list of one or more output keys, and responds with the key/value
  pairs of those outputs.
  """
  def get_provisioned_product_outputs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetProvisionedProductOutputs", input, options)
  end

  @doc """

  Requests the import of a resource as an Service Catalog provisioned product
  that is associated to an Service Catalog product and provisioning artifact.

  Once imported, all supported governance actions are supported on the provisioned
  product.

  Resource import only supports CloudFormation stack ARNs. CloudFormation
  StackSets,
  and non-root nested stacks, are not supported.

  The CloudFormation stack must have one
  of the following statuses
  to be imported: `CREATE_COMPLETE`, `UPDATE_COMPLETE`,
  `UPDATE_ROLLBACK_COMPLETE`, `IMPORT_COMPLETE`, and
  `IMPORT_ROLLBACK_COMPLETE`.

  Import of the resource requires that the CloudFormation stack template matches
  the associated Service Catalog product provisioning artifact.

  When you import an existing CloudFormation stack
  into a portfolio, Service Catalog does not apply the product's associated
  constraints
  during the import process. Service Catalog applies the constraints
  after you call `UpdateProvisionedProduct` for the provisioned product.

  The user or role that performs this operation must have the
  `cloudformation:GetTemplate`
  and `cloudformation:DescribeStacks` IAM policy permissions.

  You can only import one provisioned product at a time. The product's
  CloudFormation stack must have the
  `IMPORT_COMPLETE` status before you import another.
  """
  def import_as_provisioned_product(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportAsProvisionedProduct", input, options)
  end

  @doc """
  Lists all imported portfolios for which account-to-account shares were accepted
  by
  this account.

  By specifying the `PortfolioShareType`, you can list portfolios for which
  organizational shares were accepted by this account.
  """
  def list_accepted_portfolio_shares(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAcceptedPortfolioShares", input, options)
  end

  @doc """
  Lists all the budgets associated to the specified resource.
  """
  def list_budgets_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBudgetsForResource", input, options)
  end

  @doc """
  Lists the constraints for the specified portfolio and product.
  """
  def list_constraints_for_portfolio(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListConstraintsForPortfolio", input, options)
  end

  @doc """

  Lists the paths
  to the specified product.

  A path describes
  how the user
  gets access
  to a specified product
  and is necessary
  when provisioning a product.
  A path also determines the constraints
  that are put on a product.
  A path is dependent
  on a specific product, porfolio, and principal.

  When provisioning a product
  that's been added
  to a portfolio,
  you must grant your user, group, or role access
  to the portfolio.
  For more information,
  see [Granting users access](https://docs.aws.amazon.com/servicecatalog/latest/adminguide/catalogs_portfolios_users.html)
  in the *Service Catalog User Guide*.
  """
  def list_launch_paths(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLaunchPaths", input, options)
  end

  @doc """
  Lists the organization nodes that have access to the specified portfolio.

  This API can
  only be called by the management account in the organization or by a delegated
  admin.

  If a delegated admin is de-registered, they can no longer perform this
  operation.
  """
  def list_organization_portfolio_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOrganizationPortfolioAccess", input, options)
  end

  @doc """
  Lists the account IDs that have access to the specified portfolio.

  A delegated admin can list the accounts that have access to the shared
  portfolio. Note that if a delegated admin is de-registered, they can no longer
  perform this operation.
  """
  def list_portfolio_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPortfolioAccess", input, options)
  end

  @doc """
  Lists all portfolios in the catalog.
  """
  def list_portfolios(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPortfolios", input, options)
  end

  @doc """
  Lists all portfolios that the specified product is associated with.
  """
  def list_portfolios_for_product(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPortfoliosForProduct", input, options)
  end

  @doc """
  Lists all `PrincipalARN`s and corresponding `PrincipalType`s associated with the
  specified portfolio.
  """
  def list_principals_for_portfolio(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPrincipalsForPortfolio", input, options)
  end

  @doc """
  Lists the plans for the specified provisioned product or all plans to which the
  user has access.
  """
  def list_provisioned_product_plans(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListProvisionedProductPlans", input, options)
  end

  @doc """
  Lists all provisioning artifacts (also known as versions) for the specified
  product.
  """
  def list_provisioning_artifacts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListProvisioningArtifacts", input, options)
  end

  @doc """
  Lists all provisioning artifacts (also known as versions) for the specified
  self-service action.
  """
  def list_provisioning_artifacts_for_service_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "ListProvisioningArtifactsForServiceAction",
      input,
      options
    )
  end

  @doc """
  Lists the specified requests or all performed requests.
  """
  def list_record_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRecordHistory", input, options)
  end

  @doc """
  Lists the resources associated with the specified TagOption.
  """
  def list_resources_for_tag_option(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourcesForTagOption", input, options)
  end

  @doc """
  Lists all self-service actions.
  """
  def list_service_actions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServiceActions", input, options)
  end

  @doc """
  Returns a paginated list of self-service actions associated with the specified
  Product ID and Provisioning Artifact ID.
  """
  def list_service_actions_for_provisioning_artifact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "ListServiceActionsForProvisioningArtifact",
      input,
      options
    )
  end

  @doc """
  Returns summary information about stack instances that are associated with the
  specified `CFN_STACKSET` type provisioned product.

  You can filter for stack instances that are associated with a specific Amazon
  Web Services account name or Region.
  """
  def list_stack_instances_for_provisioned_product(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStackInstancesForProvisionedProduct", input, options)
  end

  @doc """
  Lists the specified TagOptions or all TagOptions.
  """
  def list_tag_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagOptions", input, options)
  end

  @doc """

  Notifies the result
  of the provisioning engine execution.
  """
  def notify_provision_product_engine_workflow_result(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "NotifyProvisionProductEngineWorkflowResult",
      input,
      options
    )
  end

  @doc """

  Notifies the result
  of the terminate engine execution.
  """
  def notify_terminate_provisioned_product_engine_workflow_result(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "NotifyTerminateProvisionedProductEngineWorkflowResult",
      input,
      options
    )
  end

  @doc """

  Notifies the result
  of the update engine execution.
  """
  def notify_update_provisioned_product_engine_workflow_result(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "NotifyUpdateProvisionedProductEngineWorkflowResult",
      input,
      options
    )
  end

  @doc """

  Provisions the specified product.

  A provisioned product is a resourced instance
  of a product.
  For example,
  provisioning a product
  that's based
  on an CloudFormation template
  launches an CloudFormation stack and its underlying resources.
  You can check the status
  of this request
  using `DescribeRecord`.

  If the request contains a tag key
  with an empty list
  of values,
  there's a tag conflict
  for that key.
  Don't include conflicted keys
  as tags,
  or this will cause the error "Parameter validation failed: Missing required
  parameter in Tags[*N*]:*Value*". 

  When provisioning a product
  that's been added
  to a portfolio,
  you must grant your user, group, or role access
  to the portfolio.
  For more information,
  see [Granting users
  access](https://docs.aws.amazon.com/servicecatalog/latest/adminguide/catalogs_portfolios_users.html)
  in the *Service Catalog User Guide*.
  """
  def provision_product(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ProvisionProduct", input, options)
  end

  @doc """
  Rejects an offer to share the specified portfolio.
  """
  def reject_portfolio_share(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RejectPortfolioShare", input, options)
  end

  @doc """
  Lists the provisioned products that are available (not terminated).

  To use additional filtering, see `SearchProvisionedProducts`.
  """
  def scan_provisioned_products(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ScanProvisionedProducts", input, options)
  end

  @doc """
  Gets information about the products to which the caller has access.
  """
  def search_products(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchProducts", input, options)
  end

  @doc """
  Gets information about the products for the specified portfolio or all products.
  """
  def search_products_as_admin(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchProductsAsAdmin", input, options)
  end

  @doc """
  Gets information about the provisioned products that meet the specified
  criteria.
  """
  def search_provisioned_products(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchProvisionedProducts", input, options)
  end

  @doc """
  Terminates the specified provisioned product.

  This operation does not delete any records associated with the provisioned
  product.

  You can check the status of this request using `DescribeRecord`.
  """
  def terminate_provisioned_product(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TerminateProvisionedProduct", input, options)
  end

  @doc """
  Updates the specified constraint.
  """
  def update_constraint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateConstraint", input, options)
  end

  @doc """
  Updates the specified portfolio.

  You cannot update a product that was shared with you.
  """
  def update_portfolio(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePortfolio", input, options)
  end

  @doc """
  Updates the specified portfolio share.

  You can use this API to enable or disable `TagOptions` sharing
  or Principal sharing for an existing portfolio share.

  The portfolio share cannot be updated if the `CreatePortfolioShare` operation is
  `IN_PROGRESS`, as the share is not available to recipient entities.
  In this case, you must wait for the portfolio share to be completed.

  You must provide the `accountId` or organization node in the input, but not
  both.

  If the portfolio is shared to both an external account and an organization node,
  and both shares need to be updated, you must invoke `UpdatePortfolioShare`
  separately for each share type.

  This API cannot be used for removing the portfolio share. You must use
  `DeletePortfolioShare` API for that action.

  When you associate a principal with portfolio, a potential privilege escalation
  path may occur when that portfolio is
  then shared with other accounts. For a user in a recipient account who is *not*
  an Service Catalog Admin,
  but still has the ability to create Principals (Users/Groups/Roles), that user
  could create a role that matches a principal
  name association for the portfolio. Although this user may not know which
  principal names are associated through
  Service Catalog, they may be able to guess the user. If this potential
  escalation path is a concern, then
  Service Catalog recommends using `PrincipalType` as `IAM`. With this
  configuration,
  the `PrincipalARN` must already exist in the recipient account before it can be
  associated.
  """
  def update_portfolio_share(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePortfolioShare", input, options)
  end

  @doc """
  Updates the specified product.
  """
  def update_product(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateProduct", input, options)
  end

  @doc """
  Requests updates to the configuration of the specified provisioned product.

  If there are tags associated with the object, they cannot be updated or added.
  Depending on the specific updates requested, this operation can update with no
  interruption, with some interruption, or replace the provisioned product
  entirely.

  You can check the status of this request using `DescribeRecord`.
  """
  def update_provisioned_product(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateProvisionedProduct", input, options)
  end

  @doc """
  Requests updates to the properties of the specified provisioned product.
  """
  def update_provisioned_product_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateProvisionedProductProperties", input, options)
  end

  @doc """
  Updates the specified provisioning artifact (also known as a version) for the
  specified product.

  You cannot update a provisioning artifact for a product that was shared with
  you.
  """
  def update_provisioning_artifact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateProvisioningArtifact", input, options)
  end

  @doc """
  Updates a self-service action.
  """
  def update_service_action(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServiceAction", input, options)
  end

  @doc """
  Updates the specified TagOption.
  """
  def update_tag_option(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTagOption", input, options)
  end
end
