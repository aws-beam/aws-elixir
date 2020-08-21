# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Cloudfront do
  @moduledoc """
  Amazon CloudFront

  This is the *Amazon CloudFront API Reference*. This guide is for developers
  who need detailed information about CloudFront API actions, data types, and
  errors. For detailed information about CloudFront features, see the *Amazon
  CloudFront Developer Guide*.
  """

  @doc """
  Creates a cache policy.

  After you create a cache policy, you can attach it to one or more cache
  behaviors. When it’s attached to a cache behavior, the cache policy
  determines the following:

  <ul> <li> The values that CloudFront includes in the *cache key*. These
  values can include HTTP headers, cookies, and URL query strings. CloudFront
  uses the cache key to find an object in its cache that it can return to the
  viewer.

  </li> <li> The default, minimum, and maximum time to live (TTL) values that
  you want objects to stay in the CloudFront cache.

  </li> </ul> The headers, cookies, and query strings that are included in
  the cache key are automatically included in requests that CloudFront sends
  to the origin. CloudFront sends a request when it can’t find an object in
  its cache that matches the request’s cache key. If you want to send values
  to the origin but *not* include them in the cache key, use
  `CreateOriginRequestPolicy`.

  For more information about cache policies, see [Controlling the cache
  key](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  def create_cache_policy(client, input, options \\ []) do
    path_ = "/2020-05-31/cache-policy"
    headers = []
    query = []
    case request(client, :post, path_, query, headers, input, options, 201) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Creates a new origin access identity. If you're using Amazon S3 for your
  origin, you can use an origin access identity to require users to access
  your content using a CloudFront URL instead of the Amazon S3 URL. For more
  information about how to use origin access identities, see [Serving Private
  Content through
  CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  def create_cloud_front_origin_access_identity(client, input, options \\ []) do
    path_ = "/2020-05-31/origin-access-identity/cloudfront"
    headers = []
    query = []
    case request(client, :post, path_, query, headers, input, options, 201) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Creates a new web distribution. You create a CloudFront distribution to
  tell CloudFront where you want content to be delivered from, and the
  details about how to track and manage content delivery. Send a `POST`
  request to the `/*CloudFront API version*/distribution`/`distribution ID`
  resource.

  <important> When you update a distribution, there are more required fields
  than when you create a distribution. When you update your distribution by
  using
  [UpdateDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html),
  follow the steps included in the documentation to get the current
  configuration and then make your updates. This helps to make sure that you
  include all of the required fields. To view a summary, see [Required Fields
  for Create Distribution and Update
  Distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-overview-required-fields.html)
  in the *Amazon CloudFront Developer Guide*.

  </important>
  """
  def create_distribution(client, input, options \\ []) do
    path_ = "/2020-05-31/distribution"
    headers = []
    query = []
    case request(client, :post, path_, query, headers, input, options, 201) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Create a new distribution with tags.
  """
  def create_distribution_with_tags(client, input, options \\ []) do
    path_ = "/2020-05-31/distribution?WithTags"
    headers = []
    query = []
    case request(client, :post, path_, query, headers, input, options, 201) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Create a new field-level encryption configuration.
  """
  def create_field_level_encryption_config(client, input, options \\ []) do
    path_ = "/2020-05-31/field-level-encryption"
    headers = []
    query = []
    case request(client, :post, path_, query, headers, input, options, 201) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Create a field-level encryption profile.
  """
  def create_field_level_encryption_profile(client, input, options \\ []) do
    path_ = "/2020-05-31/field-level-encryption-profile"
    headers = []
    query = []
    case request(client, :post, path_, query, headers, input, options, 201) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Create a new invalidation.
  """
  def create_invalidation(client, distribution_id, input, options \\ []) do
    path_ = "/2020-05-31/distribution/#{URI.encode(distribution_id)}/invalidation"
    headers = []
    query = []
    case request(client, :post, path_, query, headers, input, options, 201) do
      {:ok, body, response} ->
        body =
          [
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Creates an origin request policy.

  After you create an origin request policy, you can attach it to one or more
  cache behaviors. When it’s attached to a cache behavior, the origin request
  policy determines the values that CloudFront includes in requests that it
  sends to the origin. Each request that CloudFront sends to the origin
  includes the following:

  <ul> <li> The request body and the URL path (without the domain name) from
  the viewer request.

  </li> <li> The headers that CloudFront automatically includes in every
  origin request, including `Host`, `User-Agent`, and `X-Amz-Cf-Id`.

  </li> <li> All HTTP headers, cookies, and URL query strings that are
  specified in the cache policy or the origin request policy. These can
  include items from the viewer request and, in the case of headers,
  additional ones that are added by CloudFront.

  </li> </ul> CloudFront sends a request when it can’t find a valid object in
  its cache that matches the request. If you want to send values to the
  origin and also include them in the cache key, use `CreateCachePolicy`.

  For more information about origin request policies, see [Controlling origin
  requests](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  def create_origin_request_policy(client, input, options \\ []) do
    path_ = "/2020-05-31/origin-request-policy"
    headers = []
    query = []
    case request(client, :post, path_, query, headers, input, options, 201) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Add a new public key to CloudFront to use, for example, for field-level
  encryption. You can add a maximum of 10 public keys with one AWS account.
  """
  def create_public_key(client, input, options \\ []) do
    path_ = "/2020-05-31/public-key"
    headers = []
    query = []
    case request(client, :post, path_, query, headers, input, options, 201) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Creates a new RTMP distribution. An RTMP distribution is similar to a web
  distribution, but an RTMP distribution streams media files using the Adobe
  Real-Time Messaging Protocol (RTMP) instead of serving files using HTTP.

  To create a new distribution, submit a `POST` request to the *CloudFront
  API version*/distribution resource. The request body must include a
  document with a *StreamingDistributionConfig* element. The response echoes
  the `StreamingDistributionConfig` element and returns other information
  about the RTMP distribution.

  To get the status of your request, use the *GET StreamingDistribution* API
  action. When the value of `Enabled` is `true` and the value of `Status` is
  `Deployed`, your distribution is ready. A distribution usually deploys in
  less than 15 minutes.

  For more information about web distributions, see [Working with RTMP
  Distributions](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-rtmp.html)
  in the *Amazon CloudFront Developer Guide*.

  <important> Beginning with the 2012-05-05 version of the CloudFront API, we
  made substantial changes to the format of the XML document that you include
  in the request body when you create or update a web distribution or an RTMP
  distribution, and when you invalidate objects. With previous versions of
  the API, we discovered that it was too easy to accidentally delete one or
  more values for an element that accepts multiple values, for example,
  CNAMEs and trusted signers. Our changes for the 2012-05-05 release are
  intended to prevent these accidental deletions and to notify you when
  there's a mismatch between the number of values you say you're specifying
  in the `Quantity` element and the number of values specified.

  </important>
  """
  def create_streaming_distribution(client, input, options \\ []) do
    path_ = "/2020-05-31/streaming-distribution"
    headers = []
    query = []
    case request(client, :post, path_, query, headers, input, options, 201) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Create a new streaming distribution with tags.
  """
  def create_streaming_distribution_with_tags(client, input, options \\ []) do
    path_ = "/2020-05-31/streaming-distribution?WithTags"
    headers = []
    query = []
    case request(client, :post, path_, query, headers, input, options, 201) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Deletes a cache policy.

  You cannot delete a cache policy if it’s attached to a cache behavior.
  First update your distributions to remove the cache policy from all cache
  behaviors, then delete the cache policy.

  To delete a cache policy, you must provide the policy’s identifier and
  version. To get these values, you can use `ListCachePolicies` or
  `GetCachePolicy`.
  """
  def delete_cache_policy(client, id, input, options \\ []) do
    path_ = "/2020-05-31/cache-policy/#{URI.encode(id)}"
    {headers, input} =
      [
        {"IfMatch", "If-Match"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :delete, path_, query, headers, input, options, 204)
  end

  @doc """
  Delete an origin access identity.
  """
  def delete_cloud_front_origin_access_identity(client, id, input, options \\ []) do
    path_ = "/2020-05-31/origin-access-identity/cloudfront/#{URI.encode(id)}"
    {headers, input} =
      [
        {"IfMatch", "If-Match"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :delete, path_, query, headers, input, options, 204)
  end

  @doc """
  Delete a distribution.
  """
  def delete_distribution(client, id, input, options \\ []) do
    path_ = "/2020-05-31/distribution/#{URI.encode(id)}"
    {headers, input} =
      [
        {"IfMatch", "If-Match"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :delete, path_, query, headers, input, options, 204)
  end

  @doc """
  Remove a field-level encryption configuration.
  """
  def delete_field_level_encryption_config(client, id, input, options \\ []) do
    path_ = "/2020-05-31/field-level-encryption/#{URI.encode(id)}"
    {headers, input} =
      [
        {"IfMatch", "If-Match"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :delete, path_, query, headers, input, options, 204)
  end

  @doc """
  Remove a field-level encryption profile.
  """
  def delete_field_level_encryption_profile(client, id, input, options \\ []) do
    path_ = "/2020-05-31/field-level-encryption-profile/#{URI.encode(id)}"
    {headers, input} =
      [
        {"IfMatch", "If-Match"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :delete, path_, query, headers, input, options, 204)
  end

  @doc """
  Deletes an origin request policy.

  You cannot delete an origin request policy if it’s attached to any cache
  behaviors. First update your distributions to remove the origin request
  policy from all cache behaviors, then delete the origin request policy.

  To delete an origin request policy, you must provide the policy’s
  identifier and version. To get the identifier, you can use
  `ListOriginRequestPolicies` or `GetOriginRequestPolicy`.
  """
  def delete_origin_request_policy(client, id, input, options \\ []) do
    path_ = "/2020-05-31/origin-request-policy/#{URI.encode(id)}"
    {headers, input} =
      [
        {"IfMatch", "If-Match"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :delete, path_, query, headers, input, options, 204)
  end

  @doc """
  Remove a public key you previously added to CloudFront.
  """
  def delete_public_key(client, id, input, options \\ []) do
    path_ = "/2020-05-31/public-key/#{URI.encode(id)}"
    {headers, input} =
      [
        {"IfMatch", "If-Match"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :delete, path_, query, headers, input, options, 204)
  end

  @doc """
  Delete a streaming distribution. To delete an RTMP distribution using the
  CloudFront API, perform the following steps.

  **To delete an RTMP distribution using the CloudFront API**:

  <ol> <li> Disable the RTMP distribution.

  </li> <li> Submit a `GET Streaming Distribution Config` request to get the
  current configuration and the `Etag` header for the distribution.

  </li> <li> Update the XML document that was returned in the response to
  your `GET Streaming Distribution Config` request to change the value of
  `Enabled` to `false`.

  </li> <li> Submit a `PUT Streaming Distribution Config` request to update
  the configuration for your distribution. In the request body, include the
  XML document that you updated in Step 3. Then set the value of the HTTP
  `If-Match` header to the value of the `ETag` header that CloudFront
  returned when you submitted the `GET Streaming Distribution Config` request
  in Step 2.

  </li> <li> Review the response to the `PUT Streaming Distribution Config`
  request to confirm that the distribution was successfully disabled.

  </li> <li> Submit a `GET Streaming Distribution Config` request to confirm
  that your changes have propagated. When propagation is complete, the value
  of `Status` is `Deployed`.

  </li> <li> Submit a `DELETE Streaming Distribution` request. Set the value
  of the HTTP `If-Match` header to the value of the `ETag` header that
  CloudFront returned when you submitted the `GET Streaming Distribution
  Config` request in Step 2.

  </li> <li> Review the response to your `DELETE Streaming Distribution`
  request to confirm that the distribution was successfully deleted.

  </li> </ol> For information about deleting a distribution using the
  CloudFront console, see [Deleting a
  Distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html)
  in the *Amazon CloudFront Developer Guide*.
  """
  def delete_streaming_distribution(client, id, input, options \\ []) do
    path_ = "/2020-05-31/streaming-distribution/#{URI.encode(id)}"
    {headers, input} =
      [
        {"IfMatch", "If-Match"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :delete, path_, query, headers, input, options, 204)
  end

  @doc """
  Gets a cache policy, including the following metadata:

  <ul> <li> The policy’s identifier.

  </li> <li> The date and time when the policy was last modified.

  </li> </ul> To get a cache policy, you must provide the policy’s
  identifier. If the cache policy is attached to a distribution’s cache
  behavior, you can get the policy’s identifier using `ListDistributions` or
  `GetDistribution`. If the cache policy is not attached to a cache behavior,
  you can get the identifier using `ListCachePolicies`.
  """
  def get_cache_policy(client, id, options \\ []) do
    path_ = "/2020-05-31/cache-policy/#{URI.encode(id)}"
    headers = []
    query = []
    case request(client, :get, path_, query, headers, nil, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Gets a cache policy configuration.

  To get a cache policy configuration, you must provide the policy’s
  identifier. If the cache policy is attached to a distribution’s cache
  behavior, you can get the policy’s identifier using `ListDistributions` or
  `GetDistribution`. If the cache policy is not attached to a cache behavior,
  you can get the identifier using `ListCachePolicies`.
  """
  def get_cache_policy_config(client, id, options \\ []) do
    path_ = "/2020-05-31/cache-policy/#{URI.encode(id)}/config"
    headers = []
    query = []
    case request(client, :get, path_, query, headers, nil, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Get the information about an origin access identity.
  """
  def get_cloud_front_origin_access_identity(client, id, options \\ []) do
    path_ = "/2020-05-31/origin-access-identity/cloudfront/#{URI.encode(id)}"
    headers = []
    query = []
    case request(client, :get, path_, query, headers, nil, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Get the configuration information about an origin access identity.
  """
  def get_cloud_front_origin_access_identity_config(client, id, options \\ []) do
    path_ = "/2020-05-31/origin-access-identity/cloudfront/#{URI.encode(id)}/config"
    headers = []
    query = []
    case request(client, :get, path_, query, headers, nil, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Get the information about a distribution.
  """
  def get_distribution(client, id, options \\ []) do
    path_ = "/2020-05-31/distribution/#{URI.encode(id)}"
    headers = []
    query = []
    case request(client, :get, path_, query, headers, nil, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Get the configuration information about a distribution.
  """
  def get_distribution_config(client, id, options \\ []) do
    path_ = "/2020-05-31/distribution/#{URI.encode(id)}/config"
    headers = []
    query = []
    case request(client, :get, path_, query, headers, nil, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Get the field-level encryption configuration information.
  """
  def get_field_level_encryption(client, id, options \\ []) do
    path_ = "/2020-05-31/field-level-encryption/#{URI.encode(id)}"
    headers = []
    query = []
    case request(client, :get, path_, query, headers, nil, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Get the field-level encryption configuration information.
  """
  def get_field_level_encryption_config(client, id, options \\ []) do
    path_ = "/2020-05-31/field-level-encryption/#{URI.encode(id)}/config"
    headers = []
    query = []
    case request(client, :get, path_, query, headers, nil, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Get the field-level encryption profile information.
  """
  def get_field_level_encryption_profile(client, id, options \\ []) do
    path_ = "/2020-05-31/field-level-encryption-profile/#{URI.encode(id)}"
    headers = []
    query = []
    case request(client, :get, path_, query, headers, nil, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Get the field-level encryption profile configuration information.
  """
  def get_field_level_encryption_profile_config(client, id, options \\ []) do
    path_ = "/2020-05-31/field-level-encryption-profile/#{URI.encode(id)}/config"
    headers = []
    query = []
    case request(client, :get, path_, query, headers, nil, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Get the information about an invalidation.
  """
  def get_invalidation(client, distribution_id, id, options \\ []) do
    path_ = "/2020-05-31/distribution/#{URI.encode(distribution_id)}/invalidation/#{URI.encode(id)}"
    headers = []
    query = []
    request(client, :get, path_, query, headers, nil, options, nil)
  end

  @doc """
  Gets an origin request policy, including the following metadata:

  <ul> <li> The policy’s identifier.

  </li> <li> The date and time when the policy was last modified.

  </li> </ul> To get an origin request policy, you must provide the policy’s
  identifier. If the origin request policy is attached to a distribution’s
  cache behavior, you can get the policy’s identifier using
  `ListDistributions` or `GetDistribution`. If the origin request policy is
  not attached to a cache behavior, you can get the identifier using
  `ListOriginRequestPolicies`.
  """
  def get_origin_request_policy(client, id, options \\ []) do
    path_ = "/2020-05-31/origin-request-policy/#{URI.encode(id)}"
    headers = []
    query = []
    case request(client, :get, path_, query, headers, nil, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Gets an origin request policy configuration.

  To get an origin request policy configuration, you must provide the
  policy’s identifier. If the origin request policy is attached to a
  distribution’s cache behavior, you can get the policy’s identifier using
  `ListDistributions` or `GetDistribution`. If the origin request policy is
  not attached to a cache behavior, you can get the identifier using
  `ListOriginRequestPolicies`.
  """
  def get_origin_request_policy_config(client, id, options \\ []) do
    path_ = "/2020-05-31/origin-request-policy/#{URI.encode(id)}/config"
    headers = []
    query = []
    case request(client, :get, path_, query, headers, nil, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Get the public key information.
  """
  def get_public_key(client, id, options \\ []) do
    path_ = "/2020-05-31/public-key/#{URI.encode(id)}"
    headers = []
    query = []
    case request(client, :get, path_, query, headers, nil, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Return public key configuration informaation
  """
  def get_public_key_config(client, id, options \\ []) do
    path_ = "/2020-05-31/public-key/#{URI.encode(id)}/config"
    headers = []
    query = []
    case request(client, :get, path_, query, headers, nil, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Gets information about a specified RTMP distribution, including the
  distribution configuration.
  """
  def get_streaming_distribution(client, id, options \\ []) do
    path_ = "/2020-05-31/streaming-distribution/#{URI.encode(id)}"
    headers = []
    query = []
    case request(client, :get, path_, query, headers, nil, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Get the configuration information about a streaming distribution.
  """
  def get_streaming_distribution_config(client, id, options \\ []) do
    path_ = "/2020-05-31/streaming-distribution/#{URI.encode(id)}/config"
    headers = []
    query = []
    case request(client, :get, path_, query, headers, nil, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Gets a list of cache policies.

  You can optionally apply a filter to return only the managed policies
  created by AWS, or only the custom policies created in your AWS account.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that
  you specify, or the default maximum, the response is paginated. To get the
  next page of items, send a subsequent request that specifies the
  `NextMarker` value from the current response as the `Marker` value in the
  subsequent request.
  """
  def list_cache_policies(client, marker \\ nil, max_items \\ nil, type \\ nil, options \\ []) do
    path_ = "/2020-05-31/cache-policy"
    headers = []
    query = []
    query = if !is_nil(type) do
      [{"Type", type} | query]
    else
      query
    end
    query = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query]
    else
      query
    end
    query = if !is_nil(marker) do
      [{"Marker", marker} | query]
    else
      query
    end
    request(client, :get, path_, query, headers, nil, options, nil)
  end

  @doc """
  Lists origin access identities.
  """
  def list_cloud_front_origin_access_identities(client, marker \\ nil, max_items \\ nil, options \\ []) do
    path_ = "/2020-05-31/origin-access-identity/cloudfront"
    headers = []
    query = []
    query = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query]
    else
      query
    end
    query = if !is_nil(marker) do
      [{"Marker", marker} | query]
    else
      query
    end
    request(client, :get, path_, query, headers, nil, options, nil)
  end

  @doc """
  List CloudFront distributions.
  """
  def list_distributions(client, marker \\ nil, max_items \\ nil, options \\ []) do
    path_ = "/2020-05-31/distribution"
    headers = []
    query = []
    query = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query]
    else
      query
    end
    query = if !is_nil(marker) do
      [{"Marker", marker} | query]
    else
      query
    end
    request(client, :get, path_, query, headers, nil, options, nil)
  end

  @doc """
  Gets a list of distribution IDs for distributions that have a cache
  behavior that’s associated with the specified cache policy.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that
  you specify, or the default maximum, the response is paginated. To get the
  next page of items, send a subsequent request that specifies the
  `NextMarker` value from the current response as the `Marker` value in the
  subsequent request.
  """
  def list_distributions_by_cache_policy_id(client, cache_policy_id, marker \\ nil, max_items \\ nil, options \\ []) do
    path_ = "/2020-05-31/distributionsByCachePolicyId/#{URI.encode(cache_policy_id)}"
    headers = []
    query = []
    query = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query]
    else
      query
    end
    query = if !is_nil(marker) do
      [{"Marker", marker} | query]
    else
      query
    end
    request(client, :get, path_, query, headers, nil, options, nil)
  end

  @doc """
  Gets a list of distribution IDs for distributions that have a cache
  behavior that’s associated with the specified origin request policy.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that
  you specify, or the default maximum, the response is paginated. To get the
  next page of items, send a subsequent request that specifies the
  `NextMarker` value from the current response as the `Marker` value in the
  subsequent request.
  """
  def list_distributions_by_origin_request_policy_id(client, origin_request_policy_id, marker \\ nil, max_items \\ nil, options \\ []) do
    path_ = "/2020-05-31/distributionsByOriginRequestPolicyId/#{URI.encode(origin_request_policy_id)}"
    headers = []
    query = []
    query = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query]
    else
      query
    end
    query = if !is_nil(marker) do
      [{"Marker", marker} | query]
    else
      query
    end
    request(client, :get, path_, query, headers, nil, options, nil)
  end

  @doc """
  List the distributions that are associated with a specified AWS WAF web
  ACL.
  """
  def list_distributions_by_web_a_c_l_id(client, web_a_c_l_id, marker \\ nil, max_items \\ nil, options \\ []) do
    path_ = "/2020-05-31/distributionsByWebACLId/#{URI.encode(web_a_c_l_id)}"
    headers = []
    query = []
    query = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query]
    else
      query
    end
    query = if !is_nil(marker) do
      [{"Marker", marker} | query]
    else
      query
    end
    request(client, :get, path_, query, headers, nil, options, nil)
  end

  @doc """
  List all field-level encryption configurations that have been created in
  CloudFront for this account.
  """
  def list_field_level_encryption_configs(client, marker \\ nil, max_items \\ nil, options \\ []) do
    path_ = "/2020-05-31/field-level-encryption"
    headers = []
    query = []
    query = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query]
    else
      query
    end
    query = if !is_nil(marker) do
      [{"Marker", marker} | query]
    else
      query
    end
    request(client, :get, path_, query, headers, nil, options, nil)
  end

  @doc """
  Request a list of field-level encryption profiles that have been created in
  CloudFront for this account.
  """
  def list_field_level_encryption_profiles(client, marker \\ nil, max_items \\ nil, options \\ []) do
    path_ = "/2020-05-31/field-level-encryption-profile"
    headers = []
    query = []
    query = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query]
    else
      query
    end
    query = if !is_nil(marker) do
      [{"Marker", marker} | query]
    else
      query
    end
    request(client, :get, path_, query, headers, nil, options, nil)
  end

  @doc """
  Lists invalidation batches.
  """
  def list_invalidations(client, distribution_id, marker \\ nil, max_items \\ nil, options \\ []) do
    path_ = "/2020-05-31/distribution/#{URI.encode(distribution_id)}/invalidation"
    headers = []
    query = []
    query = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query]
    else
      query
    end
    query = if !is_nil(marker) do
      [{"Marker", marker} | query]
    else
      query
    end
    request(client, :get, path_, query, headers, nil, options, nil)
  end

  @doc """
  Gets a list of origin request policies.

  You can optionally apply a filter to return only the managed policies
  created by AWS, or only the custom policies created in your AWS account.

  You can optionally specify the maximum number of items to receive in the
  response. If the total number of items in the list exceeds the maximum that
  you specify, or the default maximum, the response is paginated. To get the
  next page of items, send a subsequent request that specifies the
  `NextMarker` value from the current response as the `Marker` value in the
  subsequent request.
  """
  def list_origin_request_policies(client, marker \\ nil, max_items \\ nil, type \\ nil, options \\ []) do
    path_ = "/2020-05-31/origin-request-policy"
    headers = []
    query = []
    query = if !is_nil(type) do
      [{"Type", type} | query]
    else
      query
    end
    query = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query]
    else
      query
    end
    query = if !is_nil(marker) do
      [{"Marker", marker} | query]
    else
      query
    end
    request(client, :get, path_, query, headers, nil, options, nil)
  end

  @doc """
  List all public keys that have been added to CloudFront for this account.
  """
  def list_public_keys(client, marker \\ nil, max_items \\ nil, options \\ []) do
    path_ = "/2020-05-31/public-key"
    headers = []
    query = []
    query = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query]
    else
      query
    end
    query = if !is_nil(marker) do
      [{"Marker", marker} | query]
    else
      query
    end
    request(client, :get, path_, query, headers, nil, options, nil)
  end

  @doc """
  List streaming distributions.
  """
  def list_streaming_distributions(client, marker \\ nil, max_items \\ nil, options \\ []) do
    path_ = "/2020-05-31/streaming-distribution"
    headers = []
    query = []
    query = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query]
    else
      query
    end
    query = if !is_nil(marker) do
      [{"Marker", marker} | query]
    else
      query
    end
    request(client, :get, path_, query, headers, nil, options, nil)
  end

  @doc """
  List tags for a CloudFront resource.
  """
  def list_tags_for_resource(client, resource, options \\ []) do
    path_ = "/2020-05-31/tagging"
    headers = []
    query = []
    query = if !is_nil(resource) do
      [{"Resource", resource} | query]
    else
      query
    end
    request(client, :get, path_, query, headers, nil, options, nil)
  end

  @doc """
  Add tags to a CloudFront resource.
  """
  def tag_resource(client, input, options \\ []) do
    path_ = "/2020-05-31/tagging?Operation=Tag"
    headers = []
    {query, input} =
      [
        {"Resource", "Resource"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query, headers, input, options, 204)
  end

  @doc """
  Remove tags from a CloudFront resource.
  """
  def untag_resource(client, input, options \\ []) do
    path_ = "/2020-05-31/tagging?Operation=Untag"
    headers = []
    {query, input} =
      [
        {"Resource", "Resource"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query, headers, input, options, 204)
  end

  @doc """
  Updates a cache policy configuration.

  When you update a cache policy configuration, all the fields are updated
  with the values provided in the request. You cannot update some fields
  independent of others. To update a cache policy configuration:

  <ol> <li> Use `GetCachePolicyConfig` to get the current configuration.

  </li> <li> Locally modify the fields in the cache policy configuration that
  you want to update.

  </li> <li> Call `UpdateCachePolicy` by providing the entire cache policy
  configuration, including the fields that you modified and those that you
  didn’t.

  </li> </ol>
  """
  def update_cache_policy(client, id, input, options \\ []) do
    path_ = "/2020-05-31/cache-policy/#{URI.encode(id)}"
    {headers, input} =
      [
        {"IfMatch", "If-Match"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    case request(client, :put, path_, query, headers, input, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Update an origin access identity.
  """
  def update_cloud_front_origin_access_identity(client, id, input, options \\ []) do
    path_ = "/2020-05-31/origin-access-identity/cloudfront/#{URI.encode(id)}/config"
    {headers, input} =
      [
        {"IfMatch", "If-Match"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    case request(client, :put, path_, query, headers, input, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Updates the configuration for a web distribution.

  <important> When you update a distribution, there are more required fields
  than when you create a distribution. When you update your distribution by
  using this API action, follow the steps here to get the current
  configuration and then make your updates, to make sure that you include all
  of the required fields. To view a summary, see [Required Fields for Create
  Distribution and Update
  Distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-overview-required-fields.html)
  in the *Amazon CloudFront Developer Guide*.

  </important> The update process includes getting the current distribution
  configuration, updating the XML document that is returned to make your
  changes, and then submitting an `UpdateDistribution` request to make the
  updates.

  For information about updating a distribution using the CloudFront console
  instead, see [Creating a
  Distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-creating-console.html)
  in the *Amazon CloudFront Developer Guide*.

  **To update a web distribution using the CloudFront API**

  <ol> <li> Submit a
  [GetDistributionConfig](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistributionConfig.html)
  request to get the current configuration and an `Etag` header for the
  distribution.

  <note> If you update the distribution again, you must get a new `Etag`
  header.

  </note> </li> <li> Update the XML document that was returned in the
  response to your `GetDistributionConfig` request to include your changes.

  <important> When you edit the XML file, be aware of the following:

  <ul> <li> You must strip out the ETag parameter that is returned.

  </li> <li> Additional fields are required when you update a distribution.
  There may be fields included in the XML file for features that you haven't
  configured for your distribution. This is expected and required to
  successfully update the distribution.

  </li> <li> You can't change the value of `CallerReference`. If you try to
  change this value, CloudFront returns an `IllegalUpdate` error.

  </li> <li> The new configuration replaces the existing configuration; the
  values that you specify in an `UpdateDistribution` request are not merged
  into your existing configuration. When you add, delete, or replace values
  in an element that allows multiple values (for example, `CNAME`), you must
  specify all of the values that you want to appear in the updated
  distribution. In addition, you must update the corresponding `Quantity`
  element.

  </li> </ul> </important> </li> <li> Submit an `UpdateDistribution` request
  to update the configuration for your distribution:

  <ul> <li> In the request body, include the XML document that you updated in
  Step 2. The request body must include an XML document with a
  `DistributionConfig` element.

  </li> <li> Set the value of the HTTP `If-Match` header to the value of the
  `ETag` header that CloudFront returned when you submitted the
  `GetDistributionConfig` request in Step 1.

  </li> </ul> </li> <li> Review the response to the `UpdateDistribution`
  request to confirm that the configuration was successfully updated.

  </li> <li> Optional: Submit a
  [GetDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistribution.html)
  request to confirm that your changes have propagated. When propagation is
  complete, the value of `Status` is `Deployed`.

  </li> </ol>
  """
  def update_distribution(client, id, input, options \\ []) do
    path_ = "/2020-05-31/distribution/#{URI.encode(id)}/config"
    {headers, input} =
      [
        {"IfMatch", "If-Match"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    case request(client, :put, path_, query, headers, input, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Update a field-level encryption configuration.
  """
  def update_field_level_encryption_config(client, id, input, options \\ []) do
    path_ = "/2020-05-31/field-level-encryption/#{URI.encode(id)}/config"
    {headers, input} =
      [
        {"IfMatch", "If-Match"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    case request(client, :put, path_, query, headers, input, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Update a field-level encryption profile.
  """
  def update_field_level_encryption_profile(client, id, input, options \\ []) do
    path_ = "/2020-05-31/field-level-encryption-profile/#{URI.encode(id)}/config"
    {headers, input} =
      [
        {"IfMatch", "If-Match"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    case request(client, :put, path_, query, headers, input, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Updates an origin request policy configuration.

  When you update an origin request policy configuration, all the fields are
  updated with the values provided in the request. You cannot update some
  fields independent of others. To update an origin request policy
  configuration:

  <ol> <li> Use `GetOriginRequestPolicyConfig` to get the current
  configuration.

  </li> <li> Locally modify the fields in the origin request policy
  configuration that you want to update.

  </li> <li> Call `UpdateOriginRequestPolicy` by providing the entire origin
  request policy configuration, including the fields that you modified and
  those that you didn’t.

  </li> </ol>
  """
  def update_origin_request_policy(client, id, input, options \\ []) do
    path_ = "/2020-05-31/origin-request-policy/#{URI.encode(id)}"
    {headers, input} =
      [
        {"IfMatch", "If-Match"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    case request(client, :put, path_, query, headers, input, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Update public key information. Note that the only value you can change is
  the comment.
  """
  def update_public_key(client, id, input, options \\ []) do
    path_ = "/2020-05-31/public-key/#{URI.encode(id)}/config"
    {headers, input} =
      [
        {"IfMatch", "If-Match"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    case request(client, :put, path_, query, headers, input, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Update a streaming distribution.
  """
  def update_streaming_distribution(client, id, input, options \\ []) do
    path_ = "/2020-05-31/streaming-distribution/#{URI.encode(id)}/config"
    {headers, input} =
      [
        {"IfMatch", "If-Match"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    case request(client, :put, path_, query, headers, input, options, nil) do
      {:ok, body, response} ->
        body =
          [
            {"ETag", "ETag"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, Poison.Parser.t(), Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "cloudfront",
                        region:  "us-east-1"}
    host = get_host("cloudfront", client)
    url = host
    |> get_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "text/xml"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, response}

      {:ok, %HTTPoison.Response{status_code: status_code, body: body} = response}
      when status_code == 200 or status_code == 202 or status_code == 204 ->
        {:ok, AWS.Util.decode_xml(body), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = AWS.Util.decode_xml(body)
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, %{}, response}

      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: body} = response} ->
        {:ok, AWS.Util.decode_xml(body), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = AWS.Util.decode_xml(body)
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp get_host(endpoint_prefix, %{endpoint: endpoint}) do
    "#{endpoint_prefix}.#{endpoint}"
  end

  defp get_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: AWS.Util.encode_xml(input), else: ""
  end
end
