# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Signer do
  @moduledoc """
  With code signing for IoT, you can sign code that you create for any IoT
  device that is supported by Amazon Web Services (AWS). Code signing is
  available through [Amazon
  FreeRTOS](http://docs.aws.amazon.com/freertos/latest/userguide/) and [AWS
  IoT Device
  Management](http://docs.aws.amazon.com/iot/latest/developerguide/), and
  integrated with [AWS Certificate Manager
  (ACM)](http://docs.aws.amazon.com/acm/latest/userguide/). In order to sign
  code, you import a third-party code signing certificate with ACM that is
  used to sign updates in Amazon FreeRTOS and AWS IoT Device Management. For
  general information about using code signing, see the [Code Signing for IoT
  Developer
  Guide](http://docs.aws.amazon.com/signer/latest/developerguide/Welcome.html).
  """

  @doc """
  Changes the state of an `ACTIVE` signing profile to `CANCELED`. A canceled
  profile is still viewable with the `ListSigningProfiles` operation, but it
  cannot perform new signing jobs, and is deleted two years after
  cancelation.
  """
  def cancel_signing_profile(client, profile_name, input, options \\ []) do
    path_ = "/signing-profiles/#{URI.encode(profile_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns information about a specific code signing job. You specify the job
  by using the `jobId` value that is returned by the `StartSigningJob`
  operation.
  """
  def describe_signing_job(client, job_id, options \\ []) do
    path_ = "/signing-jobs/#{URI.encode(job_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns information on a specific signing platform.
  """
  def get_signing_platform(client, platform_id, options \\ []) do
    path_ = "/signing-platforms/#{URI.encode(platform_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns information on a specific signing profile.
  """
  def get_signing_profile(client, profile_name, options \\ []) do
    path_ = "/signing-profiles/#{URI.encode(profile_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all your signing jobs. You can use the `maxResults` parameter to
  limit the number of signing jobs that are returned in the response. If
  additional jobs remain to be listed, code signing returns a `nextToken`
  value. Use this value in subsequent calls to `ListSigningJobs` to fetch the
  remaining values. You can continue calling `ListSigningJobs` with your
  `maxResults` parameter and with new values that code signing returns in the
  `nextToken` parameter until all of your signing jobs have been returned.
  """
  def list_signing_jobs(client, max_results \\ nil, next_token \\ nil, platform_id \\ nil, requested_by \\ nil, status \\ nil, options \\ []) do
    path_ = "/signing-jobs"
    headers = []
    query_ = []
    query_ = if !is_nil(status) do
      [{"status", status} | query_]
    else
      query_
    end
    query_ = if !is_nil(requested_by) do
      [{"requestedBy", requested_by} | query_]
    else
      query_
    end
    query_ = if !is_nil(platform_id) do
      [{"platformId", platform_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all signing platforms available in code signing that match the
  request parameters. If additional jobs remain to be listed, code signing
  returns a `nextToken` value. Use this value in subsequent calls to
  `ListSigningJobs` to fetch the remaining values. You can continue calling
  `ListSigningJobs` with your `maxResults` parameter and with new values that
  code signing returns in the `nextToken` parameter until all of your signing
  jobs have been returned.
  """
  def list_signing_platforms(client, category \\ nil, max_results \\ nil, next_token \\ nil, partner \\ nil, target \\ nil, options \\ []) do
    path_ = "/signing-platforms"
    headers = []
    query_ = []
    query_ = if !is_nil(target) do
      [{"target", target} | query_]
    else
      query_
    end
    query_ = if !is_nil(partner) do
      [{"partner", partner} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(category) do
      [{"category", category} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all available signing profiles in your AWS account. Returns only
  profiles with an `ACTIVE` status unless the `includeCanceled` request field
  is set to `true`. If additional jobs remain to be listed, code signing
  returns a `nextToken` value. Use this value in subsequent calls to
  `ListSigningJobs` to fetch the remaining values. You can continue calling
  `ListSigningJobs` with your `maxResults` parameter and with new values that
  code signing returns in the `nextToken` parameter until all of your signing
  jobs have been returned.
  """
  def list_signing_profiles(client, include_canceled \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/signing-profiles"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(include_canceled) do
      [{"includeCanceled", include_canceled} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a list of the tags associated with a signing profile resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Creates a signing profile. A signing profile is a code signing template
  that can be used to carry out a pre-defined signing job. For more
  information, see
  [http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html](http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html)
  """
  def put_signing_profile(client, profile_name, input, options \\ []) do
    path_ = "/signing-profiles/#{URI.encode(profile_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Initiates a signing job to be performed on the code provided. Signing jobs
  are viewable by the `ListSigningJobs` operation for two years after they
  are performed. Note the following requirements:

  <ul> <li> You must create an Amazon S3 source bucket. For more information,
  see [Create a
  Bucket](http://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html)
  in the *Amazon S3 Getting Started Guide*.

  </li> <li> Your S3 source bucket must be version enabled.

  </li> <li> You must create an S3 destination bucket. Code signing uses your
  S3 destination bucket to write your signed code.

  </li> <li> You specify the name of the source and destination buckets when
  calling the `StartSigningJob` operation.

  </li> <li> You must also specify a request token that identifies your
  request to code signing.

  </li> </ul> You can call the `DescribeSigningJob` and the `ListSigningJobs`
  actions after you call `StartSigningJob`.

  For a Java example that shows how to use this action, see
  [http://docs.aws.amazon.com/acm/latest/userguide/](http://docs.aws.amazon.com/acm/latest/userguide/)
  """
  def start_signing_job(client, input, options \\ []) do
    path_ = "/signing-jobs"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds one or more tags to a signing profile. Tags are labels that you can
  use to identify and organize your AWS resources. Each tag consists of a key
  and an optional value. To specify the signing profile, use its Amazon
  Resource Name (ARN). To specify the tag, use a key-value pair.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes one or more tags from a signing profile. To remove the tags,
  specify a list of tag keys.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"tagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "signer"}
    host = build_host("signer", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, nil) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when status_code in [200, 202, 204] ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end


  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
