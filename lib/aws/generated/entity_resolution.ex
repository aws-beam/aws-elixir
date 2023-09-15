# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EntityResolution do
  @moduledoc """
  Welcome to the *Entity Resolution API Reference*.

  Entity Resolution is an Amazon Web Services service that provides pre-configured
  entity resolution capabilities that enable developers and analysts at
  advertising and marketing companies to build an accurate and complete view of
  their consumers.

  With Entity Resolution, you can match source records containing consumer
  identifiers, such as name, email address, and phone number. This is true even
  when these records have incomplete or conflicting identifiers. For example,
  Entity Resolution can effectively match a source record from a customer
  relationship management (CRM) system with a source record from a marketing
  system containing campaign information.

  To learn more about Entity Resolution concepts, procedures, and best practices,
  see the [Entity Resolution User Guide](https://docs.aws.amazon.com/entityresolution/latest/userguide/what-is-service.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "entityresolution",
      global?: false,
      protocol: "rest-json",
      service_id: "EntityResolution",
      signature_version: "v4",
      signing_name: "entityresolution",
      target_prefix: nil
    }
  end

  @doc """
  Creates a `MatchingWorkflow` object which stores the configuration of the data
  processing job to be run.

  It is important to note that there should not be a pre-existing
  `MatchingWorkflow` with the same name. To modify an existing workflow, utilize
  the `UpdateMatchingWorkflow` API.
  """
  def create_matching_workflow(%Client{} = client, input, options \\ []) do
    url_path = "/matchingworkflows"
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
  Creates a schema mapping, which defines the schema of the input customer records
  table.

  The `SchemaMapping` also provides Entity Resolution with some metadata about the
  table, such as the attribute types of the columns and which columns to match on.
  """
  def create_schema_mapping(%Client{} = client, input, options \\ []) do
    url_path = "/schemas"
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
  Deletes the `MatchingWorkflow` with a given name.

  This operation will succeed even if a workflow with the given name does not
  exist.
  """
  def delete_matching_workflow(%Client{} = client, workflow_name, input, options \\ []) do
    url_path = "/matchingworkflows/#{AWS.Util.encode_uri(workflow_name)}"
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
  Deletes the `SchemaMapping` with a given name.

  This operation will succeed even if a schema with the given name does not exist.
  This operation will fail if there is a `DataIntegrationWorkflow` object that
  references the `SchemaMapping` in the workflow's `InputSourceConfig`.
  """
  def delete_schema_mapping(%Client{} = client, schema_name, input, options \\ []) do
    url_path = "/schemas/#{AWS.Util.encode_uri(schema_name)}"
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
  Returns the corresponding Match ID of a customer record if the record has been
  processed.
  """
  def get_match_id(%Client{} = client, workflow_name, input, options \\ []) do
    url_path = "/matchingworkflows/#{AWS.Util.encode_uri(workflow_name)}/matches"
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
  Gets the status, metrics, and errors (if there are any) that are associated with
  a job.
  """
  def get_matching_job(%Client{} = client, job_id, workflow_name, options \\ []) do
    url_path =
      "/matchingworkflows/#{AWS.Util.encode_uri(workflow_name)}/jobs/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the `MatchingWorkflow` with a given name, if it exists.
  """
  def get_matching_workflow(%Client{} = client, workflow_name, options \\ []) do
    url_path = "/matchingworkflows/#{AWS.Util.encode_uri(workflow_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the SchemaMapping of a given name.
  """
  def get_schema_mapping(%Client{} = client, schema_name, options \\ []) do
    url_path = "/schemas/#{AWS.Util.encode_uri(schema_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all jobs for a given workflow.
  """
  def list_matching_jobs(
        %Client{} = client,
        workflow_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/matchingworkflows/#{AWS.Util.encode_uri(workflow_name)}/jobs"
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
  Returns a list of all the `MatchingWorkflows` that have been created for an
  Amazon Web Services account.
  """
  def list_matching_workflows(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/matchingworkflows"
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
  Returns a list of all the `SchemaMappings` that have been created for an Amazon
  Web Services account.
  """
  def list_schema_mappings(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/schemas"
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
  Displays the tags associated with an Entity Resolution resource.

  In Entity Resolution, `SchemaMapping`, and `MatchingWorkflow` can be tagged.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts the `MatchingJob` of a workflow.

  The workflow must have previously been created using the
  `CreateMatchingWorkflow` endpoint.
  """
  def start_matching_job(%Client{} = client, workflow_name, input, options \\ []) do
    url_path = "/matchingworkflows/#{AWS.Util.encode_uri(workflow_name)}/jobs"
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
  Assigns one or more tags (key-value pairs) to the specified Entity Resolution
  resource.

  Tags can help you organize and categorize your resources. You can also use them
  to scope user permissions by granting a user permission to access or change only
  resources with certain tag values. In Entity Resolution, `SchemaMapping` and
  `MatchingWorkflow` can be tagged. Tags don't have any semantic meaning to Amazon
  Web Services and are interpreted strictly as strings of characters. You can use
  the `TagResource` action with a resource that already has tags. If you specify a
  new tag key, this tag is appended to the list of tags associated with the
  resource. If you specify a tag key that is already associated with the resource,
  the new tag value that you specify replaces the previous value for that tag.
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
  Removes one or more tags from the specified Entity Resolution resource.

  In Entity Resolution, `SchemaMapping`, and `MatchingWorkflow` can be tagged.
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
  Updates an existing `MatchingWorkflow`.

  This method is identical to `CreateMatchingWorkflow`, except it uses an HTTP
  `PUT` request instead of a `POST` request, and the `MatchingWorkflow` must
  already exist for the method to succeed.
  """
  def update_matching_workflow(%Client{} = client, workflow_name, input, options \\ []) do
    url_path = "/matchingworkflows/#{AWS.Util.encode_uri(workflow_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
