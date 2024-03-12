# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ConnectContactLens do
  @moduledoc """
  Contact Lens for Amazon Connect enables you to analyze conversations between
  customer and agents,
  by using speech transcription, natural language processing, and intelligent
  search
  capabilities.

  It performs sentiment analysis, detects issues, and enables you to automatically
  categorize contacts.

  Contact Lens for Amazon Connect provides both real-time and post-call analytics
  of customer-agent
  conversations. For more information, see [Analyze conversations using Contact
  Lens](https://docs.aws.amazon.com/connect/latest/adminguide/analyze-conversations.html)
  in the *Amazon Connect Administrator Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  access_denied_exception() :: %{
    "Message" => String.t()
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  categories() :: %{
    "MatchedCategories" => list(String.t()()),
    "MatchedDetails" => map()
  }
  """
  @type categories() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  category_details() :: %{
    "PointsOfInterest" => list(point_of_interest()())
  }
  """
  @type category_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  character_offsets() :: %{
    "BeginOffsetChar" => integer(),
    "EndOffsetChar" => integer()
  }
  """
  @type character_offsets() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_service_exception() :: %{
    "Message" => String.t()
  }
  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_request_exception() :: %{
    "Message" => String.t()
  }
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  issue_detected() :: %{
    "CharacterOffsets" => character_offsets()
  }
  """
  @type issue_detected() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_realtime_contact_analysis_segments_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("ContactId") => String.t(),
    required("InstanceId") => String.t()
  }
  """
  @type list_realtime_contact_analysis_segments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_realtime_contact_analysis_segments_response() :: %{
    "NextToken" => String.t(),
    "Segments" => list(realtime_contact_analysis_segment()())
  }
  """
  @type list_realtime_contact_analysis_segments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  point_of_interest() :: %{
    "BeginOffsetMillis" => integer(),
    "EndOffsetMillis" => integer()
  }
  """
  @type point_of_interest() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  realtime_contact_analysis_segment() :: %{
    "Categories" => categories(),
    "Transcript" => transcript()
  }
  """
  @type realtime_contact_analysis_segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  throttling_exception() :: %{
    "Message" => String.t()
  }
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  transcript() :: %{
    "BeginOffsetMillis" => integer(),
    "Content" => String.t(),
    "EndOffsetMillis" => integer(),
    "Id" => String.t(),
    "IssuesDetected" => list(issue_detected()()),
    "ParticipantId" => String.t(),
    "ParticipantRole" => String.t(),
    "Sentiment" => list(any())
  }
  """
  @type transcript() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2020-08-21",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "contact-lens",
      global?: false,
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
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
  def list_realtime_contact_analysis_segments(%Client{} = client, input, options \\ []) do
    url_path = "/realtime-contact-analysis/analysis-segments"
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
      200
    )
  end
end
