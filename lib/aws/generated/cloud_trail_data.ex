# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudTrailData do
  @moduledoc """
  The CloudTrail Data Service lets you ingest events into CloudTrail from any
  source in your hybrid environments, such as in-house or SaaS applications hosted
  on-premises or in the cloud, virtual machines, or containers.

  You can store, access, analyze, troubleshoot and take action on this data
  without maintaining multiple log aggregators and reporting tools. After you run
  `PutAuditEvents` to ingest your application activity into CloudTrail, you can
  use CloudTrail Lake to search, query, and analyze the data that is logged from
  your applications.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2021-08-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cloudtrail-data",
      global?: false,
      protocol: "rest-json",
      service_id: "CloudTrail Data",
      signature_version: "v4",
      signing_name: "cloudtrail-data",
      target_prefix: nil
    }
  end

  @doc """
  Ingests your application events into CloudTrail Lake.

  A required parameter, `auditEvents`, accepts the JSON records (also called
  *payload*) of events that you want CloudTrail to ingest. You can add up to 100
  of these events (or up to 1 MB) per `PutAuditEvents` request.
  """
  def put_audit_events(%Client{} = client, input, options \\ []) do
    url_path = "/PutAuditEvents"
    headers = []

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
      headers,
      input,
      options,
      200
    )
  end
end
