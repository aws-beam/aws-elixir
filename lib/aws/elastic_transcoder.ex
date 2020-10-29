# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ElasticTranscoder do
  @moduledoc """
  AWS Elastic Transcoder Service

  The AWS Elastic Transcoder Service.
  """

  @doc """
  The CancelJob operation cancels an unfinished job.

  <note> You can only cancel a job that has a status of `Submitted`. To
  prevent a pipeline from starting to process a job while you're getting the
  job identifier, use `UpdatePipelineStatus` to temporarily pause the
  pipeline.

  </note>
  """
  def cancel_job(client, id, input, options \\ []) do
    path_ = "/2012-09-25/jobs/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  When you create a job, Elastic Transcoder returns JSON data that includes
  the values that you specified plus information about the job that is
  created.

  If you have specified more than one output for your jobs (for example, one
  output for the Kindle Fire and another output for the Apple iPhone 4s), you
  currently must use the Elastic Transcoder API to list the jobs (as opposed
  to the AWS Console).
  """
  def create_job(client, input, options \\ []) do
    path_ = "/2012-09-25/jobs"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  The CreatePipeline operation creates a pipeline with settings that you
  specify.
  """
  def create_pipeline(client, input, options \\ []) do
    path_ = "/2012-09-25/pipelines"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  The CreatePreset operation creates a preset with settings that you specify.

  <important> Elastic Transcoder checks the CreatePreset settings to ensure
  that they meet Elastic Transcoder requirements and to determine whether
  they comply with H.264 standards. If your settings are not valid for
  Elastic Transcoder, Elastic Transcoder returns an HTTP 400 response
  (`ValidationException`) and does not create the preset. If the settings are
  valid for Elastic Transcoder but aren't strictly compliant with the H.264
  standard, Elastic Transcoder creates the preset and returns a warning
  message in the response. This helps you determine whether your settings
  comply with the H.264 standard while giving you greater flexibility with
  respect to the video that Elastic Transcoder produces.

  </important> Elastic Transcoder uses the H.264 video-compression format.
  For more information, see the International Telecommunication Union
  publication *Recommendation ITU-T H.264: Advanced video coding for generic
  audiovisual services*.
  """
  def create_preset(client, input, options \\ []) do
    path_ = "/2012-09-25/presets"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  The DeletePipeline operation removes a pipeline.

  You can only delete a pipeline that has never been used or that is not
  currently in use (doesn't contain any active jobs). If the pipeline is
  currently in use, `DeletePipeline` returns an error.
  """
  def delete_pipeline(client, id, input, options \\ []) do
    path_ = "/2012-09-25/pipelines/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  The DeletePreset operation removes a preset that you've added in an AWS
  region.

  <note> You can't delete the default presets that are included with Elastic
  Transcoder.

  </note>
  """
  def delete_preset(client, id, input, options \\ []) do
    path_ = "/2012-09-25/presets/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  The ListJobsByPipeline operation gets a list of the jobs currently in a
  pipeline.

  Elastic Transcoder returns all of the jobs currently in the specified
  pipeline. The response body contains one element for each job that
  satisfies the search criteria.
  """
  def list_jobs_by_pipeline(client, pipeline_id, ascending \\ nil, page_token \\ nil, options \\ []) do
    path_ = "/2012-09-25/jobsByPipeline/#{URI.encode(pipeline_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(page_token) do
      [{"PageToken", page_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(ascending) do
      [{"Ascending", ascending} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  The ListJobsByStatus operation gets a list of jobs that have a specified
  status. The response body contains one element for each job that satisfies
  the search criteria.
  """
  def list_jobs_by_status(client, status, ascending \\ nil, page_token \\ nil, options \\ []) do
    path_ = "/2012-09-25/jobsByStatus/#{URI.encode(status)}"
    headers = []
    query_ = []
    query_ = if !is_nil(page_token) do
      [{"PageToken", page_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(ascending) do
      [{"Ascending", ascending} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  The ListPipelines operation gets a list of the pipelines associated with
  the current AWS account.
  """
  def list_pipelines(client, ascending \\ nil, page_token \\ nil, options \\ []) do
    path_ = "/2012-09-25/pipelines"
    headers = []
    query_ = []
    query_ = if !is_nil(page_token) do
      [{"PageToken", page_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(ascending) do
      [{"Ascending", ascending} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  The ListPresets operation gets a list of the default presets included with
  Elastic Transcoder and the presets that you've added in an AWS region.
  """
  def list_presets(client, ascending \\ nil, page_token \\ nil, options \\ []) do
    path_ = "/2012-09-25/presets"
    headers = []
    query_ = []
    query_ = if !is_nil(page_token) do
      [{"PageToken", page_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(ascending) do
      [{"Ascending", ascending} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  The ReadJob operation returns detailed information about a job.
  """
  def read_job(client, id, options \\ []) do
    path_ = "/2012-09-25/jobs/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  The ReadPipeline operation gets detailed information about a pipeline.
  """
  def read_pipeline(client, id, options \\ []) do
    path_ = "/2012-09-25/pipelines/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  The ReadPreset operation gets detailed information about a preset.
  """
  def read_preset(client, id, options \\ []) do
    path_ = "/2012-09-25/presets/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  The TestRole operation tests the IAM role used to create the pipeline.

  The `TestRole` action lets you determine whether the IAM role you are using
  has sufficient permissions to let Elastic Transcoder perform tasks
  associated with the transcoding process. The action attempts to assume the
  specified IAM role, checks read access to the input and output buckets, and
  tries to send a test notification to Amazon SNS topics that you specify.
  """
  def test_role(client, input, options \\ []) do
    path_ = "/2012-09-25/roleTests"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Use the `UpdatePipeline` operation to update settings for a pipeline.

  <important> When you change pipeline settings, your changes take effect
  immediately. Jobs that you have already submitted and that Elastic
  Transcoder has not started to process are affected in addition to jobs that
  you submit after you change settings.

  </important>
  """
  def update_pipeline(client, id, input, options \\ []) do
    path_ = "/2012-09-25/pipelines/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  With the UpdatePipelineNotifications operation, you can update Amazon
  Simple Notification Service (Amazon SNS) notifications for a pipeline.

  When you update notifications for a pipeline, Elastic Transcoder returns
  the values that you specified in the request.
  """
  def update_pipeline_notifications(client, id, input, options \\ []) do
    path_ = "/2012-09-25/pipelines/#{URI.encode(id)}/notifications"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  The UpdatePipelineStatus operation pauses or reactivates a pipeline, so
  that the pipeline stops or restarts the processing of jobs.

  Changing the pipeline status is useful if you want to cancel one or more
  jobs. You can't cancel jobs after Elastic Transcoder has started processing
  them; if you pause the pipeline to which you submitted the jobs, you have
  more time to get the job IDs for the jobs that you want to cancel, and to
  send a `CancelJob` request.
  """
  def update_pipeline_status(client, id, input, options \\ []) do
    path_ = "/2012-09-25/pipelines/#{URI.encode(id)}/status"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "elastictranscoder"}
    host = build_host("elastictranscoder", client)
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
