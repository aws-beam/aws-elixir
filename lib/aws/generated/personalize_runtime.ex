# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PersonalizeRuntime do
  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_action_recommendations_request() :: %{
        optional("campaignArn") => String.t() | atom(),
        optional("filterArn") => String.t() | atom(),
        optional("filterValues") => map(),
        optional("numResults") => integer(),
        optional("userId") => String.t() | atom()
      }

  """
  @type get_action_recommendations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_action_recommendations_response() :: %{
        "actionList" => list(predicted_action()),
        "recommendationId" => String.t() | atom()
      }

  """
  @type get_action_recommendations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_personalized_ranking_request() :: %{
        optional("context") => map(),
        optional("filterArn") => String.t() | atom(),
        optional("filterValues") => map(),
        optional("metadataColumns") => map(),
        required("campaignArn") => String.t() | atom(),
        required("inputList") => list(String.t() | atom()),
        required("userId") => String.t() | atom()
      }

  """
  @type get_personalized_ranking_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_personalized_ranking_response() :: %{
        "personalizedRanking" => list(predicted_item()),
        "recommendationId" => String.t() | atom()
      }

  """
  @type get_personalized_ranking_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_recommendations_request() :: %{
        optional("campaignArn") => String.t() | atom(),
        optional("context") => map(),
        optional("filterArn") => String.t() | atom(),
        optional("filterValues") => map(),
        optional("itemId") => String.t() | atom(),
        optional("metadataColumns") => map(),
        optional("numResults") => integer(),
        optional("promotions") => list(promotion()),
        optional("recommenderArn") => String.t() | atom(),
        optional("userId") => String.t() | atom()
      }

  """
  @type get_recommendations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_recommendations_response() :: %{
        "itemList" => list(predicted_item()),
        "recommendationId" => String.t() | atom()
      }

  """
  @type get_recommendations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_input_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_input_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      predicted_action() :: %{
        "actionId" => String.t() | atom(),
        "score" => float()
      }

  """
  @type predicted_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      predicted_item() :: %{
        "itemId" => String.t() | atom(),
        "metadata" => map(),
        "promotionName" => String.t() | atom(),
        "reason" => list(String.t() | atom()),
        "score" => float()
      }

  """
  @type predicted_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      promotion() :: %{
        "filterArn" => String.t() | atom(),
        "filterValues" => map(),
        "name" => String.t() | atom(),
        "percentPromotedItems" => integer()
      }

  """
  @type promotion() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @type get_action_recommendations_errors() ::
          resource_not_found_exception() | invalid_input_exception()

  @type get_personalized_ranking_errors() ::
          resource_not_found_exception() | invalid_input_exception()

  @type get_recommendations_errors() :: resource_not_found_exception() | invalid_input_exception()

  def metadata do
    %{
      api_version: "2018-05-22",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "personalize-runtime",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Personalize Runtime",
      signature_version: "v4",
      signing_name: "personalize",
      target_prefix: nil
    }
  end

  @doc """
  Returns a list of recommended actions in sorted in descending order by
  prediction score.

  Use the `GetActionRecommendations` API if you have a custom
  campaign that deploys a solution version trained with a PERSONALIZED_ACTIONS
  recipe.

  For more information about PERSONALIZED_ACTIONS recipes, see
  [PERSONALIZED_ACTIONS recipes](https://docs.aws.amazon.com/personalize/latest/dg/nexts-best-action-recipes.html).
  For more information about getting action recommendations, see [Getting action recommendations](https://docs.aws.amazon.com/personalize/latest/dg/get-action-recommendations.html).
  """
  @spec get_action_recommendations(map(), get_action_recommendations_request(), list()) ::
          {:ok, get_action_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_action_recommendations_errors()}
  def get_action_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/action-recommendations"
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
  Re-ranks a list of recommended items for the given user.

  The first item in the list is
  deemed the most likely item to be of interest to the user.

  The solution backing the campaign must have been created using a recipe of type
  PERSONALIZED_RANKING.
  """
  @spec get_personalized_ranking(map(), get_personalized_ranking_request(), list()) ::
          {:ok, get_personalized_ranking_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_personalized_ranking_errors()}
  def get_personalized_ranking(%Client{} = client, input, options \\ []) do
    url_path = "/personalize-ranking"
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
  Returns a list of recommended items.

  For campaigns, the campaign's Amazon Resource Name (ARN) is required and the
  required user and item input depends on the recipe type used to
  create the solution backing the campaign as follows:

    *
  USER_PERSONALIZATION - `userId` required, `itemId` not used

    *
  RELATED_ITEMS - `itemId` required, `userId` not used

  Campaigns that are backed by a solution created using a recipe of type
  PERSONALIZED_RANKING use the API.

  For recommenders, the recommender's ARN is required and the required item and
  user input depends on the use case (domain-based recipe) backing the
  recommender.
  For information on use case requirements see [Choosing recommender use cases](https://docs.aws.amazon.com/personalize/latest/dg/domain-use-cases.html).
  """
  @spec get_recommendations(map(), get_recommendations_request(), list()) ::
          {:ok, get_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_recommendations_errors()}
  def get_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/recommendations"
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
