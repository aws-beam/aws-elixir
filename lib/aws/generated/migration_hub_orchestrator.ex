# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MigrationHubOrchestrator do
  @moduledoc """
  This API reference provides descriptions, syntax, and other details about each
  of the actions and data types for AWS Migration Hub Orchestrator.

  The topic for each action shows the API request parameters and responses.
  Alternatively, you can use one of the AWS SDKs to access an API that is tailored
  to the programming language or platform that you're using.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2021-08-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "migrationhub-orchestrator",
      global?: false,
      protocol: "rest-json",
      service_id: "MigrationHubOrchestrator",
      signature_version: "v4",
      signing_name: "migrationhub-orchestrator",
      target_prefix: nil
    }
  end

  @doc """
  Creates a migration workflow template.
  """
  def create_template(%Client{} = client, input, options \\ []) do
    url_path = "/template"
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
  Create a workflow to orchestrate your migrations.
  """
  def create_workflow(%Client{} = client, input, options \\ []) do
    url_path = "/migrationworkflow/"
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
  Create a step in the migration workflow.
  """
  def create_workflow_step(%Client{} = client, input, options \\ []) do
    url_path = "/workflowstep"
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
  Create a step group in a migration workflow.
  """
  def create_workflow_step_group(%Client{} = client, input, options \\ []) do
    url_path = "/workflowstepgroups"
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
  Deletes a migration workflow template.
  """
  def delete_template(%Client{} = client, id, input, options \\ []) do
    url_path = "/template/#{AWS.Util.encode_uri(id)}"
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
  Delete a migration workflow.

  You must pause a running workflow in Migration Hub Orchestrator console to
  delete it.
  """
  def delete_workflow(%Client{} = client, id, input, options \\ []) do
    url_path = "/migrationworkflow/#{AWS.Util.encode_uri(id)}"
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
      202
    )
  end

  @doc """
  Delete a step in a migration workflow.

  Pause the workflow to delete a running step.
  """
  def delete_workflow_step(%Client{} = client, id, input, options \\ []) do
    url_path = "/workflowstep/#{AWS.Util.encode_uri(id)}"
    headers = []

    {query_params, input} =
      [
        {"stepGroupId", "stepGroupId"},
        {"workflowId", "workflowId"}
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
  Delete a step group in a migration workflow.
  """
  def delete_workflow_step_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/workflowstepgroup/#{AWS.Util.encode_uri(id)}"
    headers = []

    {query_params, input} =
      [
        {"workflowId", "workflowId"}
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
      202
    )
  end

  @doc """
  Get the template you want to use for creating a migration workflow.
  """
  def get_template(%Client{} = client, id, options \\ []) do
    url_path = "/migrationworkflowtemplate/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a specific step in a template.
  """
  def get_template_step(%Client{} = client, id, step_group_id, template_id, options \\ []) do
    url_path = "/templatestep/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(template_id) do
        [{"templateId", template_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(step_group_id) do
        [{"stepGroupId", step_group_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a step group in a template.
  """
  def get_template_step_group(%Client{} = client, id, template_id, options \\ []) do
    url_path =
      "/templates/#{AWS.Util.encode_uri(template_id)}/stepgroups/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get migration workflow.
  """
  def get_workflow(%Client{} = client, id, options \\ []) do
    url_path = "/migrationworkflow/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a step in the migration workflow.
  """
  def get_workflow_step(%Client{} = client, id, step_group_id, workflow_id, options \\ []) do
    url_path = "/workflowstep/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workflow_id) do
        [{"workflowId", workflow_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(step_group_id) do
        [{"stepGroupId", step_group_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the step group of a migration workflow.
  """
  def get_workflow_step_group(%Client{} = client, id, workflow_id, options \\ []) do
    url_path = "/workflowstepgroup/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workflow_id) do
        [{"workflowId", workflow_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List AWS Migration Hub Orchestrator plugins.
  """
  def list_plugins(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/plugins"
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
  List the tags added to a resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the step groups in a template.
  """
  def list_template_step_groups(
        %Client{} = client,
        template_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/templatestepgroups/#{AWS.Util.encode_uri(template_id)}"
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
  List the steps in a template.
  """
  def list_template_steps(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        step_group_id,
        template_id,
        options \\ []
      ) do
    url_path = "/templatesteps"
    headers = []
    query_params = []

    query_params =
      if !is_nil(template_id) do
        [{"templateId", template_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(step_group_id) do
        [{"stepGroupId", step_group_id} | query_params]
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
  List the templates available in Migration Hub Orchestrator to create a migration
  workflow.
  """
  def list_templates(
        %Client{} = client,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/migrationworkflowtemplates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
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
  List the step groups in a migration workflow.
  """
  def list_workflow_step_groups(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        workflow_id,
        options \\ []
      ) do
    url_path = "/workflowstepgroups"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workflow_id) do
        [{"workflowId", workflow_id} | query_params]
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
  List the steps in a workflow.
  """
  def list_workflow_steps(
        %Client{} = client,
        step_group_id,
        workflow_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/workflow/#{AWS.Util.encode_uri(workflow_id)}/workflowstepgroups/#{AWS.Util.encode_uri(step_group_id)}/workflowsteps"

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
  List the migration workflows.
  """
  def list_workflows(
        %Client{} = client,
        ads_application_configuration_name \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        status \\ nil,
        template_id \\ nil,
        options \\ []
      ) do
    url_path = "/migrationworkflows"
    headers = []
    query_params = []

    query_params =
      if !is_nil(template_id) do
        [{"templateId", template_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
      if !is_nil(name) do
        [{"name", name} | query_params]
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
      if !is_nil(ads_application_configuration_name) do
        [{"adsApplicationConfigurationName", ads_application_configuration_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retry a failed step in a migration workflow.
  """
  def retry_workflow_step(%Client{} = client, id, input, options \\ []) do
    url_path = "/retryworkflowstep/#{AWS.Util.encode_uri(id)}"
    headers = []

    {query_params, input} =
      [
        {"stepGroupId", "stepGroupId"},
        {"workflowId", "workflowId"}
      ]
      |> Request.build_params(input)

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
  Start a migration workflow.
  """
  def start_workflow(%Client{} = client, id, input, options \\ []) do
    url_path = "/migrationworkflow/#{AWS.Util.encode_uri(id)}/start"
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
  Stop an ongoing migration workflow.
  """
  def stop_workflow(%Client{} = client, id, input, options \\ []) do
    url_path = "/migrationworkflow/#{AWS.Util.encode_uri(id)}/stop"
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
  Tag a resource by specifying its Amazon Resource Name (ARN).
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
  Deletes the tags for a resource.
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
  Updates a migration workflow template.
  """
  def update_template(%Client{} = client, id, input, options \\ []) do
    url_path = "/template/#{AWS.Util.encode_uri(id)}"
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
  Update a migration workflow.
  """
  def update_workflow(%Client{} = client, id, input, options \\ []) do
    url_path = "/migrationworkflow/#{AWS.Util.encode_uri(id)}"
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
  Update a step in a migration workflow.
  """
  def update_workflow_step(%Client{} = client, id, input, options \\ []) do
    url_path = "/workflowstep/#{AWS.Util.encode_uri(id)}"
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
  Update the step group in a migration workflow.
  """
  def update_workflow_step_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/workflowstepgroup/#{AWS.Util.encode_uri(id)}"
    headers = []

    {query_params, input} =
      [
        {"workflowId", "workflowId"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end
end
