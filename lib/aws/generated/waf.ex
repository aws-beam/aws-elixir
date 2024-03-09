# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WAF do
  @moduledoc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  This is the *AWS WAF Classic API Reference* for using AWS WAF Classic with
  Amazon CloudFront. The AWS WAF Classic actions and data types listed in the
  reference are available for protecting Amazon CloudFront distributions. You can
  use these actions and data types via the endpoint *waf.amazonaws.com*. This
  guide is for developers who need detailed information about the AWS WAF Classic
  API actions,
  data types, and errors. For detailed information about AWS WAF Classic features
  and an overview of how to use the AWS WAF Classic API, see the
  [AWS WAF Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2015-08-24",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "waf",
      global?: true,
      protocol: "json",
      service_id: "WAF",
      signature_version: "v4",
      signing_name: "waf",
      target_prefix: "AWSWAF_20150824"
    }
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Creates a `ByteMatchSet`. You then use `UpdateByteMatchSet` to identify the part
  of a
  web request that you want AWS WAF to inspect, such as the values of the
  `User-Agent` header or the query string.
  For example, you can create a `ByteMatchSet` that matches any requests with
  `User-Agent` headers
  that contain the string `BadBot`. You can then configure AWS WAF to reject those
  requests.

  To create and configure a `ByteMatchSet`, perform the following steps:

    1.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `CreateByteMatchSet` request.

    2.
  Submit a `CreateByteMatchSet` request.

    3.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateByteMatchSet` request.

    4.
  Submit an `UpdateByteMatchSet` request to specify the part of the request that
  you want AWS WAF to inspect
  (for example, the header or the URI) and the value that you want AWS WAF to
  watch for.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_byte_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateByteMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Creates an `GeoMatchSet`, which you use to specify which web requests you want
  to allow or block based on the country
  that the requests originate from. For example, if you're receiving a lot of
  requests from one or more countries and you want to block the requests, you can
  create an `GeoMatchSet` that contains those countries and then configure AWS WAF
  to block the requests.

  To create and configure a `GeoMatchSet`, perform the following steps:

    1.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `CreateGeoMatchSet` request.

    2.
  Submit a `CreateGeoMatchSet` request.

    3.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateGeoMatchSet` request.

    4.
  Submit an `UpdateGeoMatchSetSet` request to specify the countries that you want
  AWS WAF to watch for.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_geo_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGeoMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Creates an `IPSet`, which you use to specify which web requests
  that
  you want to allow or block based on the IP addresses that the requests
  originate from. For example, if you're receiving a lot of requests from one or
  more
  individual IP addresses or one or more ranges of IP addresses and you want to
  block the
  requests, you can create an `IPSet` that contains those IP addresses and then
  configure AWS WAF to block the requests.

  To create and configure an `IPSet`, perform the following steps:

    1.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `CreateIPSet` request.

    2.
  Submit a `CreateIPSet` request.

    3.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateIPSet` request.

    4.
  Submit an `UpdateIPSet` request to specify the IP addresses that you want AWS
  WAF to watch for.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_ip_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateIPSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Creates a `RateBasedRule`. The `RateBasedRule` contains a
  `RateLimit`, which specifies the maximum number of requests that AWS WAF allows
  from a specified IP address in a five-minute period.
  The `RateBasedRule` also
  contains the `IPSet` objects, `ByteMatchSet` objects, and other
  predicates that identify the requests that you want to count or block if these
  requests
  exceed the `RateLimit`.

  If you add more than one predicate to a `RateBasedRule`, a request not
  only must exceed the `RateLimit`, but it also must match all the
  conditions to be counted or blocked. For example, suppose you add the following
  to a
  `RateBasedRule`:

    *
  An `IPSet` that matches the IP address `192.0.2.44/32`

    *
  A `ByteMatchSet` that matches `BadBot` in the
  `User-Agent` header

  Further, you specify a `RateLimit` of 1,000.

  You then add the `RateBasedRule` to a `WebACL` and specify that
  you want to block requests that meet the conditions in the rule. For a request
  to be
  blocked, it must come from the IP address 192.0.2.44 *and* the
  `User-Agent` header in the request must contain the value
  `BadBot`. Further, requests that match these two conditions must be received at
  a rate of more than 1,000 requests every five minutes. If both conditions are
  met and the
  rate is exceeded, AWS WAF blocks the requests. If the rate drops below 1,000 for
  a
  five-minute period, AWS WAF no longer blocks the requests.

  As a second example, suppose you want to limit requests to a particular page on
  your site. To do this, you could add the following to a
  `RateBasedRule`:

    *
  A `ByteMatchSet` with `FieldToMatch` of `URI`

    *
  A `PositionalConstraint` of `STARTS_WITH`

    *
  A `TargetString` of `login`

  Further, you specify a `RateLimit` of 1,000.

  By adding this `RateBasedRule` to a `WebACL`, you could limit requests to your
  login page without affecting the rest of your site.

  To create and configure a `RateBasedRule`, perform the following
  steps:

    1.
  Create and update the predicates that you want to include in the rule. For more
  information, see `CreateByteMatchSet`, `CreateIPSet`,
  and `CreateSqlInjectionMatchSet`.

    2.
  Use `GetChangeToken` to get the change token that you provide
  in the `ChangeToken` parameter of a `CreateRule`
  request.

    3.
  Submit a `CreateRateBasedRule` request.

    4.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an `UpdateRule`
  request.

    5.
  Submit an `UpdateRateBasedRule` request to specify the predicates
  that you want to include in the rule.

    6.
  Create and update a `WebACL` that contains the
  `RateBasedRule`. For more information, see `CreateWebACL`.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests,
  see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_rate_based_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRateBasedRule", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Creates a `RegexMatchSet`. You then use `UpdateRegexMatchSet` to identify the
  part of a
  web request that you want AWS WAF to inspect, such as the values of the
  `User-Agent` header or the query string.
  For example, you can create a `RegexMatchSet` that contains a `RegexMatchTuple`
  that looks for any requests with `User-Agent` headers
  that match a `RegexPatternSet` with pattern `B[a@]dB[o0]t`. You can then configure AWS WAF to reject those requests.

  To create and configure a `RegexMatchSet`, perform the following steps:

    1.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `CreateRegexMatchSet` request.

    2.
  Submit a `CreateRegexMatchSet` request.

    3.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateRegexMatchSet` request.

    4.
  Submit an `UpdateRegexMatchSet` request to specify the part of the request that
  you want AWS WAF to inspect
  (for example, the header or the URI) and the value, using a `RegexPatternSet`,
  that you want AWS WAF to watch for.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_regex_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRegexMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Creates a `RegexPatternSet`. You then use `UpdateRegexPatternSet` to specify the
  regular expression (regex) pattern that you want AWS WAF to search for, such as
  `B[a@]dB[o0]t`. You can then configure AWS WAF to reject those requests.   To create and configure a `RegexPatternSet`, perform the following steps:

    1.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `CreateRegexPatternSet` request.

    2.
  Submit a `CreateRegexPatternSet` request.

    3.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateRegexPatternSet` request.

    4.
  Submit an `UpdateRegexPatternSet` request to specify the string that you want
  AWS WAF to watch for.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_regex_pattern_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRegexPatternSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Creates a `Rule`, which contains the `IPSet` objects,
  `ByteMatchSet` objects, and other predicates that identify the requests that
  you want to block. If you add more than one predicate to a `Rule`, a request
  must match all of the specifications to be allowed or blocked. For example,
  suppose
  that
  you add the following to a `Rule`:

    *
  An `IPSet` that matches the IP address `192.0.2.44/32`

    *
  A `ByteMatchSet` that matches `BadBot` in the `User-Agent` header

  You then add the `Rule` to a `WebACL` and specify that you want to blocks
  requests that satisfy the `Rule`.
  For a request to be blocked, it must come from the IP address 192.0.2.44 *and*
  the `User-Agent` header in the request
  must contain the value `BadBot`.

  To create and configure a `Rule`, perform the following steps:

    1.
  Create and update the predicates that you want to include in the `Rule`. For
  more information, see
  `CreateByteMatchSet`, `CreateIPSet`, and `CreateSqlInjectionMatchSet`.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `CreateRule` request.

    3.
  Submit a `CreateRule` request.

    4.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateRule` request.

    5.
  Submit an `UpdateRule` request to specify the predicates that you want to
  include in the `Rule`.

    6.
  Create and update a `WebACL` that contains the `Rule`. For more information, see
  `CreateWebACL`.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRule", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Creates a `RuleGroup`. A rule group is a collection of predefined rules that you
  add to a web ACL. You use `UpdateRuleGroup` to add rules to the rule group.

  Rule groups are subject to the following limits:

    *
  Three rule groups per account. You can request an increase to this limit by
  contacting customer support.

    *
  One rule group per web ACL.

    *
  Ten rules per rule group.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_rule_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRuleGroup", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Creates a `SizeConstraintSet`. You then use `UpdateSizeConstraintSet` to
  identify the part of a
  web request that you want AWS WAF to check for length, such as the length of the
  `User-Agent` header or the length of the query string.
  For example, you can create a `SizeConstraintSet` that matches any requests that
  have a query string that is longer than 100 bytes.
  You can then configure AWS WAF to reject those requests.

  To create and configure a `SizeConstraintSet`, perform the following steps:

    1.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `CreateSizeConstraintSet` request.

    2.
  Submit a `CreateSizeConstraintSet` request.

    3.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateSizeConstraintSet` request.

    4.
  Submit an `UpdateSizeConstraintSet` request to specify the part of the request
  that you want AWS WAF to inspect
  (for example, the header or the URI) and the value that you want AWS WAF to
  watch for.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_size_constraint_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSizeConstraintSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Creates a `SqlInjectionMatchSet`, which you use to allow, block, or count
  requests that contain snippets of SQL code in a
  specified part of web requests. AWS WAF searches for character sequences that
  are likely to be malicious strings.

  To create and configure a `SqlInjectionMatchSet`, perform the following steps:

    1.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `CreateSqlInjectionMatchSet` request.

    2.
  Submit a `CreateSqlInjectionMatchSet` request.

    3.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateSqlInjectionMatchSet` request.

    4.
  Submit an `UpdateSqlInjectionMatchSet` request to specify the parts of web
  requests in which you want to
  allow, block, or count malicious SQL code.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_sql_injection_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSqlInjectionMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Creates a `WebACL`, which contains the `Rules` that identify the CloudFront web
  requests that you want to allow, block, or count.
  AWS WAF evaluates `Rules` in order based on the value of `Priority` for each
  `Rule`.

  You also specify a default action, either `ALLOW` or `BLOCK`. If a web request
  doesn't match
  any of the `Rules` in a `WebACL`, AWS WAF responds to the request with the
  default action.

  To create and configure a `WebACL`, perform the following steps:

    1.
  Create and update the `ByteMatchSet` objects and other predicates that you want
  to include in `Rules`.
  For more information, see `CreateByteMatchSet`, `UpdateByteMatchSet`,
  `CreateIPSet`, `UpdateIPSet`,
  `CreateSqlInjectionMatchSet`, and `UpdateSqlInjectionMatchSet`.

    2.
  Create and update the `Rules` that you want to include in the `WebACL`. For more
  information, see
  `CreateRule` and `UpdateRule`.

    3.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `CreateWebACL` request.

    4.
  Submit a `CreateWebACL` request.

    5.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateWebACL` request.

    6.
  Submit an `UpdateWebACL` request to specify the `Rules` that you want to include
  in the `WebACL`,
  to specify the default action, and to associate the `WebACL` with a CloudFront
  distribution.

  For more information about how to use the AWS WAF API, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_web_acl(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWebACL", input, options)
  end

  @doc """
  Creates an AWS CloudFormation WAFV2 template for the specified web ACL in the
  specified Amazon S3 bucket.

  Then, in CloudFormation, you create a stack from the template, to create the web
  ACL and its resources in AWS WAFV2.
  Use this to migrate your AWS WAF Classic web ACL to the latest version of AWS
  WAF.

  This is part of a larger migration procedure for web ACLs from AWS WAF Classic
  to the latest version of AWS WAF.
  For the full procedure, including caveats and manual steps to complete
  the migration and switch over to the new web ACL, see
  [Migrating your AWS WAF Classic resources to AWS WAF](https://docs.aws.amazon.com/waf/latest/developerguide/waf-migrating-from-classic.html)
  in the [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  """
  def create_web_acl_migration_stack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWebACLMigrationStack", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Creates an `XssMatchSet`, which you use to allow, block, or count requests that
  contain cross-site scripting attacks
  in the specified part of web requests. AWS WAF searches for character sequences
  that are likely to be malicious strings.

  To create and configure an `XssMatchSet`, perform the following steps:

    1.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `CreateXssMatchSet` request.

    2.
  Submit a `CreateXssMatchSet` request.

    3.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateXssMatchSet` request.

    4.
  Submit an `UpdateXssMatchSet` request to specify the parts of web requests in
  which you want to
  allow, block, or count cross-site scripting attacks.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_xss_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateXssMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Permanently deletes a `ByteMatchSet`. You can't delete a `ByteMatchSet` if it's
  still used in any `Rules`
  or if it still includes any `ByteMatchTuple` objects (any filters).

  If you just want to remove a `ByteMatchSet` from a `Rule`, use `UpdateRule`.

  To permanently delete a `ByteMatchSet`, perform the following steps:

    1.
  Update the `ByteMatchSet` to remove filters, if any. For more information, see
  `UpdateByteMatchSet`.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `DeleteByteMatchSet` request.

    3.
  Submit a `DeleteByteMatchSet` request.
  """
  def delete_byte_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteByteMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Permanently deletes a `GeoMatchSet`. You can't delete a `GeoMatchSet` if it's
  still used in any `Rules` or
  if it still includes any countries.

  If you just want to remove a `GeoMatchSet` from a `Rule`, use `UpdateRule`.

  To permanently delete a `GeoMatchSet` from AWS WAF, perform the following steps:

    1.
  Update the `GeoMatchSet` to remove any countries. For more information, see
  `UpdateGeoMatchSet`.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `DeleteGeoMatchSet` request.

    3.
  Submit a `DeleteGeoMatchSet` request.
  """
  def delete_geo_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGeoMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Permanently deletes an `IPSet`. You can't delete an `IPSet` if it's still used
  in any `Rules` or
  if it still includes any IP addresses.

  If you just want to remove an `IPSet` from a `Rule`, use `UpdateRule`.

  To permanently delete an `IPSet` from AWS WAF, perform the following steps:

    1.
  Update the `IPSet` to remove IP address ranges, if any. For more information,
  see `UpdateIPSet`.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `DeleteIPSet` request.

    3.
  Submit a `DeleteIPSet` request.
  """
  def delete_ip_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIPSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Permanently deletes the `LoggingConfiguration` from the specified web
  ACL.
  """
  def delete_logging_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLoggingConfiguration", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Permanently deletes an IAM policy from the specified RuleGroup.

  The user making the request must be the owner of the RuleGroup.
  """
  def delete_permission_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePermissionPolicy", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Permanently deletes a `RateBasedRule`. You can't delete a rule if
  it's still used in any `WebACL` objects or if it still includes any predicates,
  such as `ByteMatchSet` objects.

  If you just want to remove a rule from a `WebACL`, use `UpdateWebACL`.

  To permanently delete a `RateBasedRule` from AWS WAF, perform the following
  steps:

    1.
  Update the `RateBasedRule` to remove predicates, if any. For more
  information, see `UpdateRateBasedRule`.

    2.
  Use `GetChangeToken` to get the change token that you provide
  in the `ChangeToken` parameter of a `DeleteRateBasedRule`
  request.

    3.
  Submit a `DeleteRateBasedRule` request.
  """
  def delete_rate_based_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRateBasedRule", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Permanently deletes a `RegexMatchSet`. You can't delete a `RegexMatchSet` if
  it's still used in any `Rules`
  or if it still includes any `RegexMatchTuples` objects (any filters).

  If you just want to remove a `RegexMatchSet` from a `Rule`, use `UpdateRule`.

  To permanently delete a `RegexMatchSet`, perform the following steps:

    1.
  Update the `RegexMatchSet` to remove filters, if any. For more information, see
  `UpdateRegexMatchSet`.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `DeleteRegexMatchSet` request.

    3.
  Submit a `DeleteRegexMatchSet` request.
  """
  def delete_regex_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRegexMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Permanently deletes a `RegexPatternSet`. You can't delete a `RegexPatternSet` if
  it's still used in any `RegexMatchSet`
  or if the `RegexPatternSet` is not empty.
  """
  def delete_regex_pattern_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRegexPatternSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Permanently deletes a `Rule`. You can't delete a `Rule` if it's still used in
  any `WebACL`
  objects or if it still includes any predicates, such as `ByteMatchSet` objects.

  If you just want to remove a `Rule` from a `WebACL`, use `UpdateWebACL`.

  To permanently delete a `Rule` from AWS WAF, perform the following steps:

    1.
  Update the `Rule` to remove predicates, if any. For more information, see
  `UpdateRule`.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `DeleteRule` request.

    3.
  Submit a `DeleteRule` request.
  """
  def delete_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRule", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Permanently deletes a `RuleGroup`. You can't delete a `RuleGroup` if it's still
  used in any `WebACL`
  objects or if it still includes any rules.

  If you just want to remove a `RuleGroup` from a `WebACL`, use `UpdateWebACL`.

  To permanently delete a `RuleGroup` from AWS WAF, perform the following steps:

    1.
  Update the `RuleGroup` to remove rules, if any. For more information, see
  `UpdateRuleGroup`.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `DeleteRuleGroup` request.

    3.
  Submit a `DeleteRuleGroup` request.
  """
  def delete_rule_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRuleGroup", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Permanently deletes a `SizeConstraintSet`. You can't delete a
  `SizeConstraintSet` if it's still used in any `Rules`
  or if it still includes any `SizeConstraint` objects (any filters).

  If you just want to remove a `SizeConstraintSet` from a `Rule`, use
  `UpdateRule`.

  To permanently delete a `SizeConstraintSet`, perform the following steps:

    1.
  Update the `SizeConstraintSet` to remove filters, if any. For more information,
  see `UpdateSizeConstraintSet`.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `DeleteSizeConstraintSet` request.

    3.
  Submit a `DeleteSizeConstraintSet` request.
  """
  def delete_size_constraint_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSizeConstraintSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Permanently deletes a `SqlInjectionMatchSet`. You can't delete a
  `SqlInjectionMatchSet` if it's
  still used in any `Rules` or if it still contains any `SqlInjectionMatchTuple`
  objects.

  If you just want to remove a `SqlInjectionMatchSet` from a `Rule`, use
  `UpdateRule`.

  To permanently delete a `SqlInjectionMatchSet` from AWS WAF, perform the
  following steps:

    1.
  Update the `SqlInjectionMatchSet` to remove filters, if any. For more
  information, see
  `UpdateSqlInjectionMatchSet`.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `DeleteSqlInjectionMatchSet` request.

    3.
  Submit a `DeleteSqlInjectionMatchSet` request.
  """
  def delete_sql_injection_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSqlInjectionMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Permanently deletes a `WebACL`. You can't delete a `WebACL` if it still contains
  any `Rules`.

  To delete a `WebACL`, perform the following steps:

    1.
  Update the `WebACL` to remove `Rules`, if any. For more information, see
  `UpdateWebACL`.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `DeleteWebACL` request.

    3.
  Submit a `DeleteWebACL` request.
  """
  def delete_web_acl(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWebACL", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Permanently deletes an `XssMatchSet`. You can't delete an `XssMatchSet` if it's
  still used in any `Rules` or if it still contains any `XssMatchTuple` objects.

  If you just want to remove an `XssMatchSet` from a `Rule`, use `UpdateRule`.

  To permanently delete an `XssMatchSet` from AWS WAF, perform the following
  steps:

    1.
  Update the `XssMatchSet` to remove filters, if any. For more information, see
  `UpdateXssMatchSet`.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a
  `DeleteXssMatchSet` request.

    3.
  Submit a `DeleteXssMatchSet` request.
  """
  def delete_xss_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteXssMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns the `ByteMatchSet` specified by `ByteMatchSetId`.
  """
  def get_byte_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetByteMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  When you want to create, update, or delete AWS WAF objects, get a change token
  and include the change token in the create, update, or delete request. Change
  tokens ensure that your application doesn't submit conflicting requests to AWS
  WAF.

  Each create, update, or delete request must use a unique change token. If your
  application submits a `GetChangeToken` request
  and then submits a second `GetChangeToken` request before submitting a create,
  update, or delete request, the second
  `GetChangeToken` request returns the same value as the first `GetChangeToken`
  request.

  When you use a change token in a create, update, or delete request, the status
  of the change token changes to `PENDING`,
  which indicates that AWS WAF is propagating the change to all AWS WAF servers.
  Use `GetChangeTokenStatus` to determine the
  status of your change token.
  """
  def get_change_token(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetChangeToken", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns the status of a `ChangeToken` that you got by calling `GetChangeToken`.
  `ChangeTokenStatus` is
  one of the following values:

    *

  `PROVISIONED`: You requested the change token by calling `GetChangeToken`, but
  you haven't used it yet
  in a call to create, update, or delete an AWS WAF object.

    *

  `PENDING`: AWS WAF is propagating the create, update, or delete request to all
  AWS WAF servers.

    *

  `INSYNC`: Propagation is complete.
  """
  def get_change_token_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetChangeTokenStatus", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns the `GeoMatchSet` that is specified by `GeoMatchSetId`.
  """
  def get_geo_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetGeoMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns the `IPSet` that is specified by `IPSetId`.
  """
  def get_ip_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIPSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns the `LoggingConfiguration` for the specified web ACL.
  """
  def get_logging_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetLoggingConfiguration", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns the IAM policy attached to the RuleGroup.
  """
  def get_permission_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPermissionPolicy", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns the `RateBasedRule` that is specified by the
  `RuleId` that you included in the `GetRateBasedRule`
  request.
  """
  def get_rate_based_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRateBasedRule", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns an array of IP addresses currently being blocked by the `RateBasedRule`
  that is specified by the `RuleId`. The maximum
  number of managed keys that will be blocked is 10,000. If more than 10,000
  addresses exceed
  the rate limit, the 10,000 addresses with the highest rates will be blocked.
  """
  def get_rate_based_rule_managed_keys(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRateBasedRuleManagedKeys", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns the `RegexMatchSet` specified by `RegexMatchSetId`.
  """
  def get_regex_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRegexMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns the `RegexPatternSet` specified by `RegexPatternSetId`.
  """
  def get_regex_pattern_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRegexPatternSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns the `Rule` that is specified by the `RuleId` that you included in the
  `GetRule` request.
  """
  def get_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRule", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns the `RuleGroup` that is specified by the `RuleGroupId` that you included
  in the `GetRuleGroup` request.

  To view the rules in a rule group, use `ListActivatedRulesInRuleGroup`.
  """
  def get_rule_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRuleGroup", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Gets detailed information about a specified number of requests--a sample--that
  AWS WAF randomly selects from among the first 5,000 requests that your AWS
  resource received during a time range that you choose. You can specify a sample
  size of up to 500 requests, and you can specify any time range in the previous
  three hours.

  `GetSampledRequests` returns a time range, which is usually the time range that
  you specified. However, if your resource
  (such as a CloudFront distribution) received 5,000 requests before the specified
  time range elapsed, `GetSampledRequests`
  returns an updated time range. This new time range indicates the actual period
  during which AWS WAF selected the requests in the sample.
  """
  def get_sampled_requests(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSampledRequests", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns the `SizeConstraintSet` specified by `SizeConstraintSetId`.
  """
  def get_size_constraint_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSizeConstraintSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns the `SqlInjectionMatchSet` that is specified by
  `SqlInjectionMatchSetId`.
  """
  def get_sql_injection_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSqlInjectionMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns the `WebACL` that is specified by `WebACLId`.
  """
  def get_web_acl(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetWebACL", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns the `XssMatchSet` that is specified by `XssMatchSetId`.
  """
  def get_xss_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetXssMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns an array of `ActivatedRule` objects.
  """
  def list_activated_rules_in_rule_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListActivatedRulesInRuleGroup", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns an array of `ByteMatchSetSummary` objects.
  """
  def list_byte_match_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListByteMatchSets", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns an array of `GeoMatchSetSummary` objects in the response.
  """
  def list_geo_match_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGeoMatchSets", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns an array of `IPSetSummary` objects in the response.
  """
  def list_ip_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListIPSets", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns an array of `LoggingConfiguration` objects.
  """
  def list_logging_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLoggingConfigurations", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns an array of `RuleSummary` objects.
  """
  def list_rate_based_rules(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRateBasedRules", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns an array of `RegexMatchSetSummary` objects.
  """
  def list_regex_match_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRegexMatchSets", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns an array of `RegexPatternSetSummary` objects.
  """
  def list_regex_pattern_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRegexPatternSets", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns an array of `RuleGroup` objects.
  """
  def list_rule_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRuleGroups", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns an array of `RuleSummary` objects.
  """
  def list_rules(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRules", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns an array of `SizeConstraintSetSummary` objects.
  """
  def list_size_constraint_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSizeConstraintSets", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns an array of `SqlInjectionMatchSet` objects.
  """
  def list_sql_injection_match_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSqlInjectionMatchSets", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns an array of `RuleGroup` objects that you are subscribed to.
  """
  def list_subscribed_rule_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSubscribedRuleGroups", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Retrieves the tags associated with the specified AWS resource. Tags are
  key:value pairs that you can use to categorize and manage your resources, for
  purposes like billing. For example, you might set the tag key to "customer" and
  the value to the customer name or ID. You can specify one or more tags to add to
  each AWS resource, up to 50 tags for a resource.

  Tagging is only available through the API, SDKs, and CLI. You can't manage or
  view tags through the AWS WAF Classic console. You can tag the AWS resources
  that you manage through AWS WAF Classic: web ACLs, rule groups, and rules.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns an array of `WebACLSummary` objects in the response.
  """
  def list_web_acls(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWebACLs", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Returns an array of `XssMatchSet` objects.
  """
  def list_xss_match_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListXssMatchSets", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Associates a `LoggingConfiguration` with a specified web ACL.

  You can access information about all traffic that AWS WAF inspects using the
  following
  steps:

    1.
  Create an Amazon Kinesis Data
  Firehose.

  Create the data firehose with a PUT source and in the region that you are
  operating. However, if you are capturing logs for Amazon CloudFront, always
  create the firehose in US East (N. Virginia).

  Do not create the data firehose using a `Kinesis stream` as your source.

    2.
  Associate that firehose to your web ACL using a `PutLoggingConfiguration`
  request.

  When you successfully enable logging using a `PutLoggingConfiguration` request,
  AWS WAF will create a service linked role with the necessary permissions to
  write logs to the Amazon Kinesis Data Firehose. For more information, see
  [Logging Web ACL Traffic Information](https://docs.aws.amazon.com/waf/latest/developerguide/logging.html)
  in the *AWS WAF Developer Guide*.
  """
  def put_logging_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutLoggingConfiguration", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Attaches an IAM policy to the specified resource. The only supported use for
  this action is to share a RuleGroup across accounts.

  The `PutPermissionPolicy` is subject to the following restrictions:

    *
  You can attach only one policy with each `PutPermissionPolicy` request.

    *
  The policy must include an `Effect`, `Action` and `Principal`.

    *

  `Effect` must specify `Allow`.

    *
  The `Action` in the policy must be `waf:UpdateWebACL`,
  `waf-regional:UpdateWebACL`, `waf:GetRuleGroup` and `waf-regional:GetRuleGroup`
  . Any extra or wildcard actions in the policy will be rejected.

    *
  The policy cannot include a `Resource` parameter.

    *
  The ARN in the request must be a valid WAF RuleGroup ARN and the RuleGroup must
  exist in the same region.

    *
  The user making the request must be the owner of the RuleGroup.

    *
  Your policy must be composed using IAM Policy version 2012-10-17.

  For more information, see [IAM Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html).

  An example of a valid policy parameter is shown in the Examples section below.
  """
  def put_permission_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutPermissionPolicy", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Associates tags with the specified AWS resource. Tags are key:value pairs that
  you can use to categorize and manage your resources, for purposes like billing.
  For example, you might set the tag key to "customer" and the value to the
  customer name or ID. You can specify one or more tags to add to each AWS
  resource, up to 50 tags for a resource.

  Tagging is only available through the API, SDKs, and CLI. You can't manage or
  view tags through the AWS WAF Classic console. You can use this action to tag
  the AWS resources that you manage through AWS WAF Classic: web ACLs, rule
  groups, and rules.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Inserts or deletes `ByteMatchTuple` objects (filters) in a `ByteMatchSet`. For
  each `ByteMatchTuple` object,
  you specify the following values:

    *
  Whether to insert or delete the object from the array. If you want to change a
  `ByteMatchSetUpdate` object,
  you delete the existing object and add a new one.

    *
  The part of a web request that you want AWS WAF to inspect, such as a query
  string or the value of the `User-Agent` header.

    *
  The bytes (typically a string that corresponds with ASCII characters) that you
  want AWS WAF to look for. For more information, including how you specify
  the values for the AWS WAF API and the AWS CLI or SDKs, see `TargetString` in
  the `ByteMatchTuple` data type.

    *
  Where to look, such as at the beginning or the end of a query string.

    *
  Whether to perform any conversions on the request, such as converting it to
  lowercase, before inspecting it for the specified string.

  For example, you can add a `ByteMatchSetUpdate` object that matches web requests
  in which `User-Agent` headers contain
  the string `BadBot`. You can then configure AWS WAF to block those requests.

  To create and configure a `ByteMatchSet`, perform the following steps:

    1.
  Create a `ByteMatchSet.` For more information, see `CreateByteMatchSet`.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateByteMatchSet` request.

    3.
  Submit an `UpdateByteMatchSet` request to specify the part of the request that
  you want AWS WAF to inspect
  (for example, the header or the URI) and the value that you want AWS WAF to
  watch for.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_byte_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateByteMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Inserts or deletes `GeoMatchConstraint` objects in an `GeoMatchSet`. For each
  `GeoMatchConstraint` object,
  you specify the following values:

    *
  Whether to insert or delete the object from the array. If you want to change an
  `GeoMatchConstraint` object, you delete the existing object and add a new one.

    *
  The `Type`. The only valid value for `Type` is `Country`.

    *
  The `Value`, which is a two character code for the country to add to the
  `GeoMatchConstraint` object. Valid codes are listed in
  `GeoMatchConstraint$Value`.

  To create and configure an `GeoMatchSet`, perform the following steps:

    1.
  Submit a `CreateGeoMatchSet` request.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateGeoMatchSet` request.

    3.
  Submit an `UpdateGeoMatchSet` request to specify the country that you want AWS
  WAF to watch for.

  When you update an `GeoMatchSet`, you specify the country that you want to add
  and/or the country that you want to delete.
  If you want to change a country, you delete the existing country and add the new
  one.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_geo_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGeoMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Inserts or deletes `IPSetDescriptor` objects in an
  `IPSet`. For each `IPSetDescriptor` object, you specify the following
  values:

    *
  Whether to insert or delete the object from the array. If you want to change an
  `IPSetDescriptor` object, you delete the existing object and add a new
  one.

    *
  The IP address version, `IPv4` or `IPv6`.

    *
  The IP address in CIDR notation, for example, `192.0.2.0/24` (for
  the range of IP addresses from `192.0.2.0` to `192.0.2.255`) or
  `192.0.2.44/32` (for the individual IP address
  `192.0.2.44`).

  AWS WAF supports IPv4 address ranges: /8 and any range between /16 through /32.
  AWS
  WAF supports IPv6 address ranges: /24, /32, /48, /56, /64, and /128. For more
  information about CIDR notation, see the Wikipedia entry [Classless Inter-Domain
  Routing](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

  IPv6 addresses can be represented using any of the following formats:

    *
  1111:0000:0000:0000:0000:0000:0000:0111/128

    *
  1111:0:0:0:0:0:0:0111/128

    *
  1111::0111/128

    *
  1111::111/128

  You use an `IPSet` to specify which web requests you want to allow or
  block based on the IP addresses that the requests originated from. For example,
  if you're
  receiving a lot of requests from one or a small number of IP addresses and you
  want to
  block the requests, you can create an `IPSet` that specifies those IP addresses,
  and then configure AWS WAF to block the requests.

  To create and configure an `IPSet`, perform the following steps:

    1.
  Submit a `CreateIPSet` request.

    2.
  Use `GetChangeToken` to get the change token that you provide
  in the `ChangeToken` parameter of an `UpdateIPSet`
  request.

    3.
  Submit an `UpdateIPSet` request to specify the IP addresses that you
  want AWS WAF to watch for.

  When you update an `IPSet`, you specify the IP addresses that you want to
  add and/or the IP addresses that you want to delete. If you want to change an IP
  address,
  you delete the existing IP address and add the new one.

  You can insert a maximum of 1000 addresses in a single
  request.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_ip_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateIPSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Inserts or deletes `Predicate` objects in a rule and updates the
  `RateLimit` in the rule.

  Each `Predicate` object identifies a predicate, such as a `ByteMatchSet` or an
  `IPSet`, that specifies the web requests
  that you want to block or count. The `RateLimit` specifies the number of
  requests every five minutes that triggers the rule.

  If you add more than one predicate to a `RateBasedRule`, a request must
  match all the predicates and exceed the `RateLimit` to be counted or blocked.
  For example, suppose you add the following to a `RateBasedRule`:

    *
  An `IPSet` that matches the IP address `192.0.2.44/32`

    *
  A `ByteMatchSet` that matches `BadBot` in the
  `User-Agent` header

  Further, you specify a
  `RateLimit` of 1,000.

  You then add the `RateBasedRule` to a `WebACL` and specify that
  you want to block requests that satisfy the rule. For a request to be blocked,
  it must come
  from the IP address 192.0.2.44 *and* the `User-Agent` header
  in the request must contain the value `BadBot`. Further, requests that match
  these two conditions much be received at a rate of more than 1,000 every five
  minutes. If
  the rate drops below this limit, AWS WAF no longer blocks the requests.

  As a second example, suppose you want to limit requests to a particular page on
  your site. To do this, you could add the following to a
  `RateBasedRule`:

    *
  A `ByteMatchSet` with `FieldToMatch` of `URI`

    *
  A `PositionalConstraint` of `STARTS_WITH`

    *
  A `TargetString` of `login`

  Further, you specify a `RateLimit` of 1,000.

  By adding this `RateBasedRule` to a `WebACL`, you could limit requests to your
  login page without affecting the rest of your site.
  """
  def update_rate_based_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRateBasedRule", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Inserts or deletes `RegexMatchTuple` objects (filters) in a `RegexMatchSet`. For
  each `RegexMatchSetUpdate` object,
  you specify the following values:

    *
  Whether to insert or delete the object from the array. If you want to change a
  `RegexMatchSetUpdate` object,
  you delete the existing object and add a new one.

    *
  The part of a web request that you want AWS WAF to inspectupdate, such as a
  query string or the value of the `User-Agent` header.

    *
  The identifier of the pattern (a regular expression) that you want AWS WAF to
  look for. For more information, see `RegexPatternSet`.

    *
  Whether to perform any conversions on the request, such as converting it to
  lowercase, before inspecting it for the specified string.

  For example, you can create a `RegexPatternSet` that matches any requests with
  `User-Agent` headers
  that contain the string `B[a@]dB[o0]t`. You can then configure AWS WAF to reject those requests.

  To create and configure a `RegexMatchSet`, perform the following steps:

    1.
  Create a `RegexMatchSet.` For more information, see `CreateRegexMatchSet`.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateRegexMatchSet` request.

    3.
  Submit an `UpdateRegexMatchSet` request to specify the part of the request that
  you want AWS WAF to inspect
  (for example, the header or the URI) and the identifier of the `RegexPatternSet`
  that contain the regular expression patters you want AWS WAF to watch for.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_regex_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRegexMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Inserts or deletes `RegexPatternString` objects in a `RegexPatternSet`. For each
  `RegexPatternString` object,
  you specify the following values:

    *
  Whether to insert or delete the `RegexPatternString`.

    *
  The regular expression pattern that you want to insert or delete. For more
  information, see `RegexPatternSet`.

  For example, you can create a `RegexPatternString` such as `B[a@]dB[o0]t`. AWS WAF will match this `RegexPatternString` to:

    *
  BadBot

    *
  BadB0t

    *
  B@dBot

    *
  B@dB0t

  To create and configure a `RegexPatternSet`, perform the following steps:

    1.
  Create a `RegexPatternSet.` For more information, see `CreateRegexPatternSet`.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateRegexPatternSet` request.

    3.
  Submit an `UpdateRegexPatternSet` request to specify the regular expression
  pattern that you want AWS WAF to watch for.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer
  Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_regex_pattern_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRegexPatternSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Inserts or deletes `Predicate` objects in a `Rule`. Each
  `Predicate` object identifies a predicate, such as a `ByteMatchSet` or an
  `IPSet`, that specifies the web requests
  that you want to allow, block, or count. If you add more than one predicate to a
  `Rule`, a request must match all of the specifications to be allowed,
  blocked, or counted. For example, suppose
  that
  you add the following to a `Rule`:

    *
  A `ByteMatchSet` that matches the value `BadBot` in the `User-Agent` header

    *
  An `IPSet` that matches the IP address `192.0.2.44`

  You then add the `Rule` to a `WebACL` and specify that you want to block
  requests that satisfy the `Rule`.
  For a request to be blocked, the `User-Agent` header in the request must contain
  the value `BadBot`
  *and* the request must originate from the IP address 192.0.2.44.

  To create and configure a `Rule`, perform the following steps:

    1.
  Create and update the predicates that you want to include in the `Rule`.

    2.
  Create the `Rule`. See `CreateRule`.

    3.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateRule` request.

    4.
  Submit an `UpdateRule` request to add predicates to the `Rule`.

    5.
  Create and update a `WebACL` that contains the `Rule`. See `CreateWebACL`.

  If you want to replace one `ByteMatchSet` or `IPSet` with another, you delete
  the existing one and
  add the new one.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_rule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRule", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Inserts or deletes `ActivatedRule` objects in a `RuleGroup`.

  You can only insert `REGULAR` rules into a rule group.

  You can have a maximum of ten rules per rule group.

  To create and configure a `RuleGroup`, perform the following steps:

    1.
  Create and update the `Rules` that you want to include in the `RuleGroup`. See
  `CreateRule`.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateRuleGroup` request.

    3.
  Submit an `UpdateRuleGroup` request to add `Rules` to the `RuleGroup`.

    4.
  Create and update a `WebACL` that contains the `RuleGroup`. See `CreateWebACL`.

  If you want to replace one `Rule` with another, you delete the existing one and
  add the new one.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_rule_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRuleGroup", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Inserts or deletes `SizeConstraint` objects (filters) in a `SizeConstraintSet`.
  For each `SizeConstraint` object,
  you specify the following values:

    *
  Whether to insert or delete the object from the array. If you want to change a
  `SizeConstraintSetUpdate` object,
  you delete the existing object and add a new one.

    *
  The part of a web request that you want AWS WAF to evaluate, such as the length
  of a query string or the length of the
  `User-Agent` header.

    *
  Whether to perform any transformations on the request, such as converting it to
  lowercase, before checking its length.
  Note that transformations of the request body are not supported because the AWS
  resource forwards only the first `8192` bytes
  of your request to AWS WAF.

  You can only specify a single type of TextTransformation.

    *
  A `ComparisonOperator` used for evaluating the selected part of the request
  against the specified `Size`, such as
  equals, greater than, less than, and so on.

    *
  The length, in bytes, that you want AWS WAF to watch for in selected part of the
  request. The length is computed after applying the transformation.

  For example, you can add a `SizeConstraintSetUpdate` object that matches web
  requests in which the length of the
  `User-Agent` header is greater than 100 bytes. You can then configure AWS WAF to
  block those requests.

  To create and configure a `SizeConstraintSet`, perform the following steps:

    1.
  Create a `SizeConstraintSet.` For more information, see
  `CreateSizeConstraintSet`.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateSizeConstraintSet` request.

    3.
  Submit an `UpdateSizeConstraintSet` request to specify the part of the request
  that you want AWS WAF to inspect
  (for example, the header or the URI) and the value that you want AWS WAF to
  watch for.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_size_constraint_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSizeConstraintSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Inserts or deletes `SqlInjectionMatchTuple` objects (filters) in a
  `SqlInjectionMatchSet`.
  For each `SqlInjectionMatchTuple` object, you specify the following values:

    *

  `Action`: Whether to insert the object into or delete the object from the array.
  To change a
  `SqlInjectionMatchTuple`, you delete the existing object and add a new one.

    *

  `FieldToMatch`: The part of web requests that you want AWS WAF to inspect and,
  if you want AWS WAF to inspect a header or custom query parameter,
  the name of the header or parameter.

    *

  `TextTransformation`: Which text transformation, if any, to perform on the web
  request before
  inspecting the request for snippets of malicious SQL code.

  You can only specify a single type of TextTransformation.

  You use `SqlInjectionMatchSet` objects to specify which CloudFront
  requests that
  you want to allow, block, or count. For example, if you're receiving
  requests that contain snippets of SQL code in the query string and you want to
  block the
  requests, you can create a `SqlInjectionMatchSet` with the applicable settings,
  and then configure AWS WAF to block the requests.

  To create and configure a `SqlInjectionMatchSet`, perform the following steps:

    1.
  Submit a `CreateSqlInjectionMatchSet` request.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateIPSet` request.

    3.
  Submit an `UpdateSqlInjectionMatchSet` request to specify the parts of web
  requests that you want AWS WAF to
  inspect for snippets of SQL code.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_sql_injection_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSqlInjectionMatchSet", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Inserts or deletes `ActivatedRule` objects in a `WebACL`. Each `Rule` identifies
  web requests that you want to allow, block, or count. When you update a
  `WebACL`, you specify the following values:

    *
  A default action for the `WebACL`, either `ALLOW` or `BLOCK`.
  AWS WAF performs the default action if a request doesn't match the criteria in
  any of the `Rules` in a `WebACL`.

    *
  The `Rules` that you want to add
  or
  delete. If you want to replace one `Rule` with another, you delete the
  existing `Rule` and add the new one.

    *
  For each `Rule`, whether you want AWS WAF to allow requests, block requests, or
  count requests that match
  the conditions in the `Rule`.

    *
  The order in which you want AWS WAF to evaluate the `Rules` in a
  `WebACL`. If you add more than one `Rule` to a
  `WebACL`, AWS WAF evaluates each request against the `Rules`
  in order based on the value of `Priority`. (The `Rule` that has
  the lowest value for `Priority` is evaluated first.) When a web request
  matches all
  the
  predicates (such as `ByteMatchSets` and `IPSets`) in a
  `Rule`, AWS WAF immediately takes the corresponding action, allow or
  block, and doesn't evaluate the request against the remaining `Rules` in
  the `WebACL`, if any.

  To create and configure a `WebACL`, perform the following steps:

    1.
  Create and update the predicates that you want to include in `Rules`.
  For more information, see `CreateByteMatchSet`, `UpdateByteMatchSet`,
  `CreateIPSet`, `UpdateIPSet`,
  `CreateSqlInjectionMatchSet`, and `UpdateSqlInjectionMatchSet`.

    2.
  Create and update the `Rules` that you want to include in the `WebACL`. For more
  information, see
  `CreateRule` and `UpdateRule`.

    3.
  Create a `WebACL`. See `CreateWebACL`.

    4.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateWebACL` request.

    5.
  Submit an `UpdateWebACL` request to specify the `Rules`
  that you want to include in the `WebACL`, to specify the default action,
  and to associate the `WebACL` with a CloudFront distribution.

  The `ActivatedRule` can be a rule group. If you specify a rule group
  as your
  `ActivatedRule`
  ,
  you can exclude specific rules from that rule group.

  If you already have a rule group associated with a web ACL and want to submit
  an `UpdateWebACL` request to exclude certain rules from that rule group,
  you must first remove the rule group from the web ACL, the re-insert it again,
  specifying the excluded rules.
  For details,
  see
  `ActivatedRule$ExcludedRules`
  .

  Be aware that if you try to add a RATE_BASED rule to a web ACL without setting
  the rule type when first creating the rule, the `UpdateWebACL` request will fail
  because the request tries to add a REGULAR rule (the default rule type) with the
  specified ID, which does not exist.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_web_acl(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWebACL", input, options)
  end

  @doc """

  This is **AWS WAF Classic** documentation.

  For
  more information, see [AWS WAF
  Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
  in the developer guide.

  **For the latest version of AWS
  WAF**, use the AWS WAFV2 API and see the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
  With the latest version, AWS WAF has a single set of endpoints for regional and
  global use.

  Inserts or deletes `XssMatchTuple` objects (filters) in an `XssMatchSet`.
  For each `XssMatchTuple` object, you specify the following values:

    *

  `Action`: Whether to insert the object into or delete the object from the
  array. To change an
  `XssMatchTuple`, you delete the existing object and add a new
  one.

    *

  `FieldToMatch`: The part of web requests that you want AWS WAF to inspect and,
  if you want AWS WAF to inspect a header or custom query parameter,
  the name of the header or parameter.

    *

  `TextTransformation`: Which text transformation, if any, to perform on the web
  request before
  inspecting the request for cross-site scripting attacks.

  You can only specify a single type of TextTransformation.

  You use `XssMatchSet` objects to specify which CloudFront requests
  that
  you want to allow, block, or count. For example, if you're receiving
  requests that contain cross-site scripting attacks in the request body and you
  want to
  block the requests, you can create an `XssMatchSet` with the applicable
  settings, and then configure AWS WAF to block the requests.

  To create and configure an `XssMatchSet`, perform the following steps:

    1.
  Submit a `CreateXssMatchSet` request.

    2.
  Use `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an
  `UpdateIPSet` request.

    3.
  Submit an `UpdateXssMatchSet` request to specify the parts of web requests that
  you want AWS WAF to
  inspect for cross-site scripting attacks.

  For more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the
  [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_xss_match_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateXssMatchSet", input, options)
  end
end
