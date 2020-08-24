# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WAFV2 do
  @moduledoc """
  <note> This is the latest version of the **AWS WAF** API, released in
  November, 2019. The names of the entities that you use to access this API,
  like endpoints and namespaces, all have the versioning information added,
  like "V2" or "v2", to distinguish from the prior version. We recommend
  migrating your resources to this version, because it has a number of
  significant improvements.

  If you used AWS WAF prior to this release, you can't use this AWS WAFV2 API
  to access any AWS WAF resources that you created before. You can access
  your old rules, web ACLs, and other AWS WAF resources only through the AWS
  WAF Classic APIs. The AWS WAF Classic APIs have retained the prior names,
  endpoints, and namespaces.

  For information, including how to migrate your AWS WAF resources to this
  version, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> AWS WAF is a web application firewall that lets you monitor the
  HTTP and HTTPS requests that are forwarded to Amazon CloudFront, an Amazon
  API Gateway API, or an Application Load Balancer. AWS WAF also lets you
  control access to your content. Based on conditions that you specify, such
  as the IP addresses that requests originate from or the values of query
  strings, API Gateway, CloudFront, or the Application Load Balancer responds
  to requests either with the requested content or with an HTTP 403 status
  code (Forbidden). You also can configure CloudFront to return a custom
  error page when a request is blocked.

  This API guide is for developers who need detailed information about AWS
  WAF API actions, data types, and errors. For detailed information about AWS
  WAF features and an overview of how to use AWS WAF, see the [AWS WAF
  Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

  You can make calls using the endpoints listed in [AWS Service Endpoints for
  AWS
  WAF](https://docs.aws.amazon.com/general/latest/gr/rande.html#waf_region).

  <ul> <li> For regional applications, you can use any of the endpoints in
  the list. A regional application can be an Application Load Balancer (ALB)
  or an API Gateway stage.

  </li> <li> For AWS CloudFront applications, you must use the API endpoint
  listed for US East (N. Virginia): us-east-1.

  </li> </ul> Alternatively, you can use one of the AWS SDKs to access an API
  that's tailored to the programming language or platform that you're using.
  For more information, see [AWS SDKs](http://aws.amazon.com/tools/#SDKs).

  We currently provide two versions of the AWS WAF API: this API and the
  prior versions, the classic AWS WAF APIs. This new API provides the same
  functionality as the older versions, with the following major improvements:

  <ul> <li> You use one API for both global and regional applications. Where
  you need to distinguish the scope, you specify a `Scope` parameter and set
  it to `CLOUDFRONT` or `REGIONAL`.

  </li> <li> You can define a Web ACL or rule group with a single call, and
  update it with a single call. You define all rule specifications in JSON
  format, and pass them to your rule group or Web ACL calls.

  </li> <li> The limits AWS WAF places on the use of rules more closely
  reflects the cost of running each type of rule. Rule groups include
  capacity settings, so you know the maximum cost of a rule group when you
  use it.

  </li> </ul>
  """

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Associates a Web ACL with a regional application resource, to
  protect the resource. A regional application can be an Application Load
  Balancer (ALB) or an API Gateway stage.

  For AWS CloudFront, don't use this call. Instead, use your CloudFront
  distribution configuration. To associate a Web ACL, in the CloudFront call
  `UpdateDistribution`, set the web ACL ID to the Amazon Resource Name (ARN)
  of the Web ACL. For information, see
  [UpdateDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html).
  """
  def associate_web_a_c_l(client, input, options \\ []) do
    request(client, "AssociateWebACL", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Returns the web ACL capacity unit (WCU) requirements for a
  specified scope and set of rules. You can use this to check the capacity
  requirements for the rules you want to use in a `RuleGroup` or `WebACL`.

  AWS WAF uses WCUs to calculate and control the operating resources that are
  used to run your rules, rule groups, and web ACLs. AWS WAF calculates
  capacity differently for each rule type, to reflect the relative cost of
  each rule. Simple rules that cost little to run use fewer WCUs than more
  complex rules that use more processing power. Rule group capacity is fixed
  at creation, which helps users plan their web ACL WCU usage when they use a
  rule group. The WCU limit for web ACLs is 1,500.
  """
  def check_capacity(client, input, options \\ []) do
    request(client, "CheckCapacity", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Creates an `IPSet`, which you use to identify web requests that
  originate from specific IP addresses or ranges of IP addresses. For
  example, if you're receiving a lot of requests from a ranges of IP
  addresses, you can configure AWS WAF to block them using an IPSet that
  lists those IP addresses.
  """
  def create_i_p_set(client, input, options \\ []) do
    request(client, "CreateIPSet", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Creates a `RegexPatternSet`, which you reference in a
  `RegexPatternSetReferenceStatement`, to have AWS WAF inspect a web request
  component for the specified patterns.
  """
  def create_regex_pattern_set(client, input, options \\ []) do
    request(client, "CreateRegexPatternSet", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Creates a `RuleGroup` per the specifications provided.

  A rule group defines a collection of rules to inspect and control web
  requests that you can use in a `WebACL`. When you create a rule group, you
  define an immutable capacity limit. If you update a rule group, you must
  stay within the capacity. This allows others to reuse the rule group with
  confidence in its capacity requirements.
  """
  def create_rule_group(client, input, options \\ []) do
    request(client, "CreateRuleGroup", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Creates a `WebACL` per the specifications provided.

  A Web ACL defines a collection of rules to use to inspect and control web
  requests. Each rule has an action defined (allow, block, or count) for
  requests that match the statement of the rule. In the Web ACL, you assign a
  default action to take (allow, block) for any request that does not match
  any of the rules. The rules in a Web ACL can be a combination of the types
  `Rule`, `RuleGroup`, and managed rule group. You can associate a Web ACL
  with one or more AWS resources to protect. The resources can be Amazon
  CloudFront, an Amazon API Gateway API, or an Application Load Balancer.
  """
  def create_web_a_c_l(client, input, options \\ []) do
    request(client, "CreateWebACL", input, options)
  end

  @doc """
  Deletes all rule groups that are managed by AWS Firewall Manager for the
  specified web ACL.

  You can only use this if `ManagedByFirewallManager` is false in the
  specified `WebACL`.
  """
  def delete_firewall_manager_rule_groups(client, input, options \\ []) do
    request(client, "DeleteFirewallManagerRuleGroups", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Deletes the specified `IPSet`.
  """
  def delete_i_p_set(client, input, options \\ []) do
    request(client, "DeleteIPSet", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Deletes the `LoggingConfiguration` from the specified web ACL.
  """
  def delete_logging_configuration(client, input, options \\ []) do
    request(client, "DeleteLoggingConfiguration", input, options)
  end

  @doc """
  Permanently deletes an IAM policy from the specified rule group.

  You must be the owner of the rule group to perform this operation.
  """
  def delete_permission_policy(client, input, options \\ []) do
    request(client, "DeletePermissionPolicy", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Deletes the specified `RegexPatternSet`.
  """
  def delete_regex_pattern_set(client, input, options \\ []) do
    request(client, "DeleteRegexPatternSet", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Deletes the specified `RuleGroup`.
  """
  def delete_rule_group(client, input, options \\ []) do
    request(client, "DeleteRuleGroup", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Deletes the specified `WebACL`.

  You can only use this if `ManagedByFirewallManager` is false in the
  specified `WebACL`.
  """
  def delete_web_a_c_l(client, input, options \\ []) do
    request(client, "DeleteWebACL", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Provides high-level information for a managed rule group, including
  descriptions of the rules.
  """
  def describe_managed_rule_group(client, input, options \\ []) do
    request(client, "DescribeManagedRuleGroup", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Disassociates a Web ACL from a regional application resource. A
  regional application can be an Application Load Balancer (ALB) or an API
  Gateway stage.

  For AWS CloudFront, don't use this call. Instead, use your CloudFront
  distribution configuration. To disassociate a Web ACL, provide an empty web
  ACL ID in the CloudFront call `UpdateDistribution`. For information, see
  [UpdateDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html).
  """
  def disassociate_web_a_c_l(client, input, options \\ []) do
    request(client, "DisassociateWebACL", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Retrieves the specified `IPSet`.
  """
  def get_i_p_set(client, input, options \\ []) do
    request(client, "GetIPSet", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Returns the `LoggingConfiguration` for the specified web ACL.
  """
  def get_logging_configuration(client, input, options \\ []) do
    request(client, "GetLoggingConfiguration", input, options)
  end

  @doc """
  Returns the IAM policy that is attached to the specified rule group.

  You must be the owner of the rule group to perform this operation.
  """
  def get_permission_policy(client, input, options \\ []) do
    request(client, "GetPermissionPolicy", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Retrieves the keys that are currently blocked by a rate-based rule.
  The maximum number of managed keys that can be blocked for a single
  rate-based rule is 10,000. If more than 10,000 addresses exceed the rate
  limit, those with the highest rates are blocked.
  """
  def get_rate_based_statement_managed_keys(client, input, options \\ []) do
    request(client, "GetRateBasedStatementManagedKeys", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Retrieves the specified `RegexPatternSet`.
  """
  def get_regex_pattern_set(client, input, options \\ []) do
    request(client, "GetRegexPatternSet", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Retrieves the specified `RuleGroup`.
  """
  def get_rule_group(client, input, options \\ []) do
    request(client, "GetRuleGroup", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Gets detailed information about a specified number of requests--a
  sample--that AWS WAF randomly selects from among the first 5,000 requests
  that your AWS resource received during a time range that you choose. You
  can specify a sample size of up to 500 requests, and you can specify any
  time range in the previous three hours.

  `GetSampledRequests` returns a time range, which is usually the time range
  that you specified. However, if your resource (such as a CloudFront
  distribution) received 5,000 requests before the specified time range
  elapsed, `GetSampledRequests` returns an updated time range. This new time
  range indicates the actual period during which AWS WAF selected the
  requests in the sample.
  """
  def get_sampled_requests(client, input, options \\ []) do
    request(client, "GetSampledRequests", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Retrieves the specified `WebACL`.
  """
  def get_web_a_c_l(client, input, options \\ []) do
    request(client, "GetWebACL", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Retrieves the `WebACL` for the specified resource.
  """
  def get_web_a_c_l_for_resource(client, input, options \\ []) do
    request(client, "GetWebACLForResource", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Retrieves an array of managed rule groups that are available for
  you to use. This list includes all AWS Managed Rules rule groups and the
  AWS Marketplace managed rule groups that you're subscribed to.
  """
  def list_available_managed_rule_groups(client, input, options \\ []) do
    request(client, "ListAvailableManagedRuleGroups", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Retrieves an array of `IPSetSummary` objects for the IP sets that
  you manage.
  """
  def list_i_p_sets(client, input, options \\ []) do
    request(client, "ListIPSets", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Retrieves an array of your `LoggingConfiguration` objects.
  """
  def list_logging_configurations(client, input, options \\ []) do
    request(client, "ListLoggingConfigurations", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Retrieves an array of `RegexPatternSetSummary` objects for the
  regex pattern sets that you manage.
  """
  def list_regex_pattern_sets(client, input, options \\ []) do
    request(client, "ListRegexPatternSets", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Retrieves an array of the Amazon Resource Names (ARNs) for the
  regional resources that are associated with the specified web ACL. If you
  want the list of AWS CloudFront resources, use the AWS CloudFront call
  `ListDistributionsByWebACLId`.
  """
  def list_resources_for_web_a_c_l(client, input, options \\ []) do
    request(client, "ListResourcesForWebACL", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Retrieves an array of `RuleGroupSummary` objects for the rule
  groups that you manage.
  """
  def list_rule_groups(client, input, options \\ []) do
    request(client, "ListRuleGroups", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Retrieves the `TagInfoForResource` for the specified resource. Tags
  are key:value pairs that you can use to categorize and manage your
  resources, for purposes like billing. For example, you might set the tag
  key to "customer" and the value to the customer name or ID. You can specify
  one or more tags to add to each AWS resource, up to 50 tags for a resource.

  You can tag the AWS resources that you manage through AWS WAF: web ACLs,
  rule groups, IP sets, and regex pattern sets. You can't manage or view tags
  through the AWS WAF console.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Retrieves an array of `WebACLSummary` objects for the web ACLs that
  you manage.
  """
  def list_web_a_c_ls(client, input, options \\ []) do
    request(client, "ListWebACLs", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Enables the specified `LoggingConfiguration`, to start logging from
  a web ACL, according to the configuration provided.

  You can access information about all traffic that AWS WAF inspects using
  the following steps:

  <ol> <li> Create an Amazon Kinesis Data Firehose.

  Create the data firehose with a PUT source and in the Region that you are
  operating. If you are capturing logs for Amazon CloudFront, always create
  the firehose in US East (N. Virginia).

  Give the data firehose a name that starts with the prefix `aws-waf-logs-`.
  For example, `aws-waf-logs-us-east-2-analytics`.

  <note> Do not create the data firehose using a `Kinesis stream` as your
  source.

  </note> </li> <li> Associate that firehose to your web ACL using a
  `PutLoggingConfiguration` request.

  </li> </ol> When you successfully enable logging using a
  `PutLoggingConfiguration` request, AWS WAF will create a service linked
  role with the necessary permissions to write logs to the Amazon Kinesis
  Data Firehose. For more information, see [Logging Web ACL Traffic
  Information](https://docs.aws.amazon.com/waf/latest/developerguide/logging.html)
  in the *AWS WAF Developer Guide*.
  """
  def put_logging_configuration(client, input, options \\ []) do
    request(client, "PutLoggingConfiguration", input, options)
  end

  @doc """
  Attaches an IAM policy to the specified resource. Use this to share a rule
  group across accounts.

  You must be the owner of the rule group to perform this operation.

  This action is subject to the following restrictions:

  <ul> <li> You can attach only one policy with each `PutPermissionPolicy`
  request.

  </li> <li> The ARN in the request must be a valid WAF `RuleGroup` ARN and
  the rule group must exist in the same region.

  </li> <li> The user making the request must be the owner of the rule group.

  </li> </ul>
  """
  def put_permission_policy(client, input, options \\ []) do
    request(client, "PutPermissionPolicy", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Associates tags with the specified AWS resource. Tags are key:value
  pairs that you can use to categorize and manage your resources, for
  purposes like billing. For example, you might set the tag key to "customer"
  and the value to the customer name or ID. You can specify one or more tags
  to add to each AWS resource, up to 50 tags for a resource.

  You can tag the AWS resources that you manage through AWS WAF: web ACLs,
  rule groups, IP sets, and regex pattern sets. You can't manage or view tags
  through the AWS WAF console.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Disassociates tags from an AWS resource. Tags are key:value pairs
  that you can associate with AWS resources. For example, the tag key might
  be "customer" and the tag value might be "companyA." You can specify one or
  more tags to add to each container. You can add up to 50 tags to each AWS
  resource.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Updates the specified `IPSet`.
  """
  def update_i_p_set(client, input, options \\ []) do
    request(client, "UpdateIPSet", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Updates the specified `RegexPatternSet`.
  """
  def update_regex_pattern_set(client, input, options \\ []) do
    request(client, "UpdateRegexPatternSet", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Updates the specified `RuleGroup`.

  A rule group defines a collection of rules to inspect and control web
  requests that you can use in a `WebACL`. When you create a rule group, you
  define an immutable capacity limit. If you update a rule group, you must
  stay within the capacity. This allows others to reuse the rule group with
  confidence in its capacity requirements.
  """
  def update_rule_group(client, input, options \\ []) do
    request(client, "UpdateRuleGroup", input, options)
  end

  @doc """
  <note> This is the latest version of **AWS WAF**, named AWS WAFV2, released
  in November, 2019. For information, including how to migrate your AWS WAF
  resources from the prior release, see the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  </note> Updates the specified `WebACL`.

  A Web ACL defines a collection of rules to use to inspect and control web
  requests. Each rule has an action defined (allow, block, or count) for
  requests that match the statement of the rule. In the Web ACL, you assign a
  default action to take (allow, block) for any request that does not match
  any of the rules. The rules in a Web ACL can be a combination of the types
  `Rule`, `RuleGroup`, and managed rule group. You can associate a Web ACL
  with one or more AWS resources to protect. The resources can be Amazon
  CloudFront, an Amazon API Gateway API, or an Application Load Balancer.
  """
  def update_web_a_c_l(client, input, options \\ []) do
    request(client, "UpdateWebACL", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "wafv2"}
    host = build_host("wafv2", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSWAF_20190729.#{action}"}
    ]

    payload = Poison.Encoder.encode(input, %{})
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)

    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
