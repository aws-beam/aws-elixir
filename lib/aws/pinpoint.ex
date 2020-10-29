# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Pinpoint do
  @moduledoc """
  Doc Engage API - Amazon Pinpoint API
  """

  @doc """
  Creates an application.
  """
  def create_app(client, input, options \\ []) do
    path_ = "/v1/apps"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a new campaign for an application or updates the settings of an
  existing campaign for an application.
  """
  def create_campaign(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/campaigns"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a message template for messages that are sent through the email
  channel.
  """
  def create_email_template(client, template_name, input, options \\ []) do
    path_ = "/v1/templates/#{URI.encode(template_name)}/email"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates an export job for an application.
  """
  def create_export_job(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/jobs/export"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 202)
  end

  @doc """
  Creates an import job for an application.
  """
  def create_import_job(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/jobs/import"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a journey for an application.
  """
  def create_journey(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/journeys"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a message template for messages that are sent through a push
  notification channel.
  """
  def create_push_template(client, template_name, input, options \\ []) do
    path_ = "/v1/templates/#{URI.encode(template_name)}/push"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates an Amazon Pinpoint configuration for a recommender model.
  """
  def create_recommender_configuration(client, input, options \\ []) do
    path_ = "/v1/recommenders"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a new segment for an application or updates the configuration,
  dimension, and other settings for an existing segment that's associated
  with an application.
  """
  def create_segment(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/segments"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a message template for messages that are sent through the SMS
  channel.
  """
  def create_sms_template(client, template_name, input, options \\ []) do
    path_ = "/v1/templates/#{URI.encode(template_name)}/sms"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a message template for messages that are sent through the voice
  channel.
  """
  def create_voice_template(client, template_name, input, options \\ []) do
    path_ = "/v1/templates/#{URI.encode(template_name)}/voice"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Disables the ADM channel for an application and deletes any existing
  settings for the channel.
  """
  def delete_adm_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/adm"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disables the APNs channel for an application and deletes any existing
  settings for the channel.
  """
  def delete_apns_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/apns"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disables the APNs sandbox channel for an application and deletes any
  existing settings for the channel.
  """
  def delete_apns_sandbox_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/apns_sandbox"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disables the APNs VoIP channel for an application and deletes any existing
  settings for the channel.
  """
  def delete_apns_voip_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/apns_voip"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disables the APNs VoIP sandbox channel for an application and deletes any
  existing settings for the channel.
  """
  def delete_apns_voip_sandbox_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/apns_voip_sandbox"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes an application.
  """
  def delete_app(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disables the Baidu channel for an application and deletes any existing
  settings for the channel.
  """
  def delete_baidu_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/baidu"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a campaign from an application.
  """
  def delete_campaign(client, application_id, campaign_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/campaigns/#{URI.encode(campaign_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disables the email channel for an application and deletes any existing
  settings for the channel.
  """
  def delete_email_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/email"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a message template for messages that were sent through the email
  channel.
  """
  def delete_email_template(client, template_name, input, options \\ []) do
    path_ = "/v1/templates/#{URI.encode(template_name)}/email"
    headers = []
    {query_, input} =
      [
        {"Version", "version"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Deletes an endpoint from an application.
  """
  def delete_endpoint(client, application_id, endpoint_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/endpoints/#{URI.encode(endpoint_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Deletes the event stream for an application.
  """
  def delete_event_stream(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/eventstream"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disables the GCM channel for an application and deletes any existing
  settings for the channel.
  """
  def delete_gcm_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/gcm"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a journey from an application.
  """
  def delete_journey(client, application_id, journey_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/journeys/#{URI.encode(journey_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a message template for messages that were sent through a push
  notification channel.
  """
  def delete_push_template(client, template_name, input, options \\ []) do
    path_ = "/v1/templates/#{URI.encode(template_name)}/push"
    headers = []
    {query_, input} =
      [
        {"Version", "version"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Deletes an Amazon Pinpoint configuration for a recommender model.
  """
  def delete_recommender_configuration(client, recommender_id, input, options \\ []) do
    path_ = "/v1/recommenders/#{URI.encode(recommender_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a segment from an application.
  """
  def delete_segment(client, application_id, segment_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/segments/#{URI.encode(segment_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disables the SMS channel for an application and deletes any existing
  settings for the channel.
  """
  def delete_sms_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/sms"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a message template for messages that were sent through the SMS
  channel.
  """
  def delete_sms_template(client, template_name, input, options \\ []) do
    path_ = "/v1/templates/#{URI.encode(template_name)}/sms"
    headers = []
    {query_, input} =
      [
        {"Version", "version"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Deletes all the endpoints that are associated with a specific user ID.
  """
  def delete_user_endpoints(client, application_id, user_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/users/#{URI.encode(user_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Disables the voice channel for an application and deletes any existing
  settings for the channel.
  """
  def delete_voice_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/voice"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a message template for messages that were sent through the voice
  channel.
  """
  def delete_voice_template(client, template_name, input, options \\ []) do
    path_ = "/v1/templates/#{URI.encode(template_name)}/voice"
    headers = []
    {query_, input} =
      [
        {"Version", "version"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Retrieves information about the status and settings of the ADM channel for
  an application.
  """
  def get_adm_channel(client, application_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/adm"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the APNs channel for
  an application.
  """
  def get_apns_channel(client, application_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/apns"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the APNs sandbox
  channel for an application.
  """
  def get_apns_sandbox_channel(client, application_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/apns_sandbox"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the APNs VoIP
  channel for an application.
  """
  def get_apns_voip_channel(client, application_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/apns_voip"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the APNs VoIP
  sandbox channel for an application.
  """
  def get_apns_voip_sandbox_channel(client, application_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/apns_voip_sandbox"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an application.
  """
  def get_app(client, application_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard metric that applies
  to an application.
  """
  def get_application_date_range_kpi(client, application_id, kpi_name, end_time \\ nil, next_token \\ nil, page_size \\ nil, start_time \\ nil, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/kpis/daterange/#{URI.encode(kpi_name)}"
    headers = []
    query_ = []
    query_ = if !is_nil(start_time) do
      [{"start-time", start_time} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(end_time) do
      [{"end-time", end_time} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the settings for an application.
  """
  def get_application_settings(client, application_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/settings"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the applications that are associated with
  your Amazon Pinpoint account.
  """
  def get_apps(client, page_size \\ nil, token \\ nil, options \\ []) do
    path_ = "/v1/apps"
    headers = []
    query_ = []
    query_ = if !is_nil(token) do
      [{"token", token} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the Baidu channel
  for an application.
  """
  def get_baidu_channel(client, application_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/baidu"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings
  for a campaign.
  """
  def get_campaign(client, application_id, campaign_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/campaigns/#{URI.encode(campaign_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the activities for a campaign.
  """
  def get_campaign_activities(client, application_id, campaign_id, page_size \\ nil, token \\ nil, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/campaigns/#{URI.encode(campaign_id)}/activities"
    headers = []
    query_ = []
    query_ = if !is_nil(token) do
      [{"token", token} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard metric that applies
  to a campaign.
  """
  def get_campaign_date_range_kpi(client, application_id, campaign_id, kpi_name, end_time \\ nil, next_token \\ nil, page_size \\ nil, start_time \\ nil, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/campaigns/#{URI.encode(campaign_id)}/kpis/daterange/#{URI.encode(kpi_name)}"
    headers = []
    query_ = []
    query_ = if !is_nil(start_time) do
      [{"start-time", start_time} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(end_time) do
      [{"end-time", end_time} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings
  for a specific version of a campaign.
  """
  def get_campaign_version(client, application_id, campaign_id, version, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/campaigns/#{URI.encode(campaign_id)}/versions/#{URI.encode(version)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings
  for all versions of a campaign.
  """
  def get_campaign_versions(client, application_id, campaign_id, page_size \\ nil, token \\ nil, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/campaigns/#{URI.encode(campaign_id)}/versions"
    headers = []
    query_ = []
    query_ = if !is_nil(token) do
      [{"token", token} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings
  for all the campaigns that are associated with an application.
  """
  def get_campaigns(client, application_id, page_size \\ nil, token \\ nil, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/campaigns"
    headers = []
    query_ = []
    query_ = if !is_nil(token) do
      [{"token", token} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the history and status of each channel for an
  application.
  """
  def get_channels(client, application_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the email channel
  for an application.
  """
  def get_email_channel(client, application_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/email"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the content and settings of a message template for messages that
  are sent through the email channel.
  """
  def get_email_template(client, template_name, version \\ nil, options \\ []) do
    path_ = "/v1/templates/#{URI.encode(template_name)}/email"
    headers = []
    query_ = []
    query_ = if !is_nil(version) do
      [{"version", version} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the settings and attributes of a specific
  endpoint for an application.
  """
  def get_endpoint(client, application_id, endpoint_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/endpoints/#{URI.encode(endpoint_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the event stream settings for an application.
  """
  def get_event_stream(client, application_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/eventstream"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of a specific export
  job for an application.
  """
  def get_export_job(client, application_id, job_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/jobs/export/#{URI.encode(job_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of all the export jobs
  for an application.
  """
  def get_export_jobs(client, application_id, page_size \\ nil, token \\ nil, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/jobs/export"
    headers = []
    query_ = []
    query_ = if !is_nil(token) do
      [{"token", token} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the GCM channel for
  an application.
  """
  def get_gcm_channel(client, application_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/gcm"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of a specific import
  job for an application.
  """
  def get_import_job(client, application_id, job_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/jobs/import/#{URI.encode(job_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of all the import jobs
  for an application.
  """
  def get_import_jobs(client, application_id, page_size \\ nil, token \\ nil, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/jobs/import"
    headers = []
    query_ = []
    query_ = if !is_nil(token) do
      [{"token", token} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings
  for a journey.
  """
  def get_journey(client, application_id, journey_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/journeys/#{URI.encode(journey_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard engagement metric
  that applies to a journey.
  """
  def get_journey_date_range_kpi(client, application_id, journey_id, kpi_name, end_time \\ nil, next_token \\ nil, page_size \\ nil, start_time \\ nil, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/journeys/#{URI.encode(journey_id)}/kpis/daterange/#{URI.encode(kpi_name)}"
    headers = []
    query_ = []
    query_ = if !is_nil(start_time) do
      [{"start-time", start_time} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(end_time) do
      [{"end-time", end_time} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard execution metric
  that applies to a journey activity.
  """
  def get_journey_execution_activity_metrics(client, application_id, journey_activity_id, journey_id, next_token \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/journeys/#{URI.encode(journey_id)}/activities/#{URI.encode(journey_activity_id)}/execution-metrics"
    headers = []
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard execution metric
  that applies to a journey.
  """
  def get_journey_execution_metrics(client, application_id, journey_id, next_token \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/journeys/#{URI.encode(journey_id)}/execution-metrics"
    headers = []
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the content and settings of a message template for messages that
  are sent through a push notification channel.
  """
  def get_push_template(client, template_name, version \\ nil, options \\ []) do
    path_ = "/v1/templates/#{URI.encode(template_name)}/push"
    headers = []
    query_ = []
    query_ = if !is_nil(version) do
      [{"version", version} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an Amazon Pinpoint configuration for a
  recommender model.
  """
  def get_recommender_configuration(client, recommender_id, options \\ []) do
    path_ = "/v1/recommenders/#{URI.encode(recommender_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the recommender model configurations that
  are associated with your Amazon Pinpoint account.
  """
  def get_recommender_configurations(client, page_size \\ nil, token \\ nil, options \\ []) do
    path_ = "/v1/recommenders"
    headers = []
    query_ = []
    query_ = if !is_nil(token) do
      [{"token", token} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the configuration, dimension, and other
  settings for a specific segment that's associated with an application.
  """
  def get_segment(client, application_id, segment_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/segments/#{URI.encode(segment_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the export jobs for
  a segment.
  """
  def get_segment_export_jobs(client, application_id, segment_id, page_size \\ nil, token \\ nil, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/segments/#{URI.encode(segment_id)}/jobs/export"
    headers = []
    query_ = []
    query_ = if !is_nil(token) do
      [{"token", token} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the import jobs for
  a segment.
  """
  def get_segment_import_jobs(client, application_id, segment_id, page_size \\ nil, token \\ nil, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/segments/#{URI.encode(segment_id)}/jobs/import"
    headers = []
    query_ = []
    query_ = if !is_nil(token) do
      [{"token", token} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the configuration, dimension, and other
  settings for a specific version of a segment that's associated with an
  application.
  """
  def get_segment_version(client, application_id, segment_id, version, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/segments/#{URI.encode(segment_id)}/versions/#{URI.encode(version)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the configuration, dimension, and other
  settings for all the versions of a specific segment that's associated with
  an application.
  """
  def get_segment_versions(client, application_id, segment_id, page_size \\ nil, token \\ nil, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/segments/#{URI.encode(segment_id)}/versions"
    headers = []
    query_ = []
    query_ = if !is_nil(token) do
      [{"token", token} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the configuration, dimension, and other
  settings for all the segments that are associated with an application.
  """
  def get_segments(client, application_id, page_size \\ nil, token \\ nil, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/segments"
    headers = []
    query_ = []
    query_ = if !is_nil(token) do
      [{"token", token} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the SMS channel for
  an application.
  """
  def get_sms_channel(client, application_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/sms"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the content and settings of a message template for messages that
  are sent through the SMS channel.
  """
  def get_sms_template(client, template_name, version \\ nil, options \\ []) do
    path_ = "/v1/templates/#{URI.encode(template_name)}/sms"
    headers = []
    query_ = []
    query_ = if !is_nil(version) do
      [{"version", version} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the endpoints that are associated with a
  specific user ID.
  """
  def get_user_endpoints(client, application_id, user_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/users/#{URI.encode(user_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the voice channel
  for an application.
  """
  def get_voice_channel(client, application_id, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/voice"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the content and settings of a message template for messages that
  are sent through the voice channel.
  """
  def get_voice_template(client, template_name, version \\ nil, options \\ []) do
    path_ = "/v1/templates/#{URI.encode(template_name)}/voice"
    headers = []
    query_ = []
    query_ = if !is_nil(version) do
      [{"version", version} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings
  for all the journeys that are associated with an application.
  """
  def list_journeys(client, application_id, page_size \\ nil, token \\ nil, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/journeys"
    headers = []
    query_ = []
    query_ = if !is_nil(token) do
      [{"token", token} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves all the tags (keys and values) that are associated with an
  application, campaign, message template, or segment.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/v1/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the versions of a specific message
  template.
  """
  def list_template_versions(client, template_name, template_type, next_token \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/v1/templates/#{URI.encode(template_name)}/#{URI.encode(template_type)}/versions"
    headers = []
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the message templates that are associated
  with your Amazon Pinpoint account.
  """
  def list_templates(client, next_token \\ nil, page_size \\ nil, prefix \\ nil, template_type \\ nil, options \\ []) do
    path_ = "/v1/templates"
    headers = []
    query_ = []
    query_ = if !is_nil(template_type) do
      [{"template-type", template_type} | query_]
    else
      query_
    end
    query_ = if !is_nil(prefix) do
      [{"prefix", prefix} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"page-size", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a phone number.
  """
  def phone_number_validate(client, input, options \\ []) do
    path_ = "/v1/phone/number/validate"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a new event stream for an application or updates the settings of an
  existing event stream for an application.
  """
  def put_event_stream(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/eventstream"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a new event to record for endpoints, or creates or updates endpoint
  data that existing events are associated with.
  """
  def put_events(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/events"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 202)
  end

  @doc """
  Removes one or more attributes, of the same attribute type, from all the
  endpoints that are associated with an application.
  """
  def remove_attributes(client, application_id, attribute_type, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/attributes/#{URI.encode(attribute_type)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates and sends a direct message.
  """
  def send_messages(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/messages"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates and sends a message to a list of users.
  """
  def send_users_messages(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/users-messages"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Adds one or more tags (keys and values) to an application, campaign,
  message template, or segment.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/v1/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Removes one or more tags (keys and values) from an application, campaign,
  message template, or segment.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/v1/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"TagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Enables the ADM channel for an application or updates the status and
  settings of the ADM channel for an application.
  """
  def update_adm_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/adm"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Enables the APNs channel for an application or updates the status and
  settings of the APNs channel for an application.
  """
  def update_apns_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/apns"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Enables the APNs sandbox channel for an application or updates the status
  and settings of the APNs sandbox channel for an application.
  """
  def update_apns_sandbox_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/apns_sandbox"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Enables the APNs VoIP channel for an application or updates the status and
  settings of the APNs VoIP channel for an application.
  """
  def update_apns_voip_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/apns_voip"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Enables the APNs VoIP sandbox channel for an application or updates the
  status and settings of the APNs VoIP sandbox channel for an application.
  """
  def update_apns_voip_sandbox_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/apns_voip_sandbox"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the settings for an application.
  """
  def update_application_settings(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/settings"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Enables the Baidu channel for an application or updates the status and
  settings of the Baidu channel for an application.
  """
  def update_baidu_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/baidu"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the configuration and other settings for a campaign.
  """
  def update_campaign(client, application_id, campaign_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/campaigns/#{URI.encode(campaign_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Enables the email channel for an application or updates the status and
  settings of the email channel for an application.
  """
  def update_email_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/email"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an existing message template for messages that are sent through the
  email channel.
  """
  def update_email_template(client, template_name, input, options \\ []) do
    path_ = "/v1/templates/#{URI.encode(template_name)}/email"
    headers = []
    {query_, input} =
      [
        {"CreateNewVersion", "create-new-version"},
        {"Version", "version"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 202)
  end

  @doc """
  Creates a new endpoint for an application or updates the settings and
  attributes of an existing endpoint for an application. You can also use
  this operation to define custom attributes for an endpoint. If an update
  includes one or more values for a custom attribute, Amazon Pinpoint
  replaces (overwrites) any existing values with the new values.
  """
  def update_endpoint(client, application_id, endpoint_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/endpoints/#{URI.encode(endpoint_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 202)
  end

  @doc """
  Creates a new batch of endpoints for an application or updates the settings
  and attributes of a batch of existing endpoints for an application. You can
  also use this operation to define custom attributes for a batch of
  endpoints. If an update includes one or more values for a custom attribute,
  Amazon Pinpoint replaces (overwrites) any existing values with the new
  values.
  """
  def update_endpoints_batch(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/endpoints"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 202)
  end

  @doc """
  Enables the GCM channel for an application or updates the status and
  settings of the GCM channel for an application.
  """
  def update_gcm_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/gcm"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the configuration and other settings for a journey.
  """
  def update_journey(client, application_id, journey_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/journeys/#{URI.encode(journey_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Cancels (stops) an active journey.
  """
  def update_journey_state(client, application_id, journey_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/journeys/#{URI.encode(journey_id)}/state"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an existing message template for messages that are sent through a
  push notification channel.
  """
  def update_push_template(client, template_name, input, options \\ []) do
    path_ = "/v1/templates/#{URI.encode(template_name)}/push"
    headers = []
    {query_, input} =
      [
        {"CreateNewVersion", "create-new-version"},
        {"Version", "version"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 202)
  end

  @doc """
  Updates an Amazon Pinpoint configuration for a recommender model.
  """
  def update_recommender_configuration(client, recommender_id, input, options \\ []) do
    path_ = "/v1/recommenders/#{URI.encode(recommender_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a new segment for an application or updates the configuration,
  dimension, and other settings for an existing segment that's associated
  with an application.
  """
  def update_segment(client, application_id, segment_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/segments/#{URI.encode(segment_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Enables the SMS channel for an application or updates the status and
  settings of the SMS channel for an application.
  """
  def update_sms_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/sms"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an existing message template for messages that are sent through the
  SMS channel.
  """
  def update_sms_template(client, template_name, input, options \\ []) do
    path_ = "/v1/templates/#{URI.encode(template_name)}/sms"
    headers = []
    {query_, input} =
      [
        {"CreateNewVersion", "create-new-version"},
        {"Version", "version"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 202)
  end

  @doc """
  Changes the status of a specific version of a message template to *active*.
  """
  def update_template_active_version(client, template_name, template_type, input, options \\ []) do
    path_ = "/v1/templates/#{URI.encode(template_name)}/#{URI.encode(template_type)}/active-version"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Enables the voice channel for an application or updates the status and
  settings of the voice channel for an application.
  """
  def update_voice_channel(client, application_id, input, options \\ []) do
    path_ = "/v1/apps/#{URI.encode(application_id)}/channels/voice"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an existing message template for messages that are sent through the
  voice channel.
  """
  def update_voice_template(client, template_name, input, options \\ []) do
    path_ = "/v1/templates/#{URI.encode(template_name)}/voice"
    headers = []
    {query_, input} =
      [
        {"CreateNewVersion", "create-new-version"},
        {"Version", "version"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 202)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "mobiletargeting"}
    host = build_host("pinpoint", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end


  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
