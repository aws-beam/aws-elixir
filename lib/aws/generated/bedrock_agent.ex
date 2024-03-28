# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BedrockAgent do
  @moduledoc """
  Describes the API operations for creating and managing Amazon Bedrock agents.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2023-06-05",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "bedrock-agent",
      global?: false,
      protocol: "rest-json",
      service_id: "Bedrock Agent",
      signature_version: "v4",
      signing_name: "bedrock",
      target_prefix: nil
    }
  end

  @doc """
  Associates a knowledge base with an agent.

  If a knowledge base is associated and its `indexState` is set to `Enabled`, the
  agent queries the knowledge base for information to augment its response to the
  user.
  """
  def associate_agent_knowledge_base(
        %Client{} = client,
        agent_id,
        agent_version,
        input,
        options \\ []
      ) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/knowledgebases/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates an agent that orchestrates interactions between foundation models, data
  sources, software applications, user conversations, and APIs to carry out tasks
  to help customers.

    *
  Specify the following fields for security purposes.

      *

  `agentResourceRoleArn` – The ARN of the role with permissions to create an
  agent.

      *
  (Optional) `customerEncryptionKeyArn` – The ARN of a KMS key to encrypt the
  creation of the agent.

      *
  (Optional) `idleSessionTTLinSeconds` – Specify the number of seconds for which
  the agent should maintain session information. After this time expires, the
  subsequent `InvokeAgent` request begins a new session.

    *
  To override the default prompt behavior for agent orchestration and to use
  advanced prompts, include a `promptOverrideConfiguration` object. For more
  information, see [Advanced prompts](https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html).

    *
  If you agent fails to be created, the response returns a list of
  `failureReasons` alongside a list of `recommendedActions` for you to
  troubleshoot.
  """
  def create_agent(%Client{} = client, input, options \\ []) do
    url_path = "/agents/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Creates an action group for an agent.

  An action group represents the actions that an agent can carry out for the
  customer by defining the APIs that an agent can call and the logic for calling
  them.

  To allow your agent to request the user for additional information when trying
  to complete a task, add an action group with the `parentActionGroupSignature`
  field set to `AMAZON.UserInput`. You must leave the `description`, `apiSchema`,
  and `actionGroupExecutor` fields blank for this action group. During
  orchestration, if your agent determines that it needs to invoke an API in an
  action group, but doesn't have enough information to complete the API request,
  it will invoke this action group instead and return an
  [Observation](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html)
  reprompting the user for more information.
  """
  def create_agent_action_group(%Client{} = client, agent_id, agent_version, input, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/actiongroups/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates an alias of an agent that can be used to deploy the agent.
  """
  def create_agent_alias(%Client{} = client, agent_id, input, options \\ []) do
    url_path = "/agents/#{AWS.Util.encode_uri(agent_id)}/agentaliases/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Sets up a data source to be added to a knowledge base.

  You can't change the `chunkingConfiguration` after you create the data source.
  """
  def create_data_source(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a knowledge base that contains data sources from which information can
  be queried and used by LLMs.

  To create a knowledge base, you must first set up your data sources and
  configure a supported vector store. For more information, see [Set up your data for
  ingestion](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup.html).

  If you prefer to let Amazon Bedrock create and manage a vector store for you in
  Amazon OpenSearch Service, use the console. For more information, see [Create a knowledge
  base](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-create).

    *
  Provide the `name` and an optional `description`.

    *
  Provide the ARN with permissions to create a knowledge base in the `roleArn`
  field.

    *
  Provide the embedding model to use in the `embeddingModelArn` field in the
  `knowledgeBaseConfiguration` object.

    *
  Provide the configuration for your vector store in the `storageConfiguration`
  object.

      *
  For an Amazon OpenSearch Service database, use the
  `opensearchServerlessConfiguration` object. For more information, see [Create a vector store in Amazon OpenSearch
  Service](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-oss.html).

      *
  For an Amazon Aurora database, use the `RdsConfiguration` object. For more
  information, see [Create a vector store in Amazon Aurora](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-rds.html).

      *
  For a Pinecone database, use the `pineconeConfiguration` object. For more
  information, see [Create a vector store in Pinecone](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-pinecone.html).

      *
  For a Redis Enterprise Cloud database, use the
  `redisEnterpriseCloudConfiguration` object. For more information, see [Create a vector store in Redis Enterprise
  Cloud](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-redis.html).
  """
  def create_knowledge_base(%Client{} = client, input, options \\ []) do
    url_path = "/knowledgebases/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Deletes an agent.
  """
  def delete_agent(%Client{} = client, agent_id, input, options \\ []) do
    url_path = "/agents/#{AWS.Util.encode_uri(agent_id)}/"
    headers = []

    {query_params, input} =
      [
        {"skipResourceInUseCheck", "skipResourceInUseCheck"}
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
  Deletes an action group in an agent.
  """
  def delete_agent_action_group(
        %Client{} = client,
        action_group_id,
        agent_id,
        agent_version,
        input,
        options \\ []
      ) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/actiongroups/#{AWS.Util.encode_uri(action_group_id)}/"

    headers = []

    {query_params, input} =
      [
        {"skipResourceInUseCheck", "skipResourceInUseCheck"}
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
      204
    )
  end

  @doc """
  Deletes an alias of an agent.
  """
  def delete_agent_alias(%Client{} = client, agent_alias_id, agent_id, input, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentaliases/#{AWS.Util.encode_uri(agent_alias_id)}/"

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
  Deletes a version of an agent.
  """
  def delete_agent_version(%Client{} = client, agent_id, agent_version, input, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/"

    headers = []

    {query_params, input} =
      [
        {"skipResourceInUseCheck", "skipResourceInUseCheck"}
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
  Deletes a data source from a knowledge base.
  """
  def delete_data_source(
        %Client{} = client,
        data_source_id,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}"

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
  Deletes a knowledge base.

  Before deleting a knowledge base, you should disassociate the knowledge base
  from any agents that it is associated with by making a
  [DisassociateAgentKnowledgeBase](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_DisassociateAgentKnowledgeBase.html)
  request.
  """
  def delete_knowledge_base(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}"
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
  Disassociates a knowledge base from an agent.
  """
  def disassociate_agent_knowledge_base(
        %Client{} = client,
        agent_id,
        agent_version,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/"

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
      204
    )
  end

  @doc """
  Gets information about an agent.
  """
  def get_agent(%Client{} = client, agent_id, options \\ []) do
    url_path = "/agents/#{AWS.Util.encode_uri(agent_id)}/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an action group for an agent.
  """
  def get_agent_action_group(
        %Client{} = client,
        action_group_id,
        agent_id,
        agent_version,
        options \\ []
      ) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/actiongroups/#{AWS.Util.encode_uri(action_group_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an alias of an agent.
  """
  def get_agent_alias(%Client{} = client, agent_alias_id, agent_id, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentaliases/#{AWS.Util.encode_uri(agent_alias_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a knowledge base associated with an agent.
  """
  def get_agent_knowledge_base(
        %Client{} = client,
        agent_id,
        agent_version,
        knowledge_base_id,
        options \\ []
      ) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details about a version of an agent.
  """
  def get_agent_version(%Client{} = client, agent_id, agent_version, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a data source.
  """
  def get_data_source(%Client{} = client, data_source_id, knowledge_base_id, options \\ []) do
    url_path =
      "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a ingestion job, in which a data source is added to a
  knowledge base.
  """
  def get_ingestion_job(
        %Client{} = client,
        data_source_id,
        ingestion_job_id,
        knowledge_base_id,
        options \\ []
      ) do
    url_path =
      "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}/ingestionjobs/#{AWS.Util.encode_uri(ingestion_job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a knoweldge base.
  """
  def get_knowledge_base(%Client{} = client, knowledge_base_id, options \\ []) do
    url_path = "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the action groups for an agent and information about each one.
  """
  def list_agent_action_groups(%Client{} = client, agent_id, agent_version, input, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/actiongroups/"

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
  Lists the aliases of an agent and information about each one.
  """
  def list_agent_aliases(%Client{} = client, agent_id, input, options \\ []) do
    url_path = "/agents/#{AWS.Util.encode_uri(agent_id)}/agentaliases/"
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
  Lists knowledge bases associated with an agent and information about each one.
  """
  def list_agent_knowledge_bases(
        %Client{} = client,
        agent_id,
        agent_version,
        input,
        options \\ []
      ) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/knowledgebases/"

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
  Lists the versions of an agent and information about each version.
  """
  def list_agent_versions(%Client{} = client, agent_id, input, options \\ []) do
    url_path = "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/"
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
  Lists the agents belonging to an account and information about each agent.
  """
  def list_agents(%Client{} = client, input, options \\ []) do
    url_path = "/agents/"
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
  Lists the data sources in a knowledge base and information about each one.
  """
  def list_data_sources(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/"
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
  Lists the ingestion jobs for a data source and information about each of them.
  """
  def list_ingestion_jobs(
        %Client{} = client,
        data_source_id,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}/ingestionjobs/"

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
  Lists the knowledge bases in an account and information about each of them.
  """
  def list_knowledge_bases(%Client{} = client, input, options \\ []) do
    url_path = "/knowledgebases/"
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
  List all the tags for the resource you specify.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates a `DRAFT` version of the agent that can be used for internal testing.
  """
  def prepare_agent(%Client{} = client, agent_id, input, options \\ []) do
    url_path = "/agents/#{AWS.Util.encode_uri(agent_id)}/"
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
      202
    )
  end

  @doc """
  Begins an ingestion job, in which a data source is added to a knowledge base.
  """
  def start_ingestion_job(
        %Client{} = client,
        data_source_id,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}/ingestionjobs/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Associate tags with a resource.

  For more information, see [Tagging resources](https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html)
  in the Amazon Bedrock User Guide.
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
  Remove tags from a resource.
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
  Updates the configuration of an agent.
  """
  def update_agent(%Client{} = client, agent_id, input, options \\ []) do
    url_path = "/agents/#{AWS.Util.encode_uri(agent_id)}/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates the configuration for an action group for an agent.
  """
  def update_agent_action_group(
        %Client{} = client,
        action_group_id,
        agent_id,
        agent_version,
        input,
        options \\ []
      ) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/actiongroups/#{AWS.Util.encode_uri(action_group_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates configurations for an alias of an agent.
  """
  def update_agent_alias(%Client{} = client, agent_alias_id, agent_id, input, options \\ []) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentaliases/#{AWS.Util.encode_uri(agent_alias_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates the configuration for a knowledge base that has been associated with an
  agent.
  """
  def update_agent_knowledge_base(
        %Client{} = client,
        agent_id,
        agent_version,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path =
      "/agents/#{AWS.Util.encode_uri(agent_id)}/agentversions/#{AWS.Util.encode_uri(agent_version)}/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates configurations for a data source.

  You can't change the `chunkingConfiguration` after you create the data source.
  Specify the existing `chunkingConfiguration`.
  """
  def update_data_source(
        %Client{} = client,
        data_source_id,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path =
      "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the configuration of a knowledge base with the fields that you specify.

  Because all fields will be overwritten, you must include the same values for
  fields that you want to keep the same.

  You can change the following fields:

    *

  `name`

    *

  `description`

    *

  `roleArn`

  You can't change the `knowledgeBaseConfiguration` or `storageConfiguration`
  fields, so you must specify the same configurations as when you created the
  knowledge base. You can send a
  [GetKnowledgeBase](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetKnowledgeBase.html)
  request and copy the same configurations.
  """
  def update_knowledge_base(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgebases/#{AWS.Util.encode_uri(knowledge_base_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end
end
