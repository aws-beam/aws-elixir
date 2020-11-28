# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Honeycode do
  @moduledoc """
  Amazon Honeycode is a fully managed service that allows you to quickly build
  mobile and web apps for teams—without programming.

  Build Honeycode apps for managing almost anything, like projects, customers,
  operations, approvals, resources, and even your team.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-03-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "honeycode",
      global?: false,
      protocol: "rest-json",
      service_id: "Honeycode",
      signature_version: "v4",
      signing_name: "honeycode",
      target_prefix: nil
    }
  end

  @doc """
  The GetScreenData API allows retrieval of data from a screen in a Honeycode app.

  The API allows setting local variables in the screen to filter, sort or
  otherwise affect what will be displayed on the screen.
  """
  def get_screen_data(%Client{} = client, input, options \\ []) do
    url_path = "/screendata"
    headers = []
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
      nil
    )
  end

  @doc """
  The InvokeScreenAutomation API allows invoking an action defined in a screen in
  a Honeycode app.

  The API allows setting local variables, which can then be used in the automation
  being invoked. This allows automating the Honeycode app interactions to write,
  update or delete data in the workbook.
  """
  def invoke_screen_automation(
        %Client{} = client,
        app_id,
        screen_automation_id,
        screen_id,
        workbook_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workbooks/#{URI.encode(workbook_id)}/apps/#{URI.encode(app_id)}/screens/#{
        URI.encode(screen_id)
      }/automations/#{URI.encode(screen_automation_id)}"

    headers = []
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
      nil
    )
  end
end