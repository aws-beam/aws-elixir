# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ConnectContactLens do
  @moduledoc """

    *

  [Contact Lens actions](https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Contact_Lens.html)

    *

  [Contact Lens data types](https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Contact_Lens.html)

  Amazon Connect Contact Lens enables you to analyze conversations between
  customer and agents, by using
  speech transcription, natural language processing, and intelligent search
  capabilities.

  It performs sentiment analysis, detects issues, and enables you to automatically
  categorize contacts.

  Amazon Connect Contact Lens provides both real-time and post-call analytics of
  customer-agent
  conversations. For more information, see [Analyze conversations using speech
  analytics](https://docs.aws.amazon.com/connect/latest/adminguide/analyze-conversations.html)
  in the *Amazon Connect Administrator
  Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      categories() :: %{
        "MatchedCategories" => list(String.t() | atom()),
        "MatchedDetails" => map()
      }

  """
  @type categories() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      category_details() :: %{
        "PointsOfInterest" => list(point_of_interest())
      }

  """
  @type category_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      character_offsets() :: %{
        "BeginOffsetChar" => integer(),
        "EndOffsetChar" => integer()
      }

  """
  @type character_offsets() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_service_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type invalid_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      issue_detected() :: %{
        "CharacterOffsets" => character_offsets()
      }

  """
  @type issue_detected() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_realtime_contact_analysis_segments_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ContactId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type list_realtime_contact_analysis_segments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_realtime_contact_analysis_segments_response() :: %{
        "NextToken" => String.t() | atom(),
        "Segments" => list(realtime_contact_analysis_segment())
      }

  """
  @type list_realtime_contact_analysis_segments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      point_of_interest() :: %{
        "BeginOffsetMillis" => integer(),
        "EndOffsetMillis" => integer()
      }

  """
  @type point_of_interest() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      post_contact_summary() :: %{
        "Content" => String.t() | atom(),
        "FailureCode" => list(any()),
        "Status" => list(any())
      }

  """
  @type post_contact_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      realtime_contact_analysis_segment() :: %{
        "Categories" => categories(),
        "PostContactSummary" => post_contact_summary(),
        "Transcript" => transcript()
      }

  """
  @type realtime_contact_analysis_segment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      transcript() :: %{
        "BeginOffsetMillis" => integer(),
        "Content" => String.t() | atom(),
        "EndOffsetMillis" => integer(),
        "Id" => String.t() | atom(),
        "IssuesDetected" => list(issue_detected()),
        "ParticipantId" => String.t() | atom(),
        "ParticipantRole" => String.t() | atom(),
        "Sentiment" => list(any())
      }

  """
  @type transcript() :: %{(String.t() | atom()) => any()}

  @type list_realtime_contact_analysis_segments_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2020-08-21",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "contact-lens",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Connect Contact Lens",
      signature_version: "v4",
      signing_name: "connect",
      target_prefix: nil
    }
  end

  @doc """
  Provides a list of analysis segments for a real-time analysis session.
  """
  @spec list_realtime_contact_analysis_segments(
          map(),
          list_realtime_contact_analysis_segments_request(),
          list()
        ) ::
          {:ok, list_realtime_contact_analysis_segments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_realtime_contact_analysis_segments_errors()}
  def list_realtime_contact_analysis_segments(%Client{} = client, input, options \\ []) do
    url_path = "/realtime-contact-analysis/analysis-segments"
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
