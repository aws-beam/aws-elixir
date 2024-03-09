# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.QBusiness do
  @moduledoc """

  Amazon Q is in preview release and is subject to change.

  This is the *Amazon Q (for business use)* API Reference.
  Amazon Q is a fully managed, generative-AI powered enterprise chat assistant
  that
  you can deploy within your organization. Amazon Q enhances employee productivity
  by
  supporting key tasks such as question-answering, knowledge discovery, writing
  email
  messages, summarizing text, drafting document outlines, and brainstorming ideas.
  Users
  ask questions of Amazon Q and get answers that are presented in a conversational
  manner. For an introduction to the service, see the [
  *Amazon Q (for business use) Developer
  Guide*
  ](https://docs.aws.amazon.com/amazonq/latest/business-use-dg/what-is.html).

  For an overview of the Amazon Q APIs, see [Overview of Amazon Q API operations](https://docs.aws.amazon.com/amazonq/latest/business-use-dg/api-ref.html#api-overview).

  For information about the IAM access control permissions you need to
  use this API, see [IAM roles for Amazon Q](https://docs.aws.amazon.com/amazonq/latest/business-use-dg/iam-roles.html) in
  the
  *Amazon Q (for business use) Developer Guide*.

  You can use the following AWS SDKs to access Amazon Q APIs:

    *

  [AWS SDK for C++](https://docs.aws.amazon.com/sdk-for-cpp) 

    *

  [AWS SDK for Go](https://docs.aws.amazon.com/sdk-for-go)

    *

  [AWS SDK for Java](https://docs.aws.amazon.com/sdk-for-java) 

    *

  [AWS SDK for
  JavaScript](https://docs.aws.amazon.com/sdk-for-javascript)

    *

  [AWS SDK for .NET](https://docs.aws.amazon.com/sdk-for-net) 

    *

  [AWS SDK for Python
  (Boto3)](https://docs.aws.amazon.com/pythonsdk)

    *

  [AWS SDK for Ruby](https://docs.aws.amazon.com/sdk-for-ruby) 

  The following resources provide additional information about using the Amazon Q
  API:

    *

  *
  [Setting up for
  Amazon
  Q](https://docs.aws.amazon.com/amazonq/latest/business-use-dg/setting-up.html)
  *

    *

  *
  [Amazon Q CLI Reference](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/qbusiness/index.html)
  *

    *

  *
  [Amazon Web Services General Reference](https://docs.aws.amazon.com/general/latest/gr/amazonq.html)
  *
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2023-11-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "qbusiness",
      global?: false,
      protocol: "rest-json",
      service_id: "QBusiness",
      signature_version: "v4",
      signing_name: "qbusiness",
      target_prefix: nil
    }
  end

  @doc """
  Asynchronously deletes one or more documents added using the
  `BatchPutDocument` API from an Amazon Q index.

  You can see the progress of the deletion, and any error messages related to the
  process, by using CloudWatch.
  """
  def batch_delete_document(%Client{} = client, application_id, index_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/documents/delete"

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
  Adds one or more documents to an Amazon Q index.

  You use this API to:

    *
  ingest your structured and unstructured documents and documents stored in an
  Amazon S3 bucket into an Amazon Q index.

    *
  add custom attributes to documents in an Amazon Q index.

    *
  attach an access control list to the documents added to an Amazon Q
  index.

  You can see the progress of the deletion, and any error messages related to the
  process, by using CloudWatch.
  """
  def batch_put_document(%Client{} = client, application_id, index_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/documents"

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
  Starts or continues a non-streaming Amazon Q conversation.
  """
  def chat_sync(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/conversations?sync"
    headers = []

    {query_params, input} =
      [
        {"userGroups", "userGroups"},
        {"userId", "userId"}
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
  Creates an Amazon Q application.
  """
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
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
  Creates a data source connector for an Amazon Q application.

  `CreateDataSource` is a synchronous operation. The operation returns 200 if
  the data source was successfully created. Otherwise, an exception is raised.
  """
  def create_data_source(%Client{} = client, application_id, index_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/datasources"

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
  Creates an Amazon Q index.

  To determine if index creation has completed, check the `Status` field
  returned from a call to `DescribeIndex`. The `Status` field is set
  to `ACTIVE` when the index is ready to use.

  Once the index is active, you can index your documents using the [
  `BatchPutDocument`
  ](https://docs.aws.amazon.com/amazonq/latest/api-reference/API_BatchPutDocument.html)
  API or the [
  `CreateDataSource`
  ](https://docs.aws.amazon.com/amazonq/latest/api-reference/API_CreateDataSource.html)
  API.
  """
  def create_index(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/indices"
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
  Creates an Amazon Q plugin.
  """
  def create_plugin(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/plugins"
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
  Adds a retriever to your Amazon Q application.
  """
  def create_retriever(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/retrievers"
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
  Creates a universally unique identifier (UUID) mapped to a list of local user
  ids
  within an application.
  """
  def create_user(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/users"
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
  Creates an Amazon Q web experience.
  """
  def create_web_experience(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/experiences"
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
  Deletes an Amazon Q application.
  """
  def delete_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
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
  Deletes chat controls configured for an existing Amazon Q application.
  """
  def delete_chat_controls_configuration(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/chatcontrols"
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
  Deletes an Amazon Q web experience conversation.
  """
  def delete_conversation(
        %Client{} = client,
        application_id,
        conversation_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/conversations/#{AWS.Util.encode_uri(conversation_id)}"

    headers = []

    {query_params, input} =
      [
        {"userId", "userId"}
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
  Deletes an Amazon Q data source connector.

  While the data source is being
  deleted, the `Status` field returned by a call to the
  `DescribeDataSource` API is set to `DELETING`.
  """
  def delete_data_source(
        %Client{} = client,
        application_id,
        data_source_id,
        index_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}"

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
  Deletes a group so that all users and sub groups that belong to the group can no
  longer access documents only available to that group.

  For example, after deleting the
  group "Summer Interns", all interns who belonged to that group no longer see
  intern-only
  documents in their chat results.

  If you want to delete, update, or replace users or sub groups of a group, you
  need to
  use the `PutGroup` operation. For example, if a user in the group
  "Engineering" leaves the engineering team and another user takes their place,
  you
  provide an updated list of users or sub groups that belong to the "Engineering"
  group
  when calling `PutGroup`.
  """
  def delete_group(%Client{} = client, application_id, group_name, index_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/groups/#{AWS.Util.encode_uri(group_name)}"

    headers = []

    {query_params, input} =
      [
        {"dataSourceId", "dataSourceId"}
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
  Deletes an Amazon Q index.
  """
  def delete_index(%Client{} = client, application_id, index_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}"

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
  Deletes an Amazon Q plugin.
  """
  def delete_plugin(%Client{} = client, application_id, plugin_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/plugins/#{AWS.Util.encode_uri(plugin_id)}"

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
  Deletes the retriever used by an Amazon Q application.
  """
  def delete_retriever(%Client{} = client, application_id, retriever_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/retrievers/#{AWS.Util.encode_uri(retriever_id)}"

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
  Deletes a user by email id.
  """
  def delete_user(%Client{} = client, application_id, user_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/users/#{AWS.Util.encode_uri(user_id)}"

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
  Deletes an Amazon Q web experience.
  """
  def delete_web_experience(
        %Client{} = client,
        application_id,
        web_experience_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/experiences/#{AWS.Util.encode_uri(web_experience_id)}"

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
  Gets information about an existing Amazon Q application.
  """
  def get_application(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an chat controls configured for an existing Amazon Q
  application.
  """
  def get_chat_controls_configuration(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/chatcontrols"
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
  Gets information about an existing Amazon Q data source connector.
  """
  def get_data_source(%Client{} = client, application_id, data_source_id, index_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a group by group name.
  """
  def get_group(
        %Client{} = client,
        application_id,
        group_name,
        index_id,
        data_source_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/groups/#{AWS.Util.encode_uri(group_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(data_source_id) do
        [{"dataSourceId", data_source_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an existing Amazon Q index.
  """
  def get_index(%Client{} = client, application_id, index_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an existing Amazon Q plugin.
  """
  def get_plugin(%Client{} = client, application_id, plugin_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/plugins/#{AWS.Util.encode_uri(plugin_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an existing retriever used by an Amazon Q
  application.
  """
  def get_retriever(%Client{} = client, application_id, retriever_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/retrievers/#{AWS.Util.encode_uri(retriever_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the universally unique identifier (UUID) associated with a local user
  in a
  data source.
  """
  def get_user(%Client{} = client, application_id, user_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/users/#{AWS.Util.encode_uri(user_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an existing Amazon Q web experience.
  """
  def get_web_experience(%Client{} = client, application_id, web_experience_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/experiences/#{AWS.Util.encode_uri(web_experience_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon Q applications.
  """
  def list_applications(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/applications"
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
  Lists one or more Amazon Q conversations.
  """
  def list_conversations(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        user_id,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/conversations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(user_id) do
        [{"userId", user_id} | query_params]
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
  Get information about an Amazon Q data source connector synchronization.
  """
  def list_data_source_sync_jobs(
        %Client{} = client,
        application_id,
        data_source_id,
        index_id,
        end_time \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        start_time \\ nil,
        status_filter \\ nil,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}/syncjobs"

    headers = []
    query_params = []

    query_params =
      if !is_nil(status_filter) do
        [{"syncStatus", status_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
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
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Amazon Q data source connectors that you have created.
  """
  def list_data_sources(
        %Client{} = client,
        application_id,
        index_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/datasources"

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
  A list of documents attached to an index.
  """
  def list_documents(
        %Client{} = client,
        application_id,
        index_id,
        data_source_ids \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/index/#{AWS.Util.encode_uri(index_id)}/documents"

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

    query_params =
      if !is_nil(data_source_ids) do
        [{"dataSourceIds", data_source_ids} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides a list of groups that are mapped to users.
  """
  def list_groups(
        %Client{} = client,
        application_id,
        index_id,
        data_source_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        updated_earlier_than,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/groups"

    headers = []
    query_params = []

    query_params =
      if !is_nil(updated_earlier_than) do
        [{"updatedEarlierThan", updated_earlier_than} | query_params]
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
      if !is_nil(data_source_id) do
        [{"dataSourceId", data_source_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Amazon Q indices you have created.
  """
  def list_indices(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/indices"
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
  Gets a list of messages associated with an Amazon Q web experience.
  """
  def list_messages(
        %Client{} = client,
        application_id,
        conversation_id,
        max_results \\ nil,
        next_token \\ nil,
        user_id,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/conversations/#{AWS.Util.encode_uri(conversation_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(user_id) do
        [{"userId", user_id} | query_params]
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
  Lists configured Amazon Q plugins.
  """
  def list_plugins(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/plugins"
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
  Lists the retriever used by an Amazon Q application.
  """
  def list_retrievers(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/retrievers"
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
  Gets a list of tags associated with a specified resource.

  Amazon Q applications
  and data sources can have tags associated with them.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists one or more Amazon Q Web Experiences.
  """
  def list_web_experiences(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/experiences"
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
  Enables your end user to to provide feedback on their Amazon Q generated chat
  responses.
  """
  def put_feedback(
        %Client{} = client,
        application_id,
        conversation_id,
        message_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/conversations/#{AWS.Util.encode_uri(conversation_id)}/messages/#{AWS.Util.encode_uri(message_id)}/feedback"

    headers = []

    {query_params, input} =
      [
        {"userId", "userId"}
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
  Create, or updates, a mapping of users—who have access to a document—to
  groups.

  You can also map sub groups to groups. For example, the group "Company
  Intellectual
  Property Teams" includes sub groups "Research" and "Engineering". These sub
  groups
  include their own list of users or people who work in these teams. Only users
  who work
  in research and engineering, and therefore belong in the intellectual property
  group,
  can see top-secret company documents in their Amazon Q chat results.
  """
  def put_group(%Client{} = client, application_id, index_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/groups"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Starts a data source connector synchronization job.

  If a synchronization job is
  already in progress, Amazon Q returns a `ConflictException`.
  """
  def start_data_source_sync_job(
        %Client{} = client,
        application_id,
        data_source_id,
        index_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}/startsync"

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
  Stops an Amazon Q data source connector synchronization job already in
  progress.
  """
  def stop_data_source_sync_job(
        %Client{} = client,
        application_id,
        data_source_id,
        index_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}/stopsync"

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
  Adds the specified tag to the specified Amazon Q application or data source
  resource.

  If the tag already exists, the existing value is replaced with the new
  value.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes a tag from an Amazon Q application or a data source.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Updates an existing Amazon Q application.
  """
  def update_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an set of chat controls configured for an existing Amazon Q
  application.
  """
  def update_chat_controls_configuration(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/chatcontrols"
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
  Updates an existing Amazon Q data source connector.
  """
  def update_data_source(
        %Client{} = client,
        application_id,
        data_source_id,
        index_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an Amazon Q index.
  """
  def update_index(%Client{} = client, application_id, index_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an Amazon Q plugin.
  """
  def update_plugin(%Client{} = client, application_id, plugin_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/plugins/#{AWS.Util.encode_uri(plugin_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the retriever used for your Amazon Q application.
  """
  def update_retriever(%Client{} = client, application_id, retriever_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/retrievers/#{AWS.Util.encode_uri(retriever_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a information associated with a user id.
  """
  def update_user(%Client{} = client, application_id, user_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/users/#{AWS.Util.encode_uri(user_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an Amazon Q web experience.
  """
  def update_web_experience(
        %Client{} = client,
        application_id,
        web_experience_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/experiences/#{AWS.Util.encode_uri(web_experience_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
