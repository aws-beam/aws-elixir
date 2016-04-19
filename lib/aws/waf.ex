# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.WAF do
  @moduledoc """
  This is the *AWS WAF API Reference*. This guide is for developers who need
  detailed information about the AWS WAF API actions, data types, and errors.
  For detailed information about AWS WAF features and an overview of how to
  use the AWS WAF API, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """

  @doc """
  Creates a `ByteMatchSet`. You then use `UpdateByteMatchSet` to identify the
  part of a web request that you want AWS WAF to inspect, such as the values
  of the `User-Agent` header or the query string. For example, you can create
  a `ByteMatchSet` that matches any requests with `User-Agent` headers that
  contain the string `BadBot`. You can then configure AWS WAF to reject those
  requests.

  To create and configure a `ByteMatchSet`, perform the following steps:

  <ol> <li>Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateByteMatchSet` request.</li>
  <li>Submit a `CreateByteMatchSet` request.</li> <li>Use `GetChangeToken` to
  get the change token that you provide in the `ChangeToken` parameter of an
  `UpdateByteMatchSet` request.</li> <li>Submit an `UpdateByteMatchSet`
  request to specify the part of the request that you want AWS WAF to inspect
  (for example, the header or the URI) and the value that you want AWS WAF to
  watch for.</li> </ol> For more information about how to use the AWS WAF API
  to allow or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_byte_match_set(client, input, options \\ []) do
    request(client, "CreateByteMatchSet", input, options)
  end

  @doc """
  Creates an `IPSet`, which you use to specify which web requests you want to
  allow or block based on the IP addresses that the requests originate from.
  For example, if you're receiving a lot of requests from one or more
  individual IP addresses or one or more ranges of IP addresses and you want
  to block the requests, you can create an `IPSet` that contains those IP
  addresses and then configure AWS WAF to block the requests.

  To create and configure an `IPSet`, perform the following steps:

  <ol> <li>Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateIPSet` request.</li> <li>Submit a
  `CreateIPSet` request.</li> <li>Use `GetChangeToken` to get the change
  token that you provide in the `ChangeToken` parameter of an `UpdateIPSet`
  request.</li> <li>Submit an `UpdateIPSet` request to specify the IP
  addresses that you want AWS WAF to watch for.</li> </ol> For more
  information about how to use the AWS WAF API to allow or block HTTP
  requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_i_p_set(client, input, options \\ []) do
    request(client, "CreateIPSet", input, options)
  end

  @doc """
  Creates a `Rule`, which contains the `IPSet` objects, `ByteMatchSet`
  objects, and other predicates that identify the requests that you want to
  block. If you add more than one predicate to a `Rule`, a request must match
  all of the specifications to be allowed or blocked. For example, suppose
  you add the following to a `Rule`:

  <ul> <li>An `IPSet` that matches the IP address `192.0.2.44/32`</li> <li>A
  `ByteMatchSet` that matches `BadBot` in the `User-Agent` header</li> </ul>
  You then add the `Rule` to a `WebACL` and specify that you want to blocks
  requests that satisfy the `Rule`. For a request to be blocked, it must come
  from the IP address 192.0.2.44 *and* the `User-Agent` header in the request
  must contain the value `BadBot`.

  To create and configure a `Rule`, perform the following steps:

  <ol> <li>Create and update the predicates that you want to include in the
  `Rule`. For more information, see `CreateByteMatchSet`, `CreateIPSet`, and
  `CreateSqlInjectionMatchSet`.</li> <li>Use `GetChangeToken` to get the
  change token that you provide in the `ChangeToken` parameter of a
  `CreateRule` request.</li> <li>Submit a `CreateRule` request.</li> <li>Use
  `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an `UpdateRule` request.</li> <li>Submit an
  `UpdateRule` request to specify the predicates that you want to include in
  the `Rule`.</li> <li>Create and update a `WebACL` that contains the `Rule`.
  For more information, see `CreateWebACL`.</li> </ol> For more information
  about how to use the AWS WAF API to allow or block HTTP requests, see the
  [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_rule(client, input, options \\ []) do
    request(client, "CreateRule", input, options)
  end

  @doc """
  Creates a `SizeConstraintSet`. You then use `UpdateSizeConstraintSet` to
  identify the part of a web request that you want AWS WAF to check for
  length, such as the length of the `User-Agent` header or the length of the
  query string. For example, you can create a `SizeConstraintSet` that
  matches any requests that have a query string that is longer than 100
  bytes. You can then configure AWS WAF to reject those requests.

  To create and configure a `SizeConstraintSet`, perform the following steps:

  <ol> <li>Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateSizeConstraintSet` request.</li>
  <li>Submit a `CreateSizeConstraintSet` request.</li> <li>Use
  `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an `UpdateSizeConstraintSet` request.</li>
  <li>Submit an `UpdateSizeConstraintSet` request to specify the part of the
  request that you want AWS WAF to inspect (for example, the header or the
  URI) and the value that you want AWS WAF to watch for.</li> </ol> For more
  information about how to use the AWS WAF API to allow or block HTTP
  requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_size_constraint_set(client, input, options \\ []) do
    request(client, "CreateSizeConstraintSet", input, options)
  end

  @doc """
  Creates a `SqlInjectionMatchSet`, which you use to allow, block, or count
  requests that contain snippets of SQL code in a specified part of web
  requests. AWS WAF searches for character sequences that are likely to be
  malicious strings.

  To create and configure a `SqlInjectionMatchSet`, perform the following
  steps:

  <ol> <li>Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateSqlInjectionMatchSet` request.</li>
  <li>Submit a `CreateSqlInjectionMatchSet` request.</li> <li>Use
  `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an `UpdateSqlInjectionMatchSet` request.</li>
  <li>Submit an `UpdateSqlInjectionMatchSet` request to specify the parts of
  web requests in which you want to allow, block, or count malicious SQL
  code.</li> </ol> For more information about how to use the AWS WAF API to
  allow or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_sql_injection_match_set(client, input, options \\ []) do
    request(client, "CreateSqlInjectionMatchSet", input, options)
  end

  @doc """
  Creates a `WebACL`, which contains the `Rules` that identify the CloudFront
  web requests that you want to allow, block, or count. AWS WAF evaluates
  `Rules` in order based on the value of `Priority` for each `Rule`.

  You also specify a default action, either `ALLOW` or `BLOCK`. If a web
  request doesn't match any of the `Rules` in a `WebACL`, AWS WAF responds to
  the request with the default action.

  To create and configure a `WebACL`, perform the following steps:

  <ol> <li>Create and update the `ByteMatchSet` objects and other predicates
  that you want to include in `Rules`. For more information, see
  `CreateByteMatchSet`, `UpdateByteMatchSet`, `CreateIPSet`, `UpdateIPSet`,
  `CreateSqlInjectionMatchSet`, and `UpdateSqlInjectionMatchSet`.</li>
  <li>Create and update the `Rules` that you want to include in the `WebACL`.
  For more information, see `CreateRule` and `UpdateRule`.</li> <li>Use
  `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a `CreateWebACL` request.</li> <li>Submit a
  `CreateWebACL` request.</li> <li>Use `GetChangeToken` to get the change
  token that you provide in the `ChangeToken` parameter of an `UpdateWebACL`
  request.</li> <li>Submit an `UpdateWebACL` request to specify the `Rules`
  that you want to include in the `WebACL`, to specify the default action,
  and to associate the `WebACL` with a CloudFront distribution.</li> </ol>
  For more information about how to use the AWS WAF API, see the [AWS WAF
  Developer Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_web_a_c_l(client, input, options \\ []) do
    request(client, "CreateWebACL", input, options)
  end

  @doc """
  Creates an `XssMatchSet`, which you use to allow, block, or count requests
  that contain cross-site scripting attacks in the specified part of web
  requests. AWS WAF searches for character sequences that are likely to be
  malicious strings.

  To create and configure an `XssMatchSet`, perform the following steps:

  <ol> <li>Use `GetChangeToken` to get the change token that you provide in
  the `ChangeToken` parameter of a `CreateXssMatchSet` request.</li>
  <li>Submit a `CreateXssMatchSet` request.</li> <li>Use `GetChangeToken` to
  get the change token that you provide in the `ChangeToken` parameter of an
  `UpdateXssMatchSet` request.</li> <li>Submit an `UpdateXssMatchSet` request
  to specify the parts of web requests in which you want to allow, block, or
  count cross-site scripting attacks.</li> </ol> For more information about
  how to use the AWS WAF API to allow or block HTTP requests, see the [AWS
  WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def create_xss_match_set(client, input, options \\ []) do
    request(client, "CreateXssMatchSet", input, options)
  end

  @doc """
  Permanently deletes a `ByteMatchSet`. You can't delete a `ByteMatchSet` if
  it's still used in any `Rules` or if it still includes any `ByteMatchTuple`
  objects (any filters).

  If you just want to remove a `ByteMatchSet` from a `Rule`, use
  `UpdateRule`.

  To permanently delete a `ByteMatchSet`, perform the following steps:

  <ol> <li>Update the `ByteMatchSet` to remove filters, if any. For more
  information, see `UpdateByteMatchSet`.</li> <li>Use `GetChangeToken` to get
  the change token that you provide in the `ChangeToken` parameter of a
  `DeleteByteMatchSet` request.</li> <li>Submit a `DeleteByteMatchSet`
  request.</li> </ol>
  """
  def delete_byte_match_set(client, input, options \\ []) do
    request(client, "DeleteByteMatchSet", input, options)
  end

  @doc """
  Permanently deletes an `IPSet`. You can't delete an `IPSet` if it's still
  used in any `Rules` or if it still includes any IP addresses.

  If you just want to remove an `IPSet` from a `Rule`, use `UpdateRule`.

  To permanently delete an `IPSet` from AWS WAF, perform the following steps:

  <ol> <li>Update the `IPSet` to remove IP address ranges, if any. For more
  information, see `UpdateIPSet`.</li> <li>Use `GetChangeToken` to get the
  change token that you provide in the `ChangeToken` parameter of a
  `DeleteIPSet` request.</li> <li>Submit a `DeleteIPSet` request.</li> </ol>
  """
  def delete_i_p_set(client, input, options \\ []) do
    request(client, "DeleteIPSet", input, options)
  end

  @doc """
  Permanently deletes a `Rule`. You can't delete a `Rule` if it's still used
  in any `WebACL` objects or if it still includes any predicates, such as
  `ByteMatchSet` objects.

  If you just want to remove a `Rule` from a `WebACL`, use `UpdateWebACL`.

  To permanently delete a `Rule` from AWS WAF, perform the following steps:

  <ol> <li>Update the `Rule` to remove predicates, if any. For more
  information, see `UpdateRule`.</li> <li>Use `GetChangeToken` to get the
  change token that you provide in the `ChangeToken` parameter of a
  `DeleteRule` request.</li> <li>Submit a `DeleteRule` request.</li> </ol>
  """
  def delete_rule(client, input, options \\ []) do
    request(client, "DeleteRule", input, options)
  end

  @doc """
  Permanently deletes a `SizeConstraintSet`. You can't delete a
  `SizeConstraintSet` if it's still used in any `Rules` or if it still
  includes any `SizeConstraint` objects (any filters).

  If you just want to remove a `SizeConstraintSet` from a `Rule`, use
  `UpdateRule`.

  To permanently delete a `SizeConstraintSet`, perform the following steps:

  <ol> <li>Update the `SizeConstraintSet` to remove filters, if any. For more
  information, see `UpdateSizeConstraintSet`.</li> <li>Use `GetChangeToken`
  to get the change token that you provide in the `ChangeToken` parameter of
  a `DeleteSizeConstraintSet` request.</li> <li>Submit a
  `DeleteSizeConstraintSet` request.</li> </ol>
  """
  def delete_size_constraint_set(client, input, options \\ []) do
    request(client, "DeleteSizeConstraintSet", input, options)
  end

  @doc """
  Permanently deletes a `SqlInjectionMatchSet`. You can't delete a
  `SqlInjectionMatchSet` if it's still used in any `Rules` or if it still
  contains any `SqlInjectionMatchTuple` objects.

  If you just want to remove a `SqlInjectionMatchSet` from a `Rule`, use
  `UpdateRule`.

  To permanently delete a `SqlInjectionMatchSet` from AWS WAF, perform the
  following steps:

  <ol> <li>Update the `SqlInjectionMatchSet` to remove filters, if any. For
  more information, see `UpdateSqlInjectionMatchSet`.</li> <li>Use
  `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of a `DeleteSqlInjectionMatchSet` request.</li>
  <li>Submit a `DeleteSqlInjectionMatchSet` request.</li> </ol>
  """
  def delete_sql_injection_match_set(client, input, options \\ []) do
    request(client, "DeleteSqlInjectionMatchSet", input, options)
  end

  @doc """
  Permanently deletes a `WebACL`. You can't delete a `WebACL` if it still
  contains any `Rules`.

  To delete a `WebACL`, perform the following steps:

  <ol> <li>Update the `WebACL` to remove `Rules`, if any. For more
  information, see `UpdateWebACL`.</li> <li>Use `GetChangeToken` to get the
  change token that you provide in the `ChangeToken` parameter of a
  `DeleteWebACL` request.</li> <li>Submit a `DeleteWebACL` request.</li>
  </ol>
  """
  def delete_web_a_c_l(client, input, options \\ []) do
    request(client, "DeleteWebACL", input, options)
  end

  @doc """
  Permanently deletes an `XssMatchSet`. You can't delete an `XssMatchSet` if
  it's still used in any `Rules` or if it still contains any `XssMatchTuple`
  objects.

  If you just want to remove an `XssMatchSet` from a `Rule`, use
  `UpdateRule`.

  To permanently delete an `XssMatchSet` from AWS WAF, perform the following
  steps:

  <ol> <li>Update the `XssMatchSet` to remove filters, if any. For more
  information, see `UpdateXssMatchSet`.</li> <li>Use `GetChangeToken` to get
  the change token that you provide in the `ChangeToken` parameter of a
  `DeleteXssMatchSet` request.</li> <li>Submit a `DeleteXssMatchSet`
  request.</li> </ol>
  """
  def delete_xss_match_set(client, input, options \\ []) do
    request(client, "DeleteXssMatchSet", input, options)
  end

  @doc """
  Returns the `ByteMatchSet` specified by `ByteMatchSetId`.
  """
  def get_byte_match_set(client, input, options \\ []) do
    request(client, "GetByteMatchSet", input, options)
  end

  @doc """
  When you want to create, update, or delete AWS WAF objects, get a change
  token and include the change token in the create, update, or delete
  request. Change tokens ensure that your application doesn't submit
  conflicting requests to AWS WAF.

  Each create, update, or delete request must use a unique change token. If
  your application submits a `GetChangeToken` request and then submits a
  second `GetChangeToken` request before submitting a create, update, or
  delete request, the second `GetChangeToken` request returns the same value
  as the first `GetChangeToken` request.

  When you use a change token in a create, update, or delete request, the
  status of the change token changes to `PENDING`, which indicates that AWS
  WAF is propagating the change to all AWS WAF servers. Use
  `GetChangeTokenStatus` to determine the status of your change token.
  """
  def get_change_token(client, input, options \\ []) do
    request(client, "GetChangeToken", input, options)
  end

  @doc """
  Returns the status of a `ChangeToken` that you got by calling
  `GetChangeToken`. `ChangeTokenStatus` is one of the following values:

  <ul> <li>`PROVISIONED`: You requested the change token by calling
  `GetChangeToken`, but you haven't used it yet in a call to create, update,
  or delete an AWS WAF object.</li> <li>`PENDING`: AWS WAF is propagating the
  create, update, or delete request to all AWS WAF servers.</li>
  <li>`IN_SYNC`: Propagation is complete.</li> </ul>
  """
  def get_change_token_status(client, input, options \\ []) do
    request(client, "GetChangeTokenStatus", input, options)
  end

  @doc """
  Returns the `IPSet` that is specified by `IPSetId`.
  """
  def get_i_p_set(client, input, options \\ []) do
    request(client, "GetIPSet", input, options)
  end

  @doc """
  Returns the `Rule` that is specified by the `RuleId` that you included in
  the `GetRule` request.
  """
  def get_rule(client, input, options \\ []) do
    request(client, "GetRule", input, options)
  end

  @doc """
  Gets detailed information about a specified number of requests--a
  sample--that AWS WAF randomly selects from among the first 5,000 requests
  that your AWS resource received during a time range that you choose. You
  can specify a sample size of up to 100 requests, and you can specify any
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
  Returns the `SizeConstraintSet` specified by `SizeConstraintSetId`.
  """
  def get_size_constraint_set(client, input, options \\ []) do
    request(client, "GetSizeConstraintSet", input, options)
  end

  @doc """
  Returns the `SqlInjectionMatchSet` that is specified by
  `SqlInjectionMatchSetId`.
  """
  def get_sql_injection_match_set(client, input, options \\ []) do
    request(client, "GetSqlInjectionMatchSet", input, options)
  end

  @doc """
  Returns the `WebACL` that is specified by `WebACLId`.
  """
  def get_web_a_c_l(client, input, options \\ []) do
    request(client, "GetWebACL", input, options)
  end

  @doc """
  Returns the `XssMatchSet` that is specified by `XssMatchSetId`.
  """
  def get_xss_match_set(client, input, options \\ []) do
    request(client, "GetXssMatchSet", input, options)
  end

  @doc """
  Returns an array of `ByteMatchSetSummary` objects.
  """
  def list_byte_match_sets(client, input, options \\ []) do
    request(client, "ListByteMatchSets", input, options)
  end

  @doc """
  Returns an array of `IPSetSummary` objects in the response.
  """
  def list_i_p_sets(client, input, options \\ []) do
    request(client, "ListIPSets", input, options)
  end

  @doc """
  Returns an array of `RuleSummary` objects.
  """
  def list_rules(client, input, options \\ []) do
    request(client, "ListRules", input, options)
  end

  @doc """
  Returns an array of `SizeConstraintSetSummary` objects.
  """
  def list_size_constraint_sets(client, input, options \\ []) do
    request(client, "ListSizeConstraintSets", input, options)
  end

  @doc """
  Returns an array of `SqlInjectionMatchSet` objects.
  """
  def list_sql_injection_match_sets(client, input, options \\ []) do
    request(client, "ListSqlInjectionMatchSets", input, options)
  end

  @doc """
  Returns an array of `WebACLSummary` objects in the response.
  """
  def list_web_a_c_ls(client, input, options \\ []) do
    request(client, "ListWebACLs", input, options)
  end

  @doc """
  Returns an array of `XssMatchSet` objects.
  """
  def list_xss_match_sets(client, input, options \\ []) do
    request(client, "ListXssMatchSets", input, options)
  end

  @doc """
  Inserts or deletes `ByteMatchTuple` objects (filters) in a `ByteMatchSet`.
  For each `ByteMatchTuple` object, you specify the following values:

  <ul> <li>Whether to insert or delete the object from the array. If you want
  to change a `ByteMatchSetUpdate` object, you delete the existing object and
  add a new one.</li> <li>The part of a web request that you want AWS WAF to
  inspect, such as a query string or the value of the `User-Agent` header.
  </li> <li>The bytes (typically a string that corresponds with ASCII
  characters) that you want AWS WAF to look for. For more information,
  including how you specify the values for the AWS WAF API and the AWS CLI or
  SDKs, see `TargetString` in the `ByteMatchTuple` data type. </li> <li>Where
  to look, such as at the beginning or the end of a query string.</li>
  <li>Whether to perform any conversions on the request, such as converting
  it to lowercase, before inspecting it for the specified string.</li> </ul>
  For example, you can add a `ByteMatchSetUpdate` object that matches web
  requests in which `User-Agent` headers contain the string `BadBot`. You can
  then configure AWS WAF to block those requests.

  To create and configure a `ByteMatchSet`, perform the following steps:

  <ol> <li>Create a `ByteMatchSet.` For more information, see
  `CreateByteMatchSet`.</li> <li>Use `GetChangeToken` to get the change token
  that you provide in the `ChangeToken` parameter of an `UpdateByteMatchSet`
  request.</li> <li>Submit an `UpdateByteMatchSet` request to specify the
  part of the request that you want AWS WAF to inspect (for example, the
  header or the URI) and the value that you want AWS WAF to watch for.</li>
  </ol> For more information about how to use the AWS WAF API to allow or
  block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_byte_match_set(client, input, options \\ []) do
    request(client, "UpdateByteMatchSet", input, options)
  end

  @doc """
  Inserts or deletes `IPSetDescriptor` objects in an `IPSet`. For each
  `IPSetDescriptor` object, you specify the following values:

  <ul> <li>Whether to insert or delete the object from the array. If you want
  to change an `IPSetDescriptor` object, you delete the existing object and
  add a new one.</li> <li>The IP address version, `IPv4`. </li> <li>The IP
  address in CIDR notation, for example, `192.0.2.0/24` (for the range of IP
  addresses from `192.0.2.0` to `192.0.2.255`) or `192.0.2.44/32` (for the
  individual IP address `192.0.2.44`). </li> </ul> AWS WAF supports /8, /16,
  /24, and /32 IP address ranges. For more information about CIDR notation,
  see the Wikipedia entry [Classless Inter-Domain
  Routing](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

  You use an `IPSet` to specify which web requests you want to allow or block
  based on the IP addresses that the requests originated from. For example,
  if you're receiving a lot of requests from one or a small number of IP
  addresses and you want to block the requests, you can create an `IPSet`
  that specifies those IP addresses, and then configure AWS WAF to block the
  requests.

  To create and configure an `IPSet`, perform the following steps:

  <ol> <li>Submit a `CreateIPSet` request.</li> <li>Use `GetChangeToken` to
  get the change token that you provide in the `ChangeToken` parameter of an
  `UpdateIPSet` request.</li> <li>Submit an `UpdateIPSet` request to specify
  the IP addresses that you want AWS WAF to watch for.</li> </ol> When you
  update an `IPSet`, you specify the IP addresses that you want to add and/or
  the IP addresses that you want to delete. If you want to change an IP
  address, you delete the existing IP address and add the new one.

  For more information about how to use the AWS WAF API to allow or block
  HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_i_p_set(client, input, options \\ []) do
    request(client, "UpdateIPSet", input, options)
  end

  @doc """
  Inserts or deletes `Predicate` objects in a `Rule`. Each `Predicate` object
  identifies a predicate, such as a `ByteMatchSet` or an `IPSet`, that
  specifies the web requests that you want to allow, block, or count. If you
  add more than one predicate to a `Rule`, a request must match all of the
  specifications to be allowed, blocked, or counted. For example, suppose you
  add the following to a `Rule`:

  <ul> <li>A `ByteMatchSet` that matches the value `BadBot` in the
  `User-Agent` header</li> <li>An `IPSet` that matches the IP address
  `192.0.2.44`</li> </ul> You then add the `Rule` to a `WebACL` and specify
  that you want to block requests that satisfy the `Rule`. For a request to
  be blocked, the `User-Agent` header in the request must contain the value
  `BadBot` *and* the request must originate from the IP address 192.0.2.44.

  To create and configure a `Rule`, perform the following steps:

  <ol> <li>Create and update the predicates that you want to include in the
  `Rule`.</li> <li>Create the `Rule`. See `CreateRule`.</li> <li>Use
  `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an `UpdateRule` request.</li> <li>Submit an
  `UpdateRule` request to add predicates to the `Rule`.</li> <li>Create and
  update a `WebACL` that contains the `Rule`. See `CreateWebACL`.</li> </ol>
  If you want to replace one `ByteMatchSet` or `IPSet` with another, you
  delete the existing one and add the new one.

  For more information about how to use the AWS WAF API to allow or block
  HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_rule(client, input, options \\ []) do
    request(client, "UpdateRule", input, options)
  end

  @doc """
  Inserts or deletes `SizeConstraint` objects (filters) in a
  `SizeConstraintSet`. For each `SizeConstraint` object, you specify the
  following values:

  <ul> <li>Whether to insert or delete the object from the array. If you want
  to change a `SizeConstraintSetUpdate` object, you delete the existing
  object and add a new one.</li> <li>The part of a web request that you want
  AWS WAF to evaluate, such as the length of a query string or the length of
  the `User-Agent` header.</li> <li>Whether to perform any transformations on
  the request, such as converting it to lowercase, before checking its
  length. Note that transformations of the request body are not supported
  because the AWS resource forwards only the first `8192` bytes of your
  request to AWS WAF.</li> <li>A `ComparisonOperator` used for evaluating the
  selected part of the request against the specified `Size`, such as equals,
  greater than, less than, and so on.</li> <li>The length, in bytes, that you
  want AWS WAF to watch for in selected part of the request. The length is
  computed after applying the transformation.</li> </ul> For example, you can
  add a `SizeConstraintSetUpdate` object that matches web requests in which
  the length of the `User-Agent` header is greater than 100 bytes. You can
  then configure AWS WAF to block those requests.

  To create and configure a `SizeConstraintSet`, perform the following steps:

  <ol> <li>Create a `SizeConstraintSet.` For more information, see
  `CreateSizeConstraintSet`.</li> <li>Use `GetChangeToken` to get the change
  token that you provide in the `ChangeToken` parameter of an
  `UpdateSizeConstraintSet` request.</li> <li>Submit an
  `UpdateSizeConstraintSet` request to specify the part of the request that
  you want AWS WAF to inspect (for example, the header or the URI) and the
  value that you want AWS WAF to watch for.</li> </ol> For more information
  about how to use the AWS WAF API to allow or block HTTP requests, see the
  [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_size_constraint_set(client, input, options \\ []) do
    request(client, "UpdateSizeConstraintSet", input, options)
  end

  @doc """
  Inserts or deletes `SqlInjectionMatchTuple` objects (filters) in a
  `SqlInjectionMatchSet`. For each `SqlInjectionMatchTuple` object, you
  specify the following values:

  <ul> <li>`Action`: Whether to insert the object into or delete the object
  from the array. To change a `SqlInjectionMatchTuple`, you delete the
  existing object and add a new one.</li> <li>`FieldToMatch`: The part of web
  requests that you want AWS WAF to inspect and, if you want AWS WAF to
  inspect a header, the name of the header.</li> <li>`TextTransformation`:
  Which text transformation, if any, to perform on the web request before
  inspecting the request for snippets of malicious SQL code.</li> </ul> You
  use `SqlInjectionMatchSet` objects to specify which CloudFront requests you
  want to allow, block, or count. For example, if you're receiving requests
  that contain snippets of SQL code in the query string and you want to block
  the requests, you can create a `SqlInjectionMatchSet` with the applicable
  settings, and then configure AWS WAF to block the requests.

  To create and configure a `SqlInjectionMatchSet`, perform the following
  steps:

  <ol> <li>Submit a `CreateSqlInjectionMatchSet` request.</li> <li>Use
  `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an `UpdateIPSet` request.</li> <li>Submit an
  `UpdateSqlInjectionMatchSet` request to specify the parts of web requests
  that you want AWS WAF to inspect for snippets of SQL code.</li> </ol> For
  more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_sql_injection_match_set(client, input, options \\ []) do
    request(client, "UpdateSqlInjectionMatchSet", input, options)
  end

  @doc """
  Inserts or deletes `ActivatedRule` objects in a `WebACL`. Each `Rule`
  identifies web requests that you want to allow, block, or count. When you
  update a `WebACL`, you specify the following values:

  <ul> <li>A default action for the `WebACL`, either `ALLOW` or `BLOCK`. AWS
  WAF performs the default action if a request doesn't match the criteria in
  any of the `Rules` in a `WebACL`.</li> <li>The `Rules` that you want to add
  and/or delete. If you want to replace one `Rule` with another, you delete
  the existing `Rule` and add the new one.</li> <li>For each `Rule`, whether
  you want AWS WAF to allow requests, block requests, or count requests that
  match the conditions in the `Rule`.</li> <li>The order in which you want
  AWS WAF to evaluate the `Rules` in a `WebACL`. If you add more than one
  `Rule` to a `WebACL`, AWS WAF evaluates each request against the `Rules` in
  order based on the value of `Priority`. (The `Rule` that has the lowest
  value for `Priority` is evaluated first.) When a web request matches all of
  the predicates (such as `ByteMatchSets` and `IPSets`) in a `Rule`, AWS WAF
  immediately takes the corresponding action, allow or block, and doesn't
  evaluate the request against the remaining `Rules` in the `WebACL`, if any.
  </li> <li>The CloudFront distribution that you want to associate with the
  `WebACL`.</li> </ul> To create and configure a `WebACL`, perform the
  following steps:

  <ol> <li>Create and update the predicates that you want to include in
  `Rules`. For more information, see `CreateByteMatchSet`,
  `UpdateByteMatchSet`, `CreateIPSet`, `UpdateIPSet`,
  `CreateSqlInjectionMatchSet`, and `UpdateSqlInjectionMatchSet`.</li>
  <li>Create and update the `Rules` that you want to include in the `WebACL`.
  For more information, see `CreateRule` and `UpdateRule`.</li> <li>Create a
  `WebACL`. See `CreateWebACL`.</li> <li>Use `GetChangeToken` to get the
  change token that you provide in the `ChangeToken` parameter of an
  `UpdateWebACL` request.</li> <li>Submit an `UpdateWebACL` request to
  specify the `Rules` that you want to include in the `WebACL`, to specify
  the default action, and to associate the `WebACL` with a CloudFront
  distribution. </li> </ol> For more information about how to use the AWS WAF
  API to allow or block HTTP requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_web_a_c_l(client, input, options \\ []) do
    request(client, "UpdateWebACL", input, options)
  end

  @doc """
  Inserts or deletes `XssMatchTuple` objects (filters) in an `XssMatchSet`.
  For each `XssMatchTuple` object, you specify the following values:

  <ul> <li>`Action`: Whether to insert the object into or delete the object
  from the array. To change a `XssMatchTuple`, you delete the existing object
  and add a new one.</li> <li>`FieldToMatch`: The part of web requests that
  you want AWS WAF to inspect and, if you want AWS WAF to inspect a header,
  the name of the header.</li> <li>`TextTransformation`: Which text
  transformation, if any, to perform on the web request before inspecting the
  request for cross-site scripting attacks.</li> </ul> You use `XssMatchSet`
  objects to specify which CloudFront requests you want to allow, block, or
  count. For example, if you're receiving requests that contain cross-site
  scripting attacks in the request body and you want to block the requests,
  you can create an `XssMatchSet` with the applicable settings, and then
  configure AWS WAF to block the requests.

  To create and configure an `XssMatchSet`, perform the following steps:

  <ol> <li>Submit a `CreateXssMatchSet` request.</li> <li>Use
  `GetChangeToken` to get the change token that you provide in the
  `ChangeToken` parameter of an `UpdateIPSet` request.</li> <li>Submit an
  `UpdateXssMatchSet` request to specify the parts of web requests that you
  want AWS WAF to inspect for cross-site scripting attacks.</li> </ol> For
  more information about how to use the AWS WAF API to allow or block HTTP
  requests, see the [AWS WAF Developer
  Guide](http://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  def update_xss_match_set(client, input, options \\ []) do
    request(client, "UpdateXssMatchSet", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "waf"}
    host = get_host("waf", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "AWSWAF_20150824.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
