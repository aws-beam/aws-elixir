# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ElasticTranscoder do
  @moduledoc """
  AWS Elastic Transcoder Service

  The AWS Elastic Transcoder Service.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2012-09-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "elastictranscoder",
      global?: false,
      protocol: "rest-json",
      service_id: "Elastic Transcoder",
      signature_version: "v4",
      signing_name: "elastictranscoder",
      target_prefix: nil
    }
  end

  @doc """
  The CancelJob operation cancels an unfinished job.

  You can only cancel a job that has a status of `Submitted`. To prevent a
  pipeline from starting to process a job while you're getting the job identifier,
  use `UpdatePipelineStatus` to temporarily pause the pipeline.
  """
  def cancel_job(%Client{} = client, id, input, options \\ []) do
    url_path = "/2012-09-25/jobs/#{URI.encode(id)}"
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
      202
    )
  end

  @doc """
  When you create a job, Elastic Transcoder returns JSON data that includes the
  values that you specified plus information about the job that is created.

  If you have specified more than one output for your jobs (for example, one
  output for the Kindle Fire and another output for the Apple iPhone 4s), you
  currently must use the Elastic Transcoder API to list the jobs (as opposed to
  the AWS Console).
  """
  def create_job(%Client{} = client, input, options \\ []) do
    url_path = "/2012-09-25/jobs"
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
  The CreatePipeline operation creates a pipeline with settings that you specify.
  """
  def create_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/2012-09-25/pipelines"
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
  The CreatePreset operation creates a preset with settings that you specify.

  Elastic Transcoder checks the CreatePreset settings to ensure that they meet
  Elastic Transcoder requirements and to determine whether they comply with H.264
  standards. If your settings are not valid for Elastic Transcoder, Elastic
  Transcoder returns an HTTP 400 response (`ValidationException`) and does not
  create the preset. If the settings are valid for Elastic Transcoder but aren't
  strictly compliant with the H.264 standard, Elastic Transcoder creates the
  preset and returns a warning message in the response. This helps you determine
  whether your settings comply with the H.264 standard while giving you greater
  flexibility with respect to the video that Elastic Transcoder produces.

  Elastic Transcoder uses the H.264 video-compression format. For more
  information, see the International Telecommunication Union publication
  *Recommendation ITU-T H.264: Advanced video coding for generic audiovisual
  services*.
  """
  def create_preset(%Client{} = client, input, options \\ []) do
    url_path = "/2012-09-25/presets"
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
  The DeletePipeline operation removes a pipeline.

  You can only delete a pipeline that has never been used or that is not currently
  in use (doesn't contain any active jobs). If the pipeline is currently in use,
  `DeletePipeline` returns an error.
  """
  def delete_pipeline(%Client{} = client, id, input, options \\ []) do
    url_path = "/2012-09-25/pipelines/#{URI.encode(id)}"
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
      202
    )
  end

  @doc """
  The DeletePreset operation removes a preset that you've added in an AWS region.

  You can't delete the default presets that are included with Elastic Transcoder.
  """
  def delete_preset(%Client{} = client, id, input, options \\ []) do
    url_path = "/2012-09-25/presets/#{URI.encode(id)}"
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
      202
    )
  end

  @doc """
  The ListJobsByPipeline operation gets a list of the jobs currently in a
  pipeline.

  Elastic Transcoder returns all of the jobs currently in the specified pipeline.
  The response body contains one element for each job that satisfies the search
  criteria.
  """
  def list_jobs_by_pipeline(
        %Client{} = client,
        pipeline_id,
        ascending \\ nil,
        page_token \\ nil,
        options \\ []
      ) do
    url_path = "/2012-09-25/jobsByPipeline/#{URI.encode(pipeline_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_token) do
        [{"PageToken", page_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending) do
        [{"Ascending", ascending} | query_params]
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
  The ListJobsByStatus operation gets a list of jobs that have a specified status.

  The response body contains one element for each job that satisfies the search
  criteria.
  """
  def list_jobs_by_status(
        %Client{} = client,
        status,
        ascending \\ nil,
        page_token \\ nil,
        options \\ []
      ) do
    url_path = "/2012-09-25/jobsByStatus/#{URI.encode(status)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_token) do
        [{"PageToken", page_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending) do
        [{"Ascending", ascending} | query_params]
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
  The ListPipelines operation gets a list of the pipelines associated with the
  current AWS account.
  """
  def list_pipelines(%Client{} = client, ascending \\ nil, page_token \\ nil, options \\ []) do
    url_path = "/2012-09-25/pipelines"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_token) do
        [{"PageToken", page_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending) do
        [{"Ascending", ascending} | query_params]
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
  The ListPresets operation gets a list of the default presets included with
  Elastic Transcoder and the presets that you've added in an AWS region.
  """
  def list_presets(%Client{} = client, ascending \\ nil, page_token \\ nil, options \\ []) do
    url_path = "/2012-09-25/presets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_token) do
        [{"PageToken", page_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending) do
        [{"Ascending", ascending} | query_params]
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
  The ReadJob operation returns detailed information about a job.
  """
  def read_job(%Client{} = client, id, options \\ []) do
    url_path = "/2012-09-25/jobs/#{URI.encode(id)}"
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
  The ReadPipeline operation gets detailed information about a pipeline.
  """
  def read_pipeline(%Client{} = client, id, options \\ []) do
    url_path = "/2012-09-25/pipelines/#{URI.encode(id)}"
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
  The ReadPreset operation gets detailed information about a preset.
  """
  def read_preset(%Client{} = client, id, options \\ []) do
    url_path = "/2012-09-25/presets/#{URI.encode(id)}"
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
  The TestRole operation tests the IAM role used to create the pipeline.

  The `TestRole` action lets you determine whether the IAM role you are using has
  sufficient permissions to let Elastic Transcoder perform tasks associated with
  the transcoding process. The action attempts to assume the specified IAM role,
  checks read access to the input and output buckets, and tries to send a test
  notification to Amazon SNS topics that you specify.
  """
  def test_role(%Client{} = client, input, options \\ []) do
    url_path = "/2012-09-25/roleTests"
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
      200
    )
  end

  @doc """
  Use the `UpdatePipeline` operation to update settings for a pipeline.

  When you change pipeline settings, your changes take effect immediately. Jobs
  that you have already submitted and that Elastic Transcoder has not started to
  process are affected in addition to jobs that you submit after you change
  settings.
  """
  def update_pipeline(%Client{} = client, id, input, options \\ []) do
    url_path = "/2012-09-25/pipelines/#{URI.encode(id)}"
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
      200
    )
  end

  @doc """
  With the UpdatePipelineNotifications operation, you can update Amazon Simple
  Notification Service (Amazon SNS) notifications for a pipeline.

  When you update notifications for a pipeline, Elastic Transcoder returns the
  values that you specified in the request.
  """
  def update_pipeline_notifications(%Client{} = client, id, input, options \\ []) do
    url_path = "/2012-09-25/pipelines/#{URI.encode(id)}/notifications"
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
  The UpdatePipelineStatus operation pauses or reactivates a pipeline, so that the
  pipeline stops or restarts the processing of jobs.

  Changing the pipeline status is useful if you want to cancel one or more jobs.
  You can't cancel jobs after Elastic Transcoder has started processing them; if
  you pause the pipeline to which you submitted the jobs, you have more time to
  get the job IDs for the jobs that you want to cancel, and to send a `CancelJob`
  request.
  """
  def update_pipeline_status(%Client{} = client, id, input, options \\ []) do
    url_path = "/2012-09-25/pipelines/#{URI.encode(id)}/status"
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
end