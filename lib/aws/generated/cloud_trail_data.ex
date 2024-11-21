# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudTrailData do
  @moduledoc """
  The CloudTrail Data Service lets you ingest events into CloudTrail from any
  source in your
  hybrid environments, such as in-house or SaaS applications hosted on-premises or
  in the cloud,
  virtual machines, or containers.

  You can store, access, analyze, troubleshoot and take action on
  this data without maintaining multiple log aggregators and reporting tools.
  After you run
  `PutAuditEvents` to ingest your application activity into CloudTrail, you can
  use CloudTrail Lake to search, query, and analyze the data that is logged
  from your applications.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      audit_event() :: %{
        "eventData" => [String.t()],
        "eventDataChecksum" => [String.t()],
        "id" => String.t()
      }

  """
  @type audit_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audit_event_result_entry() :: %{
        "eventID" => String.t(),
        "id" => String.t()
      }

  """
  @type audit_event_result_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_insufficient_permission() :: %{
        "message" => [String.t()]
      }

  """
  @type channel_insufficient_permission() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_not_found() :: %{
        "message" => [String.t()]
      }

  """
  @type channel_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_unsupported_schema() :: %{
        "message" => [String.t()]
      }

  """
  @type channel_unsupported_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      duplicated_audit_event_id() :: %{
        "message" => [String.t()]
      }

  """
  @type duplicated_audit_event_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_channel_arn() :: %{
        "message" => [String.t()]
      }

  """
  @type invalid_channel_arn() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_audit_events_request() :: %{
        optional("externalId") => String.t(),
        required("auditEvents") => list(audit_event()()),
        required("channelArn") => String.t()
      }

  """
  @type put_audit_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_audit_events_response() :: %{
        required("failed") => list(result_error_entry()()),
        required("successful") => list(audit_event_result_entry()())
      }

  """
  @type put_audit_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      result_error_entry() :: %{
        "errorCode" => String.t(),
        "errorMessage" => String.t(),
        "id" => String.t()
      }

  """
  @type result_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unsupported_operation_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type unsupported_operation_exception() :: %{String.t() => any()}

  @type put_audit_events_errors() ::
          unsupported_operation_exception()
          | invalid_channel_arn()
          | duplicated_audit_event_id()
          | channel_unsupported_schema()
          | channel_not_found()
          | channel_insufficient_permission()

  def metadata do
    %{
      api_version: "2021-08-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cloudtrail-data",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "CloudTrail Data",
      signature_version: "v4",
      signing_name: "cloudtrail-data",
      target_prefix: nil
    }
  end

  @doc """
  Ingests your application events into CloudTrail Lake.

  A required parameter,
  `auditEvents`, accepts the JSON records (also called
  *payload*) of events that you want CloudTrail to ingest. You
  can add up to 100 of these events (or up to 1 MB) per `PutAuditEvents`
  request.
  """
  @spec put_audit_events(map(), put_audit_events_request(), list()) ::
          {:ok, put_audit_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_audit_events_errors()}
  def put_audit_events(%Client{} = client, input, options \\ []) do
    url_path = "/PutAuditEvents"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"channelArn", "channelArn"},
        {"externalId", "externalId"}
      ]
      |> Request.build_params(input)

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
