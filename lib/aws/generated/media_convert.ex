# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaConvert do
  @moduledoc """
  AWS Elemental MediaConvert
  """

  @doc """
  Associates an AWS Certificate Manager (ACM) Amazon Resource Name (ARN) with AWS
  Elemental MediaConvert.
  """
  def associate_certificate(client, input, options \\ []) do
    path_ = "/2017-08-29/certificates"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Permanently cancel a job.

  Once you have canceled a job, you can't start it again.
  """
  def cancel_job(client, id, input, options \\ []) do
    path_ = "/2017-08-29/jobs/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Create a new transcoding job.

  For information about jobs and job settings, see the User Guide at
  http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
  """
  def create_job(client, input, options \\ []) do
    path_ = "/2017-08-29/jobs"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Create a new job template.

  For information about job templates see the User Guide at
  http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
  """
  def create_job_template(client, input, options \\ []) do
    path_ = "/2017-08-29/jobTemplates"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Create a new preset.

  For information about job templates see the User Guide at
  http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
  """
  def create_preset(client, input, options \\ []) do
    path_ = "/2017-08-29/presets"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Create a new transcoding queue.

  For information about queues, see Working With Queues in the User Guide at
  https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html
  """
  def create_queue(client, input, options \\ []) do
    path_ = "/2017-08-29/queues"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Permanently delete a job template you have created.
  """
  def delete_job_template(client, name, input, options \\ []) do
    path_ = "/2017-08-29/jobTemplates/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Permanently delete a preset you have created.
  """
  def delete_preset(client, name, input, options \\ []) do
    path_ = "/2017-08-29/presets/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Permanently delete a queue you have created.
  """
  def delete_queue(client, name, input, options \\ []) do
    path_ = "/2017-08-29/queues/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Send an request with an empty body to the regional API endpoint to get your
  account API endpoint.
  """
  def describe_endpoints(client, input, options \\ []) do
    path_ = "/2017-08-29/endpoints"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Removes an association between the Amazon Resource Name (ARN) of an AWS
  Certificate Manager (ACM) certificate and an AWS Elemental MediaConvert
  resource.
  """
  def disassociate_certificate(client, arn, input, options \\ []) do
    path_ = "/2017-08-29/certificates/#{URI.encode(arn)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Retrieve the JSON for a specific completed transcoding job.
  """
  def get_job(client, id, options \\ []) do
    path_ = "/2017-08-29/jobs/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieve the JSON for a specific job template.
  """
  def get_job_template(client, name, options \\ []) do
    path_ = "/2017-08-29/jobTemplates/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieve the JSON for a specific preset.
  """
  def get_preset(client, name, options \\ []) do
    path_ = "/2017-08-29/presets/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieve the JSON for a specific queue.
  """
  def get_queue(client, name, options \\ []) do
    path_ = "/2017-08-29/queues/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieve a JSON array of up to twenty of your job templates.

  This will return the templates themselves, not just a list of them. To retrieve
  the next twenty templates, use the nextToken string returned with the array
  """
  def list_job_templates(client, category \\ nil, list_by \\ nil, max_results \\ nil, next_token \\ nil, order \\ nil, options \\ []) do
    path_ = "/2017-08-29/jobTemplates"
    headers = []
    query_ = []
    query_ = if !is_nil(order) do
      [{"order", order} | query_]
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
    query_ = if !is_nil(list_by) do
      [{"listBy", list_by} | query_]
    else
      query_
    end
    query_ = if !is_nil(category) do
      [{"category", category} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieve a JSON array of up to twenty of your most recently created jobs.

  This array includes in-process, completed, and errored jobs. This will return
  the jobs themselves, not just a list of the jobs. To retrieve the twenty next
  most recent jobs, use the nextToken string returned with the array.
  """
  def list_jobs(client, max_results \\ nil, next_token \\ nil, order \\ nil, queue \\ nil, status \\ nil, options \\ []) do
    path_ = "/2017-08-29/jobs"
    headers = []
    query_ = []
    query_ = if !is_nil(status) do
      [{"status", status} | query_]
    else
      query_
    end
    query_ = if !is_nil(queue) do
      [{"queue", queue} | query_]
    else
      query_
    end
    query_ = if !is_nil(order) do
      [{"order", order} | query_]
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
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieve a JSON array of up to twenty of your presets.

  This will return the presets themselves, not just a list of them. To retrieve
  the next twenty presets, use the nextToken string returned with the array.
  """
  def list_presets(client, category \\ nil, list_by \\ nil, max_results \\ nil, next_token \\ nil, order \\ nil, options \\ []) do
    path_ = "/2017-08-29/presets"
    headers = []
    query_ = []
    query_ = if !is_nil(order) do
      [{"order", order} | query_]
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
    query_ = if !is_nil(list_by) do
      [{"listBy", list_by} | query_]
    else
      query_
    end
    query_ = if !is_nil(category) do
      [{"category", category} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieve a JSON array of up to twenty of your queues.

  This will return the queues themselves, not just a list of them. To retrieve the
  next twenty queues, use the nextToken string returned with the array.
  """
  def list_queues(client, list_by \\ nil, max_results \\ nil, next_token \\ nil, order \\ nil, options \\ []) do
    path_ = "/2017-08-29/queues"
    headers = []
    query_ = []
    query_ = if !is_nil(order) do
      [{"order", order} | query_]
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
    query_ = if !is_nil(list_by) do
      [{"listBy", list_by} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieve the tags for a MediaConvert resource.
  """
  def list_tags_for_resource(client, arn, options \\ []) do
    path_ = "/2017-08-29/tags/#{URI.encode(arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Add tags to a MediaConvert queue, preset, or job template.

  For information about tagging, see the User Guide at
  https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
  """
  def tag_resource(client, input, options \\ []) do
    path_ = "/2017-08-29/tags"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Remove tags from a MediaConvert queue, preset, or job template.

  For information about tagging, see the User Guide at
  https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
  """
  def untag_resource(client, arn, input, options \\ []) do
    path_ = "/2017-08-29/tags/#{URI.encode(arn)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Modify one of your existing job templates.
  """
  def update_job_template(client, name, input, options \\ []) do
    path_ = "/2017-08-29/jobTemplates/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Modify one of your existing presets.
  """
  def update_preset(client, name, input, options \\ []) do
    path_ = "/2017-08-29/presets/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Modify one of your existing queues.
  """
  def update_queue(client, name, input, options \\ []) do
    path_ = "/2017-08-29/queues/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "mediaconvert"}
    host = build_host("mediaconvert", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

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
