# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PersonalizeEvents do
  @moduledoc """
  Amazon Personalize can consume real-time user event data, such as *stream* or
  *click* data, and use
  it for model training either alone or combined with historical data.

  For more information see
  [Recording item interaction events](https://docs.aws.amazon.com/personalize/latest/dg/recording-item-interaction-events.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      action() :: %{
        "actionId" => String.t(),
        "properties" => String.t()
      }

  """
  @type action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_interaction() :: %{
        "actionId" => String.t(),
        "eventId" => String.t(),
        "eventType" => String.t(),
        "impression" => list(String.t()()),
        "properties" => String.t(),
        "recommendationId" => String.t(),
        "sessionId" => String.t(),
        "timestamp" => non_neg_integer(),
        "userId" => String.t()
      }

  """
  @type action_interaction() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event() :: %{
        "eventId" => String.t(),
        "eventType" => String.t(),
        "eventValue" => float(),
        "impression" => list(String.t()()),
        "itemId" => String.t(),
        "metricAttribution" => metric_attribution(),
        "properties" => String.t(),
        "recommendationId" => String.t(),
        "sentAt" => non_neg_integer()
      }

  """
  @type event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_input_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_input_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      item() :: %{
        "itemId" => String.t(),
        "properties" => String.t()
      }

  """
  @type item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric_attribution() :: %{
        "eventAttributionSource" => String.t()
      }

  """
  @type metric_attribution() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_action_interactions_request() :: %{
        required("actionInteractions") => list(action_interaction()()),
        required("trackingId") => String.t()
      }

  """
  @type put_action_interactions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_actions_request() :: %{
        required("actions") => list(action()()),
        required("datasetArn") => String.t()
      }

  """
  @type put_actions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_events_request() :: %{
        optional("userId") => String.t(),
        required("eventList") => list(event()()),
        required("sessionId") => String.t(),
        required("trackingId") => String.t()
      }

  """
  @type put_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_items_request() :: %{
        required("datasetArn") => String.t(),
        required("items") => list(item()())
      }

  """
  @type put_items_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_users_request() :: %{
        required("datasetArn") => String.t(),
        required("users") => list(user()())
      }

  """
  @type put_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_in_use_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user() :: %{
        "properties" => String.t(),
        "userId" => String.t()
      }

  """
  @type user() :: %{String.t() => any()}

  @type put_action_interactions_errors() ::
          resource_not_found_exception() | resource_in_use_exception() | invalid_input_exception()

  @type put_actions_errors() ::
          resource_not_found_exception() | resource_in_use_exception() | invalid_input_exception()

  @type put_events_errors() :: invalid_input_exception()

  @type put_items_errors() ::
          resource_not_found_exception() | resource_in_use_exception() | invalid_input_exception()

  @type put_users_errors() ::
          resource_not_found_exception() | resource_in_use_exception() | invalid_input_exception()

  def metadata do
    %{
      api_version: "2018-03-22",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "personalize-events",
      global?: false,
      hostname: nil,
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
  @spec put_action_interactions(map(), put_action_interactions_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_action_interactions_errors()}
  def put_action_interactions(%Client{} = client, input, options \\ []) do
    url_path = "/action-interactions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds one or more actions to an Actions dataset.

  For more information see
  [Importing actions individually](https://docs.aws.amazon.com/personalize/latest/dg/importing-actions.html).
  """
  @spec put_actions(map(), put_actions_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_actions_errors()}
  def put_actions(%Client{} = client, input, options \\ []) do
    url_path = "/actions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Records item interaction event data.

  For more information see
  [Recording item interaction events](https://docs.aws.amazon.com/personalize/latest/dg/recording-item-interaction-events.html).
  """
  @spec put_events(map(), put_events_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_events_errors()}
  def put_events(%Client{} = client, input, options \\ []) do
    url_path = "/events"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds one or more items to an Items dataset.

  For more information see
  [Importing items individually](https://docs.aws.amazon.com/personalize/latest/dg/importing-items.html).
  """
  @spec put_items(map(), put_items_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_items_errors()}
  def put_items(%Client{} = client, input, options \\ []) do
    url_path = "/items"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds one or more users to a Users dataset.

  For more information see
  [Importing users individually](https://docs.aws.amazon.com/personalize/latest/dg/importing-users.html).
  """
  @spec put_users(map(), put_users_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_users_errors()}
  def put_users(%Client{} = client, input, options \\ []) do
    url_path = "/users"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
