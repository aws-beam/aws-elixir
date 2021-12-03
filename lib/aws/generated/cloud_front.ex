# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudFront do
  @moduledoc """
  Amazon CloudFront

  This is the *Amazon CloudFront API Reference*.

  This guide is for developers who need detailed information about CloudFront API
  actions, data types, and errors. For detailed information about CloudFront
  features, see the *Amazon CloudFront Developer Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-05-31",
      content_type: "text/xml",
      credential_scope: "us-east-1",
      endpoint_prefix: "cloudfront",
      global?: true,
      protocol: "rest-xml",
      service_id: "CloudFront",
      signature_version: "v4",
      signing_name: "cloudfront",
      target_prefix: nil
    }
  end

  @doc """
  Associates an alias (also known as a CNAME or an alternate domain name) with a
  CloudFront distribution.

  With this operation you can move an alias that’s already in use on a CloudFront
  distribution to a different distribution in one step. This prevents the downtime
  that could occur if you first remove the alias from one distribution and then
  separately add the alias to another distribution.

  To use this operation to associate an alias with a distribution, you provide the
  alias and the ID of the target distribution for the alias. For more information,
  including how to set up the target distribution, prerequisites that you must
  complete, and other restrictions, see [Moving an alternate domain name to a different
  distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move)
  in the *Amazon CloudFront Developer Guide*.
  """
  def associate_alias(%Client{} = client, target_distribution_id, input, options \\ []) do
    url_path =
      "/2020-05-31/distribution/#{AWS.Util.encode_uri(target_distribution_id)}/associate-alias"

    headers = []

    {query_params, input} =
      [
        {"Alias", "Alias"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a cache policy.

  After you create a cache policy, you can attach it to one or more cache
  behaviors. When it’s attached to a cache behavior, the cache policy determines
  the following:

    * The values that CloudFront includes in the *cache key*. These
  values can include HTTP headers, cookies, and URL query strings. CloudFront uses
  the cache key to find an object in its cache that it can return to the viewer.

    * The default, minimum, and maximum time to live (TTL) values that
  you want objects to stay in the CloudFront cache.

  The headers, cookies, and query strings that are included in the cache key are
  automatically included in requests that CloudFront sends to the origin.
  CloudFront sends a request when it can’t find an object in its cache that
  matches the request’s cache key. If you want to send values to the origin but
  *not* include them in the cache key, use `OriginRequestPolicy`.

  For more information about cache policies, see [Controlling the cache key](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  def create_cache_policy(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/cache-policy"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new origin access identity.

  If you're using Amazon S3 for your origin, you can use an origin access identity
  to require users to access your content using a CloudFront URL instead of the
  Amazon S3 URL. For more information about how to use origin access identities,
  see [Serving Private Content through CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  def create_cloud_front_origin_access_identity(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/origin-access-identity/cloudfront"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new web distribution.

  You create a CloudFront distribution to tell CloudFront where you want content
  to be delivered from, and the details about how to track and manage content
  delivery. Send a `POST` request to the `/*CloudFront API
  version*/distribution`/`distribution ID` resource.

  When you update a distribution, there are more required fields than when you
  create a distribution. When you update your distribution by using
  [UpdateDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html), follow the steps included in the documentation to get the current configuration
  and then make your updates. This helps to make sure that you include all of the
  required fields. To view a summary, see [Required Fields for Create Distribution
  and Update
  Distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-overview-required-fields.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  def create_distribution(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/distribution"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Create a new distribution with tags.
  """
  def create_distribution_with_tags(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/distribution?WithTags"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Create a new field-level encryption configuration.
  """
  def create_field_level_encryption_config(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Create a field-level encryption profile.
  """
  def create_field_level_encryption_profile(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption-profile"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a CloudFront function.

  To create a function, you provide the function code and some configuration
  information about the function. The response contains an Amazon Resource Name
  (ARN) that uniquely identifies the function.

  When you create a function, it’s in the `DEVELOPMENT` stage. In this stage, you
  can test the function with `TestFunction`, and update it with `UpdateFunction`.

  When you’re ready to use your function with a CloudFront distribution, use
  `PublishFunction` to copy the function from the `DEVELOPMENT` stage to `LIVE`.
  When it’s live, you can attach the function to a distribution’s cache behavior,
  using the function’s ARN.
  """
  def create_function(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/function"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Create a new invalidation.
  """
  def create_invalidation(%Client{} = client, distribution_id, input, options \\ []) do
    url_path = "/2020-05-31/distribution/#{AWS.Util.encode_uri(distribution_id)}/invalidation"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "Location"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a key group that you can use with [CloudFront signed URLs and signed cookies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html).

  To create a key group, you must specify at least one public key for the key
  group. After you create a key group, you can reference it from one or more cache
  behaviors. When you reference a key group in a cache behavior, CloudFront
  requires signed URLs or signed cookies for all requests that match the cache
  behavior. The URLs or cookies must be signed with a private key whose
  corresponding public key is in the key group. The signed URL or cookie contains
  information about which public key CloudFront should use to verify the
  signature. For more information, see [Serving private content](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  def create_key_group(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/key-group"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Enables additional CloudWatch metrics for the specified CloudFront distribution.

  The additional metrics incur an additional cost.

  For more information, see [Viewing additional CloudFront distribution metrics](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/viewing-cloudfront-metrics.html#monitoring-console.distributions-additional)
  in the *Amazon CloudFront Developer Guide*.
  """
  def create_monitoring_subscription(%Client{} = client, distribution_id, input, options \\ []) do
    url_path =
      "/2020-05-31/distributions/#{AWS.Util.encode_uri(distribution_id)}/monitoring-subscription"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates an origin request policy.

  After you create an origin request policy, you can attach it to one or more
  cache behaviors. When it’s attached to a cache behavior, the origin request
  policy determines the values that CloudFront includes in requests that it sends
  to the origin. Each request that CloudFront sends to the origin includes the
  following:

    * The request body and the URL path (without the domain name) from
  the viewer request.

    * The headers that CloudFront automatically includes in every origin
  request, including `Host`, `User-Agent`, and `X-Amz-Cf-Id`.

    * All HTTP headers, cookies, and URL query strings that are
  specified in the cache policy or the origin request policy. These can include
  items from the viewer request and, in the case of headers, additional ones that
  are added by CloudFront.

  CloudFront sends a request when it can’t find a valid object in its cache that
  matches the request. If you want to send values to the origin and also include
  them in the cache key, use `CachePolicy`.

  For more information about origin request policies, see [Controlling origin requests](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  def create_origin_request_policy(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/origin-request-policy"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Uploads a public key to CloudFront that you can use with [signed URLs and signed cookies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html),
  or with [field-level encryption](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html).
  """
  def create_public_key(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/public-key"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a real-time log configuration.

  After you create a real-time log configuration, you can attach it to one or more
  cache behaviors to send real-time log data to the specified Amazon Kinesis data
  stream.

  For more information about real-time log configurations, see [Real-time logs](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  def create_realtime_log_config(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/realtime-log-config"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a response headers policy.

  A response headers policy contains information about a set of HTTP response
  headers and their values. To create a response headers policy, you provide some
  metadata about the policy, and a set of configurations that specify the response
  headers.

  After you create a response headers policy, you can use its ID to attach it to
  one or more cache behaviors in a CloudFront distribution. When it’s attached to
  a cache behavior, CloudFront adds the headers in the policy to HTTP responses
  that it sends for requests that match the cache behavior.
  """
  def create_response_headers_policy(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/response-headers-policy"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  This API is deprecated.

  Amazon CloudFront is deprecating real-time messaging protocol (RTMP)
  distributions on December 31, 2020. For more information, [read the announcement](http://forums.aws.amazon.com/ann.jspa?annID=7356) on the Amazon
  CloudFront discussion forum.
  """
  def create_streaming_distribution(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/streaming-distribution"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  This API is deprecated.

  Amazon CloudFront is deprecating real-time messaging protocol (RTMP)
  distributions on December 31, 2020. For more information, [read the announcement](http://forums.aws.amazon.com/ann.jspa?annID=7356) on the Amazon
  CloudFront discussion forum.
  """
  def create_streaming_distribution_with_tags(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/streaming-distribution?WithTags"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}, {"Location", "Location"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes a cache policy.

  You cannot delete a cache policy if it’s attached to a cache behavior. First
  update your distributions to remove the cache policy from all cache behaviors,
  then delete the cache policy.

  To delete a cache policy, you must provide the policy’s identifier and version.
  To get these values, you can use `ListCachePolicies` or `GetCachePolicy`.
  """
  def delete_cache_policy(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/cache-policy/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Delete an origin access identity.
  """
  def delete_cloud_front_origin_access_identity(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/origin-access-identity/cloudfront/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Delete a distribution.
  """
  def delete_distribution(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/distribution/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Remove a field-level encryption configuration.
  """
  def delete_field_level_encryption_config(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Remove a field-level encryption profile.
  """
  def delete_field_level_encryption_profile(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption-profile/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a CloudFront function.

  You cannot delete a function if it’s associated with a cache behavior. First,
  update your distributions to remove the function association from all cache
  behaviors, then delete the function.

  To delete a function, you must provide the function’s name and version (`ETag`
  value). To get these values, you can use `ListFunctions` and `DescribeFunction`.
  """
  def delete_function(%Client{} = client, name, input, options \\ []) do
    url_path = "/2020-05-31/function/#{AWS.Util.encode_uri(name)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a key group.

  You cannot delete a key group that is referenced in a cache behavior. First
  update your distributions to remove the key group from all cache behaviors, then
  delete the key group.

  To delete a key group, you must provide the key group’s identifier and version.
  To get these values, use `ListKeyGroups` followed by `GetKeyGroup` or
  `GetKeyGroupConfig`.
  """
  def delete_key_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/key-group/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Disables additional CloudWatch metrics for the specified CloudFront
  distribution.
  """
  def delete_monitoring_subscription(%Client{} = client, distribution_id, input, options \\ []) do
    url_path =
      "/2020-05-31/distributions/#{AWS.Util.encode_uri(distribution_id)}/monitoring-subscription"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes an origin request policy.

  You cannot delete an origin request policy if it’s attached to any cache
  behaviors. First update your distributions to remove the origin request policy
  from all cache behaviors, then delete the origin request policy.

  To delete an origin request policy, you must provide the policy’s identifier and
  version. To get the identifier, you can use `ListOriginRequestPolicies` or
  `GetOriginRequestPolicy`.
  """
  def delete_origin_request_policy(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/origin-request-policy/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Remove a public key you previously added to CloudFront.
  """
  def delete_public_key(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/public-key/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a real-time log configuration.

  You cannot delete a real-time log configuration if it’s attached to a cache
  behavior. First update your distributions to remove the real-time log
  configuration from all cache behaviors, then delete the real-time log
  configuration.

  To delete a real-time log configuration, you can provide the configuration’s
  name or its Amazon Resource Name (ARN). You must provide at least one. If you
  provide both, CloudFront uses the name to identify the real-time log
  configuration to delete.
  """
  def delete_realtime_log_config(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/delete-realtime-log-config/"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a response headers policy.

  You cannot delete a response headers policy if it’s attached to a cache
  behavior. First update your distributions to remove the response headers policy
  from all cache behaviors, then delete the response headers policy.

  To delete a response headers policy, you must provide the policy’s identifier
  and version. To get these values, you can use `ListResponseHeadersPolicies` or
  `GetResponseHeadersPolicy`.
  """
  def delete_response_headers_policy(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/response-headers-policy/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Delete a streaming distribution.

  To delete an RTMP distribution using the CloudFront API, perform the following
  steps.

  **To delete an RTMP distribution using the CloudFront API**:

    1. Disable the RTMP distribution.

    2. Submit a `GET Streaming Distribution Config` request to get the
  current configuration and the `Etag` header for the distribution.

    3. Update the XML document that was returned in the response to your
  `GET Streaming Distribution Config` request to change the value of `Enabled` to
  `false`.

    4. Submit a `PUT Streaming Distribution Config` request to update
  the configuration for your distribution. In the request body, include the XML
  document that you updated in Step 3. Then set the value of the HTTP `If-Match`
  header to the value of the `ETag` header that CloudFront returned when you
  submitted the `GET Streaming Distribution Config` request in Step 2.

    5. Review the response to the `PUT Streaming Distribution Config`
  request to confirm that the distribution was successfully disabled.

    6. Submit a `GET Streaming Distribution Config` request to confirm
  that your changes have propagated. When propagation is complete, the value of
  `Status` is `Deployed`.

    7. Submit a `DELETE Streaming Distribution` request. Set the value
  of the HTTP `If-Match` header to the value of the `ETag` header that CloudFront
  returned when you submitted the `GET Streaming Distribution Config` request in
  Step 2.

    8. Review the response to your `DELETE Streaming Distribution`
  request to confirm that the distribution was successfully deleted.

  For information about deleting a distribution using the CloudFront console, see
  [Deleting a Distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  def delete_streaming_distribution(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/streaming-distribution/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Gets configuration information and metadata about a CloudFront function, but not
  the function’s code.

  To get a function’s code, use `GetFunction`.

  To get configuration information and metadata about a function, you must provide
  the function’s name and stage. To get these values, you can use `ListFunctions`.
  """
  def describe_function(%Client{} = client, name, stage \\ nil, options \\ []) do
    url_path = "/2020-05-31/function/#{AWS.Util.encode_uri(name)}/describe"
    headers = []
    query_params = []

    query_params =
      if !is_nil(stage) do
        [{"Stage", stage} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a cache policy, including the following metadata:

    * The policy’s identifier.

    * The date and time when the policy was last modified.

  To get a cache policy, you must provide the policy’s identifier. If the cache
  policy is attached to a distribution’s cache behavior, you can get the policy’s
  identifier using `ListDistributions` or `GetDistribution`. If the cache policy
  is not attached to a cache behavior, you can get the identifier using
  `ListCachePolicies`.
  """
  def get_cache_policy(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/cache-policy/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a cache policy configuration.

  To get a cache policy configuration, you must provide the policy’s identifier.
  If the cache policy is attached to a distribution’s cache behavior, you can get
  the policy’s identifier using `ListDistributions` or `GetDistribution`. If the
  cache policy is not attached to a cache behavior, you can get the identifier
  using `ListCachePolicies`.
  """
  def get_cache_policy_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/cache-policy/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Get the information about an origin access identity.
  """
  def get_cloud_front_origin_access_identity(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/origin-access-identity/cloudfront/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Get the configuration information about an origin access identity.
  """
  def get_cloud_front_origin_access_identity_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/origin-access-identity/cloudfront/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Get the information about a distribution.
  """
  def get_distribution(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/distribution/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Get the configuration information about a distribution.
  """
  def get_distribution_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/distribution/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Get the field-level encryption configuration information.
  """
  def get_field_level_encryption(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Get the field-level encryption configuration information.
  """
  def get_field_level_encryption_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Get the field-level encryption profile information.
  """
  def get_field_level_encryption_profile(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption-profile/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Get the field-level encryption profile configuration information.
  """
  def get_field_level_encryption_profile_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption-profile/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets the code of a CloudFront function.

  To get configuration information and metadata about a function, use
  `DescribeFunction`.

  To get a function’s code, you must provide the function’s name and stage. To get
  these values, you can use `ListFunctions`.
  """
  def get_function(%Client{} = client, name, stage \\ nil, options \\ []) do
    url_path = "/2020-05-31/function/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(stage) do
        [{"Stage", stage} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "ContentType"}, {"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Get the information about an invalidation.
  """
  def get_invalidation(%Client{} = client, distribution_id, id, options \\ []) do
    url_path =
      "/2020-05-31/distribution/#{AWS.Util.encode_uri(distribution_id)}/invalidation/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a key group, including the date and time when the key group was last
  modified.

  To get a key group, you must provide the key group’s identifier. If the key
  group is referenced in a distribution’s cache behavior, you can get the key
  group’s identifier using `ListDistributions` or `GetDistribution`. If the key
  group is not referenced in a cache behavior, you can get the identifier using
  `ListKeyGroups`.
  """
  def get_key_group(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/key-group/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a key group configuration.

  To get a key group configuration, you must provide the key group’s identifier.
  If the key group is referenced in a distribution’s cache behavior, you can get
  the key group’s identifier using `ListDistributions` or `GetDistribution`. If
  the key group is not referenced in a cache behavior, you can get the identifier
  using `ListKeyGroups`.
  """
  def get_key_group_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/key-group/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets information about whether additional CloudWatch metrics are enabled for the
  specified CloudFront distribution.
  """
  def get_monitoring_subscription(%Client{} = client, distribution_id, options \\ []) do
    url_path =
      "/2020-05-31/distributions/#{AWS.Util.encode_uri(distribution_id)}/monitoring-subscription"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets an origin request policy, including the following metadata:

    * The policy’s identifier.

    * The date and time when the policy was last modified.

  To get an origin request policy, you must provide the policy’s identifier. If
  the origin request policy is attached to a distribution’s cache behavior, you
  can get the policy’s identifier using `ListDistributions` or `GetDistribution`.
  If the origin request policy is not attached to a cache behavior, you can get
  the identifier using `ListOriginRequestPolicies`.
  """
  def get_origin_request_policy(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/origin-request-policy/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets an origin request policy configuration.

  To get an origin request policy configuration, you must provide the policy’s
  identifier. If the origin request policy is attached to a distribution’s cache
  behavior, you can get the policy’s identifier using `ListDistributions` or
  `GetDistribution`. If the origin request policy is not attached to a cache
  behavior, you can get the identifier using `ListOriginRequestPolicies`.
  """
  def get_origin_request_policy_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/origin-request-policy/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a public key.
  """
  def get_public_key(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/public-key/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a public key configuration.
  """
  def get_public_key_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/public-key/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a real-time log configuration.

  To get a real-time log configuration, you can provide the configuration’s name
  or its Amazon Resource Name (ARN). You must provide at least one. If you provide
  both, CloudFront uses the name to identify the real-time log configuration to
  get.
  """
  def get_realtime_log_config(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/get-realtime-log-config/"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Gets a response headers policy, including metadata (the policy’s identifier and
  the date and time when the policy was last modified).

  To get a response headers policy, you must provide the policy’s identifier. If
  the response headers policy is attached to a distribution’s cache behavior, you
  can get the policy’s identifier using `ListDistributions` or `GetDistribution`.
  If the response headers policy is not attached to a cache behavior, you can get
  the identifier using `ListResponseHeadersPolicies`.
  """
  def get_response_headers_policy(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/response-headers-policy/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a response headers policy configuration.

  To get a response headers policy configuration, you must provide the policy’s
  identifier. If the response headers policy is attached to a distribution’s cache
  behavior, you can get the policy’s identifier using `ListDistributions` or
  `GetDistribution`. If the response headers policy is not attached to a cache
  behavior, you can get the identifier using `ListResponseHeadersPolicies`.
  """
  def get_response_headers_policy_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/response-headers-policy/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets information about a specified RTMP distribution, including the distribution
  configuration.
  """
  def get_streaming_distribution(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/streaming-distribution/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Get the configuration information about a streaming distribution.
  """
  def get_streaming_distribution_config(%Client{} = client, id, options \\ []) do
    url_path = "/2020-05-31/streaming-distribution/#{AWS.Util.encode_uri(id)}/config"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a list of cache policies.

  You can optionally apply a filter to return only the managed policies created by
  Amazon Web Services, or only the custom policies created in your Amazon Web
  Services account.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  def list_cache_policies(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/cache-policy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"Type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists origin access identities.
  """
  def list_cloud_front_origin_access_identities(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/origin-access-identity/cloudfront"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a list of aliases (also called CNAMEs or alternate domain names) that
  conflict or overlap with the provided alias, and the associated CloudFront
  distributions and Amazon Web Services accounts for each conflicting alias.

  In the returned list, the distribution and account IDs are partially hidden,
  which allows you to identify the distributions and accounts that you own, but
  helps to protect the information of ones that you don’t own.

  Use this operation to find aliases that are in use in CloudFront that conflict
  or overlap with the provided alias. For example, if you provide
  `www.example.com` as input, the returned list can include `www.example.com` and
  the overlapping wildcard alternate domain name (`*.example.com`), if they exist.
  If you provide `*.example.com` as input, the returned list can include
  `*.example.com` and any alternate domain names covered by that wildcard (for
  example, `www.example.com`, `test.example.com`, `dev.example.com`, and so on),
  if they exist.

  To list conflicting aliases, you provide the alias to search and the ID of a
  distribution in your account that has an attached SSL/TLS certificate that
  includes the provided alias. For more information, including how to set up the
  distribution and certificate, see [Moving an alternate domain name to a different
  distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-move)
  in the *Amazon CloudFront Developer Guide*.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  def list_conflicting_aliases(
        %Client{} = client,
        alias,
        distribution_id,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/conflicting-alias"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(distribution_id) do
        [{"DistributionId", distribution_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(alias) do
        [{"Alias", alias} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  List CloudFront distributions.
  """
  def list_distributions(%Client{} = client, marker \\ nil, max_items \\ nil, options \\ []) do
    url_path = "/2020-05-31/distribution"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a list of distribution IDs for distributions that have a cache behavior
  that’s associated with the specified cache policy.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  def list_distributions_by_cache_policy_id(
        %Client{} = client,
        cache_policy_id,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/distributionsByCachePolicyId/#{AWS.Util.encode_uri(cache_policy_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a list of distribution IDs for distributions that have a cache behavior
  that references the specified key group.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  def list_distributions_by_key_group(
        %Client{} = client,
        key_group_id,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/distributionsByKeyGroupId/#{AWS.Util.encode_uri(key_group_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a list of distribution IDs for distributions that have a cache behavior
  that’s associated with the specified origin request policy.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  def list_distributions_by_origin_request_policy_id(
        %Client{} = client,
        origin_request_policy_id,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path =
      "/2020-05-31/distributionsByOriginRequestPolicyId/#{AWS.Util.encode_uri(origin_request_policy_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a list of distributions that have a cache behavior that’s associated with
  the specified real-time log configuration.

  You can specify the real-time log configuration by its name or its Amazon
  Resource Name (ARN). You must provide at least one. If you provide both,
  CloudFront uses the name to identify the real-time log configuration to list
  distributions for.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  def list_distributions_by_realtime_log_config(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/distributionsByRealtimeLogConfig/"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Gets a list of distribution IDs for distributions that have a cache behavior
  that’s associated with the specified response headers policy.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  def list_distributions_by_response_headers_policy_id(
        %Client{} = client,
        response_headers_policy_id,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path =
      "/2020-05-31/distributionsByResponseHeadersPolicyId/#{AWS.Util.encode_uri(response_headers_policy_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  List the distributions that are associated with a specified WAF web ACL.
  """
  def list_distributions_by_web_acl_id(
        %Client{} = client,
        web_acl_id,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/distributionsByWebACLId/#{AWS.Util.encode_uri(web_acl_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  List all field-level encryption configurations that have been created in
  CloudFront for this account.
  """
  def list_field_level_encryption_configs(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/field-level-encryption"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Request a list of field-level encryption profiles that have been created in
  CloudFront for this account.
  """
  def list_field_level_encryption_profiles(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/field-level-encryption-profile"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a list of all CloudFront functions in your Amazon Web Services account.

  You can optionally apply a filter to return only the functions that are in the
  specified stage, either `DEVELOPMENT` or `LIVE`.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  def list_functions(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        stage \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/function"
    headers = []
    query_params = []

    query_params =
      if !is_nil(stage) do
        [{"Stage", stage} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists invalidation batches.
  """
  def list_invalidations(
        %Client{} = client,
        distribution_id,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/distribution/#{AWS.Util.encode_uri(distribution_id)}/invalidation"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a list of key groups.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  def list_key_groups(%Client{} = client, marker \\ nil, max_items \\ nil, options \\ []) do
    url_path = "/2020-05-31/key-group"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a list of origin request policies.

  You can optionally apply a filter to return only the managed policies created by
  Amazon Web Services, or only the custom policies created in your Amazon Web
  Services account.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  def list_origin_request_policies(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/origin-request-policy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"Type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  List all public keys that have been added to CloudFront for this account.
  """
  def list_public_keys(%Client{} = client, marker \\ nil, max_items \\ nil, options \\ []) do
    url_path = "/2020-05-31/public-key"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a list of real-time log configurations.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  def list_realtime_log_configs(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/realtime-log-config"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a list of response headers policies.

  You can optionally apply a filter to get only the managed policies created by
  Amazon Web Services, or only the custom policies created in your Amazon Web
  Services account.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that you
  specify, or the default maximum, the response is paginated. To get the next page
  of items, send a subsequent request that specifies the `NextMarker` value from
  the current response as the `Marker` value in the subsequent request.
  """
  def list_response_headers_policies(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/response-headers-policy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"Type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  List streaming distributions.
  """
  def list_streaming_distributions(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-05-31/streaming-distribution"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  List tags for a CloudFront resource.
  """
  def list_tags_for_resource(%Client{} = client, resource, options \\ []) do
    url_path = "/2020-05-31/tagging"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource) do
        [{"Resource", resource} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Publishes a CloudFront function by copying the function code from the
  `DEVELOPMENT` stage to `LIVE`.

  This automatically updates all cache behaviors that are using this function to
  use the newly published copy in the `LIVE` stage.

  When a function is published to the `LIVE` stage, you can attach the function to
  a distribution’s cache behavior, using the function’s Amazon Resource Name
  (ARN).

  To publish a function, you must provide the function’s name and version (`ETag`
  value). To get these values, you can use `ListFunctions` and `DescribeFunction`.
  """
  def publish_function(%Client{} = client, name, input, options \\ []) do
    url_path = "/2020-05-31/function/#{AWS.Util.encode_uri(name)}/publish"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Add tags to a CloudFront resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/tagging?Operation=Tag"
    headers = []

    {query_params, input} =
      [
        {"Resource", "Resource"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Tests a CloudFront function.

  To test a function, you provide an *event object* that represents an HTTP
  request or response that your CloudFront distribution could receive in
  production. CloudFront runs the function, passing it the event object that you
  provided, and returns the function’s result (the modified event object) in the
  response. The response also contains function logs and error messages, if any
  exist. For more information about testing functions, see [Testing functions](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function)
  in the *Amazon CloudFront Developer Guide*.

  To test a function, you provide the function’s name and version (`ETag` value)
  along with the event object. To get the function’s name and version, you can use
  `ListFunctions` and `DescribeFunction`.
  """
  def test_function(%Client{} = client, name, input, options \\ []) do
    url_path = "/2020-05-31/function/#{AWS.Util.encode_uri(name)}/test"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Remove tags from a CloudFront resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/tagging?Operation=Untag"
    headers = []

    {query_params, input} =
      [
        {"Resource", "Resource"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates a cache policy configuration.

  When you update a cache policy configuration, all the fields are updated with
  the values provided in the request. You cannot update some fields independent of
  others. To update a cache policy configuration:

    1. Use `GetCachePolicyConfig` to get the current configuration.

    2. Locally modify the fields in the cache policy configuration that
  you want to update.

    3. Call `UpdateCachePolicy` by providing the entire cache policy
  configuration, including the fields that you modified and those that you didn’t.
  """
  def update_cache_policy(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/cache-policy/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Update an origin access identity.
  """
  def update_cloud_front_origin_access_identity(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/origin-access-identity/cloudfront/#{AWS.Util.encode_uri(id)}/config"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the configuration for a web distribution.

  When you update a distribution, there are more required fields than when you
  create a distribution. When you update your distribution by using this API
  action, follow the steps here to get the current configuration and then make
  your updates, to make sure that you include all of the required fields. To view
  a summary, see [Required Fields for Create Distribution and Update Distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-overview-required-fields.html)
  in the *Amazon CloudFront Developer Guide*.

  The update process includes getting the current distribution configuration,
  updating the XML document that is returned to make your changes, and then
  submitting an `UpdateDistribution` request to make the updates.

  For information about updating a distribution using the CloudFront console
  instead, see [Creating a Distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-creating-console.html)
  in the *Amazon CloudFront Developer Guide*.

  ## To update a web distribution using the CloudFront API

    1. Submit a
  [GetDistributionConfig](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistributionConfig.html) request to get the current configuration and an `Etag` header for the
  distribution.

  If you update the distribution again, you must get a new `Etag` header.

    2. Update the XML document that was returned in the response to your
  `GetDistributionConfig` request to include your changes.

  When you edit the XML file, be aware of the following:

     You must strip out the ETag parameter that is returned.

     Additional fields are required when you update a distribution.
  There may be fields included in the XML file for features that you haven't
  configured for your distribution. This is expected and required to successfully
  update the distribution.

     You can't change the value of `CallerReference`. If you try to
  change this value, CloudFront returns an `IllegalUpdate` error.

     The new configuration replaces the existing configuration; the
  values that you specify in an `UpdateDistribution` request are not merged into
  your existing configuration. When you add, delete, or replace values in an
  element that allows multiple values (for example, `CNAME`), you must specify all
  of the values that you want to appear in the updated distribution. In addition,
  you must update the corresponding `Quantity` element.

    3. Submit an `UpdateDistribution` request to update the
  configuration for your distribution:

      * In the request body, include the XML document that you
  updated in Step 2. The request body must include an XML document with a
  `DistributionConfig` element.

      * Set the value of the HTTP `If-Match` header to the
  value of the `ETag` header that CloudFront returned when you submitted the
  `GetDistributionConfig` request in Step 1.

    4. Review the response to the `UpdateDistribution` request to
  confirm that the configuration was successfully updated.

    5. Optional: Submit a
  [GetDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistribution.html)
  request to confirm that your changes have propagated. When propagation is
  complete, the value of `Status` is `Deployed`.
  """
  def update_distribution(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/distribution/#{AWS.Util.encode_uri(id)}/config"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Update a field-level encryption configuration.
  """
  def update_field_level_encryption_config(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption/#{AWS.Util.encode_uri(id)}/config"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Update a field-level encryption profile.
  """
  def update_field_level_encryption_profile(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/field-level-encryption-profile/#{AWS.Util.encode_uri(id)}/config"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a CloudFront function.

  You can update a function’s code or the comment that describes the function. You
  cannot update a function’s name.

  To update a function, you provide the function’s name and version (`ETag` value)
  along with the updated function code. To get the name and version, you can use
  `ListFunctions` and `DescribeFunction`.
  """
  def update_function(%Client{} = client, name, input, options \\ []) do
    url_path = "/2020-05-31/function/#{AWS.Util.encode_uri(name)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETtag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a key group.

  When you update a key group, all the fields are updated with the values provided
  in the request. You cannot update some fields independent of others. To update a
  key group:

    1. Get the current key group with `GetKeyGroup` or
  `GetKeyGroupConfig`.

    2. Locally modify the fields in the key group that you want to
  update. For example, add or remove public key IDs.

    3. Call `UpdateKeyGroup` with the entire key group object, including
  the fields that you modified and those that you didn’t.
  """
  def update_key_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/key-group/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates an origin request policy configuration.

  When you update an origin request policy configuration, all the fields are
  updated with the values provided in the request. You cannot update some fields
  independent of others. To update an origin request policy configuration:

    1. Use `GetOriginRequestPolicyConfig` to get the current
  configuration.

    2. Locally modify the fields in the origin request policy
  configuration that you want to update.

    3. Call `UpdateOriginRequestPolicy` by providing the entire origin
  request policy configuration, including the fields that you modified and those
  that you didn’t.
  """
  def update_origin_request_policy(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/origin-request-policy/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Update public key information.

  Note that the only value you can change is the comment.
  """
  def update_public_key(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/public-key/#{AWS.Util.encode_uri(id)}/config"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a real-time log configuration.

  When you update a real-time log configuration, all the parameters are updated
  with the values provided in the request. You cannot update some parameters
  independent of others. To update a real-time log configuration:

    1. Call `GetRealtimeLogConfig` to get the current real-time log
  configuration.

    2. Locally modify the parameters in the real-time log configuration
  that you want to update.

    3. Call this API (`UpdateRealtimeLogConfig`) by providing the entire
  real-time log configuration, including the parameters that you modified and
  those that you didn’t.

  You cannot update a real-time log configuration’s `Name` or `ARN`.
  """
  def update_realtime_log_config(%Client{} = client, input, options \\ []) do
    url_path = "/2020-05-31/realtime-log-config/"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a response headers policy.

  When you update a response headers policy, the entire policy is replaced. You
  cannot update some policy fields independent of others. To update a response
  headers policy configuration:

    1. Use `GetResponseHeadersPolicyConfig` to get the current policy’s
  configuration.

    2. Modify the fields in the response headers policy configuration
  that you want to update.

    3. Call `UpdateResponseHeadersPolicy`, providing the entire response
  headers policy configuration, including the fields that you modified and those
  that you didn’t.
  """
  def update_response_headers_policy(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/response-headers-policy/#{AWS.Util.encode_uri(id)}"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Update a streaming distribution.
  """
  def update_streaming_distribution(%Client{} = client, id, input, options \\ []) do
    url_path = "/2020-05-31/streaming-distribution/#{AWS.Util.encode_uri(id)}/config"

    {headers, input} =
      [
        {"IfMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "ETag"}]
      )

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
