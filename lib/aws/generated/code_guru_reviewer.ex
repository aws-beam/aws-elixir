# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeGuruReviewer do
  @moduledoc """
  This section provides documentation for the Amazon CodeGuru Reviewer API
  operations.

  CodeGuru Reviewer is a service that uses program analysis and machine learning
  to detect potential defects that are difficult for developers to find and
  recommends fixes in your Java code.

  By proactively detecting and providing recommendations for addressing code
  defects and implementing best practices, CodeGuru Reviewer improves the overall
  quality and maintainability of your code base during the code review stage. For
  more information about CodeGuru Reviewer, see the * [Amazon CodeGuru Reviewer User
  Guide](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/welcome.html).*
  """

  @doc """
  Use to associate an AWS CodeCommit repository or a repostory managed by AWS
  CodeStar Connections with Amazon CodeGuru Reviewer.

  When you associate a repository, CodeGuru Reviewer reviews source code changes
  in the repository's pull requests and provides automatic recommendations. You
  can view recommendations using the CodeGuru Reviewer console. For more
  information, see [Recommendations in Amazon CodeGuru Reviewer](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/recommendations.html)
  in the *Amazon CodeGuru Reviewer User Guide.*

  If you associate a CodeCommit repository, it must be in the same AWS Region and
  AWS account where its CodeGuru Reviewer code reviews are configured.

  Bitbucket and GitHub Enterprise Server repositories are managed by AWS CodeStar
  Connections to connect to CodeGuru Reviewer. For more information, see [Connect to a repository source
  provider](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/reviewer-ug/step-one.html#select-repository-source-provider)
  in the *Amazon CodeGuru Reviewer User Guide.*

  You cannot use the CodeGuru Reviewer SDK or the AWS CLI to associate a GitHub
  repository with Amazon CodeGuru Reviewer. To associate a GitHub repository, use
  the console. For more information, see [Getting started with CodeGuru Reviewer](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-with-guru.html)
  in the *CodeGuru Reviewer User Guide.*
  """
  def associate_repository(client, input, options \\ []) do
    path_ = "/associations"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Use to create a code review for a repository analysis.
  """
  def create_code_review(client, input, options \\ []) do
    path_ = "/codereviews"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns the metadata associated with the code review along with its status.
  """
  def describe_code_review(client, code_review_arn, options \\ []) do
    path_ = "/codereviews/#{URI.encode(code_review_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes the customer feedback for a CodeGuru Reviewer recommendation.
  """
  def describe_recommendation_feedback(client, code_review_arn, recommendation_id, user_id \\ nil, options \\ []) do
    path_ = "/feedback/#{URI.encode(code_review_arn)}"
    headers = []
    query_ = []
    query_ = if !is_nil(user_id) do
      [{"UserId", user_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(recommendation_id) do
      [{"RecommendationId", recommendation_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a [ `RepositoryAssociation`
  ](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html)
  object that contains information about the requested repository association.
  """
  def describe_repository_association(client, association_arn, options \\ []) do
    path_ = "/associations/#{URI.encode(association_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Removes the association between Amazon CodeGuru Reviewer and a repository.
  """
  def disassociate_repository(client, association_arn, input, options \\ []) do
    path_ = "/associations/#{URI.encode(association_arn)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Lists all the code reviews that the customer has created in the past 90 days.
  """
  def list_code_reviews(client, max_results \\ nil, next_token \\ nil, provider_types \\ nil, repository_names \\ nil, states \\ nil, type, options \\ []) do
    path_ = "/codereviews"
    headers = []
    query_ = []
    query_ = if !is_nil(type) do
      [{"Type", type} | query_]
    else
      query_
    end
    query_ = if !is_nil(states) do
      [{"States", states} | query_]
    else
      query_
    end
    query_ = if !is_nil(repository_names) do
      [{"RepositoryNames", repository_names} | query_]
    else
      query_
    end
    query_ = if !is_nil(provider_types) do
      [{"ProviderTypes", provider_types} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"MaxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a list of [ `RecommendationFeedbackSummary`
  ](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RecommendationFeedbackSummary.html)
  objects that contain customer recommendation feedback for all CodeGuru Reviewer
  users.
  """
  def list_recommendation_feedback(client, code_review_arn, max_results \\ nil, next_token \\ nil, recommendation_ids \\ nil, user_ids \\ nil, options \\ []) do
    path_ = "/feedback/#{URI.encode(code_review_arn)}/RecommendationFeedback"
    headers = []
    query_ = []
    query_ = if !is_nil(user_ids) do
      [{"UserIds", user_ids} | query_]
    else
      query_
    end
    query_ = if !is_nil(recommendation_ids) do
      [{"RecommendationIds", recommendation_ids} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"MaxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the list of all recommendations for a completed code review.
  """
  def list_recommendations(client, code_review_arn, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/codereviews/#{URI.encode(code_review_arn)}/Recommendations"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"MaxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a list of [ `RepositoryAssociationSummary`
  ](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html)
  objects that contain summary information about a repository association.

  You can filter the returned list by [ `ProviderType`
  ](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-ProviderType),
  [ `Name`
  ](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Name),
  [ `State`
  ](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-State),
  and [ `Owner`
  ](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Owner).
  """
  def list_repository_associations(client, max_results \\ nil, names \\ nil, next_token \\ nil, owners \\ nil, provider_types \\ nil, states \\ nil, options \\ []) do
    path_ = "/associations"
    headers = []
    query_ = []
    query_ = if !is_nil(states) do
      [{"State", states} | query_]
    else
      query_
    end
    query_ = if !is_nil(provider_types) do
      [{"ProviderType", provider_types} | query_]
    else
      query_
    end
    query_ = if !is_nil(owners) do
      [{"Owner", owners} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(names) do
      [{"Name", names} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"MaxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Stores customer feedback for a CodeGuru Reviewer recommendation.

  When this API is called again with different reactions the previous feedback is
  overwritten.
  """
  def put_recommendation_feedback(client, input, options \\ []) do
    path_ = "/feedback"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "codeguru-reviewer"}
    host = build_host("codeguru-reviewer", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} -> error
    end
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

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
