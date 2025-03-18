# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ControlTower do
  @moduledoc """
  Amazon Web Services Control Tower offers application programming interface (API)
  operations that support programmatic interaction with these types of resources:

    *

  [
  *Controls*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/controls.html)

      *

  [DisableControl](https://docs.aws.amazon.com/controltower/latest/APIReference/API_DisableControl.html) 

      *

  [EnableControl](https://docs.aws.amazon.com/controltower/latest/APIReference/API_EnableControl.html)

      *

  [GetEnabledControl](https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetEnabledControl.html) 

      *

  [ListControlOperations](https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListControlOperations.html)

      *

  [ListEnabledControls](https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListEnabledControls.html) 

      *

  [UpdateEnabledControl](https://docs.aws.amazon.com/controltower/latest/APIReference/API_UpdateEnabledControl.html)

    *

  [
  *Landing
  zones*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch.html)

      *

  [CreateLandingZone](https://docs.aws.amazon.com/controltower/latest/APIReference/API_CreateLandingZone.html) 

      *

  [DeleteLandingZone](https://docs.aws.amazon.com/controltower/latest/APIReference/API_DeleteLandingZone.html)

      *

  [GetLandingZone](https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetLandingZone.html) 

      *

  [GetLandingZoneOperation](https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetLandingZoneOperation.html)

      *

  [ListLandingZones](https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListLandingZones.html) 

      *

  [ListLandingZoneOperations](https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListLandingZoneOperations.html)

      *

  [ResetLandingZone](https://docs.aws.amazon.com/controltower/latest/APIReference/API_ResetLandingZone.html) 

      *

  [UpdateLandingZone](https://docs.aws.amazon.com/controltower/latest/APIReference/API_UpdateLandingZone.html)

    *

  [
  *Baselines*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/types-of-baselines.html)

      *

  [DisableBaseline](https://docs.aws.amazon.com/controltower/latest/APIReference/API_DisableBaseline.html) 

      *

  [EnableBaseline](https://docs.aws.amazon.com/controltower/latest/APIReference/API_EnableBaseline.html)

      *

  [GetBaseline](https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetBaseline.html) 

      *

  [GetBaselineOperation](https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetBaselineOperation.html)

      *

  [GetEnabledBaseline](https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetEnabledBaseline.html) 

      *

  [ListBaselines](https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListBaselines.html)

      *

  [ListEnabledBaselines](https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListEnabledBaselines.html) 

      *

  [ResetEnabledBaseline](https://docs.aws.amazon.com/controltower/latest/APIReference/API_ResetEnabledBaseline.html)

      *

  [UpdateEnabledBaseline](https://docs.aws.amazon.com/controltower/latest/APIReference/API_UpdateEnabledBaseline.html) 

    *

  [
  *Tagging*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/tagging.html)

      *

  [ListTagsForResource](https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListTagsForResource.html) 

      *

  [TagResource](https://docs.aws.amazon.com/controltower/latest/APIReference/API_TagResource.html)

      *

  [UntagResource](https://docs.aws.amazon.com/controltower/latest/APIReference/API_UntagResource.html) 

  For more information about these types of resources, see the [
  *Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/what-is-control-tower.html).

  ## About control APIs

  These interfaces allow you to apply the Amazon Web Services library of
  pre-defined
  *controls* to your organizational units, programmatically. In Amazon Web
  Services Control Tower, the terms "control" and "guardrail" are synonyms.

  To call these APIs, you'll need to know:

    *
  the `controlIdentifier` for the control--or guardrail--you are
  targeting.

    *
  the ARN associated with the target organizational unit (OU), which we call the
  `targetIdentifier`.

    *
  the ARN associated with a resource that you wish to tag or untag.

  ## To get the `controlIdentifier` for your Amazon Web Services Control Tower
  control:

  The `controlIdentifier` is an ARN that is specified for each control. You can
  view the `controlIdentifier` in the console on the **Control
  details** page, as well as in the documentation.

  ## About identifiers for Amazon Web Services Control Tower

  The Amazon Web Services Control Tower `controlIdentifier` is unique in each
  Amazon Web Services Region for each
  control. You can find the `controlIdentifier` for each Region and control in the
  [Tables of control metadata](https://docs.aws.amazon.com/controltower/latest/controlreference/control-metadata-tables.html)
  or the [Control availability by Region
  tables](https://docs.aws.amazon.com/controltower/latest/controlreference/control-region-tables.html)
  in the *Amazon Web Services Control Tower
  Controls Reference Guide*.

  A quick-reference list of control identifers for the Amazon Web Services Control
  Tower
  legacy *Strongly recommended* and *Elective* controls
  is given in [Resource identifiers for APIs and
  controls](https://docs.aws.amazon.com/controltower/latest/controlreference/control-identifiers.html.html)
  in the [
  *Amazon Web Services Control Tower Controls Reference Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/control-identifiers.html).
  Remember
  that *Mandatory* controls cannot be added or removed.

  ## Some controls have two identifiers

    

  ## ARN format for Amazon Web Services Control
  Tower:
  `arn:aws:controltower:{REGION}::control/{CONTROL_TOWER_OPAQUE_ID}`

  ## Example:

  `arn:aws:controltower:us-west-2::control/AWS-GR_AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED`

    

  ## ARN format for Amazon Web Services Control
  Catalog:
  `arn:{PARTITION}:controlcatalog:::control/{CONTROL_CATALOG_OPAQUE_ID}`

  You can find the `{CONTROL_CATALOG_OPAQUE_ID}` in the [
  *Amazon Web Services Control Tower Controls Reference
  Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/all-global-identifiers.html),
  or in the Amazon Web Services Control Tower console, on the
  **Control details** page.

  The Amazon Web Services Control Tower APIs for enabled controls, such as
  `GetEnabledControl` and `ListEnabledControls` always return an
  ARN of the same type given when the control was enabled.

  ## To get the `targetIdentifier`:

  The `targetIdentifier` is the ARN for an OU.

  In the Amazon Web Services Organizations console, you can find the ARN for the
  OU on the
  **Organizational unit details** page associated with that
  OU.

  ## OU ARN format:

  `arn:${Partition}:organizations::${MasterAccountId}:ou/o-${OrganizationId}/ou-${OrganizationalUnitId}`

  ##  About landing zone APIs

  You can configure and launch an Amazon Web Services Control Tower landing zone
  with APIs.
  For an introduction and steps, see [Getting started with Amazon Web Services Control Tower using
  APIs](https://docs.aws.amazon.com/controltower/latest/userguide/getting-started-apis.html).

  For an overview of landing zone API operations, see [
  Amazon Web Services Control Tower supports landing zone
  APIs](https://docs.aws.amazon.com/controltower/latest/userguide/2023-all.html#landing-zone-apis).
  The individual API
  operations for landing zones are detailed in this document, the [API reference manual](https://docs.aws.amazon.com/controltower/latest/APIReference/API_Operations.html),
  in the "Actions" section.

  ## About baseline APIs

  You can apply the `AWSControlTowerBaseline` baseline to an organizational
  unit (OU) as a way to register the OU with Amazon Web Services Control Tower,
  programmatically. For a general overview of this capability, see [Amazon Web Services Control Tower supports APIs for OU registration and configuration
  with
  baselines](https://docs.aws.amazon.com/controltower/latest/userguide/2024-all.html#baseline-apis).

  You can call the baseline API operations to view the baselines that Amazon Web
  Services
  Control Tower enables for your landing zone, on your behalf, when setting up the
  landing
  zone. These baselines are read-only baselines.

  The individual API operations for baselines are detailed in this document, the
  [API reference
  manual](https://docs.aws.amazon.com/controltower/latest/APIReference/API_Operations.html),
  in the "Actions" section. For usage examples, see [Baseline API input and output examples with
  CLI](https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).

  ##  About Amazon Web Services Control Catalog identifiers

    *
  The `EnableControl` and `DisableControl` API operations can
  be called by specifying either the Amazon Web Services Control Tower identifer
  or the
  Amazon Web Services Control Catalog identifier. The API response returns the
  same
  type of identifier that you specified when calling the API.

    *
  If you use an Amazon Web Services Control Tower identifier to call the
  `EnableControl` API, and then call `EnableControl` again
  with an Amazon Web Services Control Catalog identifier, Amazon Web Services
  Control
  Tower returns an error message stating that the control is already enabled.
  Similar
  behavior applies to the `DisableControl` API operation.

    *
  Mandatory controls and the landing-zone-level Region deny control have Amazon
  Web Services Control Tower identifiers only.

  ## Details and examples

    *

  [Control API input and output examples with CLI](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html)

    *

  [Baseline API input and output examples with
  CLI](https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html)

    *

  [Enable controls with
  CloudFormation](https://docs.aws.amazon.com/controltower/latest/controlreference/enable-controls.html)

    *

  [Launch a landing zone with
  CloudFormation](https://docs.aws.amazon.com/controltower/latest/userguide/lz-apis-cfn-setup.html)

    *

  [Control metadata tables (large
  page)](https://docs.aws.amazon.com/controltower/latest/controlreference/control-metadata-tables.html)

    *

  [Control availability by Region tables (large
  page)](https://docs.aws.amazon.com/controltower/latest/controlreference/control-region-tables.html)

    *

  [List of identifiers for legacy
  controls](https://docs.aws.amazon.com/controltower/latest/controlreference/control-identifiers.html)

    *

  [Controls reference guide](https://docs.aws.amazon.com/controltower/latest/controlreference/controls.html)

    *

  [Controls library
  groupings](https://docs.aws.amazon.com/controltower/latest/controlreference/controls-reference.html)

    *

  [Creating Amazon Web Services Control Tower resources with Amazon Web Services CloudFormation](https://docs.aws.amazon.com/controltower/latest/userguide/creating-resources-with-cloudformation.html)

  To view the open source resource repository on GitHub, see
  [aws-cloudformation/aws-cloudformation-resource-providers-controltower](https://github.com/aws-cloudformation/aws-cloudformation-resource-providers-controltower) 

  ## Recording API Requests

  Amazon Web Services Control Tower supports Amazon Web Services CloudTrail, a
  service that
  records Amazon Web Services API calls for your Amazon Web Services account and
  delivers log
  files to an Amazon S3 bucket. By using information collected by CloudTrail, you
  can
  determine which requests the Amazon Web Services Control Tower service received,
  who made
  the request and when, and so on. For more about Amazon Web Services Control
  Tower and its
  support for CloudTrail, see [Logging Amazon Web Services Control Tower Actions
  with Amazon Web Services
  CloudTrail](https://docs.aws.amazon.com/controltower/latest/userguide/logging-using-cloudtrail.html)
  in the
  Amazon Web Services Control Tower User Guide. To learn more about CloudTrail,
  including
  how to turn it on and find your log files, see the Amazon Web Services
  CloudTrail User
  Guide.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_enabled_controls_output() :: %{
        "enabledControls" => list(enabled_control_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_enabled_controls_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_control_input() :: %{
        required("controlIdentifier") => String.t(),
        required("targetIdentifier") => String.t()
      }

  """
  @type disable_control_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_control_output() :: %{
        "operationIdentifier" => String.t()
      }

  """
  @type disable_control_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enablement_status_summary() :: %{
        "lastOperationIdentifier" => String.t(),
        "status" => list(any())
      }

  """
  @type enablement_status_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enabled_control_parameter() :: %{
        "key" => [String.t()],
        "value" => [any()]
      }

  """
  @type enabled_control_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_enabled_baselines_input() :: %{
        optional("filter") => enabled_baseline_filter(),
        optional("includeChildren") => [boolean()],
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_enabled_baselines_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enabled_control_filter() :: %{
        "controlIdentifiers" => list(String.t()()),
        "driftStatuses" => list(list(any())()),
        "statuses" => list(list(any())())
      }

  """
  @type enabled_control_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      landing_zone_operation_summary() :: %{
        "operationIdentifier" => String.t(),
        "operationType" => list(any()),
        "status" => list(any())
      }

  """
  @type landing_zone_operation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enable_control_input() :: %{
        optional("parameters") => list(enabled_control_parameter()()),
        optional("tags") => map(),
        required("controlIdentifier") => String.t(),
        required("targetIdentifier") => String.t()
      }

  """
  @type enable_control_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_landing_zone_output() :: %{
        "operationIdentifier" => String.t()
      }

  """
  @type update_landing_zone_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_enabled_control_output() :: %{
        "enabledControlDetails" => enabled_control_details()
      }

  """
  @type get_enabled_control_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_enabled_controls_input() :: %{
        optional("filter") => enabled_control_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()],
        optional("targetIdentifier") => String.t()
      }

  """
  @type list_enabled_controls_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_enabled_control_input() :: %{
        required("enabledControlIdentifier") => String.t()
      }

  """
  @type reset_enabled_control_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_landing_zones_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()]
      }

  """
  @type list_landing_zones_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_control_operations_output() :: %{
        "controlOperations" => list(control_operation_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_control_operations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_enabled_baseline_input() :: %{
        required("enabledBaselineIdentifier") => String.t()
      }

  """
  @type reset_enabled_baseline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enabled_baseline_summary() :: %{
        "arn" => String.t(),
        "baselineIdentifier" => [String.t()],
        "baselineVersion" => [String.t()],
        "parentIdentifier" => String.t(),
        "statusSummary" => enablement_status_summary(),
        "targetIdentifier" => [String.t()]
      }

  """
  @type enabled_baseline_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_baseline_operation_input() :: %{
        required("operationIdentifier") => String.t()
      }

  """
  @type get_baseline_operation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      landing_zone_operation_filter() :: %{
        "statuses" => list(list(any())()),
        "types" => list(list(any())())
      }

  """
  @type landing_zone_operation_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_baselines_output() :: %{
        "baselines" => list(baseline_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_baselines_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_enabled_baselines_output() :: %{
        "enabledBaselines" => list(enabled_baseline_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_enabled_baselines_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enabled_control_summary() :: %{
        "arn" => String.t(),
        "controlIdentifier" => String.t(),
        "driftStatusSummary" => drift_status_summary(),
        "statusSummary" => enablement_status_summary(),
        "targetIdentifier" => String.t()
      }

  """
  @type enabled_control_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      region() :: %{
        "name" => String.t()
      }

  """
  @type region() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_baseline_input() :: %{
        required("enabledBaselineIdentifier") => String.t()
      }

  """
  @type disable_baseline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_enabled_baseline_output() :: %{
        "enabledBaselineDetails" => enabled_baseline_details()
      }

  """
  @type get_enabled_baseline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enabled_baseline_parameter() :: %{
        "key" => [String.t()],
        "value" => any()
      }

  """
  @type enabled_baseline_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_landing_zone_input() :: %{
        optional("tags") => map(),
        required("manifest") => any(),
        required("version") => String.t()
      }

  """
  @type create_landing_zone_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_enabled_control_input() :: %{
        required("enabledControlIdentifier") => String.t()
      }

  """
  @type get_enabled_control_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      landing_zone_detail() :: %{
        "arn" => String.t(),
        "driftStatus" => landing_zone_drift_status_summary(),
        "latestAvailableVersion" => String.t(),
        "manifest" => any(),
        "status" => list(any()),
        "version" => String.t()
      }

  """
  @type landing_zone_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_landing_zone_input() :: %{
        required("landingZoneIdentifier") => [String.t()],
        required("manifest") => any(),
        required("version") => String.t()
      }

  """
  @type update_landing_zone_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_landing_zones_output() :: %{
        "landingZones" => list(landing_zone_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_landing_zones_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_landing_zone_output() :: %{
        "landingZone" => landing_zone_detail()
      }

  """
  @type get_landing_zone_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_landing_zone_operation_input() :: %{
        required("operationIdentifier") => String.t()
      }

  """
  @type get_landing_zone_operation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enabled_control_parameter_summary() :: %{
        "key" => [String.t()],
        "value" => [any()]
      }

  """
  @type enabled_control_parameter_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enable_baseline_output() :: %{
        "arn" => String.t(),
        "operationIdentifier" => String.t()
      }

  """
  @type enable_baseline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_control_operation_input() :: %{
        required("operationIdentifier") => String.t()
      }

  """
  @type get_control_operation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_landing_zone_input() :: %{
        required("landingZoneIdentifier") => [String.t()]
      }

  """
  @type delete_landing_zone_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_landing_zone_output() :: %{
        "operationIdentifier" => String.t()
      }

  """
  @type delete_landing_zone_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_landing_zone_operation_output() :: %{
        "operationDetails" => landing_zone_operation_detail()
      }

  """
  @type get_landing_zone_operation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enable_control_output() :: %{
        "arn" => String.t(),
        "operationIdentifier" => String.t()
      }

  """
  @type enable_control_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      landing_zone_summary() :: %{
        "arn" => String.t()
      }

  """
  @type landing_zone_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_landing_zone_operations_input() :: %{
        optional("filter") => landing_zone_operation_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()]
      }

  """
  @type list_landing_zone_operations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_baseline_operation_output() :: %{
        "baselineOperation" => baseline_operation()
      }

  """
  @type get_baseline_operation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      baseline_operation() :: %{
        "endTime" => non_neg_integer(),
        "operationIdentifier" => String.t(),
        "operationType" => list(any()),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "statusMessage" => [String.t()]
      }

  """
  @type baseline_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enabled_baseline_filter() :: %{
        "baselineIdentifiers" => list(String.t()()),
        "parentIdentifiers" => list(String.t()()),
        "targetIdentifiers" => list(String.t()())
      }

  """
  @type enabled_baseline_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enable_baseline_input() :: %{
        optional("parameters") => list(enabled_baseline_parameter()()),
        optional("tags") => map(),
        required("baselineIdentifier") => String.t(),
        required("baselineVersion") => String.t(),
        required("targetIdentifier") => String.t()
      }

  """
  @type enable_baseline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      control_operation() :: %{
        "controlIdentifier" => String.t(),
        "enabledControlIdentifier" => String.t(),
        "endTime" => non_neg_integer(),
        "operationIdentifier" => String.t(),
        "operationType" => list(any()),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "statusMessage" => [String.t()],
        "targetIdentifier" => String.t()
      }

  """
  @type control_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      list_control_operations_input() :: %{
        optional("filter") => control_operation_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_control_operations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_enabled_baseline_input() :: %{
        optional("parameters") => list(enabled_baseline_parameter()()),
        required("baselineVersion") => String.t(),
        required("enabledBaselineIdentifier") => String.t()
      }

  """
  @type update_enabled_baseline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      control_operation_filter() :: %{
        "controlIdentifiers" => list(String.t()()),
        "controlOperationTypes" => list(list(any())()),
        "enabledControlIdentifiers" => list(String.t()()),
        "statuses" => list(list(any())()),
        "targetIdentifiers" => list(String.t()())
      }

  """
  @type control_operation_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_enabled_baseline_input() :: %{
        required("enabledBaselineIdentifier") => String.t()
      }

  """
  @type get_enabled_baseline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enabled_baseline_details() :: %{
        "arn" => String.t(),
        "baselineIdentifier" => [String.t()],
        "baselineVersion" => [String.t()],
        "parameters" => list(enabled_baseline_parameter_summary()()),
        "parentIdentifier" => String.t(),
        "statusSummary" => enablement_status_summary(),
        "targetIdentifier" => [String.t()]
      }

  """
  @type enabled_baseline_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      landing_zone_drift_status_summary() :: %{
        "status" => list(any())
      }

  """
  @type landing_zone_drift_status_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_enabled_control_input() :: %{
        required("enabledControlIdentifier") => String.t(),
        required("parameters") => list(enabled_control_parameter()())
      }

  """
  @type update_enabled_control_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      baseline_summary() :: %{
        "arn" => [String.t()],
        "description" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type baseline_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_landing_zone_input() :: %{
        required("landingZoneIdentifier") => [String.t()]
      }

  """
  @type reset_landing_zone_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enabled_control_details() :: %{
        "arn" => String.t(),
        "controlIdentifier" => String.t(),
        "driftStatusSummary" => drift_status_summary(),
        "parameters" => list(enabled_control_parameter_summary()()),
        "statusSummary" => enablement_status_summary(),
        "targetIdentifier" => String.t(),
        "targetRegions" => list(region()())
      }

  """
  @type enabled_control_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_control_operation_output() :: %{
        "controlOperation" => control_operation()
      }

  """
  @type get_control_operation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_enabled_baseline_output() :: %{
        "operationIdentifier" => String.t()
      }

  """
  @type update_enabled_baseline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_landing_zone_output() :: %{
        "arn" => String.t(),
        "operationIdentifier" => String.t()
      }

  """
  @type create_landing_zone_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_baseline_output() :: %{
        "arn" => String.t(),
        "description" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type get_baseline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_landing_zone_output() :: %{
        "operationIdentifier" => String.t()
      }

  """
  @type reset_landing_zone_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_landing_zone_operations_output() :: %{
        "landingZoneOperations" => list(landing_zone_operation_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_landing_zone_operations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enabled_baseline_parameter_summary() :: %{
        "key" => [String.t()],
        "value" => any()
      }

  """
  @type enabled_baseline_parameter_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_baselines_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()]
      }

  """
  @type list_baselines_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_enabled_baseline_output() :: %{
        "operationIdentifier" => String.t()
      }

  """
  @type reset_enabled_baseline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_landing_zone_input() :: %{
        required("landingZoneIdentifier") => [String.t()]
      }

  """
  @type get_landing_zone_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      drift_status_summary() :: %{
        "driftStatus" => list(any())
      }

  """
  @type drift_status_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      landing_zone_operation_detail() :: %{
        "endTime" => non_neg_integer(),
        "operationIdentifier" => String.t(),
        "operationType" => list(any()),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "statusMessage" => [String.t()]
      }

  """
  @type landing_zone_operation_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_enabled_control_output() :: %{
        "operationIdentifier" => String.t()
      }

  """
  @type update_enabled_control_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_baseline_output() :: %{
        "operationIdentifier" => String.t()
      }

  """
  @type disable_baseline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_enabled_control_output() :: %{
        "operationIdentifier" => String.t()
      }

  """
  @type reset_enabled_control_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      control_operation_summary() :: %{
        "controlIdentifier" => String.t(),
        "enabledControlIdentifier" => String.t(),
        "endTime" => non_neg_integer(),
        "operationIdentifier" => String.t(),
        "operationType" => list(any()),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "statusMessage" => [String.t()],
        "targetIdentifier" => String.t()
      }

  """
  @type control_operation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_baseline_input() :: %{
        required("baselineIdentifier") => String.t()
      }

  """
  @type get_baseline_input() :: %{String.t() => any()}

  @type create_landing_zone_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_landing_zone_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disable_baseline_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disable_control_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type enable_baseline_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type enable_control_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_baseline_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_baseline_operation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_control_operation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_enabled_baseline_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_enabled_control_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_landing_zone_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_landing_zone_operation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_baselines_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_control_operations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_enabled_baselines_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_enabled_controls_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_landing_zone_operations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_landing_zones_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type reset_enabled_baseline_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type reset_enabled_control_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type reset_landing_zone_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_enabled_baseline_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_enabled_control_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_landing_zone_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "controltower",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ControlTower",
      signature_version: "v4",
      signing_name: "controltower",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new landing zone.

  This API call starts an asynchronous operation that creates and configures a
  landing zone,
  based on the parameters specified in the manifest JSON file.
  """
  @spec create_landing_zone(map(), create_landing_zone_input(), list()) ::
          {:ok, create_landing_zone_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_landing_zone_errors()}
  def create_landing_zone(%Client{} = client, input, options \\ []) do
    url_path = "/create-landingzone"
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
  Decommissions a landing zone.

  This API call starts an asynchronous operation that deletes Amazon Web Services
  Control Tower
  resources deployed in accounts managed by Amazon Web Services Control Tower.
  """
  @spec delete_landing_zone(map(), delete_landing_zone_input(), list()) ::
          {:ok, delete_landing_zone_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_landing_zone_errors()}
  def delete_landing_zone(%Client{} = client, input, options \\ []) do
    url_path = "/delete-landingzone"
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
  Disable an `EnabledBaseline` resource on the specified Target.

  This API starts an asynchronous operation to remove all resources deployed as
  part of the baseline enablement. The resource will vary depending on the enabled
  baseline. For usage examples, see [
  *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).
  """
  @spec disable_baseline(map(), disable_baseline_input(), list()) ::
          {:ok, disable_baseline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_baseline_errors()}
  def disable_baseline(%Client{} = client, input, options \\ []) do
    url_path = "/disable-baseline"
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
  This API call turns off a control.

  It starts an asynchronous operation that deletes Amazon Web Services
  resources on the specified organizational unit and the accounts it contains. The
  resources
  will vary according to the control that you specify. For usage examples, see the
  [
  *Controls Reference Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).
  """
  @spec disable_control(map(), disable_control_input(), list()) ::
          {:ok, disable_control_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_control_errors()}
  def disable_control(%Client{} = client, input, options \\ []) do
    url_path = "/disable-control"
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
  Enable (apply) a `Baseline` to a Target.

  This API starts an asynchronous operation to deploy resources specified by the
  `Baseline` to the specified Target. For usage examples, see [
  *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).
  """
  @spec enable_baseline(map(), enable_baseline_input(), list()) ::
          {:ok, enable_baseline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_baseline_errors()}
  def enable_baseline(%Client{} = client, input, options \\ []) do
    url_path = "/enable-baseline"
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
  This API call activates a control.

  It starts an asynchronous operation that creates Amazon Web Services
  resources on the specified organizational unit and the accounts it contains. The
  resources
  created will vary according to the control that you specify. For usage examples,
  see the [
  *Controls Reference Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).
  """
  @spec enable_control(map(), enable_control_input(), list()) ::
          {:ok, enable_control_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_control_errors()}
  def enable_control(%Client{} = client, input, options \\ []) do
    url_path = "/enable-control"
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
  Retrieve details about an existing `Baseline` resource by specifying its
  identifier.

  For usage examples, see [
  *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).
  """
  @spec get_baseline(map(), get_baseline_input(), list()) ::
          {:ok, get_baseline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_baseline_errors()}
  def get_baseline(%Client{} = client, input, options \\ []) do
    url_path = "/get-baseline"
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
  Returns the details of an asynchronous baseline operation, as initiated by any
  of these APIs: `EnableBaseline`, `DisableBaseline`, `UpdateEnabledBaseline`,
  `ResetEnabledBaseline`.

  A status message is displayed in case of operation failure. For usage examples,
  see [
  *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).
  """
  @spec get_baseline_operation(map(), get_baseline_operation_input(), list()) ::
          {:ok, get_baseline_operation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_baseline_operation_errors()}
  def get_baseline_operation(%Client{} = client, input, options \\ []) do
    url_path = "/get-baseline-operation"
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
  Returns the status of a particular `EnableControl` or
  `DisableControl` operation.

  Displays a message in case of error. Details for an
  operation are available for 90 days. For usage examples, see the [
  *Controls Reference Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).
  """
  @spec get_control_operation(map(), get_control_operation_input(), list()) ::
          {:ok, get_control_operation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_control_operation_errors()}
  def get_control_operation(%Client{} = client, input, options \\ []) do
    url_path = "/get-control-operation"
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
  Retrieve details of an `EnabledBaseline` resource by specifying its identifier.
  """
  @spec get_enabled_baseline(map(), get_enabled_baseline_input(), list()) ::
          {:ok, get_enabled_baseline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_enabled_baseline_errors()}
  def get_enabled_baseline(%Client{} = client, input, options \\ []) do
    url_path = "/get-enabled-baseline"
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
  Retrieves details about an enabled control.

  For usage examples, see the [
  *Controls Reference Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).
  """
  @spec get_enabled_control(map(), get_enabled_control_input(), list()) ::
          {:ok, get_enabled_control_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_enabled_control_errors()}
  def get_enabled_control(%Client{} = client, input, options \\ []) do
    url_path = "/get-enabled-control"
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
  Returns details about the landing zone.

  Displays a message in case of error.
  """
  @spec get_landing_zone(map(), get_landing_zone_input(), list()) ::
          {:ok, get_landing_zone_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_landing_zone_errors()}
  def get_landing_zone(%Client{} = client, input, options \\ []) do
    url_path = "/get-landingzone"
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
  Returns the status of the specified landing zone operation.

  Details for an operation are available for
  90 days.
  """
  @spec get_landing_zone_operation(map(), get_landing_zone_operation_input(), list()) ::
          {:ok, get_landing_zone_operation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_landing_zone_operation_errors()}
  def get_landing_zone_operation(%Client{} = client, input, options \\ []) do
    url_path = "/get-landingzone-operation"
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
  Returns a summary list of all available baselines.

  For usage examples, see [
  *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).
  """
  @spec list_baselines(map(), list_baselines_input(), list()) ::
          {:ok, list_baselines_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_baselines_errors()}
  def list_baselines(%Client{} = client, input, options \\ []) do
    url_path = "/list-baselines"
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
  Provides a list of operations in progress or queued.

  For usage examples, see [ListControlOperation examples](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html#list-control-operations-api-examples).
  """
  @spec list_control_operations(map(), list_control_operations_input(), list()) ::
          {:ok, list_control_operations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_control_operations_errors()}
  def list_control_operations(%Client{} = client, input, options \\ []) do
    url_path = "/list-control-operations"
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
  Returns a list of summaries describing `EnabledBaseline` resources.

  You can filter the list by the corresponding `Baseline` or `Target` of the
  `EnabledBaseline` resources. For usage examples, see [
  *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).
  """
  @spec list_enabled_baselines(map(), list_enabled_baselines_input(), list()) ::
          {:ok, list_enabled_baselines_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_enabled_baselines_errors()}
  def list_enabled_baselines(%Client{} = client, input, options \\ []) do
    url_path = "/list-enabled-baselines"
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
  Lists the controls enabled by Amazon Web Services Control Tower on the specified
  organizational unit and
  the accounts it contains.

  For usage examples, see the [
  *Controls Reference Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).
  """
  @spec list_enabled_controls(map(), list_enabled_controls_input(), list()) ::
          {:ok, list_enabled_controls_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_enabled_controls_errors()}
  def list_enabled_controls(%Client{} = client, input, options \\ []) do
    url_path = "/list-enabled-controls"
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
  Lists all landing zone operations from the past 90 days.

  Results are sorted by time, with the most recent operation first.
  """
  @spec list_landing_zone_operations(map(), list_landing_zone_operations_input(), list()) ::
          {:ok, list_landing_zone_operations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_landing_zone_operations_errors()}
  def list_landing_zone_operations(%Client{} = client, input, options \\ []) do
    url_path = "/list-landingzone-operations"
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
  Returns the landing zone ARN for the landing zone deployed in your managed
  account.

  This API also
  creates an ARN for existing accounts that do not yet have a landing zone ARN.

  Returns one landing zone ARN.
  """
  @spec list_landing_zones(map(), list_landing_zones_input(), list()) ::
          {:ok, list_landing_zones_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_landing_zones_errors()}
  def list_landing_zones(%Client{} = client, input, options \\ []) do
    url_path = "/list-landingzones"
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
  Returns a list of tags associated with the resource.

  For usage examples, see the [
  *Controls Reference Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Re-enables an `EnabledBaseline` resource.

  For example, this API can re-apply the existing `Baseline` after a new member
  account is moved to the target OU. For usage examples, see [
  *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).
  """
  @spec reset_enabled_baseline(map(), reset_enabled_baseline_input(), list()) ::
          {:ok, reset_enabled_baseline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reset_enabled_baseline_errors()}
  def reset_enabled_baseline(%Client{} = client, input, options \\ []) do
    url_path = "/reset-enabled-baseline"
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
  Resets an enabled control.
  """
  @spec reset_enabled_control(map(), reset_enabled_control_input(), list()) ::
          {:ok, reset_enabled_control_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reset_enabled_control_errors()}
  def reset_enabled_control(%Client{} = client, input, options \\ []) do
    url_path = "/reset-enabled-control"
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
  This API call resets a landing zone.

  It starts an asynchronous operation that resets the
  landing zone to the parameters specified in the original configuration, which
  you specified
  in the manifest file. Nothing in the manifest file's original landing zone
  configuration is changed
  during the reset process, by default. This API is not the same as a rollback of
  a landing
  zone version, which is not a supported operation.
  """
  @spec reset_landing_zone(map(), reset_landing_zone_input(), list()) ::
          {:ok, reset_landing_zone_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reset_landing_zone_errors()}
  def reset_landing_zone(%Client{} = client, input, options \\ []) do
    url_path = "/reset-landingzone"
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
  Applies tags to a resource.

  For usage examples, see the [
  *Controls Reference Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).
  """
  @spec tag_resource(map(), String.t(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      204
    )
  end

  @doc """
  Removes tags from a resource.

  For usage examples, see the [
  *Controls Reference Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).
  """
  @spec untag_resource(map(), String.t(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates an `EnabledBaseline` resource's applied parameters or version.

  For usage examples, see [
  *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).
  """
  @spec update_enabled_baseline(map(), update_enabled_baseline_input(), list()) ::
          {:ok, update_enabled_baseline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_enabled_baseline_errors()}
  def update_enabled_baseline(%Client{} = client, input, options \\ []) do
    url_path = "/update-enabled-baseline"
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

  Updates the configuration of an already enabled control.

  If the enabled control shows an `EnablementStatus` of SUCCEEDED, supply
  parameters that are different from the currently configured parameters.
  Otherwise, Amazon Web Services Control Tower will not accept the request.

  If the enabled control shows an `EnablementStatus` of FAILED, Amazon Web
  Services Control Tower updates the control to match any valid parameters that
  you supply.

  If the `DriftSummary` status for the control shows as `DRIFTED`, you cannot call
  this API. Instead, you can update the control by calling the
  `ResetEnabledControl` API. Alternatively, you can call `DisableControl` and then
  call `EnableControl` again. Also, you can run an extending governance operation
  to repair drift. For usage examples, see the [
  *Controls Reference Guide*
  ](https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).
  """
  @spec update_enabled_control(map(), update_enabled_control_input(), list()) ::
          {:ok, update_enabled_control_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_enabled_control_errors()}
  def update_enabled_control(%Client{} = client, input, options \\ []) do
    url_path = "/update-enabled-control"
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
  This API call updates the landing zone.

  It starts an asynchronous operation that updates the
  landing zone based on the new landing zone version, or on the changed parameters
  specified in the
  updated manifest file.
  """
  @spec update_landing_zone(map(), update_landing_zone_input(), list()) ::
          {:ok, update_landing_zone_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_landing_zone_errors()}
  def update_landing_zone(%Client{} = client, input, options \\ []) do
    url_path = "/update-landingzone"
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
