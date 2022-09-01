# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ConnectCampaigns do
  @moduledoc """
  Provide APIs to create and manage Amazon Connect Campaigns.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2021-01-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "connect-campaigns",
      global?: false,
      protocol: "rest-json",
      service_id: "ConnectCampaigns",
      signature_version: "v4",
      signing_name: "connect-campaigns",
      target_prefix: nil
    }
  end

  @doc """
  Creates a campaign for the specified Amazon Connect account.

  This API is idempotent.
  """
  def create_campaign(%Client{} = client, input, options \\ []) do
    url_path = "/campaigns"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Deletes a campaign from the specified Amazon Connect account.
  """
  def delete_campaign(%Client{} = client, id, input, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a connect instance config from the specified AWS account.
  """
  def delete_connect_instance_config(
        %Client{} = client,
        connect_instance_id,
        input,
        options \\ []
      ) do
    url_path = "/connect-instance/#{AWS.Util.encode_uri(connect_instance_id)}/config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Delete the Connect Campaigns onboarding job for the specified Amazon Connect
  instance.
  """
  def delete_instance_onboarding_job(
        %Client{} = client,
        connect_instance_id,
        input,
        options \\ []
      ) do
    url_path = "/connect-instance/#{AWS.Util.encode_uri(connect_instance_id)}/onboarding"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes the specific campaign.
  """
  def describe_campaign(%Client{} = client, id, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get state of a campaign for the specified Amazon Connect account.
  """
  def get_campaign_state(%Client{} = client, id, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}/state"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get state of campaigns for the specified Amazon Connect account.
  """
  def get_campaign_state_batch(%Client{} = client, input, options \\ []) do
    url_path = "/campaigns-state"
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

  @doc """
  Get the specific Connect instance config.
  """
  def get_connect_instance_config(%Client{} = client, connect_instance_id, options \\ []) do
    url_path = "/connect-instance/#{AWS.Util.encode_uri(connect_instance_id)}/config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the specific instance onboarding job status.
  """
  def get_instance_onboarding_job_status(%Client{} = client, connect_instance_id, options \\ []) do
    url_path = "/connect-instance/#{AWS.Util.encode_uri(connect_instance_id)}/onboarding"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides summary information about the campaigns under the specified Amazon
  Connect account.
  """
  def list_campaigns(%Client{} = client, input, options \\ []) do
    url_path = "/campaigns-summary"
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

  @doc """
  List tags for a resource.
  """
  def list_tags_for_resource(%Client{} = client, arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Pauses a campaign for the specified Amazon Connect account.
  """
  def pause_campaign(%Client{} = client, id, input, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}/pause"
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

  @doc """
  Creates dials requests for the specified campaign Amazon Connect account.

  This API is idempotent.
  """
  def put_dial_request_batch(%Client{} = client, id, input, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}/dial-requests"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Stops a campaign for the specified Amazon Connect account.
  """
  def resume_campaign(%Client{} = client, id, input, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}/resume"
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

  @doc """
  Starts a campaign for the specified Amazon Connect account.
  """
  def start_campaign(%Client{} = client, id, input, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}/start"
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

  @doc """
  Onboard the specific Amazon Connect instance to Connect Campaigns.
  """
  def start_instance_onboarding_job(%Client{} = client, connect_instance_id, input, options \\ []) do
    url_path = "/connect-instance/#{AWS.Util.encode_uri(connect_instance_id)}/onboarding"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Stops a campaign for the specified Amazon Connect account.
  """
  def stop_campaign(%Client{} = client, id, input, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}/stop"
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

  @doc """
  Tag a resource.
  """
  def tag_resource(%Client{} = client, arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"
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

  @doc """
  Untag a resource.
  """
  def untag_resource(%Client{} = client, arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the dialer config of a campaign.

  This API is idempotent.
  """
  def update_campaign_dialer_config(%Client{} = client, id, input, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}/dialer-config"
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

  @doc """
  Updates the name of a campaign.

  This API is idempotent.
  """
  def update_campaign_name(%Client{} = client, id, input, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}/name"
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

  @doc """
  Updates the outbound call config of a campaign.

  This API is idempotent.
  """
  def update_campaign_outbound_call_config(%Client{} = client, id, input, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}/outbound-call-config"
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
