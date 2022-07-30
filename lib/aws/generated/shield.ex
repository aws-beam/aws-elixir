# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Shield do
  @moduledoc """
  Shield Advanced

  This is the *Shield Advanced API Reference*.

  This guide is for developers who need detailed information about the Shield
  Advanced API actions, data types, and errors. For detailed information about WAF
  and Shield Advanced features and an overview of how to use the WAF and Shield
  Advanced APIs, see the [WAF and Shield Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "AWS Shield",
      api_version: "2016-06-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "shield",
      global?: true,
      protocol: "json",
      service_id: "Shield",
      signature_version: "v4",
      signing_name: "shield",
      target_prefix: "AWSShield_20160616"
    }
  end

  @doc """
  Authorizes the Shield Response Team (SRT) to access the specified Amazon S3
  bucket containing log data such as Application Load Balancer access logs,
  CloudFront logs, or logs from third party sources.

  You can associate up to 10 Amazon S3 buckets with your subscription.

  To use the services of the SRT and make an `AssociateDRTLogBucket` request, you
  must be subscribed to the [Business Support plan](http://aws.amazon.com/premiumsupport/business-support/) or the [Enterprise Support plan](http://aws.amazon.com/premiumsupport/enterprise-support/).
  """
  def associate_drt_log_bucket(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateDRTLogBucket", input, options)
  end

  @doc """
  Authorizes the Shield Response Team (SRT) using the specified role, to access
  your Amazon Web Services account to assist with DDoS attack mitigation during
  potential attacks.

  This enables the SRT to inspect your WAF configuration and create or update WAF
  rules and web ACLs.

  You can associate only one `RoleArn` with your subscription. If you submit an
  `AssociateDRTRole` request for an account that already has an associated role,
  the new `RoleArn` will replace the existing `RoleArn`.

  Prior to making the `AssociateDRTRole` request, you must attach the
  `AWSShieldDRTAccessPolicy` managed policy to the role that you'll specify in the
  request. You can access this policy in the IAM console at
  [AWSShieldDRTAccessPolicy](https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy). For more information see [Adding and removing IAM identity
  permissions](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html).
  The role must also trust the service principal `drt.shield.amazonaws.com`. For
  more information, see [IAM JSON policy elements: Principal](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html).

  The SRT will have access only to your WAF and Shield resources. By submitting
  this request, you authorize the SRT to inspect your WAF and Shield configuration
  and create and update WAF rules and web ACLs on your behalf. The SRT takes these
  actions only if explicitly authorized by you.

  You must have the `iam:PassRole` permission to make an `AssociateDRTRole`
  request. For more information, see [Granting a user permissions to pass a role to an Amazon Web Services
  service](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html).

  To use the services of the SRT and make an `AssociateDRTRole` request, you must
  be subscribed to the [Business Support plan](http://aws.amazon.com/premiumsupport/business-support/) or the [Enterprise Support plan](http://aws.amazon.com/premiumsupport/enterprise-support/).
  """
  def associate_drt_role(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateDRTRole", input, options)
  end

  @doc """
  Adds health-based detection to the Shield Advanced protection for a resource.

  Shield Advanced health-based detection uses the health of your Amazon Web
  Services resource to improve responsiveness and accuracy in attack detection and
  response.

  You define the health check in Route 53 and then associate it with your Shield
  Advanced protection. For more information, see [Shield Advanced Health-Based Detection](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option)
  in the *WAF Developer Guide*.
  """
  def associate_health_check(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateHealthCheck", input, options)
  end

  @doc """
  Initializes proactive engagement and sets the list of contacts for the Shield
  Response Team (SRT) to use.

  You must provide at least one phone number in the emergency contact list.

  After you have initialized proactive engagement using this call, to disable or
  enable proactive engagement, use the calls `DisableProactiveEngagement` and
  `EnableProactiveEngagement`.

  This call defines the list of email addresses and phone numbers that the SRT can
  use to contact you for escalations to the SRT and to initiate proactive customer
  support.

  The contacts that you provide in the request replace any contacts that were
  already defined. If you already have contacts defined and want to use them,
  retrieve the list using `DescribeEmergencyContactSettings` and then provide it
  to this call.
  """
  def associate_proactive_engagement_details(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "AssociateProactiveEngagementDetails",
      input,
      options
    )
  end

  @doc """
  Enables Shield Advanced for a specific Amazon Web Services resource.

  The resource can be an Amazon CloudFront distribution, Amazon Route 53 hosted
  zone, Global Accelerator standard accelerator, Elastic IP Address, Application
  Load Balancer, or a Classic Load Balancer. You can protect Amazon EC2 instances
  and Network Load Balancers by association with protected Amazon EC2 Elastic IP
  addresses.

  You can add protection to only a single resource with each `CreateProtection`
  request. You can add protection to multiple resources at once through the Shield
  Advanced console at
  [https://console.aws.amazon.com/wafv2/shieldv2#/](https://console.aws.amazon.com/wafv2/shieldv2#/). For more information see [Getting Started with Shield
  Advanced](https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html)
  and [Adding Shield Advanced protection to Amazon Web Services resources](https://docs.aws.amazon.com/waf/latest/developerguide/configure-new-protection.html).
  """
  def create_protection(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateProtection", input, options)
  end

  @doc """
  Creates a grouping of protected resources so they can be handled as a
  collective.

  This resource grouping improves the accuracy of detection and reduces false
  positives.
  """
  def create_protection_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateProtectionGroup", input, options)
  end

  @doc """
  Activates Shield Advanced for an account.

  For accounts that are members of an Organizations organization, Shield Advanced
  subscriptions are billed against the organization's payer account, regardless of
  whether the payer account itself is subscribed.

  When you initially create a subscription, your subscription is set to be
  automatically renewed at the end of the existing subscription period. You can
  change this by submitting an `UpdateSubscription` request.
  """
  def create_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateSubscription", input, options)
  end

  @doc """
  Deletes an Shield Advanced `Protection`.
  """
  def delete_protection(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteProtection", input, options)
  end

  @doc """
  Removes the specified protection group.
  """
  def delete_protection_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteProtectionGroup", input, options)
  end

  @doc """
  Removes Shield Advanced from an account.

  Shield Advanced requires a 1-year subscription commitment. You cannot delete a
  subscription prior to the completion of that commitment.
  """
  def delete_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteSubscription", input, options)
  end

  @doc """
  Describes the details of a DDoS attack.
  """
  def describe_attack(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAttack", input, options)
  end

  @doc """
  Provides information about the number and type of attacks Shield has detected in
  the last year for all resources that belong to your account, regardless of
  whether you've defined Shield protections for them.

  This operation is available to Shield customers as well as to Shield Advanced
  customers.

  The operation returns data for the time range of midnight UTC, one year ago, to
  midnight UTC, today. For example, if the current time is `2020-10-26 15:39:32
  PDT`, equal to `2020-10-26 22:39:32 UTC`, then the time range for the attack
  data returned is from `2019-10-26 00:00:00 UTC` to `2020-10-26 00:00:00 UTC`.

  The time range indicates the period covered by the attack statistics data items.
  """
  def describe_attack_statistics(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAttackStatistics", input, options)
  end

  @doc """
  Returns the current role and list of Amazon S3 log buckets used by the Shield
  Response Team (SRT) to access your Amazon Web Services account while assisting
  with attack mitigation.
  """
  def describe_drt_access(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDRTAccess", input, options)
  end

  @doc """
  A list of email addresses and phone numbers that the Shield Response Team (SRT)
  can use to contact you if you have proactive engagement enabled, for escalations
  to the SRT and to initiate proactive customer support.
  """
  def describe_emergency_contact_settings(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEmergencyContactSettings", input, options)
  end

  @doc """
  Lists the details of a `Protection` object.
  """
  def describe_protection(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeProtection", input, options)
  end

  @doc """
  Returns the specification for the specified protection group.
  """
  def describe_protection_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeProtectionGroup", input, options)
  end

  @doc """
  Provides details about the Shield Advanced subscription for an account.
  """
  def describe_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeSubscription", input, options)
  end

  @doc """
  Disable the Shield Advanced automatic application layer DDoS mitigation feature
  for the protected resource.

  This stops Shield Advanced from creating, verifying, and applying WAF rules for
  attacks that it detects for the resource.
  """
  def disable_application_layer_automatic_response(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DisableApplicationLayerAutomaticResponse",
      input,
      options
    )
  end

  @doc """
  Removes authorization from the Shield Response Team (SRT) to notify contacts
  about escalations to the SRT and to initiate proactive customer support.
  """
  def disable_proactive_engagement(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisableProactiveEngagement", input, options)
  end

  @doc """
  Removes the Shield Response Team's (SRT) access to the specified Amazon S3
  bucket containing the logs that you shared previously.
  """
  def disassociate_drt_log_bucket(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateDRTLogBucket", input, options)
  end

  @doc """
  Removes the Shield Response Team's (SRT) access to your Amazon Web Services
  account.
  """
  def disassociate_drt_role(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateDRTRole", input, options)
  end

  @doc """
  Removes health-based detection from the Shield Advanced protection for a
  resource.

  Shield Advanced health-based detection uses the health of your Amazon Web
  Services resource to improve responsiveness and accuracy in attack detection and
  response.

  You define the health check in Route 53 and then associate or disassociate it
  with your Shield Advanced protection. For more information, see [Shield Advanced Health-Based
  Detection](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option)
  in the *WAF Developer Guide*.
  """
  def disassociate_health_check(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateHealthCheck", input, options)
  end

  @doc """
  Enable the Shield Advanced automatic application layer DDoS mitigation for the
  protected resource.

  This feature is available for Amazon CloudFront distributions and Application
  Load Balancers only.

  This causes Shield Advanced to create, verify, and apply WAF rules for DDoS
  attacks that it detects for the resource. Shield Advanced applies the rules in a
  Shield rule group inside the web ACL that you've associated with the resource.
  For information about how automatic mitigation works and the requirements for
  using it, see [Shield Advanced automatic application layer DDoS mitigation](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-advanced-automatic-app-layer-response.html).

  Don't use this action to make changes to automatic mitigation settings when it's
  already enabled for a resource. Instead, use
  `UpdateApplicationLayerAutomaticResponse`.

  To use this feature, you must associate a web ACL with the protected resource.
  The web ACL must be created using the latest version of WAF (v2). You can
  associate the web ACL through the Shield Advanced console at
  [https://console.aws.amazon.com/wafv2/shieldv2#/](https://console.aws.amazon.com/wafv2/shieldv2#/). For more information, see [Getting Started with Shield
  Advanced](https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html).
  You can also associate the web ACL to the resource through the WAF console or
  the WAF API, but you must manage Shield Advanced automatic mitigation through
  Shield Advanced. For information about WAF, see [WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def enable_application_layer_automatic_response(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "EnableApplicationLayerAutomaticResponse",
      input,
      options
    )
  end

  @doc """
  Authorizes the Shield Response Team (SRT) to use email and phone to notify
  contacts about escalations to the SRT and to initiate proactive customer
  support.
  """
  def enable_proactive_engagement(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EnableProactiveEngagement", input, options)
  end

  @doc """
  Returns the `SubscriptionState`, either `Active` or `Inactive`.
  """
  def get_subscription_state(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetSubscriptionState", input, options)
  end

  @doc """
  Returns all ongoing DDoS attacks or all DDoS attacks during a specified time
  period.
  """
  def list_attacks(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAttacks", input, options)
  end

  @doc """
  Retrieves `ProtectionGroup` objects for the account.

  You can retrieve all protection groups or you can provide filtering criteria and
  retrieve just the subset of protection groups that match the criteria.
  """
  def list_protection_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListProtectionGroups", input, options)
  end

  @doc """
  Retrieves `Protection` objects for the account.

  You can retrieve all protections or you can provide filtering criteria and
  retrieve just the subset of protections that match the criteria.
  """
  def list_protections(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListProtections", input, options)
  end

  @doc """
  Retrieves the resources that are included in the protection group.
  """
  def list_resources_in_protection_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListResourcesInProtectionGroup", input, options)
  end

  @doc """
  Gets information about Amazon Web Services tags for a specified Amazon Resource
  Name (ARN) in Shield.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Adds or updates tags for a resource in Shield.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes tags from a resource in Shield.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Updates an existing Shield Advanced automatic application layer DDoS mitigation
  configuration for the specified resource.
  """
  def update_application_layer_automatic_response(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "UpdateApplicationLayerAutomaticResponse",
      input,
      options
    )
  end

  @doc """
  Updates the details of the list of email addresses and phone numbers that the
  Shield Response Team (SRT) can use to contact you if you have proactive
  engagement enabled, for escalations to the SRT and to initiate proactive
  customer support.
  """
  def update_emergency_contact_settings(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateEmergencyContactSettings", input, options)
  end

  @doc """
  Updates an existing protection group.

  A protection group is a grouping of protected resources so they can be handled
  as a collective. This resource grouping improves the accuracy of detection and
  reduces false positives.
  """
  def update_protection_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateProtectionGroup", input, options)
  end

  @doc """
  Updates the details of an existing subscription.

  Only enter values for parameters you want to change. Empty parameters are not
  updated.

  For accounts that are members of an Organizations organization, Shield Advanced
  subscriptions are billed against the organization's payer account, regardless of
  whether the payer account itself is subscribed.
  """
  def update_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateSubscription", input, options)
  end
end
