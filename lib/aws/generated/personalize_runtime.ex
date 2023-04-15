# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PersonalizeRuntime do
  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-05-22",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "personalize-runtime",
      global?: false,
      protocol: "rest-json",
      service_id: "Personalize Runtime",
      signature_version: "v4",
      signing_name: "personalize",
      target_prefix: nil
    }
  end

  @doc """
  Re-ranks a list of recommended items for the given user.

  The first item in the list is deemed the most likely item to be of interest to
  the user.

  The solution backing the campaign must have been created using a recipe of type
  PERSONALIZED_RANKING.
  """
  def get_personalized_ranking(%Client{} = client, input, options \\ []) do
    url_path = "/personalize-ranking"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetPersonalizedRanking",
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
  Returns a list of recommended items.

  For campaigns, the campaign's Amazon Resource Name (ARN) is required and the
  required user and item input depends on the recipe type used to create the
  solution backing the campaign as follows:

    * USER_PERSONALIZATION - `userId` required, `itemId` not used

    * RELATED_ITEMS - `itemId` required, `userId` not used

  Campaigns that are backed by a solution created using a recipe of type
  PERSONALIZED_RANKING use the API.

  For recommenders, the recommender's ARN is required and the required item and
  user input depends on the use case (domain-based recipe) backing the
  recommender. For information on use case requirements see [Choosing recommender use
  cases](https://docs.aws.amazon.com/personalize/latest/dg/domain-use-cases.html).
  """
  def get_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/recommendations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetRecommendations",
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
