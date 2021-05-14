# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTFleetHub do
  @moduledoc """
  With Fleet Hub for AWS IoT Device Management you can build stand-alone web
  applications for monitoring the health of your device fleets.

  Fleet Hub for AWS IoT Device Management is in public preview and is subject to
  change.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-11-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.fleethub.iot",
      global?: false,
      protocol: "rest-json",
      service_id: "IoTFleetHub",
      signature_version: "v4",
      signing_name: "iotfleethub",
      target_prefix: nil
    }
  end

  @doc """
  Creates a Fleet Hub for AWS IoT Device Management web application.

  Fleet Hub for AWS IoT Device Management is in public preview and is subject to
  change.
  """
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
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
      201
    )
  end

  @doc """
  Deletes a Fleet Hub for AWS IoT Device Management web application.

  Fleet Hub for AWS IoT Device Management is in public preview and is subject to
  change.
  """
  def delete_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{URI.encode(application_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      204
    )
  end

  @doc """
  Gets information about a Fleet Hub for AWS IoT Device Management web
  application.

  Fleet Hub for AWS IoT Device Management is in public preview and is subject to
  change.
  """
  def describe_application(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{URI.encode(application_id)}"
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
      200
    )
  end

  @doc """
  Gets a list of Fleet Hub for AWS IoT Device Management web applications for the
  current account.

  Fleet Hub for AWS IoT Device Management is in public preview and is subject to
  change.
  """
  def list_applications(%Client{} = client, next_token \\ nil, options \\ []) do
    url_path = "/applications"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
      200
    )
  end

  @doc """
  Lists the tags for the specified resource.

  Fleet Hub for AWS IoT Device Management is in public preview and is subject to
  change.
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
  Adds to or modifies the tags of the specified resource.

  Tags are metadata which can be used to manage a resource.

  Fleet Hub for AWS IoT Device Management is in public preview and is subject to
  change.
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
  Removes the specified tags (metadata) from the resource.

  Fleet Hub for AWS IoT Device Management is in public preview and is subject to
  change.
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
  Updates information about a Fleet Hub for a AWS IoT Device Management web
  application.

  Fleet Hub for AWS IoT Device Management is in public preview and is subject to
  change.
  """
  def update_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{URI.encode(application_id)}"
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
      202
    )
  end
end
