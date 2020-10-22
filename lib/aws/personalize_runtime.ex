# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PersonalizeRuntime do
  @moduledoc """
  <p/>
  """

  @doc """
  Re-ranks a list of recommended items for the given user. The first item in
  the list is deemed the most likely item to be of interest to the user.

  <note> The solution backing the campaign must have been created using a
  recipe of type PERSONALIZED_RANKING.

  </note>
  """
  def get_personalized_ranking(client, input, options \\ []) do
    path_ = "/personalize-ranking"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of recommended items. The required input depends on the
  recipe type used to create the solution backing the campaign, as follows:

  <ul> <li> RELATED_ITEMS - `itemId` required, `userId` not used

  </li> <li> USER_PERSONALIZATION - `itemId` optional, `userId` required

  </li> </ul> <note> Campaigns that are backed by a solution created using a
  recipe of type PERSONALIZED_RANKING use the API.

  </note>
  """
  def get_recommendations(client, input, options \\ []) do
    path_ = "/recommendations"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "personalize"}
    host = build_host("personalize-runtime", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    AWS.HTTP.request(method, url, payload, headers, options, success_status_code)
  end



  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
