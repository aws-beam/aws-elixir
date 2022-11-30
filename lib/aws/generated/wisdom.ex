# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Wisdom do
  @moduledoc """
  Amazon Connect Wisdom delivers agents the information they need to solve
  customer issues as they're actively speaking with customers.

  Agents can search across connected repositories from within their agent desktop
  to find answers quickly. Use the Amazon Connect Wisdom APIs to create an
  assistant and a knowledge base, for example, or manage content by uploading
  custom files.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2020-10-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "wisdom",
      global?: false,
      protocol: "rest-json",
      service_id: "Wisdom",
      signature_version: "v4",
      signing_name: "wisdom",
      target_prefix: nil
    }
  end

  @doc """
  Creates an Amazon Connect Wisdom assistant.
  """
  def create_assistant(%Client{} = client, input, options \\ []) do
    url_path = "/assistants"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateAssistant",
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
  Creates an association between an Amazon Connect Wisdom assistant and another
  resource.

  Currently, the only supported association is with a knowledge base. An assistant
  can have only a single association.
  """
  def create_assistant_association(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/associations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateAssistantAssociation",
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
  Creates Wisdom content.

  Before to calling this API, use
  [StartContentUpload](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html)
  to upload an asset.
  """
  def create_content(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateContent",
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
  Creates a knowledge base.

  When using this API, you cannot reuse [Amazon AppIntegrations](https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html)
  DataIntegrations with external knowledge bases such as Salesforce and
  ServiceNow. If you do, you'll get an `InvalidRequestException` error.

  ` For example, you're programmatically managing your external knowledge base,
  and you want to add or remove one of the fields that is being ingested from
  Salesforce. Do the following:

    1. Call
  [DeleteKnowledgeBase](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_DeleteKnowledgeBase.html).     2. Call
  [DeleteDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html).

    3. Call
  [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
  to recreate the DataIntegration or a create different one.

    4. Call CreateKnowledgeBase.

  `
  """
  def create_knowledge_base(%Client{} = client, input, options \\ []) do
    url_path = "/knowledgeBases"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateKnowledgeBase",
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
  Creates a session.

  A session is a contextual container used for generating recommendations. Amazon
  Connect creates a new Wisdom session for each contact on which Wisdom is
  enabled.
  """
  def create_session(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/sessions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateSession",
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
  Deletes an assistant.
  """
  def delete_assistant(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteAssistant",
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
  Deletes an assistant association.
  """
  def delete_assistant_association(
        %Client{} = client,
        assistant_association_id,
        assistant_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/associations/#{AWS.Util.encode_uri(assistant_association_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteAssistantAssociation",
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
  Deletes the content.
  """
  def delete_content(%Client{} = client, content_id, knowledge_base_id, input, options \\ []) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents/#{AWS.Util.encode_uri(content_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteContent",
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
  Deletes the knowledge base.

  When you use this API to delete an external knowledge base such as Salesforce or
  ServiceNow, you must also delete the [Amazon AppIntegrations](https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html)
  DataIntegration. This is because you can't reuse the DataIntegration after it's
  been associated with an external knowledge base. However, you can delete and
  recreate it. See
  [DeleteDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html) and
  [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
  in the *Amazon AppIntegrations API Reference*.
  """
  def delete_knowledge_base(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteKnowledgeBase",
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
  Retrieves information about an assistant.
  """
  def get_assistant(%Client{} = client, assistant_id, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetAssistant",
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
  Retrieves information about an assistant association.
  """
  def get_assistant_association(
        %Client{} = client,
        assistant_association_id,
        assistant_id,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/associations/#{AWS.Util.encode_uri(assistant_association_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetAssistantAssociation",
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
  Retrieves content, including a pre-signed URL to download the content.
  """
  def get_content(%Client{} = client, content_id, knowledge_base_id, options \\ []) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents/#{AWS.Util.encode_uri(content_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetContent",
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
  Retrieves summary information about the content.
  """
  def get_content_summary(%Client{} = client, content_id, knowledge_base_id, options \\ []) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents/#{AWS.Util.encode_uri(content_id)}/summary"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetContentSummary",
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
  Retrieves information about the knowledge base.
  """
  def get_knowledge_base(%Client{} = client, knowledge_base_id, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetKnowledgeBase",
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
  Retrieves recommendations for the specified session.

  To avoid retrieving the same recommendations in subsequent calls, use
  [NotifyRecommendationsReceived](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_NotifyRecommendationsReceived.html). This API supports long-polling behavior with the `waitTimeSeconds` parameter.
  Short poll is the default behavior and only returns recommendations already
  available. To perform a manual query against an assistant, use
  [QueryAssistant](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_QueryAssistant.html).
  """
  def get_recommendations(
        %Client{} = client,
        assistant_id,
        session_id,
        max_results \\ nil,
        wait_time_seconds \\ nil,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/recommendations"

    headers = []
    query_params = []

    query_params =
      if !is_nil(wait_time_seconds) do
        [{"waitTimeSeconds", wait_time_seconds} | query_params]
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

    Request.request_rest(
      client,
      meta,
      "GetRecommendations",
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
  Retrieves information for a specified session.
  """
  def get_session(%Client{} = client, assistant_id, session_id, options \\ []) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/sessions/#{AWS.Util.encode_uri(session_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetSession",
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
  Lists information about assistant associations.
  """
  def list_assistant_associations(
        %Client{} = client,
        assistant_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/associations"
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

    Request.request_rest(
      client,
      meta,
      "ListAssistantAssociations",
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
  Lists information about assistants.
  """
  def list_assistants(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/assistants"
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

    Request.request_rest(
      client,
      meta,
      "ListAssistants",
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
  Lists the content.
  """
  def list_contents(
        %Client{} = client,
        knowledge_base_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents"
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

    Request.request_rest(
      client,
      meta,
      "ListContents",
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
  Lists the knowledge bases.
  """
  def list_knowledge_bases(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/knowledgeBases"
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

    Request.request_rest(
      client,
      meta,
      "ListKnowledgeBases",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListTagsForResource",
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
  Removes the specified recommendations from the specified assistant's queue of
  newly available recommendations.

  You can use this API in conjunction with
  [GetRecommendations](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html)
  and a `waitTimeSeconds` input for long-polling behavior and avoiding duplicate
  recommendations.
  """
  def notify_recommendations_received(
        %Client{} = client,
        assistant_id,
        session_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assistants/#{AWS.Util.encode_uri(assistant_id)}/sessions/#{AWS.Util.encode_uri(session_id)}/recommendations/notify"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "NotifyRecommendationsReceived",
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
  Performs a manual search against the specified assistant.

  To retrieve recommendations for an assistant, use
  [GetRecommendations](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html).
  """
  def query_assistant(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/query"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "QueryAssistant",
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
  Removes a URI template from a knowledge base.
  """
  def remove_knowledge_base_template_uri(
        %Client{} = client,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/templateUri"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "RemoveKnowledgeBaseTemplateUri",
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
  Searches for content in a specified knowledge base.

  Can be used to get a specific content resource by its name.
  """
  def search_content(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/search"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "SearchContent",
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
  Searches for sessions.
  """
  def search_sessions(%Client{} = client, assistant_id, input, options \\ []) do
    url_path = "/assistants/#{AWS.Util.encode_uri(assistant_id)}/searchSessions"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "SearchSessions",
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
  Get a URL to upload content to a knowledge base.

  To upload content, first make a PUT request to the returned URL with your file,
  making sure to include the required headers. Then use
  [CreateContent](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_CreateContent.html) to finalize the content creation process or
  [UpdateContent](https://docs.aws.amazon.com/wisdom/latest/APIReference/API_UpdateContent.html)
  to modify an existing resource. You can only upload content to a knowledge base
  of type CUSTOM.
  """
  def start_content_upload(%Client{} = client, knowledge_base_id, input, options \\ []) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/upload"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartContentUpload",
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
  Adds the specified tags to the specified resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "TagResource",
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
      "UntagResource",
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
  Updates information about the content.
  """
  def update_content(%Client{} = client, content_id, knowledge_base_id, input, options \\ []) do
    url_path =
      "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/contents/#{AWS.Util.encode_uri(content_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateContent",
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
  Updates the template URI of a knowledge base.

  This is only supported for knowledge bases of type EXTERNAL. Include a single
  variable in `${variable}` format; this interpolated by Wisdom using ingested
  content. For example, if you ingest a Salesforce article, it has an `Id` value,
  and you can set the template URI to
  `https://myInstanceName.lightning.force.com/lightning/r/Knowledge__kav/*${Id}*/view`.
  """
  def update_knowledge_base_template_uri(
        %Client{} = client,
        knowledge_base_id,
        input,
        options \\ []
      ) do
    url_path = "/knowledgeBases/#{AWS.Util.encode_uri(knowledge_base_id)}/templateUri"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateKnowledgeBaseTemplateUri",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
