# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Pinpoint do
  @moduledoc """
  Doc Engage API - Amazon Pinpoint API
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2016-12-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "pinpoint",
      global?: false,
      protocol: "rest-json",
      service_id: "Pinpoint",
      signature_version: "v4",
      signing_name: "mobiletargeting",
      target_prefix: nil
    }
  end

  @doc """
  Creates an application.
  """
  def create_app(%Client{} = client, input, options \\ []) do
    url_path = "/v1/apps"
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
      201
    )
  end

  @doc """
  Creates a new campaign for an application or updates the settings of an existing
  campaign for an application.
  """
  def create_campaign(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/campaigns"
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
      201
    )
  end

  @doc """
  Creates a message template for messages that are sent through the email channel.
  """
  def create_email_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/email"
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
      201
    )
  end

  @doc """
  Creates an export job for an application.
  """
  def create_export_job(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/jobs/export"
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
      202
    )
  end

  @doc """
  Creates an import job for an application.
  """
  def create_import_job(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/jobs/import"
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
      201
    )
  end

  @doc """
  Creates a new message template for messages using the in-app message channel.
  """
  def create_in_app_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/inapp"
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
      201
    )
  end

  @doc """
  Creates a journey for an application.
  """
  def create_journey(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys"
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
      201
    )
  end

  @doc """
  Creates a message template for messages that are sent through a push
  notification channel.
  """
  def create_push_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/push"
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
      201
    )
  end

  @doc """
  Creates an Amazon Pinpoint configuration for a recommender model.
  """
  def create_recommender_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/v1/recommenders"
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
      201
    )
  end

  @doc """
  Creates a new segment for an application or updates the configuration,
  dimension, and other settings for an existing segment that's associated with an
  application.
  """
  def create_segment(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/segments"
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
      201
    )
  end

  @doc """
  Creates a message template for messages that are sent through the SMS channel.
  """
  def create_sms_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/sms"
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
      201
    )
  end

  @doc """
  Creates a message template for messages that are sent through the voice channel.
  """
  def create_voice_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/voice"
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
      201
    )
  end

  @doc """
  Disables the ADM channel for an application and deletes any existing settings
  for the channel.
  """
  def delete_adm_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/adm"
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
  Disables the APNs channel for an application and deletes any existing settings
  for the channel.
  """
  def delete_apns_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns"
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
  Disables the APNs sandbox channel for an application and deletes any existing
  settings for the channel.
  """
  def delete_apns_sandbox_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns_sandbox"
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
  Disables the APNs VoIP channel for an application and deletes any existing
  settings for the channel.
  """
  def delete_apns_voip_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns_voip"
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
  Disables the APNs VoIP sandbox channel for an application and deletes any
  existing settings for the channel.
  """
  def delete_apns_voip_sandbox_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns_voip_sandbox"
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
  Deletes an application.
  """
  def delete_app(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}"
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
  Disables the Baidu channel for an application and deletes any existing settings
  for the channel.
  """
  def delete_baidu_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/baidu"
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
  Deletes a campaign from an application.
  """
  def delete_campaign(%Client{} = client, application_id, campaign_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/campaigns/#{AWS.Util.encode_uri(campaign_id)}"

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
  Disables the email channel for an application and deletes any existing settings
  for the channel.
  """
  def delete_email_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/email"
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
  Deletes a message template for messages that were sent through the email
  channel.
  """
  def delete_email_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/email"
    headers = []

    {query_params, input} =
      [
        {"Version", "version"}
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
      202
    )
  end

  @doc """
  Deletes an endpoint from an application.
  """
  def delete_endpoint(%Client{} = client, application_id, endpoint_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}"

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
      202
    )
  end

  @doc """
  Deletes the event stream for an application.
  """
  def delete_event_stream(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/eventstream"
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
  Disables the GCM channel for an application and deletes any existing settings
  for the channel.
  """
  def delete_gcm_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/gcm"
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
  Deletes a message template for messages sent using the in-app message channel.
  """
  def delete_in_app_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/inapp"
    headers = []

    {query_params, input} =
      [
        {"Version", "version"}
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
      202
    )
  end

  @doc """
  Deletes a journey from an application.
  """
  def delete_journey(%Client{} = client, application_id, journey_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys/#{AWS.Util.encode_uri(journey_id)}"

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
  Deletes a message template for messages that were sent through a push
  notification channel.
  """
  def delete_push_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/push"
    headers = []

    {query_params, input} =
      [
        {"Version", "version"}
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
      202
    )
  end

  @doc """
  Deletes an Amazon Pinpoint configuration for a recommender model.
  """
  def delete_recommender_configuration(%Client{} = client, recommender_id, input, options \\ []) do
    url_path = "/v1/recommenders/#{AWS.Util.encode_uri(recommender_id)}"
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
  Deletes a segment from an application.
  """
  def delete_segment(%Client{} = client, application_id, segment_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/segments/#{AWS.Util.encode_uri(segment_id)}"

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
  Disables the SMS channel for an application and deletes any existing settings
  for the channel.
  """
  def delete_sms_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/sms"
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
  Deletes a message template for messages that were sent through the SMS channel.
  """
  def delete_sms_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/sms"
    headers = []

    {query_params, input} =
      [
        {"Version", "version"}
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
      202
    )
  end

  @doc """
  Deletes all the endpoints that are associated with a specific user ID.
  """
  def delete_user_endpoints(%Client{} = client, application_id, user_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/users/#{AWS.Util.encode_uri(user_id)}"

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
      202
    )
  end

  @doc """
  Disables the voice channel for an application and deletes any existing settings
  for the channel.
  """
  def delete_voice_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/voice"
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
  Deletes a message template for messages that were sent through the voice
  channel.
  """
  def delete_voice_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/voice"
    headers = []

    {query_params, input} =
      [
        {"Version", "version"}
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
      202
    )
  end

  @doc """
  Retrieves information about the status and settings of the ADM channel for an
  application.
  """
  def get_adm_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/adm"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the APNs channel for an
  application.
  """
  def get_apns_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the APNs sandbox channel
  for an application.
  """
  def get_apns_sandbox_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns_sandbox"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the APNs VoIP channel for
  an application.
  """
  def get_apns_voip_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns_voip"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the APNs VoIP sandbox
  channel for an application.
  """
  def get_apns_voip_sandbox_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns_voip_sandbox"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an application.
  """
  def get_app(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard metric that applies to an
  application.
  """
  def get_application_date_range_kpi(
        %Client{} = client,
        application_id,
        kpi_name,
        end_time \\ nil,
        next_token \\ nil,
        page_size \\ nil,
        start_time \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/kpis/daterange/#{AWS.Util.encode_uri(kpi_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"start-time", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"end-time", end_time} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the settings for an application.
  """
  def get_application_settings(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the applications that are associated with your
  Amazon Pinpoint account.
  """
  def get_apps(%Client{} = client, page_size \\ nil, token \\ nil, options \\ []) do
    url_path = "/v1/apps"
    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the Baidu channel for an
  application.
  """
  def get_baidu_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/baidu"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings for a
  campaign.
  """
  def get_campaign(%Client{} = client, application_id, campaign_id, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/campaigns/#{AWS.Util.encode_uri(campaign_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the activities for a campaign.
  """
  def get_campaign_activities(
        %Client{} = client,
        application_id,
        campaign_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/campaigns/#{AWS.Util.encode_uri(campaign_id)}/activities"

    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard metric that applies to a
  campaign.
  """
  def get_campaign_date_range_kpi(
        %Client{} = client,
        application_id,
        campaign_id,
        kpi_name,
        end_time \\ nil,
        next_token \\ nil,
        page_size \\ nil,
        start_time \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/campaigns/#{AWS.Util.encode_uri(campaign_id)}/kpis/daterange/#{AWS.Util.encode_uri(kpi_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"start-time", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"end-time", end_time} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings for a
  specific version of a campaign.
  """
  def get_campaign_version(
        %Client{} = client,
        application_id,
        campaign_id,
        version,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/campaigns/#{AWS.Util.encode_uri(campaign_id)}/versions/#{AWS.Util.encode_uri(version)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings for
  all versions of a campaign.
  """
  def get_campaign_versions(
        %Client{} = client,
        application_id,
        campaign_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/campaigns/#{AWS.Util.encode_uri(campaign_id)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings for
  all the campaigns that are associated with an application.
  """
  def get_campaigns(
        %Client{} = client,
        application_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/campaigns"
    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the history and status of each channel for an
  application.
  """
  def get_channels(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the email channel for an
  application.
  """
  def get_email_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/email"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the content and settings of a message template for messages that are
  sent through the email channel.
  """
  def get_email_template(%Client{} = client, template_name, version \\ nil, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/email"
    headers = []
    query_params = []

    query_params =
      if !is_nil(version) do
        [{"version", version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the settings and attributes of a specific endpoint
  for an application.
  """
  def get_endpoint(%Client{} = client, application_id, endpoint_id, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the event stream settings for an application.
  """
  def get_event_stream(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/eventstream"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of a specific export job for
  an application.
  """
  def get_export_job(%Client{} = client, application_id, job_id, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/jobs/export/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of all the export jobs for
  an application.
  """
  def get_export_jobs(
        %Client{} = client,
        application_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/jobs/export"
    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the GCM channel for an
  application.
  """
  def get_gcm_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/gcm"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of a specific import job for
  an application.
  """
  def get_import_job(%Client{} = client, application_id, job_id, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/jobs/import/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of all the import jobs for
  an application.
  """
  def get_import_jobs(
        %Client{} = client,
        application_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/jobs/import"
    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the in-app messages targeted for the provided endpoint ID.
  """
  def get_in_app_messages(%Client{} = client, application_id, endpoint_id, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}/inappmessages"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the content and settings of a message template for messages sent
  through the in-app channel.
  """
  def get_in_app_template(%Client{} = client, template_name, version \\ nil, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/inapp"
    headers = []
    query_params = []

    query_params =
      if !is_nil(version) do
        [{"version", version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings for a
  journey.
  """
  def get_journey(%Client{} = client, application_id, journey_id, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys/#{AWS.Util.encode_uri(journey_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard engagement metric that
  applies to a journey.
  """
  def get_journey_date_range_kpi(
        %Client{} = client,
        application_id,
        journey_id,
        kpi_name,
        end_time \\ nil,
        next_token \\ nil,
        page_size \\ nil,
        start_time \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys/#{AWS.Util.encode_uri(journey_id)}/kpis/daterange/#{AWS.Util.encode_uri(kpi_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"start-time", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"end-time", end_time} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard execution metric that
  applies to a journey activity.
  """
  def get_journey_execution_activity_metrics(
        %Client{} = client,
        application_id,
        journey_activity_id,
        journey_id,
        next_token \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys/#{AWS.Util.encode_uri(journey_id)}/activities/#{AWS.Util.encode_uri(journey_activity_id)}/execution-metrics"

    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard execution metric that
  applies to a journey.
  """
  def get_journey_execution_metrics(
        %Client{} = client,
        application_id,
        journey_id,
        next_token \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys/#{AWS.Util.encode_uri(journey_id)}/execution-metrics"

    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the content and settings of a message template for messages that are
  sent through a push notification channel.
  """
  def get_push_template(%Client{} = client, template_name, version \\ nil, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/push"
    headers = []
    query_params = []

    query_params =
      if !is_nil(version) do
        [{"version", version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an Amazon Pinpoint configuration for a recommender
  model.
  """
  def get_recommender_configuration(%Client{} = client, recommender_id, options \\ []) do
    url_path = "/v1/recommenders/#{AWS.Util.encode_uri(recommender_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the recommender model configurations that are
  associated with your Amazon Pinpoint account.
  """
  def get_recommender_configurations(
        %Client{} = client,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/recommenders"
    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the configuration, dimension, and other settings for
  a specific segment that's associated with an application.
  """
  def get_segment(%Client{} = client, application_id, segment_id, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/segments/#{AWS.Util.encode_uri(segment_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the export jobs for a
  segment.
  """
  def get_segment_export_jobs(
        %Client{} = client,
        application_id,
        segment_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/segments/#{AWS.Util.encode_uri(segment_id)}/jobs/export"

    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the import jobs for a
  segment.
  """
  def get_segment_import_jobs(
        %Client{} = client,
        application_id,
        segment_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/segments/#{AWS.Util.encode_uri(segment_id)}/jobs/import"

    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the configuration, dimension, and other settings for
  a specific version of a segment that's associated with an application.
  """
  def get_segment_version(%Client{} = client, application_id, segment_id, version, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/segments/#{AWS.Util.encode_uri(segment_id)}/versions/#{AWS.Util.encode_uri(version)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the configuration, dimension, and other settings for
  all the versions of a specific segment that's associated with an application.
  """
  def get_segment_versions(
        %Client{} = client,
        application_id,
        segment_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/segments/#{AWS.Util.encode_uri(segment_id)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the configuration, dimension, and other settings for
  all the segments that are associated with an application.
  """
  def get_segments(
        %Client{} = client,
        application_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/segments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the SMS channel for an
  application.
  """
  def get_sms_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/sms"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the content and settings of a message template for messages that are
  sent through the SMS channel.
  """
  def get_sms_template(%Client{} = client, template_name, version \\ nil, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/sms"
    headers = []
    query_params = []

    query_params =
      if !is_nil(version) do
        [{"version", version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the endpoints that are associated with a
  specific user ID.
  """
  def get_user_endpoints(%Client{} = client, application_id, user_id, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/users/#{AWS.Util.encode_uri(user_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the voice channel for an
  application.
  """
  def get_voice_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/voice"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the content and settings of a message template for messages that are
  sent through the voice channel.
  """
  def get_voice_template(%Client{} = client, template_name, version \\ nil, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/voice"
    headers = []
    query_params = []

    query_params =
      if !is_nil(version) do
        [{"version", version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings for
  all the journeys that are associated with an application.
  """
  def list_journeys(
        %Client{} = client,
        application_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys"
    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves all the tags (keys and values) that are associated with an
  application, campaign, message template, or segment.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the versions of a specific message template.
  """
  def list_template_versions(
        %Client{} = client,
        template_name,
        template_type,
        next_token \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/templates/#{AWS.Util.encode_uri(template_name)}/#{AWS.Util.encode_uri(template_type)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the message templates that are associated with
  your Amazon Pinpoint account.
  """
  def list_templates(
        %Client{} = client,
        next_token \\ nil,
        page_size \\ nil,
        prefix \\ nil,
        template_type \\ nil,
        options \\ []
      ) do
    url_path = "/v1/templates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(template_type) do
        [{"template-type", template_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(prefix) do
        [{"prefix", prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a phone number.
  """
  def phone_number_validate(%Client{} = client, input, options \\ []) do
    url_path = "/v1/phone/number/validate"
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
  Creates a new event stream for an application or updates the settings of an
  existing event stream for an application.
  """
  def put_event_stream(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/eventstream"
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
  Creates a new event to record for endpoints, or creates or updates endpoint data
  that existing events are associated with.
  """
  def put_events(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/events"
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
      202
    )
  end

  @doc """
  Removes one or more attributes, of the same attribute type, from all the
  endpoints that are associated with an application.
  """
  def remove_attributes(%Client{} = client, application_id, attribute_type, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/attributes/#{AWS.Util.encode_uri(attribute_type)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates and sends a direct message.
  """
  def send_messages(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/messages"
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
  Send an OTP message
  """
  def send_o_t_p_message(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/otp"
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
  Creates and sends a message to a list of users.
  """
  def send_users_messages(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/users-messages"
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
  Adds one or more tags (keys and values) to an application, campaign, message
  template, or segment.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      204
    )
  end

  @doc """
  Removes one or more tags (keys and values) from an application, campaign,
  message template, or segment.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Enables the ADM channel for an application or updates the status and settings of
  the ADM channel for an application.
  """
  def update_adm_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/adm"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables the APNs channel for an application or updates the status and settings
  of the APNs channel for an application.
  """
  def update_apns_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables the APNs sandbox channel for an application or updates the status and
  settings of the APNs sandbox channel for an application.
  """
  def update_apns_sandbox_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns_sandbox"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables the APNs VoIP channel for an application or updates the status and
  settings of the APNs VoIP channel for an application.
  """
  def update_apns_voip_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns_voip"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables the APNs VoIP sandbox channel for an application or updates the status
  and settings of the APNs VoIP sandbox channel for an application.
  """
  def update_apns_voip_sandbox_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns_voip_sandbox"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the settings for an application.
  """
  def update_application_settings(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables the Baidu channel for an application or updates the status and settings
  of the Baidu channel for an application.
  """
  def update_baidu_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/baidu"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the configuration and other settings for a campaign.
  """
  def update_campaign(%Client{} = client, application_id, campaign_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/campaigns/#{AWS.Util.encode_uri(campaign_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables the email channel for an application or updates the status and settings
  of the email channel for an application.
  """
  def update_email_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/email"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing message template for messages that are sent through the
  email channel.
  """
  def update_email_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/email"
    headers = []

    {query_params, input} =
      [
        {"CreateNewVersion", "create-new-version"},
        {"Version", "version"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Creates a new endpoint for an application or updates the settings and attributes
  of an existing endpoint for an application.

  You can also use this operation to define custom attributes for an endpoint. If
  an update includes one or more values for a custom attribute, Amazon Pinpoint
  replaces (overwrites) any existing values with the new values.
  """
  def update_endpoint(%Client{} = client, application_id, endpoint_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Creates a new batch of endpoints for an application or updates the settings and
  attributes of a batch of existing endpoints for an application.

  You can also use this operation to define custom attributes for a batch of
  endpoints. If an update includes one or more values for a custom attribute,
  Amazon Pinpoint replaces (overwrites) any existing values with the new values.
  """
  def update_endpoints_batch(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/endpoints"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Enables the GCM channel for an application or updates the status and settings of
  the GCM channel for an application.
  """
  def update_gcm_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/gcm"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing message template for messages sent through the in-app
  message channel.
  """
  def update_in_app_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/inapp"
    headers = []

    {query_params, input} =
      [
        {"CreateNewVersion", "create-new-version"},
        {"Version", "version"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates the configuration and other settings for a journey.
  """
  def update_journey(%Client{} = client, application_id, journey_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys/#{AWS.Util.encode_uri(journey_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Pause, resume or cancels (stops) a journey.
  """
  def update_journey_state(%Client{} = client, application_id, journey_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys/#{AWS.Util.encode_uri(journey_id)}/state"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing message template for messages that are sent through a push
  notification channel.
  """
  def update_push_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/push"
    headers = []

    {query_params, input} =
      [
        {"CreateNewVersion", "create-new-version"},
        {"Version", "version"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates an Amazon Pinpoint configuration for a recommender model.
  """
  def update_recommender_configuration(%Client{} = client, recommender_id, input, options \\ []) do
    url_path = "/v1/recommenders/#{AWS.Util.encode_uri(recommender_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a new segment for an application or updates the configuration,
  dimension, and other settings for an existing segment that's associated with an
  application.
  """
  def update_segment(%Client{} = client, application_id, segment_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/segments/#{AWS.Util.encode_uri(segment_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables the SMS channel for an application or updates the status and settings of
  the SMS channel for an application.
  """
  def update_sms_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/sms"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing message template for messages that are sent through the SMS
  channel.
  """
  def update_sms_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/sms"
    headers = []

    {query_params, input} =
      [
        {"CreateNewVersion", "create-new-version"},
        {"Version", "version"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Changes the status of a specific version of a message template to *active*.
  """
  def update_template_active_version(
        %Client{} = client,
        template_name,
        template_type,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/templates/#{AWS.Util.encode_uri(template_name)}/#{AWS.Util.encode_uri(template_type)}/active-version"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables the voice channel for an application or updates the status and settings
  of the voice channel for an application.
  """
  def update_voice_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/voice"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing message template for messages that are sent through the
  voice channel.
  """
  def update_voice_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/voice"
    headers = []

    {query_params, input} =
      [
        {"CreateNewVersion", "create-new-version"},
        {"Version", "version"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Verify an OTP
  """
  def verify_o_t_p_message(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/verify-otp"
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
