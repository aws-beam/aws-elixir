# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppIntegrations do
  @moduledoc """
  The Amazon AppIntegrations APIs are in preview release and are subject to
  change.

  The Amazon AppIntegrations service enables you to configure and reuse
  connections to external applications.

  For information about how you can use external applications with Amazon Connect,
  see [Set up pre-built integrations](https://docs.aws.amazon.com/connect/latest/adminguide/crm.html) in
  the *Amazon Connect Administrator Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-07-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "app-integrations",
      global?: false,
      protocol: "rest-json",
      service_id: "AppIntegrations",
      signature_version: "v4",
      signing_name: "app-integrations",
      target_prefix: nil
    }
  end

  @doc """
  The Amazon AppIntegrations APIs are in preview release and are subject to
  change.

  Creates an EventIntegration, given a specified name, description, and a
  reference to an Amazon Eventbridge bus in your account and a partner event
  source that will push events to that bus. No objects are created in the your
  account, only metadata that is persisted on the EventIntegration control plane.
  """
  def create_event_integration(%Client{} = client, input, options \\ []) do
    url_path = "/eventIntegrations"
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
  The Amazon AppIntegrations APIs are in preview release and are subject to
  change.

  Deletes the specified existing event integration. If the event integration is
  associated with clients, the request is rejected.
  """
  def delete_event_integration(%Client{} = client, name, input, options \\ []) do
    url_path = "/eventIntegrations/#{URI.encode(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  The Amazon AppIntegrations APIs are in preview release and are subject to
  change.

  Return information about the event integration.
  """
  def get_event_integration(%Client{} = client, name, options \\ []) do
    url_path = "/eventIntegrations/#{URI.encode(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  The Amazon AppIntegrations APIs are in preview release and are subject to
  change.

  Returns a paginated list of event integration associations in the account.
  """
  def list_event_integration_associations(
        %Client{} = client,
        event_integration_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/eventIntegrations/#{URI.encode(event_integration_name)}/associations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
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
  The Amazon AppIntegrations APIs are in preview release and are subject to
  change.

  Returns a paginated list of event integrations in the account.
  """
  def list_event_integrations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/eventIntegrations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
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
  The Amazon AppIntegrations APIs are in preview release and are subject to
  change.

  Lists the tags for the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  The Amazon AppIntegrations APIs are in preview release and are subject to
  change.

  Adds the specified tags to the specified resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
  The Amazon AppIntegrations APIs are in preview release and are subject to
  change.

  Removes the specified tags from the specified resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
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
  The Amazon AppIntegrations APIs are in preview release and are subject to
  change.

  Updates the description of an event integration.
  """
  def update_event_integration(%Client{} = client, name, input, options \\ []) do
    url_path = "/eventIntegrations/#{URI.encode(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
