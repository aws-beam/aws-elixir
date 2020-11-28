# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WAFV2 do
  @moduledoc """
  This is the latest version of the **AWS WAF** API, released in November, 2019.

  The names of the entities that you use to access this API, like endpoints and
  namespaces, all have the versioning information added, like "V2" or "v2", to
  distinguish from the prior version. We recommend migrating your resources to
  this version, because it has a number of significant improvements.

  If you used AWS WAF prior to this release, you can't use this AWS WAFV2 API to
  access any AWS WAF resources that you created before. You can access your old
  rules, web ACLs, and other AWS WAF resources only through the AWS WAF Classic
  APIs. The AWS WAF Classic APIs have retained the prior names, endpoints, and
  namespaces.

  For information, including how to migrate your AWS WAF resources to this
  version, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  AWS WAF is a web application firewall that lets you monitor the HTTP and HTTPS
  requests that are forwarded to Amazon CloudFront, an Amazon API Gateway REST
  API, an Application Load Balancer, or an AWS AppSync GraphQL API. AWS WAF also
  lets you control access to your content. Based on conditions that you specify,
  such as the IP addresses that requests originate from or the values of query
  strings, the API Gateway REST API, CloudFront distribution, the Application Load
  Balancer, or the AWS AppSync GraphQL API responds to requests either with the
  requested content or with an HTTP 403 status code (Forbidden). You also can
  configure CloudFront to return a custom error page when a request is blocked.

  This API guide is for developers who need detailed information about AWS WAF API
  actions, data types, and errors. For detailed information about AWS WAF features
  and an overview of how to use AWS WAF, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

  You can make calls using the endpoints listed in [AWS Service Endpoints for AWS WAF](https://docs.aws.amazon.com/general/latest/gr/rande.html#waf_region).

    * For regional applications, you can use any of the endpoints in the
  list. A regional application can be an Application Load Balancer (ALB), an API
  Gateway REST API, or an AppSync GraphQL API.

    * For AWS CloudFront applications, you must use the API endpoint
  listed for US East (N. Virginia): us-east-1.

  Alternatively, you can use one of the AWS SDKs to access an API that's tailored
  to the programming language or platform that you're using. For more information,
  see [AWS SDKs](http://aws.amazon.com/tools/#SDKs).

  We currently provide two versions of the AWS WAF API: this API and the prior
  versions, the classic AWS WAF APIs. This new API provides the same functionality
  as the older versions, with the following major improvements:

    * You use one API for both global and regional applications. Where
  you need to distinguish the scope, you specify a `Scope` parameter and set it to
  `CLOUDFRONT` or `REGIONAL`.

    * You can define a Web ACL or rule group with a single call, and
  update it with a single call. You define all rule specifications in JSON format,
  and pass them to your rule group or Web ACL calls.

    * The limits AWS WAF places on the use of rules more closely
  reflects the cost of running each type of rule. Rule groups include capacity
  settings, so you know the maximum cost of a rule group when you use it.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "WAFV2",
      api_version: "2019-07-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "wafv2",
      global?: false,
      protocol: "json",
      service_id: "WAFV2",
      signature_version: "v4",
      signing_name: "wafv2",
      target_prefix: "AWSWAF_20190729"
    }
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Associates a Web ACL with a regional application resource, to protect the
  resource. A regional application can be an Application Load Balancer (ALB), an
  API Gateway REST API, or an AppSync GraphQL API.

  For AWS CloudFront, don't use this call. Instead, use your CloudFront
  distribution configuration. To associate a Web ACL, in the CloudFront call
  `UpdateDistribution`, set the web ACL ID to the Amazon Resource Name (ARN) of
  the Web ACL. For information, see
  [UpdateDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html).
  """
  def associate_web_a_c_l(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateWebACL", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Returns the web ACL capacity unit (WCU) requirements for a specified scope and
  set of rules. You can use this to check the capacity requirements for the rules
  you want to use in a `RuleGroup` or `WebACL`.

  AWS WAF uses WCUs to calculate and control the operating resources that are used
  to run your rules, rule groups, and web ACLs. AWS WAF calculates capacity
  differently for each rule type, to reflect the relative cost of each rule.
  Simple rules that cost little to run use fewer WCUs than more complex rules that
  use more processing power. Rule group capacity is fixed at creation, which helps
  users plan their web ACL WCU usage when they use a rule group. The WCU limit for
  web ACLs is 1,500.
  """
  def check_capacity(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CheckCapacity", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Creates an `IPSet`, which you use to identify web requests that originate from
  specific IP addresses or ranges of IP addresses. For example, if you're
  receiving a lot of requests from a ranges of IP addresses, you can configure AWS
  WAF to block them using an IPSet that lists those IP addresses.
  """
  def create_i_p_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateIPSet", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Creates a `RegexPatternSet`, which you reference in a
  `RegexPatternSetReferenceStatement`, to have AWS WAF inspect a web request
  component for the specified patterns.
  """
  def create_regex_pattern_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateRegexPatternSet", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Creates a `RuleGroup` per the specifications provided.

  A rule group defines a collection of rules to inspect and control web requests
  that you can use in a `WebACL`. When you create a rule group, you define an
  immutable capacity limit. If you update a rule group, you must stay within the
  capacity. This allows others to reuse the rule group with confidence in its
  capacity requirements.
  """
  def create_rule_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateRuleGroup", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Creates a `WebACL` per the specifications provided.

  A Web ACL defines a collection of rules to use to inspect and control web
  requests. Each rule has an action defined (allow, block, or count) for requests
  that match the statement of the rule. In the Web ACL, you assign a default
  action to take (allow, block) for any request that does not match any of the
  rules. The rules in a Web ACL can be a combination of the types `Rule`,
  `RuleGroup`, and managed rule group. You can associate a Web ACL with one or
  more AWS resources to protect. The resources can be Amazon CloudFront, an Amazon
  API Gateway REST API, an Application Load Balancer, or an AWS AppSync GraphQL
  API.
  """
  def create_web_a_c_l(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateWebACL", input, options)
  end

  @doc """
  Deletes all rule groups that are managed by AWS Firewall Manager for the
  specified web ACL.

  You can only use this if `ManagedByFirewallManager` is false in the specified
  `WebACL`.
  """
  def delete_firewall_manager_rule_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteFirewallManagerRuleGroups", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Deletes the specified `IPSet`.
  """
  def delete_i_p_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteIPSet", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Deletes the `LoggingConfiguration` from the specified web ACL.
  """
  def delete_logging_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLoggingConfiguration", input, options)
  end

  @doc """
  Permanently deletes an IAM policy from the specified rule group.

  You must be the owner of the rule group to perform this operation.
  """
  def delete_permission_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeletePermissionPolicy", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Deletes the specified `RegexPatternSet`.
  """
  def delete_regex_pattern_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRegexPatternSet", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Deletes the specified `RuleGroup`.
  """
  def delete_rule_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRuleGroup", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Deletes the specified `WebACL`.

  You can only use this if `ManagedByFirewallManager` is false in the specified
  `WebACL`.
  """
  def delete_web_a_c_l(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteWebACL", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Provides high-level information for a managed rule group, including descriptions
  of the rules.
  """
  def describe_managed_rule_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeManagedRuleGroup", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Disassociates a Web ACL from a regional application resource. A regional
  application can be an Application Load Balancer (ALB), an API Gateway REST API,
  or an AppSync GraphQL API.

  For AWS CloudFront, don't use this call. Instead, use your CloudFront
  distribution configuration. To disassociate a Web ACL, provide an empty web ACL
  ID in the CloudFront call `UpdateDistribution`. For information, see
  [UpdateDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html).
  """
  def disassociate_web_a_c_l(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateWebACL", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Retrieves the specified `IPSet`.
  """
  def get_i_p_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetIPSet", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Returns the `LoggingConfiguration` for the specified web ACL.
  """
  def get_logging_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetLoggingConfiguration", input, options)
  end

  @doc """
  Returns the IAM policy that is attached to the specified rule group.

  You must be the owner of the rule group to perform this operation.
  """
  def get_permission_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetPermissionPolicy", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Retrieves the keys that are currently blocked by a rate-based rule. The maximum
  number of managed keys that can be blocked for a single rate-based rule is
  10,000. If more than 10,000 addresses exceed the rate limit, those with the
  highest rates are blocked.
  """
  def get_rate_based_statement_managed_keys(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetRateBasedStatementManagedKeys", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Retrieves the specified `RegexPatternSet`.
  """
  def get_regex_pattern_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetRegexPatternSet", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Retrieves the specified `RuleGroup`.
  """
  def get_rule_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetRuleGroup", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Gets detailed information about a specified number of requests--a sample--that
  AWS WAF randomly selects from among the first 5,000 requests that your AWS
  resource received during a time range that you choose. You can specify a sample
  size of up to 500 requests, and you can specify any time range in the previous
  three hours.

  `GetSampledRequests` returns a time range, which is usually the time range that
  you specified. However, if your resource (such as a CloudFront distribution)
  received 5,000 requests before the specified time range elapsed,
  `GetSampledRequests` returns an updated time range. This new time range
  indicates the actual period during which AWS WAF selected the requests in the
  sample.
  """
  def get_sampled_requests(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetSampledRequests", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Retrieves the specified `WebACL`.
  """
  def get_web_a_c_l(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetWebACL", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Retrieves the `WebACL` for the specified resource.
  """
  def get_web_a_c_l_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetWebACLForResource", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Retrieves an array of managed rule groups that are available for you to use.
  This list includes all AWS Managed Rules rule groups and the AWS Marketplace
  managed rule groups that you're subscribed to.
  """
  def list_available_managed_rule_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAvailableManagedRuleGroups", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Retrieves an array of `IPSetSummary` objects for the IP sets that you manage.
  """
  def list_i_p_sets(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListIPSets", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Retrieves an array of your `LoggingConfiguration` objects.
  """
  def list_logging_configurations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListLoggingConfigurations", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Retrieves an array of `RegexPatternSetSummary` objects for the regex pattern
  sets that you manage.
  """
  def list_regex_pattern_sets(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListRegexPatternSets", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Retrieves an array of the Amazon Resource Names (ARNs) for the regional
  resources that are associated with the specified web ACL. If you want the list
  of AWS CloudFront resources, use the AWS CloudFront call
  `ListDistributionsByWebACLId`.
  """
  def list_resources_for_web_a_c_l(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListResourcesForWebACL", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Retrieves an array of `RuleGroupSummary` objects for the rule groups that you
  manage.
  """
  def list_rule_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListRuleGroups", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Retrieves the `TagInfoForResource` for the specified resource. Tags are
  key:value pairs that you can use to categorize and manage your resources, for
  purposes like billing. For example, you might set the tag key to "customer" and
  the value to the customer name or ID. You can specify one or more tags to add to
  each AWS resource, up to 50 tags for a resource.

  You can tag the AWS resources that you manage through AWS WAF: web ACLs, rule
  groups, IP sets, and regex pattern sets. You can't manage or view tags through
  the AWS WAF console.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Retrieves an array of `WebACLSummary` objects for the web ACLs that you manage.
  """
  def list_web_a_c_ls(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListWebACLs", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Enables the specified `LoggingConfiguration`, to start logging from a web ACL,
  according to the configuration provided.

  You can access information about all traffic that AWS WAF inspects using the
  following steps:

    1. Create an Amazon Kinesis Data Firehose.

  Create the data firehose with a PUT source and in the Region that you are
  operating. If you are capturing logs for Amazon CloudFront, always create the
  firehose in US East (N. Virginia).

  Give the data firehose a name that starts with the prefix `aws-waf-logs-`. For
  example, `aws-waf-logs-us-east-2-analytics`.

  Do not create the data firehose using a `Kinesis stream` as your source.

    2. Associate that firehose to your web ACL using a
  `PutLoggingConfiguration` request.

  When you successfully enable logging using a `PutLoggingConfiguration` request,
  AWS WAF will create a service linked role with the necessary permissions to
  write logs to the Amazon Kinesis Data Firehose. For more information, see
  [Logging Web ACL Traffic Information](https://docs.aws.amazon.com/waf/latest/developerguide/logging.html)
  in the *AWS WAF Developer Guide*.
  """
  def put_logging_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutLoggingConfiguration", input, options)
  end

  @doc """
  Attaches an IAM policy to the specified resource.

  Use this to share a rule group across accounts.

  You must be the owner of the rule group to perform this operation.

  This action is subject to the following restrictions:

    * You can attach only one policy with each `PutPermissionPolicy`
  request.

    * The ARN in the request must be a valid WAF `RuleGroup` ARN and the
  rule group must exist in the same region.

    * The user making the request must be the owner of the rule group.
  """
  def put_permission_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutPermissionPolicy", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Associates tags with the specified AWS resource. Tags are key:value pairs that
  you can use to categorize and manage your resources, for purposes like billing.
  For example, you might set the tag key to "customer" and the value to the
  customer name or ID. You can specify one or more tags to add to each AWS
  resource, up to 50 tags for a resource.

  You can tag the AWS resources that you manage through AWS WAF: web ACLs, rule
  groups, IP sets, and regex pattern sets. You can't manage or view tags through
  the AWS WAF console.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Disassociates tags from an AWS resource. Tags are key:value pairs that you can
  associate with AWS resources. For example, the tag key might be "customer" and
  the tag value might be "companyA." You can specify one or more tags to add to
  each container. You can add up to 50 tags to each AWS resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Updates the specified `IPSet`.
  """
  def update_i_p_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateIPSet", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Updates the specified `RegexPatternSet`.
  """
  def update_regex_pattern_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateRegexPatternSet", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Updates the specified `RuleGroup`.

  A rule group defines a collection of rules to inspect and control web requests
  that you can use in a `WebACL`. When you create a rule group, you define an
  immutable capacity limit. If you update a rule group, you must stay within the
  capacity. This allows others to reuse the rule group with confidence in its
  capacity requirements.
  """
  def update_rule_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateRuleGroup", input, options)
  end

  @doc """
  This is the latest version of **AWS WAF**, named AWS WAFV2, released in
  November, 2019.

  For information, including how to migrate your AWS WAF resources from the prior
  release, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  Updates the specified `WebACL`.

  A Web ACL defines a collection of rules to use to inspect and control web
  requests. Each rule has an action defined (allow, block, or count) for requests
  that match the statement of the rule. In the Web ACL, you assign a default
  action to take (allow, block) for any request that does not match any of the
  rules. The rules in a Web ACL can be a combination of the types `Rule`,
  `RuleGroup`, and managed rule group. You can associate a Web ACL with one or
  more AWS resources to protect. The resources can be Amazon CloudFront, an Amazon
  API Gateway REST API, an Application Load Balancer, or an AWS AppSync GraphQL
  API.
  """
  def update_web_a_c_l(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateWebACL", input, options)
  end
end