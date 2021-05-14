# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PersonalizeEvents do
  @moduledoc """
  Amazon Personalize can consume real-time user event data, such as *stream* or
  *click* data, and use it for model training either alone or combined with
  historical data.

  For more information see [Recording Events](https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
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
  Records user interaction event data.

  For more information see [Recording Events](https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html).
  """
  def put_events(%Client{} = client, input, options \\ []) do
    url_path = "/events"
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
      nil
    )
  end

  @doc """
  Adds one or more items to an Items dataset.

  For more information see [Importing Items Incrementally](https://docs.aws.amazon.com/personalize/latest/dg/importing-items.html).
  """
  def put_items(%Client{} = client, input, options \\ []) do
    url_path = "/items"
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
      nil
    )
  end

  @doc """
  Adds one or more users to a Users dataset.

  For more information see [Importing Users Incrementally](https://docs.aws.amazon.com/personalize/latest/dg/importing-users.html).
  """
  def put_users(%Client{} = client, input, options \\ []) do
    url_path = "/users"
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
      nil
    )
  end
end
