# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Fis do
  @moduledoc """
  Fault Injection Simulator is a managed service that enables you to perform fault
  injection
  experiments on your Amazon Web Services workloads.

  For more information, see the [Fault Injection Simulator User Guide](https://docs.aws.amazon.com/fis/latest/userguide/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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

  An experiment template includes the following components:

    *

  **Targets**: A target can be a specific resource in
  your Amazon Web Services environment, or one or more resources that match
  criteria that you
  specify, for example, resources that have specific tags.

    *

  **Actions**: The actions to carry out on the
  target. You can specify multiple actions, the duration of each action, and when
  to start each action during an experiment.

    *

  **Stop conditions**: If a stop condition is
  triggered while an experiment is running, the experiment is automatically
  stopped. You can define a stop condition as a CloudWatch alarm.

  For more information, see [experiment templates](https://docs.aws.amazon.com/fis/latest/userguide/experiment-templates.html)
  in the *Fault Injection Simulator User Guide*.
  """
  def create_experiment_template(%Client{} = client, input, options \\ []) do
    url_path = "/experimentTemplates"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Creates a target account configuration for the experiment template.

  A target account configuration
  is required when `accountTargeting` of `experimentOptions` is set to
  `multi-account`.
  For more information, see [experiment options](https://docs.aws.amazon.com/fis/latest/userguide/experiment-options.html)
  in the *Fault Injection Simulator User Guide*.
  """
  def create_target_account_configuration(
        %Client{} = client,
        account_id,
        experiment_template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/experimentTemplates/#{AWS.Util.encode_uri(experiment_template_id)}/targetAccountConfigurations/#{AWS.Util.encode_uri(account_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Deletes the specified target account configuration of the experiment template.
  """
  def delete_target_account_configuration(
        %Client{} = client,
        account_id,
        experiment_template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/experimentTemplates/#{AWS.Util.encode_uri(experiment_template_id)}/targetAccountConfigurations/#{AWS.Util.encode_uri(account_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Gets information about the specified FIS action.
  """
  def get_action(%Client{} = client, id, options \\ []) do
    url_path = "/actions/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified experiment.
  """
  def get_experiment(%Client{} = client, id, options \\ []) do
    url_path = "/experiments/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified target account configuration of the
  experiment.
  """
  def get_experiment_target_account_configuration(
        %Client{} = client,
        account_id,
        experiment_id,
        options \\ []
      ) do
    url_path =
      "/experiments/#{AWS.Util.encode_uri(experiment_id)}/targetAccountConfigurations/#{AWS.Util.encode_uri(account_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified experiment template.
  """
  def get_experiment_template(%Client{} = client, id, options \\ []) do
    url_path = "/experimentTemplates/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified target account configuration of the
  experiment template.
  """
  def get_target_account_configuration(
        %Client{} = client,
        account_id,
        experiment_template_id,
        options \\ []
      ) do
    url_path =
      "/experimentTemplates/#{AWS.Util.encode_uri(experiment_template_id)}/targetAccountConfigurations/#{AWS.Util.encode_uri(account_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified resource type.
  """
  def get_target_resource_type(%Client{} = client, resource_type, options \\ []) do
    url_path = "/targetResourceTypes/#{AWS.Util.encode_uri(resource_type)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the available FIS actions.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the resolved targets information of the specified experiment.
  """
  def list_experiment_resolved_targets(
        %Client{} = client,
        experiment_id,
        max_results \\ nil,
        next_token \\ nil,
        target_name \\ nil,
        options \\ []
      ) do
    url_path = "/experiments/#{AWS.Util.encode_uri(experiment_id)}/resolvedTargets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target_name) do
        [{"targetName", target_name} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the target account configurations of the specified experiment.
  """
  def list_experiment_target_account_configurations(
        %Client{} = client,
        experiment_id,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/experiments/#{AWS.Util.encode_uri(experiment_id)}/targetAccountConfigurations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the target account configurations of the specified experiment template.
  """
  def list_target_account_configurations(
        %Client{} = client,
        experiment_template_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/experimentTemplates/#{AWS.Util.encode_uri(experiment_template_id)}/targetAccountConfigurations"

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the target resource types.
  """
  def list_target_resource_types(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/targetResourceTypes"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts running an experiment from the specified experiment template.
  """
  def start_experiment(%Client{} = client, input, options \\ []) do
    url_path = "/experiments"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the target account configuration for the specified experiment template.
  """
  def update_target_account_configuration(
        %Client{} = client,
        account_id,
        experiment_template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/experimentTemplates/#{AWS.Util.encode_uri(experiment_template_id)}/targetAccountConfigurations/#{AWS.Util.encode_uri(account_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
