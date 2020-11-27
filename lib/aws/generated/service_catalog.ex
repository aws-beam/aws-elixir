# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ServiceCatalog do
  @moduledoc """
  AWS Service Catalog

  [AWS Service Catalog](https://aws.amazon.com/servicecatalog/) enables organizations to create and manage catalogs of IT services that are approved for
  AWS.

  To get the most out of this documentation, you should be familiar with the
  terminology discussed in [AWS Service Catalog
  Concepts](http://docs.aws.amazon.com/servicecatalog/latest/adminguide/what-is_concepts.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
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
    Request.request_post(client, metadata(), "AcceptPortfolioShare", input, options)
  end

  @doc """
  Associates the specified budget with the specified resource.
  """
  def associate_budget_with_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateBudgetWithResource", input, options)
  end

  @doc """
  Associates the specified principal ARN with the specified portfolio.
  """
  def associate_principal_with_portfolio(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociatePrincipalWithPortfolio", input, options)
  end

  @doc """
  Associates the specified product with the specified portfolio.

  A delegated admin is authorized to invoke this command.
  """
  def associate_product_with_portfolio(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateProductWithPortfolio", input, options)
  end

  @doc """
  Associates a self-service action with a provisioning artifact.
  """
  def associate_service_action_with_provisioning_artifact(
        %Client{} = client,
        input,
        options \\ []
      ) do
    Request.request_post(
      client,
      metadata(),
      "AssociateServiceActionWithProvisioningArtifact",
      input,
      options
    )
  end

  @doc """
  Associate the specified TagOption with the specified portfolio or product.
  """
  def associate_tag_option_with_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateTagOptionWithResource", input, options)
  end

  @doc """
  Associates multiple self-service actions with provisioning artifacts.
  """
  def batch_associate_service_action_with_provisioning_artifact(
        %Client{} = client,
        input,
        options \\ []
      ) do
    Request.request_post(
      client,
      metadata(),
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
    Request.request_post(
      client,
      metadata(),
      "BatchDisassociateServiceActionFromProvisioningArtifact",
      input,
      options
    )
  end

  @doc """
  Copies the specified source product to the specified target product or a new
  product.

  You can copy a product to the same account or another account. You can copy a
  product to the same region or another region.

  This operation is performed asynchronously. To track the progress of the
  operation, use `DescribeCopyProductStatus`.
  """
  def copy_product(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CopyProduct", input, options)
  end

  @doc """
  Creates a constraint.

  A delegated admin is authorized to invoke this command.
  """
  def create_constraint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateConstraint", input, options)
  end

  @doc """
  Creates a portfolio.

  A delegated admin is authorized to invoke this command.
  """
  def create_portfolio(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreatePortfolio", input, options)
  end

  @doc """
  Shares the specified portfolio with the specified account or organization node.

  Shares to an organization node can only be created by the management account of
  an organization or by a delegated administrator. You can share portfolios to an
  organization, an organizational unit, or a specific account.

  Note that if a delegated admin is de-registered, they can no longer create
  portfolio shares.

  `AWSOrganizationsAccess` must be enabled in order to create a portfolio share to
  an organization node.

  You can't share a shared resource. This includes portfolios that contain a
  shared product.
  """
  def create_portfolio_share(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreatePortfolioShare", input, options)
  end

  @doc """
  Creates a product.

  A delegated admin is authorized to invoke this command.
  """
  def create_product(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateProduct", input, options)
  end

  @doc """
  Creates a plan.

  A plan includes the list of resources to be created (when provisioning a new
  product) or modified (when updating a provisioned product) when the plan is
  executed.

  You can create one plan per provisioned product. To create a plan for an
  existing provisioned product, the product status must be AVAILBLE or TAINTED.

  To view the resource changes in the change set, use
  `DescribeProvisionedProductPlan`. To create or modify the provisioned product,
  use `ExecuteProvisionedProductPlan`.
  """
  def create_provisioned_product_plan(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateProvisionedProductPlan", input, options)
  end

  @doc """
  Creates a provisioning artifact (also known as a version) for the specified
  product.

  You cannot create a provisioning artifact for a product that was shared with
  you.
  """
  def create_provisioning_artifact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateProvisioningArtifact", input, options)
  end

  @doc """
  Creates a self-service action.
  """
  def create_service_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateServiceAction", input, options)
  end

  @doc """
  Creates a TagOption.
  """
  def create_tag_option(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateTagOption", input, options)
  end

  @doc """
  Deletes the specified constraint.

  A delegated admin is authorized to invoke this command.
  """
  def delete_constraint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteConstraint", input, options)
  end

  @doc """
  Deletes the specified portfolio.

  You cannot delete a portfolio if it was shared with you or if it has associated
  products, users, constraints, or shared accounts.

  A delegated admin is authorized to invoke this command.
  """
  def delete_portfolio(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeletePortfolio", input, options)
  end

  @doc """
  Stops sharing the specified portfolio with the specified account or organization
  node.

  Shares to an organization node can only be deleted by the management account of
  an organization or by a delegated administrator.

  Note that if a delegated admin is de-registered, portfolio shares created from
  that account are removed.
  """
  def delete_portfolio_share(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeletePortfolioShare", input, options)
  end

  @doc """
  Deletes the specified product.

  You cannot delete a product if it was shared with you or is associated with a
  portfolio.

  A delegated admin is authorized to invoke this command.
  """
  def delete_product(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteProduct", input, options)
  end

  @doc """
  Deletes the specified plan.
  """
  def delete_provisioned_product_plan(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteProvisionedProductPlan", input, options)
  end

  @doc """
  Deletes the specified provisioning artifact (also known as a version) for the
  specified product.

  You cannot delete a provisioning artifact associated with a product that was
  shared with you. You cannot delete the last provisioning artifact for a product,
  because a product must have at least one provisioning artifact.
  """
  def delete_provisioning_artifact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteProvisioningArtifact", input, options)
  end

  @doc """
  Deletes a self-service action.
  """
  def delete_service_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteServiceAction", input, options)
  end

  @doc """
  Deletes the specified TagOption.

  You cannot delete a TagOption if it is associated with a product or portfolio.
  """
  def delete_tag_option(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteTagOption", input, options)
  end

  @doc """
  Gets information about the specified constraint.
  """
  def describe_constraint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeConstraint", input, options)
  end

  @doc """
  Gets the status of the specified copy product operation.
  """
  def describe_copy_product_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeCopyProductStatus", input, options)
  end

  @doc """
  Gets information about the specified portfolio.

  A delegated admin is authorized to invoke this command.
  """
  def describe_portfolio(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribePortfolio", input, options)
  end

  @doc """
  Gets the status of the specified portfolio share operation.

  This API can only be called by the management account in the organization or by
  a delegated admin.
  """
  def describe_portfolio_share_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribePortfolioShareStatus", input, options)
  end

  @doc """
  Gets information about the specified product.
  """
  def describe_product(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeProduct", input, options)
  end

  @doc """
  Gets information about the specified product.

  This operation is run with administrator access.
  """
  def describe_product_as_admin(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeProductAsAdmin", input, options)
  end

  @doc """
  Gets information about the specified product.
  """
  def describe_product_view(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeProductView", input, options)
  end

  @doc """
  Gets information about the specified provisioned product.
  """
  def describe_provisioned_product(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeProvisionedProduct", input, options)
  end

  @doc """
  Gets information about the resource changes for the specified plan.
  """
  def describe_provisioned_product_plan(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeProvisionedProductPlan", input, options)
  end

  @doc """
  Gets information about the specified provisioning artifact (also known as a
  version) for the specified product.
  """
  def describe_provisioning_artifact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeProvisioningArtifact", input, options)
  end

  @doc """
  Gets information about the configuration required to provision the specified
  product using the specified provisioning artifact.

  If the output contains a TagOption key with an empty list of values, there is a
  TagOption conflict for that key. The end user cannot take action to fix the
  conflict, and launch is not blocked. In subsequent calls to `ProvisionProduct`,
  do not include conflicted TagOption keys as tags, or this causes the error
  "Parameter validation failed: Missing required parameter in Tags[*N*]:*Value*".
  Tag the provisioned product with the value
  `sc-tagoption-conflict-portfolioId-productId`.
  """
  def describe_provisioning_parameters(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeProvisioningParameters", input, options)
  end

  @doc """
  Gets information about the specified request operation.

  Use this operation after calling a request operation (for example,
  `ProvisionProduct`, `TerminateProvisionedProduct`, or
  `UpdateProvisionedProduct`).

  If a provisioned product was transferred to a new owner using
  `UpdateProvisionedProductProperties`, the new owner will be able to describe all
  past records for that product. The previous owner will no longer be able to
  describe the records, but will be able to use `ListRecordHistory` to see the
  product's history from when he was the owner.
  """
  def describe_record(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeRecord", input, options)
  end

  @doc """
  Describes a self-service action.
  """
  def describe_service_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeServiceAction", input, options)
  end

  @doc """
  Finds the default parameters for a specific self-service action on a specific
  provisioned product and returns a map of the results to the user.
  """
  def describe_service_action_execution_parameters(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeServiceActionExecutionParameters",
      input,
      options
    )
  end

  @doc """
  Gets information about the specified TagOption.
  """
  def describe_tag_option(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTagOption", input, options)
  end

  @doc """
  Disable portfolio sharing through AWS Organizations feature.

  This feature will not delete your current shares but it will prevent you from
  creating new shares throughout your organization. Current shares will not be in
  sync with your organization structure if it changes after calling this API. This
  API can only be called by the management account in the organization.

  This API can't be invoked if there are active delegated administrators in the
  organization.

  Note that a delegated administrator is not authorized to invoke
  `DisableAWSOrganizationsAccess`.
  """
  def disable_a_w_s_organizations_access(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisableAWSOrganizationsAccess", input, options)
  end

  @doc """
  Disassociates the specified budget from the specified resource.
  """
  def disassociate_budget_from_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateBudgetFromResource", input, options)
  end

  @doc """
  Disassociates a previously associated principal ARN from a specified portfolio.
  """
  def disassociate_principal_from_portfolio(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociatePrincipalFromPortfolio", input, options)
  end

  @doc """
  Disassociates the specified product from the specified portfolio.

  A delegated admin is authorized to invoke this command.
  """
  def disassociate_product_from_portfolio(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateProductFromPortfolio", input, options)
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
    Request.request_post(
      client,
      metadata(),
      "DisassociateServiceActionFromProvisioningArtifact",
      input,
      options
    )
  end

  @doc """
  Disassociates the specified TagOption from the specified resource.
  """
  def disassociate_tag_option_from_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateTagOptionFromResource", input, options)
  end

  @doc """
  Enable portfolio sharing feature through AWS Organizations.

  This API will allow Service Catalog to receive updates on your organization in
  order to sync your shares with the current structure. This API can only be
  called by the management account in the organization.

  By calling this API Service Catalog will make a call to
  organizations:EnableAWSServiceAccess on your behalf so that your shares can be
  in sync with any changes in your AWS Organizations structure.

  Note that a delegated administrator is not authorized to invoke
  `EnableAWSOrganizationsAccess`.
  """
  def enable_a_w_s_organizations_access(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EnableAWSOrganizationsAccess", input, options)
  end

  @doc """
  Provisions or modifies a product based on the resource changes for the specified
  plan.
  """
  def execute_provisioned_product_plan(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ExecuteProvisionedProductPlan", input, options)
  end

  @doc """
  Executes a self-service action against a provisioned product.
  """
  def execute_provisioned_product_service_action(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ExecuteProvisionedProductServiceAction",
      input,
      options
    )
  end

  @doc """
  Get the Access Status for AWS Organization portfolio share feature.

  This API can only be called by the management account in the organization or by
  a delegated admin.
  """
  def get_a_w_s_organizations_access_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAWSOrganizationsAccessStatus", input, options)
  end

  @doc """
  This API takes either a `ProvisonedProductId` or a `ProvisionedProductName`,
  along with a list of one or more output keys, and responds with the key/value
  pairs of those outputs.
  """
  def get_provisioned_product_outputs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetProvisionedProductOutputs", input, options)
  end

  @doc """
  Requests the import of a resource as a Service Catalog provisioned product that
  is associated to a Service Catalog product and provisioning artifact.

  Once imported all supported Service Catalog governance actions are supported on
  the provisioned product.

  Resource import only supports CloudFormation stack ARNs. CloudFormation
  StackSets and non-root nested stacks are not supported.

  The CloudFormation stack must have one of the following statuses to be imported:
  CREATE_COMPLETE, UPDATE_COMPLETE, UPDATE_ROLLBACK_COMPLETE, IMPORT_COMPLETE,
  IMPORT_ROLLBACK_COMPLETE.

  Import of the resource requires that the CloudFormation stack template matches
  the associated Service Catalog product provisioning artifact.
  """
  def import_as_provisioned_product(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ImportAsProvisionedProduct", input, options)
  end

  @doc """
  Lists all portfolios for which sharing was accepted by this account.
  """
  def list_accepted_portfolio_shares(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAcceptedPortfolioShares", input, options)
  end

  @doc """
  Lists all the budgets associated to the specified resource.
  """
  def list_budgets_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListBudgetsForResource", input, options)
  end

  @doc """
  Lists the constraints for the specified portfolio and product.
  """
  def list_constraints_for_portfolio(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListConstraintsForPortfolio", input, options)
  end

  @doc """
  Lists the paths to the specified product.

  A path is how the user has access to a specified product, and is necessary when
  provisioning a product. A path also determines the constraints put on the
  product.
  """
  def list_launch_paths(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListLaunchPaths", input, options)
  end

  @doc """
  Lists the organization nodes that have access to the specified portfolio.

  This API can only be called by the management account in the organization or by
  a delegated admin.

  If a delegated admin is de-registered, they can no longer perform this
  operation.
  """
  def list_organization_portfolio_access(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListOrganizationPortfolioAccess", input, options)
  end

  @doc """
  Lists the account IDs that have access to the specified portfolio.

  A delegated admin can list the accounts that have access to the shared
  portfolio. Note that if a delegated admin is de-registered, they can no longer
  perform this operation.
  """
  def list_portfolio_access(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPortfolioAccess", input, options)
  end

  @doc """
  Lists all portfolios in the catalog.
  """
  def list_portfolios(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPortfolios", input, options)
  end

  @doc """
  Lists all portfolios that the specified product is associated with.
  """
  def list_portfolios_for_product(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPortfoliosForProduct", input, options)
  end

  @doc """
  Lists all principal ARNs associated with the specified portfolio.
  """
  def list_principals_for_portfolio(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPrincipalsForPortfolio", input, options)
  end

  @doc """
  Lists the plans for the specified provisioned product or all plans to which the
  user has access.
  """
  def list_provisioned_product_plans(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListProvisionedProductPlans", input, options)
  end

  @doc """
  Lists all provisioning artifacts (also known as versions) for the specified
  product.
  """
  def list_provisioning_artifacts(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListProvisioningArtifacts", input, options)
  end

  @doc """
  Lists all provisioning artifacts (also known as versions) for the specified
  self-service action.
  """
  def list_provisioning_artifacts_for_service_action(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListProvisioningArtifactsForServiceAction",
      input,
      options
    )
  end

  @doc """
  Lists the specified requests or all performed requests.
  """
  def list_record_history(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListRecordHistory", input, options)
  end

  @doc """
  Lists the resources associated with the specified TagOption.
  """
  def list_resources_for_tag_option(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListResourcesForTagOption", input, options)
  end

  @doc """
  Lists all self-service actions.
  """
  def list_service_actions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListServiceActions", input, options)
  end

  @doc """
  Returns a paginated list of self-service actions associated with the specified
  Product ID and Provisioning Artifact ID.
  """
  def list_service_actions_for_provisioning_artifact(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListServiceActionsForProvisioningArtifact",
      input,
      options
    )
  end

  @doc """
  Returns summary information about stack instances that are associated with the
  specified `CFN_STACKSET` type provisioned product.

  You can filter for stack instances that are associated with a specific AWS
  account name or region.
  """
  def list_stack_instances_for_provisioned_product(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListStackInstancesForProvisionedProduct",
      input,
      options
    )
  end

  @doc """
  Lists the specified TagOptions or all TagOptions.
  """
  def list_tag_options(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagOptions", input, options)
  end

  @doc """
  Provisions the specified product.

  A provisioned product is a resourced instance of a product. For example,
  provisioning a product based on a CloudFormation template launches a
  CloudFormation stack and its underlying resources. You can check the status of
  this request using `DescribeRecord`.

  If the request contains a tag key with an empty list of values, there is a tag
  conflict for that key. Do not include conflicted keys as tags, or this causes
  the error "Parameter validation failed: Missing required parameter in
  Tags[*N*]:*Value*".
  """
  def provision_product(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ProvisionProduct", input, options)
  end

  @doc """
  Rejects an offer to share the specified portfolio.
  """
  def reject_portfolio_share(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RejectPortfolioShare", input, options)
  end

  @doc """
  Lists the provisioned products that are available (not terminated).

  To use additional filtering, see `SearchProvisionedProducts`.
  """
  def scan_provisioned_products(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ScanProvisionedProducts", input, options)
  end

  @doc """
  Gets information about the products to which the caller has access.
  """
  def search_products(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SearchProducts", input, options)
  end

  @doc """
  Gets information about the products for the specified portfolio or all products.
  """
  def search_products_as_admin(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SearchProductsAsAdmin", input, options)
  end

  @doc """
  Gets information about the provisioned products that meet the specified
  criteria.
  """
  def search_provisioned_products(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SearchProvisionedProducts", input, options)
  end

  @doc """
  Terminates the specified provisioned product.

  This operation does not delete any records associated with the provisioned
  product.

  You can check the status of this request using `DescribeRecord`.
  """
  def terminate_provisioned_product(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TerminateProvisionedProduct", input, options)
  end

  @doc """
  Updates the specified constraint.
  """
  def update_constraint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateConstraint", input, options)
  end

  @doc """
  Updates the specified portfolio.

  You cannot update a product that was shared with you.
  """
  def update_portfolio(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdatePortfolio", input, options)
  end

  @doc """
  Updates the specified product.
  """
  def update_product(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateProduct", input, options)
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
    Request.request_post(client, metadata(), "UpdateProvisionedProduct", input, options)
  end

  @doc """
  Requests updates to the properties of the specified provisioned product.
  """
  def update_provisioned_product_properties(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateProvisionedProductProperties", input, options)
  end

  @doc """
  Updates the specified provisioning artifact (also known as a version) for the
  specified product.

  You cannot update a provisioning artifact for a product that was shared with
  you.
  """
  def update_provisioning_artifact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateProvisioningArtifact", input, options)
  end

  @doc """
  Updates a self-service action.
  """
  def update_service_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateServiceAction", input, options)
  end

  @doc """
  Updates the specified TagOption.
  """
  def update_tag_option(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateTagOption", input, options)
  end
end