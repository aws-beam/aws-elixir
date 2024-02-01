# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudFormation do
  @moduledoc """
  CloudFormation

  CloudFormation allows you to create and manage Amazon Web Services
  infrastructure deployments predictably and repeatedly.

  You can use CloudFormation to leverage Amazon Web Services products, such as
  Amazon Elastic Compute Cloud, Amazon Elastic Block Store, Amazon Simple
  Notification Service, Elastic Load Balancing, and Auto Scaling to build highly
  reliable, highly scalable, cost-effective applications without creating or
  configuring the underlying Amazon Web Services infrastructure.

  With CloudFormation, you declare all your resources and dependencies in a
  template file. The template defines a collection of resources as a single unit
  called a stack. CloudFormation creates and deletes all member resources of the
  stack together and manages all dependencies between the resources for you.

  For more information about CloudFormation, see the [CloudFormation product page](http://aws.amazon.com/cloudformation/).

  CloudFormation makes use of other Amazon Web Services products. If you need
  additional technical information about a specific Amazon Web Services product,
  you can find the product's technical documentation at
  [docs.aws.amazon.com](https://docs.aws.amazon.com/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2010-05-15",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "cloudformation",
      global?: false,
      protocol: "query",
      service_id: "CloudFormation",
      signature_version: "v4",
      signing_name: "cloudformation",
      target_prefix: nil
    }
  end

  @doc """
  Activate trusted access with Organizations.

  With trusted access between StackSets and Organizations activated, the
  management account has permissions to create and manage StackSets for your
  organization.
  """
  def activate_organizations_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ActivateOrganizationsAccess", input, options)
  end

  @doc """
  Activates a public third-party extension, making it available for use in stack
  templates.

  For more information, see [Using public extensions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html)
  in the *CloudFormation User Guide*.

  Once you have activated a public third-party extension in your account and
  Region, use
  [SetTypeConfiguration](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html) to specify configuration properties for the extension. For more information, see
  [Configuring extensions at the account
  level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration)
  in the *CloudFormation User Guide*.
  """
  def activate_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ActivateType", input, options)
  end

  @doc """
  Returns configuration data for the specified CloudFormation extensions, from the
  CloudFormation registry for the account and Region.

  For more information, see [Configuring extensions at the account level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration)
  in the *CloudFormation User Guide*.
  """
  def batch_describe_type_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDescribeTypeConfigurations", input, options)
  end

  @doc """
  Cancels an update on the specified stack.

  If the call completes successfully, the stack rolls back the update and reverts
  to the previous stack configuration.

  You can cancel only stacks that are in the `UPDATE_IN_PROGRESS` state.
  """
  def cancel_update_stack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelUpdateStack", input, options)
  end

  @doc """
  For a specified stack that's in the `UPDATE_ROLLBACK_FAILED` state, continues
  rolling it back to the `UPDATE_ROLLBACK_COMPLETE` state.

  Depending on the cause of the failure, you can manually [ fix the error](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed)
  and continue the rollback. By continuing the rollback, you can return your stack
  to a working state (the `UPDATE_ROLLBACK_COMPLETE` state), and then try to
  update the stack again.

  A stack goes into the `UPDATE_ROLLBACK_FAILED` state when CloudFormation can't
  roll back all changes after a failed stack update. For example, you might have a
  stack that's rolling back to an old database instance that was deleted outside
  of CloudFormation. Because CloudFormation doesn't know the database was deleted,
  it assumes that the database instance still exists and attempts to roll back to
  it, causing the update rollback to fail.
  """
  def continue_update_rollback(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ContinueUpdateRollback", input, options)
  end

  @doc """
  Creates a list of changes that will be applied to a stack so that you can review
  the changes before executing them.

  You can create a change set for a stack that doesn't exist or an existing stack.
  If you create a change set for a stack that doesn't exist, the change set shows
  all of the resources that CloudFormation will create. If you create a change set
  for an existing stack, CloudFormation compares the stack's information with the
  information that you submit in the change set and lists the differences. Use
  change sets to understand which resources CloudFormation will create or change,
  and how it will change resources in an existing stack, before you create or
  update a stack.

  To create a change set for a stack that doesn't exist, for the `ChangeSetType`
  parameter, specify `CREATE`. To create a change set for an existing stack,
  specify `UPDATE` for the `ChangeSetType` parameter. To create a change set for
  an import operation, specify `IMPORT` for the `ChangeSetType` parameter. After
  the `CreateChangeSet` call successfully completes, CloudFormation starts
  creating the change set. To check the status of the change set or to review it,
  use the `DescribeChangeSet` action.

  When you are satisfied with the changes the change set will make, execute the
  change set by using the `ExecuteChangeSet` action. CloudFormation doesn't make
  changes until you execute the change set.

  To create a change set for the entire stack hierarchy, set `IncludeNestedStacks`
  to `True`.
  """
  def create_change_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateChangeSet", input, options)
  end

  @doc """
  Creates a template from existing resources that are not already managed with
  CloudFormation.

  You can check the status of the template generation using the
  `DescribeGeneratedTemplate` API action.
  """
  def create_generated_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGeneratedTemplate", input, options)
  end

  @doc """
  Creates a stack as specified in the template.

  After the call completes successfully, the stack creation starts. You can check
  the status of the stack through the `DescribeStacks` operation.
  """
  def create_stack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStack", input, options)
  end

  @doc """
  Creates stack instances for the specified accounts, within the specified Amazon
  Web Services Regions.

  A stack instance refers to a stack in a specific account and Region. You must
  specify at least one value for either `Accounts` or `DeploymentTargets`, and you
  must specify at least one value for `Regions`.
  """
  def create_stack_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStackInstances", input, options)
  end

  @doc """
  Creates a stack set.
  """
  def create_stack_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStackSet", input, options)
  end

  @doc """
  Deactivates trusted access with Organizations.

  If trusted access is deactivated, the management account does not have
  permissions to create and manage service-managed StackSets for your
  organization.
  """
  def deactivate_organizations_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeactivateOrganizationsAccess", input, options)
  end

  @doc """
  Deactivates a public extension that was previously activated in this account and
  Region.

  Once deactivated, an extension can't be used in any CloudFormation operation.
  This includes stack update operations where the stack template includes the
  extension, even if no updates are being made to the extension. In addition,
  deactivated extensions aren't automatically updated if a new version of the
  extension is released.
  """
  def deactivate_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeactivateType", input, options)
  end

  @doc """
  Deletes the specified change set.

  Deleting change sets ensures that no one executes the wrong change set.

  If the call successfully completes, CloudFormation successfully deleted the
  change set.

  If `IncludeNestedStacks` specifies `True` during the creation of the nested
  change set, then `DeleteChangeSet` will delete all change sets that belong to
  the stacks hierarchy and will also delete all change sets for nested stacks with
  the status of `REVIEW_IN_PROGRESS`.
  """
  def delete_change_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteChangeSet", input, options)
  end

  @doc """
  Deleted a generated template.
  """
  def delete_generated_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGeneratedTemplate", input, options)
  end

  @doc """
  Deletes a specified stack.

  Once the call completes successfully, stack deletion starts. Deleted stacks
  don't show up in the `DescribeStacks` operation if the deletion has been
  completed successfully.
  """
  def delete_stack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStack", input, options)
  end

  @doc """
  Deletes stack instances for the specified accounts, in the specified Amazon Web
  Services Regions.
  """
  def delete_stack_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStackInstances", input, options)
  end

  @doc """
  Deletes a stack set.

  Before you can delete a stack set, all its member stack instances must be
  deleted. For more information about how to complete this, see
  `DeleteStackInstances`.
  """
  def delete_stack_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStackSet", input, options)
  end

  @doc """
  Marks an extension or extension version as `DEPRECATED` in the CloudFormation
  registry, removing it from active use.

  Deprecated extensions or extension versions cannot be used in CloudFormation
  operations.

  To deregister an entire extension, you must individually deregister all active
  versions of that extension. If an extension has only a single active version,
  deregistering that version results in the extension itself being deregistered
  and marked as deprecated in the registry.

  You can't deregister the default version of an extension if there are other
  active version of that extension. If you do deregister the default version of an
  extension, the extension type itself is deregistered as well and marked as
  deprecated.

  To view the deprecation status of an extension or extension version, use
  [DescribeType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html).
  """
  def deregister_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterType", input, options)
  end

  @doc """
  Retrieves your account's CloudFormation limits, such as the maximum number of
  stacks that you can create in your account.

  For more information about account limits, see [CloudFormation Quotas](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html)
  in the *CloudFormation User Guide*.
  """
  def describe_account_limits(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccountLimits", input, options)
  end

  @doc """
  Returns the inputs for the change set and a list of changes that CloudFormation
  will make if you execute the change set.

  For more information, see [Updating Stacks Using Change Sets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html)
  in the *CloudFormation User Guide*.
  """
  def describe_change_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeChangeSet", input, options)
  end

  @doc """
  Returns hook-related information for the change set and a list of changes that
  CloudFormation makes when you run the change set.
  """
  def describe_change_set_hooks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeChangeSetHooks", input, options)
  end

  @doc """
  Describes a generated template.

  The output includes details about the progress of the creation of a generated
  template started by a `CreateGeneratedTemplate` API action or the update of a
  generated template started with an `UpdateGeneratedTemplate` API action.
  """
  def describe_generated_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGeneratedTemplate", input, options)
  end

  @doc """
  Retrieves information about the account's `OrganizationAccess` status.

  This API can be called either by the management account or the delegated
  administrator by using the `CallAs` parameter. This API can also be called
  without the `CallAs` parameter by the management account.
  """
  def describe_organizations_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeOrganizationsAccess", input, options)
  end

  @doc """
  Returns information about a CloudFormation extension publisher.

  If you don't supply a `PublisherId`, and you have registered as an extension
  publisher, `DescribePublisher` returns information about your own publisher
  account.

  For more information about registering as a publisher, see:

    *
  [RegisterPublisher](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterPublisher.html)     * [Publishing extensions to make them available for public
  use](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html)
  in the *CloudFormation CLI User Guide*
  """
  def describe_publisher(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePublisher", input, options)
  end

  @doc """
  Describes details of a resource scan.
  """
  def describe_resource_scan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeResourceScan", input, options)
  end

  @doc """
  Returns information about a stack drift detection operation.

  A stack drift detection operation detects whether a stack's actual configuration
  differs, or has *drifted*, from its expected configuration, as defined in the
  stack template and any values specified as template parameters. A stack is
  considered to have drifted if one or more of its resources have drifted. For
  more information about stack and resource drift, see [Detecting Unregulated Configuration Changes to Stacks and
  Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).

  Use `DetectStackDrift` to initiate a stack drift detection operation.
  `DetectStackDrift` returns a `StackDriftDetectionId` you can use to monitor the
  progress of the operation using `DescribeStackDriftDetectionStatus`. Once the
  drift detection operation has completed, use `DescribeStackResourceDrifts` to
  return drift information about the stack and its resources.
  """
  def describe_stack_drift_detection_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStackDriftDetectionStatus", input, options)
  end

  @doc """
  Returns all stack related events for a specified stack in reverse chronological
  order.

  For more information about a stack's event history, go to
  [Stacks](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/concept-stack.html)
  in the *CloudFormation User Guide*.

  You can list events for stacks that have failed to create or have been deleted
  by specifying the unique stack identifier (stack ID).
  """
  def describe_stack_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStackEvents", input, options)
  end

  @doc """
  Returns the stack instance that's associated with the specified StackSet, Amazon
  Web Services account, and Amazon Web Services Region.

  For a list of stack instances that are associated with a specific StackSet, use
  `ListStackInstances`.
  """
  def describe_stack_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStackInstance", input, options)
  end

  @doc """
  Returns a description of the specified resource in the specified stack.

  For deleted stacks, DescribeStackResource returns resource information for up to
  90 days after the stack has been deleted.
  """
  def describe_stack_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStackResource", input, options)
  end

  @doc """
  Returns drift information for the resources that have been checked for drift in
  the specified stack.

  This includes actual and expected configuration values for resources where
  CloudFormation detects configuration drift.

  For a given stack, there will be one `StackResourceDrift` for each stack
  resource that has been checked for drift. Resources that haven't yet been
  checked for drift aren't included. Resources that don't currently support drift
  detection aren't checked, and so not included. For a list of resources that
  support drift detection, see [Resources that Support Drift Detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).

  Use `DetectStackResourceDrift` to detect drift on individual resources, or
  `DetectStackDrift` to detect drift on all supported resources for a given stack.
  """
  def describe_stack_resource_drifts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStackResourceDrifts", input, options)
  end

  @doc """
  Returns Amazon Web Services resource descriptions for running and deleted
  stacks.

  If `StackName` is specified, all the associated resources that are part of the
  stack are returned. If `PhysicalResourceId` is specified, the associated
  resources of the stack that the resource belongs to are returned.

  Only the first 100 resources will be returned. If your stack has more resources
  than this, you should use `ListStackResources` instead.

  For deleted stacks, `DescribeStackResources` returns resource information for up
  to 90 days after the stack has been deleted.

  You must specify either `StackName` or `PhysicalResourceId`, but not both. In
  addition, you can specify `LogicalResourceId` to filter the returned result. For
  more information about resources, the `LogicalResourceId` and
  `PhysicalResourceId`, go to the [CloudFormation User Guide](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/).

  A `ValidationError` is returned if you specify both `StackName` and
  `PhysicalResourceId` in the same request.
  """
  def describe_stack_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStackResources", input, options)
  end

  @doc """
  Returns the description of the specified StackSet.
  """
  def describe_stack_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStackSet", input, options)
  end

  @doc """
  Returns the description of the specified StackSet operation.
  """
  def describe_stack_set_operation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStackSetOperation", input, options)
  end

  @doc """
  Returns the description for the specified stack; if no stack name was specified,
  then it returns the description for all the stacks created.

  If the stack doesn't exist, a `ValidationError` is returned.
  """
  def describe_stacks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStacks", input, options)
  end

  @doc """
  Returns detailed information about an extension that has been registered.

  If you specify a `VersionId`, `DescribeType` returns information about that
  specific extension version. Otherwise, it returns information about the default
  extension version.
  """
  def describe_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeType", input, options)
  end

  @doc """
  Returns information about an extension's registration, including its current
  status and type and version identifiers.

  When you initiate a registration request using `RegisterType`, you can then use
  `DescribeTypeRegistration` to monitor the progress of that registration request.

  Once the registration request has completed, use `DescribeType` to return
  detailed information about an extension.
  """
  def describe_type_registration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTypeRegistration", input, options)
  end

  @doc """
  Detects whether a stack's actual configuration differs, or has *drifted*, from
  its expected configuration, as defined in the stack template and any values
  specified as template parameters.

  For each resource in the stack that supports drift detection, CloudFormation
  compares the actual configuration of the resource with its expected template
  configuration. Only resource properties explicitly defined in the stack template
  are checked for drift. A stack is considered to have drifted if one or more of
  its resources differ from their expected template configurations. For more
  information, see [Detecting Unregulated Configuration Changes to Stacks and Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).

  Use `DetectStackDrift` to detect drift on all supported resources for a given
  stack, or `DetectStackResourceDrift` to detect drift on individual resources.

  For a list of stack resources that currently support drift detection, see
  [Resources that Support Drift Detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).

  `DetectStackDrift` can take up to several minutes, depending on the number of
  resources contained within the stack. Use `DescribeStackDriftDetectionStatus` to
  monitor the progress of a detect stack drift operation. Once the drift detection
  operation has completed, use `DescribeStackResourceDrifts` to return drift
  information about the stack and its resources.

  When detecting drift on a stack, CloudFormation doesn't detect drift on any
  nested stacks belonging to that stack. Perform `DetectStackDrift` directly on
  the nested stack itself.
  """
  def detect_stack_drift(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectStackDrift", input, options)
  end

  @doc """
  Returns information about whether a resource's actual configuration differs, or
  has *drifted*, from its expected configuration, as defined in the stack template
  and any values specified as template parameters.

  This information includes actual and expected property values for resources in
  which CloudFormation detects drift. Only resource properties explicitly defined
  in the stack template are checked for drift. For more information about stack
  and resource drift, see [Detecting Unregulated Configuration Changes to Stacks and
  Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).

  Use `DetectStackResourceDrift` to detect drift on individual resources, or
  `DetectStackDrift` to detect drift on all resources in a given stack that
  support drift detection.

  Resources that don't currently support drift detection can't be checked. For a
  list of resources that support drift detection, see [Resources that Support Drift
  Detection](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).
  """
  def detect_stack_resource_drift(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectStackResourceDrift", input, options)
  end

  @doc """
  Detect drift on a stack set.

  When CloudFormation performs drift detection on a stack set, it performs drift
  detection on the stack associated with each stack instance in the stack set. For
  more information, see [How CloudFormation performs drift detection on a stack set](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html).

  `DetectStackSetDrift` returns the `OperationId` of the stack set drift detection
  operation. Use this operation id with `DescribeStackSetOperation` to monitor the
  progress of the drift detection operation. The drift detection operation may
  take some time, depending on the number of stack instances included in the stack
  set, in addition to the number of resources included in each stack.

  Once the operation has completed, use the following actions to return drift
  information:

    * Use `DescribeStackSet` to return detailed information about the
  stack set, including detailed information about the last *completed* drift
  operation performed on the stack set. (Information about drift operations that
  are in progress isn't included.)

    * Use `ListStackInstances` to return a list of stack instances
  belonging to the stack set, including the drift status and last drift time
  checked of each instance.

    * Use `DescribeStackInstance` to return detailed information about a
  specific stack instance, including its drift status and last drift time checked.

  For more information about performing a drift detection operation on a stack
  set, see [Detecting unmanaged changes in stack sets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html).

  You can only run a single drift detection operation on a given stack set at one
  time.

  To stop a drift detection stack set operation, use `StopStackSetOperation`.
  """
  def detect_stack_set_drift(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectStackSetDrift", input, options)
  end

  @doc """
  Returns the estimated monthly cost of a template.

  The return value is an Amazon Web Services Simple Monthly Calculator URL with a
  query string that describes the resources required to run the template.
  """
  def estimate_template_cost(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EstimateTemplateCost", input, options)
  end

  @doc """
  Updates a stack using the input information that was provided when the specified
  change set was created.

  After the call successfully completes, CloudFormation starts updating the stack.
  Use the `DescribeStacks` action to view the status of the update.

  When you execute a change set, CloudFormation deletes all other change sets
  associated with the stack because they aren't valid for the updated stack.

  If a stack policy is associated with the stack, CloudFormation enforces the
  policy during the update. You can't specify a temporary stack policy that
  overrides the current policy.

  To create a change set for the entire stack hierarchy, `IncludeNestedStacks`
  must have been set to `True`.
  """
  def execute_change_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExecuteChangeSet", input, options)
  end

  @doc """
  Retrieves a generated template.

  If the template is in an `InProgress` or `Pending` status then the template
  returned will be the template when the template was last in a `Complete` status.
  If the template has not yet been in a `Complete` status then an empty template
  will be returned.
  """
  def get_generated_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetGeneratedTemplate", input, options)
  end

  @doc """
  Returns the stack policy for a specified stack.

  If a stack doesn't have a policy, a null value is returned.
  """
  def get_stack_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetStackPolicy", input, options)
  end

  @doc """
  Returns the template body for a specified stack.

  You can get the template for running or deleted stacks.

  For deleted stacks, `GetTemplate` returns the template for up to 90 days after
  the stack has been deleted.

  If the template doesn't exist, a `ValidationError` is returned.
  """
  def get_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTemplate", input, options)
  end

  @doc """
  Returns information about a new or existing template.

  The `GetTemplateSummary` action is useful for viewing parameter information,
  such as default parameter values and parameter types, before you create or
  update a stack or stack set.

  You can use the `GetTemplateSummary` action when you submit a template, or you
  can get template information for a stack set, or a running or deleted stack.

  For deleted stacks, `GetTemplateSummary` returns the template information for up
  to 90 days after the stack has been deleted. If the template doesn't exist, a
  `ValidationError` is returned.
  """
  def get_template_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTemplateSummary", input, options)
  end

  @doc """
  Import existing stacks into a new stack sets.

  Use the stack import operation to import up to 10 stacks into a new stack set in
  the same account as the source stack or in a different administrator account and
  Region, by specifying the stack ID of the stack you intend to import.
  """
  def import_stacks_to_stack_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportStacksToStackSet", input, options)
  end

  @doc """
  Returns the ID and status of each active change set for a stack.

  For example, CloudFormation lists change sets that are in the
  `CREATE_IN_PROGRESS` or `CREATE_PENDING` state.
  """
  def list_change_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListChangeSets", input, options)
  end

  @doc """
  Lists all exported output values in the account and Region in which you call
  this action.

  Use this action to see the exported output values that you can import into other
  stacks. To import values, use the [
  Fn::ImportValue](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html)
  function.

  For more information, see [ CloudFormation export stack output values](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html).
  """
  def list_exports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListExports", input, options)
  end

  @doc """
  Lists your generated templates in this Region.
  """
  def list_generated_templates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGeneratedTemplates", input, options)
  end

  @doc """
  Lists all stacks that are importing an exported output value.

  To modify or remove an exported output value, first use this action to see which
  stacks are using it. To see the exported output values in your account, see
  `ListExports`.

  For more information about importing an exported output value, see the
  [Fn::ImportValue](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html)
  function.
  """
  def list_imports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListImports", input, options)
  end

  @doc """
  Lists the related resources for a list of resources from a resource scan.

  The response indicates whether each returned resource is already managed by
  CloudFormation.
  """
  def list_resource_scan_related_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceScanRelatedResources", input, options)
  end

  @doc """
  Lists the resources from a resource scan.

  The results can be filtered by resource identifier, resource type prefix, tag
  key, and tag value. Only resources that match all specified filters are
  returned. The response indicates whether each returned resource is already
  managed by CloudFormation.
  """
  def list_resource_scan_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceScanResources", input, options)
  end

  @doc """
  List the resource scans from newest to oldest.

  By default it will return up to 10 resource scans.
  """
  def list_resource_scans(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceScans", input, options)
  end

  @doc """
  Returns drift information for resources in a stack instance.

  `ListStackInstanceResourceDrifts` returns drift information for the most recent
  drift detection operation. If an operation is in progress, it may only return
  partial results.
  """
  def list_stack_instance_resource_drifts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStackInstanceResourceDrifts", input, options)
  end

  @doc """
  Returns summary information about stack instances that are associated with the
  specified stack set.

  You can filter for stack instances that are associated with a specific Amazon
  Web Services account name or Region, or that have a specific status.
  """
  def list_stack_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStackInstances", input, options)
  end

  @doc """
  Returns descriptions of all resources of the specified stack.

  For deleted stacks, ListStackResources returns resource information for up to 90
  days after the stack has been deleted.
  """
  def list_stack_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStackResources", input, options)
  end

  @doc """
  Returns summary information about the results of a stack set operation.
  """
  def list_stack_set_operation_results(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStackSetOperationResults", input, options)
  end

  @doc """
  Returns summary information about operations performed on a stack set.
  """
  def list_stack_set_operations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStackSetOperations", input, options)
  end

  @doc """
  Returns summary information about stack sets that are associated with the user.

    * [Self-managed permissions] If you set the `CallAs` parameter to `SELF` while signed in to your Amazon Web Services account, `ListStackSets`
  returns all self-managed stack sets in your Amazon Web Services account.

    * [Service-managed permissions] If you set the `CallAs` parameter to
  `SELF` while signed in to the organization's management account, `ListStackSets`
  returns all stack sets in the management account.

    * [Service-managed permissions] If you set the `CallAs` parameter to
  `DELEGATED_ADMIN` while signed in to your member account, `ListStackSets`
  returns all stack sets with service-managed permissions in the management
  account.
  """
  def list_stack_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStackSets", input, options)
  end

  @doc """
  Returns the summary information for stacks whose status matches the specified
  StackStatusFilter.

  Summary information for stacks that have been deleted is kept for 90 days after
  the stack is deleted. If no StackStatusFilter is specified, summary information
  for all stacks is returned (including existing stacks and stacks that have been
  deleted).
  """
  def list_stacks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStacks", input, options)
  end

  @doc """
  Returns a list of registration tokens for the specified extension(s).
  """
  def list_type_registrations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTypeRegistrations", input, options)
  end

  @doc """
  Returns summary information about the versions of an extension.
  """
  def list_type_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTypeVersions", input, options)
  end

  @doc """
  Returns summary information about extension that have been registered with
  CloudFormation.
  """
  def list_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTypes", input, options)
  end

  @doc """
  Publishes the specified extension to the CloudFormation registry as a public
  extension in this Region.

  Public extensions are available for use by all CloudFormation users. For more
  information about publishing extensions, see [Publishing extensions to make them available for public
  use](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html)
  in the *CloudFormation CLI User Guide*.

  To publish an extension, you must be registered as a publisher with
  CloudFormation. For more information, see
  [RegisterPublisher](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterPublisher.html).
  """
  def publish_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PublishType", input, options)
  end

  @doc """
  Reports progress of a resource handler to CloudFormation.

  Reserved for use by the [CloudFormation CLI](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html).
  Don't use this API in your code.
  """
  def record_handler_progress(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RecordHandlerProgress", input, options)
  end

  @doc """
  Registers your account as a publisher of public extensions in the CloudFormation
  registry.

  Public extensions are available for use by all CloudFormation users. This
  publisher ID applies to your account in all Amazon Web Services Regions.

  For information about requirements for registering as a public extension
  publisher, see [Registering your account to publish CloudFormation extensions](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-prereqs)
  in the *CloudFormation CLI User Guide*.
  """
  def register_publisher(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterPublisher", input, options)
  end

  @doc """
  Registers an extension with the CloudFormation service.

  Registering an extension makes it available for use in CloudFormation templates
  in your Amazon Web Services account, and includes:

    * Validating the extension schema.

    * Determining which handlers, if any, have been specified for the
  extension.

    * Making the extension available for use in your account.

  For more information about how to develop extensions and ready them for
  registration, see [Creating Resource Providers](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-types.html)
  in the *CloudFormation CLI User Guide*.

  You can have a maximum of 50 resource extension versions registered at a time.
  This maximum is per account and per Region. Use
  [DeregisterType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeregisterType.html) to deregister specific extension versions if necessary.

  Once you have initiated a registration request using `RegisterType`, you can use
  `DescribeTypeRegistration` to monitor the progress of the registration request.

  Once you have registered a private extension in your account and Region, use
  [SetTypeConfiguration](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html)
  to specify configuration properties for the extension. For more information, see
  [Configuring extensions at the account level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration)
  in the *CloudFormation User Guide*.
  """
  def register_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterType", input, options)
  end

  @doc """
  When specifying `RollbackStack`, you preserve the state of previously
  provisioned resources when an operation fails.

  You can check the status of the stack through the `DescribeStacks` operation.

  Rolls back the specified stack to the last known stable state from
  `CREATE_FAILED` or `UPDATE_FAILED` stack statuses.

  This operation will delete a stack if it doesn't contain a last known stable
  state. A last known stable state includes any status in a `*_COMPLETE`. This
  includes the following stack statuses.

    * `CREATE_COMPLETE`

    * `UPDATE_COMPLETE`

    * `UPDATE_ROLLBACK_COMPLETE`

    * `IMPORT_COMPLETE`

    * `IMPORT_ROLLBACK_COMPLETE`
  """
  def rollback_stack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RollbackStack", input, options)
  end

  @doc """
  Sets a stack policy for a specified stack.
  """
  def set_stack_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetStackPolicy", input, options)
  end

  @doc """
  Specifies the configuration data for a registered CloudFormation extension, in
  the given account and Region.

  To view the current configuration data for an extension, refer to the
  `ConfigurationSchema` element of
  [DescribeType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html). For more information, see [Configuring extensions at the account
  level](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration)
  in the *CloudFormation User Guide*.

  It's strongly recommended that you use dynamic references to restrict sensitive
  configuration definitions, such as third-party credentials. For more details on
  dynamic references, see [Using dynamic references to specify template values](https://docs.aws.amazon.com/) in the *CloudFormation User Guide*.
  """
  def set_type_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetTypeConfiguration", input, options)
  end

  @doc """
  Specify the default version of an extension.

  The default version of an extension will be used in CloudFormation operations.
  """
  def set_type_default_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetTypeDefaultVersion", input, options)
  end

  @doc """
  Sends a signal to the specified resource with a success or failure status.

  You can use the `SignalResource` operation in conjunction with a creation policy
  or update policy. CloudFormation doesn't proceed with a stack creation or update
  until resources receive the required number of signals or the timeout period is
  exceeded. The `SignalResource` operation is useful in cases where you want to
  send signals from anywhere other than an Amazon EC2 instance.
  """
  def signal_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SignalResource", input, options)
  end

  @doc """
  Starts a scan of the resources in this account in this Region.

  You can the status of a scan using the `ListResourceScans` API action.
  """
  def start_resource_scan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartResourceScan", input, options)
  end

  @doc """
  Stops an in-progress operation on a stack set and its associated stack
  instances.

  StackSets will cancel all the unstarted stack instance deployments and wait for
  those are in-progress to complete.
  """
  def stop_stack_set_operation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopStackSetOperation", input, options)
  end

  @doc """
  Tests a registered extension to make sure it meets all necessary requirements
  for being published in the CloudFormation registry.

    * For resource types, this includes passing all contracts tests
  defined for the type.

    * For modules, this includes determining if the module's model meets
  all necessary requirements.

  For more information, see [Testing your public extension prior to publishing](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-testing)
  in the *CloudFormation CLI User Guide*.

  If you don't specify a version, CloudFormation uses the default version of the
  extension in your account and Region for testing.

  To perform testing, CloudFormation assumes the execution role specified when the
  type was registered. For more information, see
  [RegisterType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html).  Once you've initiated testing on an extension using `TestType`, you can pass the
  returned `TypeVersionArn` into
  [DescribeType](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html)
  to monitor the current test status and test status description for the
  extension.

  An extension must have a test status of `PASSED` before it can be published. For
  more information, see [Publishing extensions to make them available for public use](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-publish.html)
  in the *CloudFormation CLI User Guide*.
  """
  def test_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TestType", input, options)
  end

  @doc """
  Updates a generated template.

  This can be used to change the name, add and remove resources, refresh
  resources, and change the `DeletionPolicy` and `UpdateReplacePolicy` settings.
  You can check the status of the update to the generated template using the
  `DescribeGeneratedTemplate` API action.
  """
  def update_generated_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGeneratedTemplate", input, options)
  end

  @doc """
  Updates a stack as specified in the template.

  After the call completes successfully, the stack update starts. You can check
  the status of the stack through the `DescribeStacks` action.

  To get a copy of the template for an existing stack, you can use the
  `GetTemplate` action.

  For more information about creating an update template, updating a stack, and
  monitoring the progress of the update, see [Updating a Stack](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html).
  """
  def update_stack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateStack", input, options)
  end

  @doc """
  Updates the parameter values for stack instances for the specified accounts,
  within the specified Amazon Web Services Regions.

  A stack instance refers to a stack in a specific account and Region.

  You can only update stack instances in Amazon Web Services Regions and accounts
  where they already exist; to create additional stack instances, use
  [CreateStackInstances](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateStackInstances.html).  During stack set updates, any parameters overridden for a stack instance aren't
  updated, but retain their overridden value.

  You can only update the parameter *values* that are specified in the stack set;
  to add or delete a parameter itself, use
  [UpdateStackSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html)
  to update the stack set template. If you add a parameter to a template, before
  you can override the parameter value specified in the stack set you must first
  use
  [UpdateStackSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html)
  to update all stack instances with the updated template and parameter value
  specified in the stack set. Once a stack instance has been updated with the new
  parameter, you can then override the parameter value using
  `UpdateStackInstances`.
  """
  def update_stack_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateStackInstances", input, options)
  end

  @doc """
  Updates the stack set, and associated stack instances in the specified accounts
  and Amazon Web Services Regions.

  Even if the stack set operation created by updating the stack set fails
  (completely or partially, below or above a specified failure tolerance), the
  stack set is updated with your changes. Subsequent `CreateStackInstances` calls
  on the specified stack set use the updated stack set.
  """
  def update_stack_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateStackSet", input, options)
  end

  @doc """
  Updates termination protection for the specified stack.

  If a user attempts to delete a stack with termination protection enabled, the
  operation fails and the stack remains unchanged. For more information, see
  [Protecting a Stack From Being Deleted](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html)
  in the *CloudFormation User Guide*.

  For [nested stacks](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html),
  termination protection is set on the root stack and can't be changed directly on
  the nested stack.
  """
  def update_termination_protection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTerminationProtection", input, options)
  end

  @doc """
  Validates a specified template.

  CloudFormation first checks if the template is valid JSON. If it isn't,
  CloudFormation checks if the template is valid YAML. If both these checks fail,
  CloudFormation returns a template validation error.
  """
  def validate_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ValidateTemplate", input, options)
  end
end
