# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Mobileanalytics do
  @moduledoc """
  Amazon Mobile Analytics is a service for collecting, visualizing, and
  understanding app usage data at scale.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2014-06-05",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mobileanalytics",
      global?: false,
      protocol: "rest-json",
      service_id: nil,
      signature_version: "v4",
      signing_name: "mobileanalytics",
      target_prefix: nil
    }
  end

  @doc """
  The PutEvents operation records one or more events.

  You can have up to 1,500 unique custom events per app, any combination of up to
  40 attributes and metrics per custom event, and any number of attribute or
  metric values.
  """
  def put_events(%Client{} = client, input, options \\ []) do
    url_path = "/2014-06-05/events"

    {headers, input} =
      [
        {"clientContext", "x-amz-Client-Context"},
        {"clientContextEncoding", "x-amz-Client-Context-Encoding"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end
end