# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaConvert do
  @moduledoc """
  AWS Elemental MediaConvert
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-08-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mediaconvert",
      global?: false,
      protocol: "rest-json",
      service_id: "MediaConvert",
      signature_version: "v4",
      signing_name: "mediaconvert",
      target_prefix: nil
    }
  end

  @doc """
  Associates an AWS Certificate Manager (ACM) Amazon Resource Name (ARN) with AWS
  Elemental MediaConvert.
  """
  def associate_certificate(%Client{} = client, input, options \\ []) do
    url_path = "/2017-08-29/certificates"
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
  Permanently cancel a job.

  Once you have canceled a job, you can't start it again.
  """
  def cancel_job(%Client{} = client, id, input, options \\ []) do
    url_path = "/2017-08-29/jobs/#{AWS.Util.encode_uri(id)}"
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
  Create a new transcoding job.

  For information about jobs and job settings, see the User Guide at
  http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
  """
  def create_job(%Client{} = client, input, options \\ []) do
    url_path = "/2017-08-29/jobs"
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
  Create a new job template.

  For information about job templates see the User Guide at
  http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
  """
  def create_job_template(%Client{} = client, input, options \\ []) do
    url_path = "/2017-08-29/jobTemplates"
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
  Create a new preset.

  For information about job templates see the User Guide at
  http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
  """
  def create_preset(%Client{} = client, input, options \\ []) do
    url_path = "/2017-08-29/presets"
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
  Create a new transcoding queue.

  For information about queues, see Working With Queues in the User Guide at
  https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html
  """
  def create_queue(%Client{} = client, input, options \\ []) do
    url_path = "/2017-08-29/queues"
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
  Permanently delete a job template you have created.
  """
  def delete_job_template(%Client{} = client, name, input, options \\ []) do
    url_path = "/2017-08-29/jobTemplates/#{AWS.Util.encode_uri(name)}"
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
  Permanently delete a preset you have created.
  """
  def delete_preset(%Client{} = client, name, input, options \\ []) do
    url_path = "/2017-08-29/presets/#{AWS.Util.encode_uri(name)}"
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
  Permanently delete a queue you have created.
  """
  def delete_queue(%Client{} = client, name, input, options \\ []) do
    url_path = "/2017-08-29/queues/#{AWS.Util.encode_uri(name)}"
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
  Send an request with an empty body to the regional API endpoint to get your
  account API endpoint.
  """
  def describe_endpoints(%Client{} = client, input, options \\ []) do
    url_path = "/2017-08-29/endpoints"
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
  Removes an association between the Amazon Resource Name (ARN) of an AWS
  Certificate Manager (ACM) certificate and an AWS Elemental MediaConvert
  resource.
  """
  def disassociate_certificate(%Client{} = client, arn, input, options \\ []) do
    url_path = "/2017-08-29/certificates/#{AWS.Util.encode_uri(arn)}"
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
  Retrieve the JSON for a specific completed transcoding job.
  """
  def get_job(%Client{} = client, id, options \\ []) do
    url_path = "/2017-08-29/jobs/#{AWS.Util.encode_uri(id)}"
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
      200
    )
  end

  @doc """
  Retrieve the JSON for a specific job template.
  """
  def get_job_template(%Client{} = client, name, options \\ []) do
    url_path = "/2017-08-29/jobTemplates/#{AWS.Util.encode_uri(name)}"
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
      200
    )
  end

  @doc """
  Retrieve the JSON for a specific preset.
  """
  def get_preset(%Client{} = client, name, options \\ []) do
    url_path = "/2017-08-29/presets/#{AWS.Util.encode_uri(name)}"
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
      200
    )
  end

  @doc """
  Retrieve the JSON for a specific queue.
  """
  def get_queue(%Client{} = client, name, options \\ []) do
    url_path = "/2017-08-29/queues/#{AWS.Util.encode_uri(name)}"
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
      200
    )
  end

  @doc """
  Retrieve a JSON array of up to twenty of your job templates.

  This will return the templates themselves, not just a list of them. To retrieve
  the next twenty templates, use the nextToken string returned with the array
  """
  def list_job_templates(
        %Client{} = client,
        category \\ nil,
        list_by \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        order \\ nil,
        options \\ []
      ) do
    url_path = "/2017-08-29/jobTemplates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(order) do
        [{"order", order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(list_by) do
        [{"listBy", list_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(category) do
        [{"category", category} | query_params]
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
  Retrieve a JSON array of up to twenty of your most recently created jobs.

  This array includes in-process, completed, and errored jobs. This will return
  the jobs themselves, not just a list of the jobs. To retrieve the twenty next
  most recent jobs, use the nextToken string returned with the array.
  """
  def list_jobs(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        order \\ nil,
        queue \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/2017-08-29/jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(queue) do
        [{"queue", queue} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(order) do
        [{"order", order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
  Retrieve a JSON array of up to twenty of your presets.

  This will return the presets themselves, not just a list of them. To retrieve
  the next twenty presets, use the nextToken string returned with the array.
  """
  def list_presets(
        %Client{} = client,
        category \\ nil,
        list_by \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        order \\ nil,
        options \\ []
      ) do
    url_path = "/2017-08-29/presets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(order) do
        [{"order", order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(list_by) do
        [{"listBy", list_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(category) do
        [{"category", category} | query_params]
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
  Retrieve a JSON array of up to twenty of your queues.

  This will return the queues themselves, not just a list of them. To retrieve the
  next twenty queues, use the nextToken string returned with the array.
  """
  def list_queues(
        %Client{} = client,
        list_by \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        order \\ nil,
        options \\ []
      ) do
    url_path = "/2017-08-29/queues"
    headers = []
    query_params = []

    query_params =
      if !is_nil(order) do
        [{"order", order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(list_by) do
        [{"listBy", list_by} | query_params]
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
  Retrieve the tags for a MediaConvert resource.
  """
  def list_tags_for_resource(%Client{} = client, arn, options \\ []) do
    url_path = "/2017-08-29/tags/#{AWS.Util.encode_uri(arn)}"
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
      200
    )
  end

  @doc """
  Add tags to a MediaConvert queue, preset, or job template.

  For information about tagging, see the User Guide at
  https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/2017-08-29/tags"
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
  Remove tags from a MediaConvert queue, preset, or job template.

  For information about tagging, see the User Guide at
  https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
  """
  def untag_resource(%Client{} = client, arn, input, options \\ []) do
    url_path = "/2017-08-29/tags/#{AWS.Util.encode_uri(arn)}"
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
  Modify one of your existing job templates.
  """
  def update_job_template(%Client{} = client, name, input, options \\ []) do
    url_path = "/2017-08-29/jobTemplates/#{AWS.Util.encode_uri(name)}"
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
  Modify one of your existing presets.
  """
  def update_preset(%Client{} = client, name, input, options \\ []) do
    url_path = "/2017-08-29/presets/#{AWS.Util.encode_uri(name)}"
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
  Modify one of your existing queues.
  """
  def update_queue(%Client{} = client, name, input, options \\ []) do
    url_path = "/2017-08-29/queues/#{AWS.Util.encode_uri(name)}"
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
end
