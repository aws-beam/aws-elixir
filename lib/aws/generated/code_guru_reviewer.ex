# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeGuruReviewer do
  @moduledoc """
  This section provides documentation for the Amazon CodeGuru Reviewer API
  operations.

  CodeGuru Reviewer is a service that uses program analysis and machine learning
  to detect potential defects that are difficult for developers to find and
  recommends fixes in your Java and Python code.

  By proactively detecting and providing recommendations for addressing code
  defects and implementing best practices, CodeGuru Reviewer improves the overall
  quality and maintainability of your code base during the code review stage. For
  more information about CodeGuru Reviewer, see the * [Amazon CodeGuru Reviewer User
  Guide](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/welcome.html).*

  To improve the security of your CodeGuru Reviewer API calls, you can establish a
  private connection between your VPC and CodeGuru Reviewer by creating an
  *interface VPC endpoint*. For more information, see [CodeGuru Reviewer and interface VPC endpoints (Amazon Web Services
  PrivateLink)](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/vpc-interface-endpoints.html)
  in the *Amazon CodeGuru Reviewer User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2019-09-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codeguru-reviewer",
      global?: false,
      protocol: "rest-json",
      service_id: "CodeGuru Reviewer",
      signature_version: "v4",
      signing_name: "codeguru-reviewer",
      target_prefix: nil
    }
  end

  @doc """
  Use to associate an Amazon Web Services CodeCommit repository or a repository
  managed by Amazon Web Services CodeStar Connections with Amazon CodeGuru
  Reviewer.

  When you associate a repository, CodeGuru Reviewer reviews source code changes
  in the repository's pull requests and provides automatic recommendations. You
  can view recommendations using the CodeGuru Reviewer console. For more
  information, see [Recommendations in Amazon CodeGuru Reviewer](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/recommendations.html)
  in the *Amazon CodeGuru Reviewer User Guide.*

  If you associate a CodeCommit or S3 repository, it must be in the same Amazon
  Web Services Region and Amazon Web Services account where its CodeGuru Reviewer
  code reviews are configured.

  Bitbucket and GitHub Enterprise Server repositories are managed by Amazon Web
  Services CodeStar Connections to connect to CodeGuru Reviewer. For more
  information, see [Associate a repository](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-associate-repository.html)
  in the *Amazon CodeGuru Reviewer User Guide.*

  You cannot use the CodeGuru Reviewer SDK or the Amazon Web Services CLI to
  associate a GitHub repository with Amazon CodeGuru Reviewer. To associate a
  GitHub repository, use the console. For more information, see [Getting started with CodeGuru
  Reviewer](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-with-guru.html)
  in the *CodeGuru Reviewer User Guide.*
  """
  def associate_repository(%Client{} = client, input, options \\ []) do
    url_path = "/associations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "AssociateRepository",
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
  Use to create a code review with a
  [CodeReviewType](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html)
  of `RepositoryAnalysis`.

  This type of code review analyzes all code under a specified branch in an
  associated repository. `PullRequest` code reviews are automatically triggered by
  a pull request.
  """
  def create_code_review(%Client{} = client, input, options \\ []) do
    url_path = "/codereviews"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateCodeReview",
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
  Returns the metadata associated with the code review along with its status.
  """
  def describe_code_review(%Client{} = client, code_review_arn, options \\ []) do
    url_path = "/codereviews/#{AWS.Util.encode_uri(code_review_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeCodeReview",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Describes the customer feedback for a CodeGuru Reviewer recommendation.
  """
  def describe_recommendation_feedback(
        %Client{} = client,
        code_review_arn,
        recommendation_id,
        user_id \\ nil,
        options \\ []
      ) do
    url_path = "/feedback/#{AWS.Util.encode_uri(code_review_arn)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(user_id) do
        [{"UserId", user_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(recommendation_id) do
        [{"RecommendationId", recommendation_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeRecommendationFeedback",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns a
  [RepositoryAssociation](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html)
  object that contains information about the requested repository association.
  """
  def describe_repository_association(%Client{} = client, association_arn, options \\ []) do
    url_path = "/associations/#{AWS.Util.encode_uri(association_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeRepositoryAssociation",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Removes the association between Amazon CodeGuru Reviewer and a repository.
  """
  def disassociate_repository(%Client{} = client, association_arn, input, options \\ []) do
    url_path = "/associations/#{AWS.Util.encode_uri(association_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DisassociateRepository",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists all the code reviews that the customer has created in the past 90 days.
  """
  def list_code_reviews(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        provider_types \\ nil,
        repository_names \\ nil,
        states \\ nil,
        type,
        options \\ []
      ) do
    url_path = "/codereviews"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"Type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(states) do
        [{"States", states} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(repository_names) do
        [{"RepositoryNames", repository_names} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(provider_types) do
        [{"ProviderTypes", provider_types} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListCodeReviews",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns a list of
  [RecommendationFeedbackSummary](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RecommendationFeedbackSummary.html)
  objects that contain customer recommendation feedback for all CodeGuru Reviewer
  users.
  """
  def list_recommendation_feedback(
        %Client{} = client,
        code_review_arn,
        max_results \\ nil,
        next_token \\ nil,
        recommendation_ids \\ nil,
        user_ids \\ nil,
        options \\ []
      ) do
    url_path = "/feedback/#{AWS.Util.encode_uri(code_review_arn)}/RecommendationFeedback"
    headers = []
    query_params = []

    query_params =
      if !is_nil(user_ids) do
        [{"UserIds", user_ids} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(recommendation_ids) do
        [{"RecommendationIds", recommendation_ids} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListRecommendationFeedback",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns the list of all recommendations for a completed code review.
  """
  def list_recommendations(
        %Client{} = client,
        code_review_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/codereviews/#{AWS.Util.encode_uri(code_review_arn)}/Recommendations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListRecommendations",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns a list of
  [RepositoryAssociationSummary](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html) objects that contain summary information about a repository association.

  You can filter the returned list by
  [ProviderType](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-ProviderType),
  [Name](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Name), [State](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-State),
  and
  [Owner](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Owner).
  """
  def list_repository_associations(
        %Client{} = client,
        max_results \\ nil,
        names \\ nil,
        next_token \\ nil,
        owners \\ nil,
        provider_types \\ nil,
        states \\ nil,
        options \\ []
      ) do
    url_path = "/associations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(states) do
        [{"State", states} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(provider_types) do
        [{"ProviderType", provider_types} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(owners) do
        [{"Owner", owners} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(names) do
        [{"Name", names} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListRepositoryAssociations",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns the list of tags associated with an associated repository resource.
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
      nil
    )
  end

  @doc """
  Stores customer feedback for a CodeGuru Reviewer recommendation.

  When this API is called again with different reactions the previous feedback is
  overwritten.
  """
  def put_recommendation_feedback(%Client{} = client, input, options \\ []) do
    url_path = "/feedback"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "PutRecommendationFeedback",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Adds one or more tags to an associated repository.
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
      nil
    )
  end

  @doc """
  Removes a tag from an associated repository.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
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
      nil
    )
  end
end
