# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Fis do
  @moduledoc """
  AWS Fault Injection Simulator is a managed service that enables you to perform
  fault injection experiments on your AWS workloads.

  For more information, see the [AWS Fault Injection Simulator User Guide](https://docs.aws.amazon.com/fis/latest/userguide/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-12-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "fis",
      global?: false,
      protocol: "rest-json",
      service_id: "fis",
      signature_version: "v4",
      signing_name: "fis",
      target_prefix: nil
    }
  end

  @doc """
  Creates an experiment template.

  To create a template, specify the following information:

    * **Targets**: A target can be a specific resource in your AWS
  environment, or one or more resources that match criteria that you specify, for
  example, resources that have specific tags.

    * **Actions**: The actions to carry out on the target. You can
  specify multiple actions, the duration of each action, and when to start each
  action during an experiment.

    * **Stop conditions**: If a stop condition is triggered while an
  experiment is running, the experiment is automatically stopped. You can define a
  stop condition as a CloudWatch alarm.

  For more information, see the [AWS Fault Injection Simulator User Guide](https://docs.aws.amazon.com/fis/latest/userguide/).
  """
  def create_experiment_template(%Client{} = client, input, options \\ []) do
    url_path = "/experimentTemplates"
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
  Deletes the specified experiment template.
  """
  def delete_experiment_template(%Client{} = client, id, input, options \\ []) do
    url_path = "/experimentTemplates/#{AWS.Util.encode_uri(id)}"
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
      200
    )
  end

  @doc """
  Gets information about the specified AWS FIS action.
  """
  def get_action(%Client{} = client, id, options \\ []) do
    url_path = "/actions/#{AWS.Util.encode_uri(id)}"
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
  Gets information about the specified experiment.
  """
  def get_experiment(%Client{} = client, id, options \\ []) do
    url_path = "/experiments/#{AWS.Util.encode_uri(id)}"
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
  Gets information about the specified experiment template.
  """
  def get_experiment_template(%Client{} = client, id, options \\ []) do
    url_path = "/experimentTemplates/#{AWS.Util.encode_uri(id)}"
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
  Lists the available AWS FIS actions.
  """
  def list_actions(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/actions"
    headers = []
    query_params = []

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
  Lists your experiment templates.
  """
  def list_experiment_templates(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/experimentTemplates"
    headers = []
    query_params = []

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
  Lists your experiments.
  """
  def list_experiments(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/experiments"
    headers = []
    query_params = []

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
  Lists the tags for the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Starts running an experiment from the specified experiment template.
  """
  def start_experiment(%Client{} = client, input, options \\ []) do
    url_path = "/experiments"
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
  Stops the specified experiment.
  """
  def stop_experiment(%Client{} = client, id, input, options \\ []) do
    url_path = "/experiments/#{AWS.Util.encode_uri(id)}"
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
      200
    )
  end

  @doc """
  Applies the specified tags to the specified resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes the specified tags from the specified resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified experiment template.
  """
  def update_experiment_template(%Client{} = client, id, input, options \\ []) do
    url_path = "/experimentTemplates/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
