# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PersonalizeEvents do
  @moduledoc """
  Amazon Personalize can consume real-time user event data, such as *stream* or
  *click* data, and use it for model training either alone or combined with
  historical data.

  For more information see [Recording item interaction events](https://docs.aws.amazon.com/personalize/latest/dg/recording-item-interaction-events.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-03-22",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "personalize-events",
      global?: false,
      protocol: "rest-json",
      service_id: "Personalize Events",
      signature_version: "v4",
      signing_name: "personalize",
      target_prefix: nil
    }
  end

  @doc """
  Records action interaction event data.

  An *action interaction* event is an interaction between a user and an *action*.
  For example, a user taking an action, such a enrolling in a membership program
  or downloading your app.

  For more information about recording action interactions, see [Recording action interaction
  events](https://docs.aws.amazon.com/personalize/latest/dg/recording-action-interaction-events.html).
  For more information about actions in an Actions dataset, see [Actions dataset](https://docs.aws.amazon.com/personalize/latest/dg/actions-datasets.html).
  """
  def put_action_interactions(%Client{} = client, input, options \\ []) do
    url_path = "/action-interactions"
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
      nil
    )
  end

  @doc """
  Adds one or more actions to an Actions dataset.

  For more information see [Importing actions individually](https://docs.aws.amazon.com/personalize/latest/dg/importing-actions.html).
  """
  def put_actions(%Client{} = client, input, options \\ []) do
    url_path = "/actions"
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
      nil
    )
  end

  @doc """
  Records item interaction event data.

  For more information see [Recording item interaction events](https://docs.aws.amazon.com/personalize/latest/dg/recording-item-interaction-events.html).
  """
  def put_events(%Client{} = client, input, options \\ []) do
    url_path = "/events"
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
      nil
    )
  end

  @doc """
  Adds one or more items to an Items dataset.

  For more information see [Importing items individually](https://docs.aws.amazon.com/personalize/latest/dg/importing-items.html).
  """
  def put_items(%Client{} = client, input, options \\ []) do
    url_path = "/items"
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
      nil
    )
  end

  @doc """
  Adds one or more users to a Users dataset.

  For more information see [Importing users individually](https://docs.aws.amazon.com/personalize/latest/dg/importing-users.html).
  """
  def put_users(%Client{} = client, input, options \\ []) do
    url_path = "/users"
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
      nil
    )
  end
end
