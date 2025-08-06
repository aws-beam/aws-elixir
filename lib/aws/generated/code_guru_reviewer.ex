# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeGuruReviewer do
  @moduledoc """
  This section provides documentation for the Amazon CodeGuru Reviewer API
  operations.

  CodeGuru Reviewer is a
  service that uses program analysis and machine learning to detect potential
  defects that
  are difficult for developers to find and recommends fixes in your Java and
  Python
  code.

  By proactively detecting and providing recommendations for addressing code
  defects and
  implementing best practices, CodeGuru Reviewer improves the overall quality and
  maintainability of
  your code base during the code review stage. For more information about CodeGuru
  Reviewer, see the
  *
  [Amazon CodeGuru Reviewer User Guide](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/welcome.html).*

  To improve the security of your CodeGuru Reviewer API calls, you can establish a
  private connection
  between your VPC and CodeGuru Reviewer by creating an *interface VPC endpoint*.
  For
  more information, see [CodeGuru Reviewer and interface VPC endpoints (Amazon Web Services
  PrivateLink)](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/vpc-interface-endpoints.html)
  in the *Amazon CodeGuru Reviewer User
  Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      repository_association_summary() :: %{
        "AssociationArn" => String.t() | atom(),
        "AssociationId" => String.t() | atom(),
        "ConnectionArn" => String.t() | atom(),
        "LastUpdatedTimeStamp" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Owner" => String.t() | atom(),
        "ProviderType" => list(any()),
        "State" => list(any())
      }

  """
  @type repository_association_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_recommendation_feedback_request() :: %{
        optional("UserId") => String.t() | atom(),
        required("RecommendationId") => String.t() | atom()
      }

  """
  @type describe_recommendation_feedback_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      repository_association() :: %{
        "AssociationArn" => String.t() | atom(),
        "AssociationId" => String.t() | atom(),
        "ConnectionArn" => String.t() | atom(),
        "CreatedTimeStamp" => non_neg_integer(),
        "KMSKeyDetails" => kms_key_details(),
        "LastUpdatedTimeStamp" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Owner" => String.t() | atom(),
        "ProviderType" => list(any()),
        "S3RepositoryDetails" => s3_repository_details(),
        "State" => list(any()),
        "StateReason" => String.t() | atom()
      }

  """
  @type repository_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      request_metadata() :: %{
        "EventInfo" => event_info(),
        "RequestId" => String.t() | atom(),
        "Requester" => String.t() | atom(),
        "VendorName" => list(any())
      }

  """
  @type request_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      repository_analysis() :: %{
        "RepositoryHead" => repository_head_source_code_type(),
        "SourceCodeType" => source_code_type()
      }

  """
  @type repository_analysis() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_reviews_response() :: %{
        "CodeReviewSummaries" => list(code_review_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_code_reviews_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommendation_feedback_summary() :: %{
        "Reactions" => list(list(any())()),
        "RecommendationId" => String.t() | atom(),
        "UserId" => String.t() | atom()
      }

  """
  @type recommendation_feedback_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_review() :: %{
        "AnalysisTypes" => list(list(any())()),
        "AssociationArn" => String.t() | atom(),
        "CodeReviewArn" => String.t() | atom(),
        "ConfigFileState" => list(any()),
        "CreatedTimeStamp" => non_neg_integer(),
        "LastUpdatedTimeStamp" => non_neg_integer(),
        "Metrics" => metrics(),
        "Name" => String.t() | atom(),
        "Owner" => String.t() | atom(),
        "ProviderType" => list(any()),
        "PullRequestId" => String.t() | atom(),
        "RepositoryName" => String.t() | atom(),
        "SourceCodeType" => source_code_type(),
        "State" => list(any()),
        "StateReason" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type code_review() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_repository_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("KMSKeyDetails") => kms_key_details(),
        optional("Tags") => map(),
        required("Repository") => repository()
      }

  """
  @type associate_repository_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_code_review_response() :: %{
        "CodeReview" => code_review()
      }

  """
  @type describe_code_review_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_repository_association_response() :: %{
        "RepositoryAssociation" => repository_association(),
        "Tags" => map()
      }

  """
  @type describe_repository_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metrics_summary() :: %{
        "FindingsCount" => float(),
        "MeteredLinesOfCodeCount" => float(),
        "SuppressedLinesOfCodeCount" => float()
      }

  """
  @type metrics_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_recommendation_feedback_response() :: %{
        "RecommendationFeedback" => recommendation_feedback()
      }

  """
  @type describe_recommendation_feedback_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_repository_request() :: %{}

  """
  @type disassociate_repository_request() :: %{}

  @typedoc """

  ## Example:

      list_repository_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("Names") => list(String.t() | atom()),
        optional("NextToken") => String.t() | atom(),
        optional("Owners") => list(String.t() | atom()),
        optional("ProviderTypes") => list(list(any())()),
        optional("States") => list(list(any())())
      }

  """
  @type list_repository_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_repository() :: %{
        "BucketName" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type s3_repository() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metrics() :: %{
        "FindingsCount" => float(),
        "MeteredLinesOfCodeCount" => float(),
        "SuppressedLinesOfCodeCount" => float()
      }

  """
  @type metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      third_party_source_repository() :: %{
        "ConnectionArn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Owner" => String.t() | atom()
      }

  """
  @type third_party_source_repository() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommendation_feedback() :: %{
        "CodeReviewArn" => String.t() | atom(),
        "CreatedTimeStamp" => non_neg_integer(),
        "LastUpdatedTimeStamp" => non_neg_integer(),
        "Reactions" => list(list(any())()),
        "RecommendationId" => String.t() | atom(),
        "UserId" => String.t() | atom()
      }

  """
  @type recommendation_feedback() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      repository() :: %{
        "Bitbucket" => third_party_source_repository(),
        "CodeCommit" => code_commit_repository(),
        "GitHubEnterpriseServer" => third_party_source_repository(),
        "S3Bucket" => s3_repository()
      }

  """
  @type repository() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      branch_diff_source_code_type() :: %{
        "DestinationBranchName" => String.t() | atom(),
        "SourceBranchName" => String.t() | atom()
      }

  """
  @type branch_diff_source_code_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_review_type() :: %{
        "AnalysisTypes" => list(list(any())()),
        "RepositoryAnalysis" => repository_analysis()
      }

  """
  @type code_review_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_code_review_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("RepositoryAssociationArn") => String.t() | atom(),
        required("Type") => code_review_type()
      }

  """
  @type create_code_review_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_bucket_repository() :: %{
        "Details" => s3_repository_details(),
        "Name" => String.t() | atom()
      }

  """
  @type s3_bucket_repository() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_repository_response() :: %{
        "RepositoryAssociation" => repository_association(),
        "Tags" => map()
      }

  """
  @type associate_repository_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_code_review_response() :: %{
        "CodeReview" => code_review()
      }

  """
  @type create_code_review_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_recommendation_feedback_response() :: %{}

  """
  @type put_recommendation_feedback_response() :: %{}

  @typedoc """

  ## Example:

      rule_metadata() :: %{
        "LongDescription" => String.t() | atom(),
        "RuleId" => String.t() | atom(),
        "RuleName" => String.t() | atom(),
        "RuleTags" => list(String.t() | atom()),
        "ShortDescription" => String.t() | atom()
      }

  """
  @type rule_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_code_type() :: %{
        "BranchDiff" => branch_diff_source_code_type(),
        "CommitDiff" => commit_diff_source_code_type(),
        "RepositoryHead" => repository_head_source_code_type(),
        "RequestMetadata" => request_metadata(),
        "S3BucketRepository" => s3_bucket_repository()
      }

  """
  @type source_code_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_review_summary() :: %{
        "CodeReviewArn" => String.t() | atom(),
        "CreatedTimeStamp" => non_neg_integer(),
        "LastUpdatedTimeStamp" => non_neg_integer(),
        "MetricsSummary" => metrics_summary(),
        "Name" => String.t() | atom(),
        "Owner" => String.t() | atom(),
        "ProviderType" => list(any()),
        "PullRequestId" => String.t() | atom(),
        "RepositoryName" => String.t() | atom(),
        "SourceCodeType" => source_code_type(),
        "State" => list(any()),
        "Type" => list(any())
      }

  """
  @type code_review_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_repository_response() :: %{
        "RepositoryAssociation" => repository_association(),
        "Tags" => map()
      }

  """
  @type disassociate_repository_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      commit_diff_source_code_type() :: %{
        "DestinationCommit" => String.t() | atom(),
        "MergeBaseCommit" => String.t() | atom(),
        "SourceCommit" => String.t() | atom()
      }

  """
  @type commit_diff_source_code_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_artifacts() :: %{
        "BuildArtifactsObjectKey" => String.t() | atom(),
        "SourceCodeArtifactsObjectKey" => String.t() | atom()
      }

  """
  @type code_artifacts() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_repository_details() :: %{
        "BucketName" => String.t() | atom(),
        "CodeArtifacts" => code_artifacts()
      }

  """
  @type s3_repository_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_recommendation_feedback_request() :: %{
        required("CodeReviewArn") => String.t() | atom(),
        required("Reactions") => list(list(any())()),
        required("RecommendationId") => String.t() | atom()
      }

  """
  @type put_recommendation_feedback_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_code_reviews_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ProviderTypes") => list(list(any())()),
        optional("RepositoryNames") => list(String.t() | atom()),
        optional("States") => list(list(any())()),
        required("Type") => list(any())
      }

  """
  @type list_code_reviews_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kms_key_details() :: %{
        "EncryptionOption" => list(any()),
        "KMSKeyId" => String.t() | atom()
      }

  """
  @type kms_key_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_recommendation_feedback_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("RecommendationIds") => list(String.t() | atom()),
        optional("UserIds") => list(String.t() | atom())
      }

  """
  @type list_recommendation_feedback_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      repository_head_source_code_type() :: %{
        "BranchName" => String.t() | atom()
      }

  """
  @type repository_head_source_code_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_repository_associations_response() :: %{
        "NextToken" => String.t() | atom(),
        "RepositoryAssociationSummaries" => list(repository_association_summary())
      }

  """
  @type list_repository_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_commit_repository() :: %{
        "Name" => String.t() | atom()
      }

  """
  @type code_commit_repository() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommendation_summary() :: %{
        "Description" => String.t() | atom(),
        "EndLine" => integer(),
        "FilePath" => String.t() | atom(),
        "RecommendationCategory" => list(any()),
        "RecommendationId" => String.t() | atom(),
        "RuleMetadata" => rule_metadata(),
        "Severity" => list(any()),
        "StartLine" => integer()
      }

  """
  @type recommendation_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_recommendation_feedback_response() :: %{
        "NextToken" => String.t() | atom(),
        "RecommendationFeedbackSummaries" => list(recommendation_feedback_summary())
      }

  """
  @type list_recommendation_feedback_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_code_review_request() :: %{}

  """
  @type describe_code_review_request() :: %{}

  @typedoc """

  ## Example:

      list_recommendations_response() :: %{
        "NextToken" => String.t() | atom(),
        "RecommendationSummaries" => list(recommendation_summary())
      }

  """
  @type list_recommendations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_info() :: %{
        "Name" => String.t() | atom(),
        "State" => String.t() | atom()
      }

  """
  @type event_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_repository_association_request() :: %{}

  """
  @type describe_repository_association_request() :: %{}

  @typedoc """

  ## Example:

      list_recommendations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_recommendations_request() :: %{(String.t() | atom()) => any()}

  @type associate_repository_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_code_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_code_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_recommendation_feedback_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_repository_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()

  @type disassociate_repository_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | not_found_exception()
          | conflict_exception()

  @type list_code_reviews_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_recommendation_feedback_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_repository_associations_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type put_recommendation_feedback_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2019-09-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codeguru-reviewer",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "CodeGuru Reviewer",
      signature_version: "v4",
      signing_name: "codeguru-reviewer",
      target_prefix: nil
    }
  end

  @doc """
  Use to associate an Amazon Web Services CodeCommit repository or a repository
  managed by Amazon Web Services
  CodeStar Connections with Amazon CodeGuru Reviewer.

  When you associate a repository, CodeGuru Reviewer reviews
  source code changes in the repository's pull requests and provides automatic
  recommendations. You can view recommendations using the CodeGuru Reviewer
  console. For more
  information, see [Recommendations in Amazon CodeGuru
  Reviewer](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/recommendations.html)
  in the *Amazon CodeGuru Reviewer User Guide.*

  If you associate a CodeCommit or S3 repository, it must be in the same Amazon
  Web Services Region and
  Amazon Web Services account where its CodeGuru Reviewer code reviews are
  configured.

  Bitbucket and GitHub Enterprise Server repositories are managed by Amazon Web
  Services CodeStar
  Connections to connect to CodeGuru Reviewer. For more information, see
  [Associate a repository](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-associate-repository.html)
  in the *Amazon CodeGuru Reviewer User Guide.*

  You cannot use the CodeGuru Reviewer SDK or the Amazon Web Services CLI to
  associate a GitHub repository with
  Amazon CodeGuru Reviewer. To associate a GitHub repository, use the console. For
  more information, see
  [Getting started with CodeGuru
  Reviewer](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-with-guru.html)
  in the *CodeGuru Reviewer User Guide.*
  """
  @spec associate_repository(map(), associate_repository_request(), list()) ::
          {:ok, associate_repository_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_repository_errors()}
  def associate_repository(%Client{} = client, input, options \\ []) do
    url_path = "/associations"
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
  Use to create a code review with a
  [CodeReviewType](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html)
  of
  `RepositoryAnalysis`.

  This type of code review analyzes all code under a
  specified branch in an associated repository. `PullRequest` code reviews are
  automatically triggered by a pull request.
  """
  @spec create_code_review(map(), create_code_review_request(), list()) ::
          {:ok, create_code_review_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_code_review_errors()}
  def create_code_review(%Client{} = client, input, options \\ []) do
    url_path = "/codereviews"
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
  Returns the metadata associated with the code review along with its status.
  """
  @spec describe_code_review(map(), String.t() | atom(), list()) ::
          {:ok, describe_code_review_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_code_review_errors()}
  def describe_code_review(%Client{} = client, code_review_arn, options \\ []) do
    url_path = "/codereviews/#{AWS.Util.encode_uri(code_review_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the customer feedback for a CodeGuru Reviewer recommendation.
  """
  @spec describe_recommendation_feedback(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_recommendation_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_recommendation_feedback_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a
  [RepositoryAssociation](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html)
  object that contains information about the requested
  repository association.
  """
  @spec describe_repository_association(map(), String.t() | atom(), list()) ::
          {:ok, describe_repository_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_repository_association_errors()}
  def describe_repository_association(%Client{} = client, association_arn, options \\ []) do
    url_path = "/associations/#{AWS.Util.encode_uri(association_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Removes the association between Amazon CodeGuru Reviewer and a repository.
  """
  @spec disassociate_repository(
          map(),
          String.t() | atom(),
          disassociate_repository_request(),
          list()
        ) ::
          {:ok, disassociate_repository_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_repository_errors()}
  def disassociate_repository(%Client{} = client, association_arn, input, options \\ []) do
    url_path = "/associations/#{AWS.Util.encode_uri(association_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists all the code reviews that the customer has created in the past 90 days.
  """
  @spec list_code_reviews(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_code_reviews_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_code_reviews_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of
  [RecommendationFeedbackSummary](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RecommendationFeedbackSummary.html)
  objects that contain customer recommendation
  feedback for all CodeGuru Reviewer users.
  """
  @spec list_recommendation_feedback(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_recommendation_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recommendation_feedback_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the list of all recommendations for a completed code review.
  """
  @spec list_recommendations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recommendations_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of
  [RepositoryAssociationSummary](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html) objects that contain summary information about a
  repository association.

  You can filter the returned list by
  [ProviderType](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-ProviderType),
  [Name](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Name), [State](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-State),
  and
  [Owner](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Owner).
  """
  @spec list_repository_associations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_repository_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_repository_associations_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the list of tags associated with an associated repository resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Stores customer feedback for a CodeGuru Reviewer recommendation.

  When this API is called again with
  different reactions the previous feedback is overwritten.
  """
  @spec put_recommendation_feedback(map(), put_recommendation_feedback_request(), list()) ::
          {:ok, put_recommendation_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_recommendation_feedback_errors()}
  def put_recommendation_feedback(%Client{} = client, input, options \\ []) do
    url_path = "/feedback"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds one or more tags to an associated repository.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes a tag from an associated repository.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
