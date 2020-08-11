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
    path = "/v1/apps"
    headers = []
    request(client, :post, path, headers, input, options, 201)
  end

  @doc """
  Creates a new campaign for an application or updates the settings of an
  existing campaign for an application.
  """
  def create_campaign(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/campaigns"
    headers = []
    request(client, :post, path, headers, input, options, 201)
  end

  @doc """
  Creates a message template for messages that are sent through the email
  channel.
  """
  def create_email_template(client, template_name, input, options \\ []) do
    path = "/v1/templates/#{URI.encode(template_name)}/email"
    headers = []
    request(client, :post, path, headers, input, options, 201)
  end

  @doc """
  Creates an export job for an application.
  """
  def create_export_job(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/jobs/export"
    headers = []
    request(client, :post, path, headers, input, options, 202)
  end

  @doc """
  Creates an import job for an application.
  """
  def create_import_job(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/jobs/import"
    headers = []
    request(client, :post, path, headers, input, options, 201)
  end

  @doc """
  Creates a journey for an application.
  """
  def create_journey(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/journeys"
    headers = []
    request(client, :post, path, headers, input, options, 201)
  end

  @doc """
  Creates a message template for messages that are sent through a push
  notification channel.
  """
  def create_push_template(client, template_name, input, options \\ []) do
    path = "/v1/templates/#{URI.encode(template_name)}/push"
    headers = []
    request(client, :post, path, headers, input, options, 201)
  end

  @doc """
  Creates an Amazon Pinpoint configuration for a recommender model.
  """
  def create_recommender_configuration(client, input, options \\ []) do
    path = "/v1/recommenders"
    headers = []
    request(client, :post, path, headers, input, options, 201)
  end

  @doc """
  Creates a new segment for an application or updates the configuration,
  dimension, and other settings for an existing segment that's associated
  with an application.
  """
  def create_segment(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/segments"
    headers = []
    request(client, :post, path, headers, input, options, 201)
  end

  @doc """
  Creates a message template for messages that are sent through the SMS
  channel.
  """
  def create_sms_template(client, template_name, input, options \\ []) do
    path = "/v1/templates/#{URI.encode(template_name)}/sms"
    headers = []
    request(client, :post, path, headers, input, options, 201)
  end

  @doc """
  Creates a message template for messages that are sent through the voice
  channel.
  """
  def create_voice_template(client, template_name, input, options \\ []) do
    path = "/v1/templates/#{URI.encode(template_name)}/voice"
    headers = []
    request(client, :post, path, headers, input, options, 201)
  end

  @doc """
  Disables the ADM channel for an application and deletes any existing
  settings for the channel.
  """
  def delete_adm_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/adm"
    headers = []
    request(client, :delete, path, headers, input, options, 200)
  end

  @doc """
  Disables the APNs channel for an application and deletes any existing
  settings for the channel.
  """
  def delete_apns_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/apns"
    headers = []
    request(client, :delete, path, headers, input, options, 200)
  end

  @doc """
  Disables the APNs sandbox channel for an application and deletes any
  existing settings for the channel.
  """
  def delete_apns_sandbox_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/apns_sandbox"
    headers = []
    request(client, :delete, path, headers, input, options, 200)
  end

  @doc """
  Disables the APNs VoIP channel for an application and deletes any existing
  settings for the channel.
  """
  def delete_apns_voip_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/apns_voip"
    headers = []
    request(client, :delete, path, headers, input, options, 200)
  end

  @doc """
  Disables the APNs VoIP sandbox channel for an application and deletes any
  existing settings for the channel.
  """
  def delete_apns_voip_sandbox_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/apns_voip_sandbox"
    headers = []
    request(client, :delete, path, headers, input, options, 200)
  end

  @doc """
  Deletes an application.
  """
  def delete_app(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}"
    headers = []
    request(client, :delete, path, headers, input, options, 200)
  end

  @doc """
  Disables the Baidu channel for an application and deletes any existing
  settings for the channel.
  """
  def delete_baidu_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/baidu"
    headers = []
    request(client, :delete, path, headers, input, options, 200)
  end

  @doc """
  Deletes a campaign from an application.
  """
  def delete_campaign(client, application_id, campaign_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/campaigns/#{URI.encode(campaign_id)}"
    headers = []
    request(client, :delete, path, headers, input, options, 200)
  end

  @doc """
  Disables the email channel for an application and deletes any existing
  settings for the channel.
  """
  def delete_email_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/email"
    headers = []
    request(client, :delete, path, headers, input, options, 200)
  end

  @doc """
  Deletes a message template for messages that were sent through the email
  channel.
  """
  def delete_email_template(client, template_name, input, options \\ []) do
    path = "/v1/templates/#{URI.encode(template_name)}/email"
    headers = []
    request(client, :delete, path, headers, input, options, 202)
  end

  @doc """
  Deletes an endpoint from an application.
  """
  def delete_endpoint(client, application_id, endpoint_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/endpoints/#{URI.encode(endpoint_id)}"
    headers = []
    request(client, :delete, path, headers, input, options, 202)
  end

  @doc """
  Deletes the event stream for an application.
  """
  def delete_event_stream(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/eventstream"
    headers = []
    request(client, :delete, path, headers, input, options, 200)
  end

  @doc """
  Disables the GCM channel for an application and deletes any existing
  settings for the channel.
  """
  def delete_gcm_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/gcm"
    headers = []
    request(client, :delete, path, headers, input, options, 200)
  end

  @doc """
  Deletes a journey from an application.
  """
  def delete_journey(client, application_id, journey_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/journeys/#{URI.encode(journey_id)}"
    headers = []
    request(client, :delete, path, headers, input, options, 200)
  end

  @doc """
  Deletes a message template for messages that were sent through a push
  notification channel.
  """
  def delete_push_template(client, template_name, input, options \\ []) do
    path = "/v1/templates/#{URI.encode(template_name)}/push"
    headers = []
    request(client, :delete, path, headers, input, options, 202)
  end

  @doc """
  Deletes an Amazon Pinpoint configuration for a recommender model.
  """
  def delete_recommender_configuration(client, recommender_id, input, options \\ []) do
    path = "/v1/recommenders/#{URI.encode(recommender_id)}"
    headers = []
    request(client, :delete, path, headers, input, options, 200)
  end

  @doc """
  Deletes a segment from an application.
  """
  def delete_segment(client, application_id, segment_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/segments/#{URI.encode(segment_id)}"
    headers = []
    request(client, :delete, path, headers, input, options, 200)
  end

  @doc """
  Disables the SMS channel for an application and deletes any existing
  settings for the channel.
  """
  def delete_sms_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/sms"
    headers = []
    request(client, :delete, path, headers, input, options, 200)
  end

  @doc """
  Deletes a message template for messages that were sent through the SMS
  channel.
  """
  def delete_sms_template(client, template_name, input, options \\ []) do
    path = "/v1/templates/#{URI.encode(template_name)}/sms"
    headers = []
    request(client, :delete, path, headers, input, options, 202)
  end

  @doc """
  Deletes all the endpoints that are associated with a specific user ID.
  """
  def delete_user_endpoints(client, application_id, user_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/users/#{URI.encode(user_id)}"
    headers = []
    request(client, :delete, path, headers, input, options, 202)
  end

  @doc """
  Disables the voice channel for an application and deletes any existing
  settings for the channel.
  """
  def delete_voice_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/voice"
    headers = []
    request(client, :delete, path, headers, input, options, 200)
  end

  @doc """
  Deletes a message template for messages that were sent through the voice
  channel.
  """
  def delete_voice_template(client, template_name, input, options \\ []) do
    path = "/v1/templates/#{URI.encode(template_name)}/voice"
    headers = []
    request(client, :delete, path, headers, input, options, 202)
  end

  @doc """
  Retrieves information about the status and settings of the ADM channel for
  an application.
  """
  def get_adm_channel(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/adm"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the APNs channel for
  an application.
  """
  def get_apns_channel(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/apns"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the APNs sandbox
  channel for an application.
  """
  def get_apns_sandbox_channel(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/apns_sandbox"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the APNs VoIP
  channel for an application.
  """
  def get_apns_voip_channel(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/apns_voip"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the APNs VoIP
  sandbox channel for an application.
  """
  def get_apns_voip_sandbox_channel(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/apns_voip_sandbox"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an application.
  """
  def get_app(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard metric that applies
  to an application.
  """
  def get_application_date_range_kpi(client, application_id, kpi_name, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/kpis/daterange/#{URI.encode(kpi_name)}"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the settings for an application.
  """
  def get_application_settings(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/settings"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the applications that are associated with
  your Amazon Pinpoint account.
  """
  def get_apps(client, options \\ []) do
    path = "/v1/apps"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the Baidu channel
  for an application.
  """
  def get_baidu_channel(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/baidu"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings
  for a campaign.
  """
  def get_campaign(client, application_id, campaign_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/campaigns/#{URI.encode(campaign_id)}"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the activities for a campaign.
  """
  def get_campaign_activities(client, application_id, campaign_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/campaigns/#{URI.encode(campaign_id)}/activities"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard metric that applies
  to a campaign.
  """
  def get_campaign_date_range_kpi(client, application_id, campaign_id, kpi_name, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/campaigns/#{URI.encode(campaign_id)}/kpis/daterange/#{URI.encode(kpi_name)}"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings
  for a specific version of a campaign.
  """
  def get_campaign_version(client, application_id, campaign_id, version, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/campaigns/#{URI.encode(campaign_id)}/versions/#{URI.encode(version)}"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings
  for all versions of a campaign.
  """
  def get_campaign_versions(client, application_id, campaign_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/campaigns/#{URI.encode(campaign_id)}/versions"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings
  for all the campaigns that are associated with an application.
  """
  def get_campaigns(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/campaigns"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the history and status of each channel for an
  application.
  """
  def get_channels(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the email channel
  for an application.
  """
  def get_email_channel(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/email"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves the content and settings of a message template for messages that
  are sent through the email channel.
  """
  def get_email_template(client, template_name, options \\ []) do
    path = "/v1/templates/#{URI.encode(template_name)}/email"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the settings and attributes of a specific
  endpoint for an application.
  """
  def get_endpoint(client, application_id, endpoint_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/endpoints/#{URI.encode(endpoint_id)}"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the event stream settings for an application.
  """
  def get_event_stream(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/eventstream"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of a specific export
  job for an application.
  """
  def get_export_job(client, application_id, job_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/jobs/export/#{URI.encode(job_id)}"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of all the export jobs
  for an application.
  """
  def get_export_jobs(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/jobs/export"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the GCM channel for
  an application.
  """
  def get_gcm_channel(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/gcm"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of a specific import
  job for an application.
  """
  def get_import_job(client, application_id, job_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/jobs/import/#{URI.encode(job_id)}"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of all the import jobs
  for an application.
  """
  def get_import_jobs(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/jobs/import"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings
  for a journey.
  """
  def get_journey(client, application_id, journey_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/journeys/#{URI.encode(journey_id)}"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard engagement metric
  that applies to a journey.
  """
  def get_journey_date_range_kpi(client, application_id, journey_id, kpi_name, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/journeys/#{URI.encode(journey_id)}/kpis/daterange/#{URI.encode(kpi_name)}"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard execution metric
  that applies to a journey activity.
  """
  def get_journey_execution_activity_metrics(client, application_id, journey_activity_id, journey_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/journeys/#{URI.encode(journey_id)}/activities/#{URI.encode(journey_activity_id)}/execution-metrics"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard execution metric
  that applies to a journey.
  """
  def get_journey_execution_metrics(client, application_id, journey_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/journeys/#{URI.encode(journey_id)}/execution-metrics"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves the content and settings of a message template for messages that
  are sent through a push notification channel.
  """
  def get_push_template(client, template_name, options \\ []) do
    path = "/v1/templates/#{URI.encode(template_name)}/push"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an Amazon Pinpoint configuration for a
  recommender model.
  """
  def get_recommender_configuration(client, recommender_id, options \\ []) do
    path = "/v1/recommenders/#{URI.encode(recommender_id)}"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the recommender model configurations that
  are associated with your Amazon Pinpoint account.
  """
  def get_recommender_configurations(client, options \\ []) do
    path = "/v1/recommenders"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the configuration, dimension, and other
  settings for a specific segment that's associated with an application.
  """
  def get_segment(client, application_id, segment_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/segments/#{URI.encode(segment_id)}"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the export jobs for
  a segment.
  """
  def get_segment_export_jobs(client, application_id, segment_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/segments/#{URI.encode(segment_id)}/jobs/export"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the import jobs for
  a segment.
  """
  def get_segment_import_jobs(client, application_id, segment_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/segments/#{URI.encode(segment_id)}/jobs/import"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the configuration, dimension, and other
  settings for a specific version of a segment that's associated with an
  application.
  """
  def get_segment_version(client, application_id, segment_id, version, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/segments/#{URI.encode(segment_id)}/versions/#{URI.encode(version)}"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the configuration, dimension, and other
  settings for all the versions of a specific segment that's associated with
  an application.
  """
  def get_segment_versions(client, application_id, segment_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/segments/#{URI.encode(segment_id)}/versions"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the configuration, dimension, and other
  settings for all the segments that are associated with an application.
  """
  def get_segments(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/segments"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the SMS channel for
  an application.
  """
  def get_sms_channel(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/sms"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves the content and settings of a message template for messages that
  are sent through the SMS channel.
  """
  def get_sms_template(client, template_name, options \\ []) do
    path = "/v1/templates/#{URI.encode(template_name)}/sms"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the endpoints that are associated with a
  specific user ID.
  """
  def get_user_endpoints(client, application_id, user_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/users/#{URI.encode(user_id)}"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the voice channel
  for an application.
  """
  def get_voice_channel(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/voice"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves the content and settings of a message template for messages that
  are sent through the voice channel.
  """
  def get_voice_template(client, template_name, options \\ []) do
    path = "/v1/templates/#{URI.encode(template_name)}/voice"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings
  for all the journeys that are associated with an application.
  """
  def list_journeys(client, application_id, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/journeys"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves all the tags (keys and values) that are associated with an
  application, campaign, message template, or segment.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path = "/v1/tags/#{URI.encode(resource_arn)}"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the versions of a specific message
  template.
  """
  def list_template_versions(client, template_name, template_type, options \\ []) do
    path = "/v1/templates/#{URI.encode(template_name)}/#{URI.encode(template_type)}/versions"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the message templates that are associated
  with your Amazon Pinpoint account.
  """
  def list_templates(client, options \\ []) do
    path = "/v1/templates"
    headers = []
    request(client, :get, path, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a phone number.
  """
  def phone_number_validate(client, input, options \\ []) do
    path = "/v1/phone/number/validate"
    headers = []
    request(client, :post, path, headers, input, options, 200)
  end

  @doc """
  Creates a new event stream for an application or updates the settings of an
  existing event stream for an application.
  """
  def put_event_stream(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/eventstream"
    headers = []
    request(client, :post, path, headers, input, options, 200)
  end

  @doc """
  Creates a new event to record for endpoints, or creates or updates endpoint
  data that existing events are associated with.
  """
  def put_events(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/events"
    headers = []
    request(client, :post, path, headers, input, options, 202)
  end

  @doc """
  Removes one or more attributes, of the same attribute type, from all the
  endpoints that are associated with an application.
  """
  def remove_attributes(client, application_id, attribute_type, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/attributes/#{URI.encode(attribute_type)}"
    headers = []
    request(client, :put, path, headers, input, options, 200)
  end

  @doc """
  Creates and sends a direct message.
  """
  def send_messages(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/messages"
    headers = []
    request(client, :post, path, headers, input, options, 200)
  end

  @doc """
  Creates and sends a message to a list of users.
  """
  def send_users_messages(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/users-messages"
    headers = []
    request(client, :post, path, headers, input, options, 200)
  end

  @doc """
  Adds one or more tags (keys and values) to an application, campaign,
  message template, or segment.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path = "/v1/tags/#{URI.encode(resource_arn)}"
    headers = []
    request(client, :post, path, headers, input, options, 204)
  end

  @doc """
  Removes one or more tags (keys and values) from an application, campaign,
  message template, or segment.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path = "/v1/tags/#{URI.encode(resource_arn)}"
    headers = []
    request(client, :delete, path, headers, input, options, 204)
  end

  @doc """
  Enables the ADM channel for an application or updates the status and
  settings of the ADM channel for an application.
  """
  def update_adm_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/adm"
    headers = []
    request(client, :put, path, headers, input, options, 200)
  end

  @doc """
  Enables the APNs channel for an application or updates the status and
  settings of the APNs channel for an application.
  """
  def update_apns_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/apns"
    headers = []
    request(client, :put, path, headers, input, options, 200)
  end

  @doc """
  Enables the APNs sandbox channel for an application or updates the status
  and settings of the APNs sandbox channel for an application.
  """
  def update_apns_sandbox_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/apns_sandbox"
    headers = []
    request(client, :put, path, headers, input, options, 200)
  end

  @doc """
  Enables the APNs VoIP channel for an application or updates the status and
  settings of the APNs VoIP channel for an application.
  """
  def update_apns_voip_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/apns_voip"
    headers = []
    request(client, :put, path, headers, input, options, 200)
  end

  @doc """
  Enables the APNs VoIP sandbox channel for an application or updates the
  status and settings of the APNs VoIP sandbox channel for an application.
  """
  def update_apns_voip_sandbox_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/apns_voip_sandbox"
    headers = []
    request(client, :put, path, headers, input, options, 200)
  end

  @doc """
  Updates the settings for an application.
  """
  def update_application_settings(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/settings"
    headers = []
    request(client, :put, path, headers, input, options, 200)
  end

  @doc """
  Enables the Baidu channel for an application or updates the status and
  settings of the Baidu channel for an application.
  """
  def update_baidu_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/baidu"
    headers = []
    request(client, :put, path, headers, input, options, 200)
  end

  @doc """
  Updates the configuration and other settings for a campaign.
  """
  def update_campaign(client, application_id, campaign_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/campaigns/#{URI.encode(campaign_id)}"
    headers = []
    request(client, :put, path, headers, input, options, 200)
  end

  @doc """
  Enables the email channel for an application or updates the status and
  settings of the email channel for an application.
  """
  def update_email_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/email"
    headers = []
    request(client, :put, path, headers, input, options, 200)
  end

  @doc """
  Updates an existing message template for messages that are sent through the
  email channel.
  """
  def update_email_template(client, template_name, input, options \\ []) do
    path = "/v1/templates/#{URI.encode(template_name)}/email"
    headers = []
    request(client, :put, path, headers, input, options, 202)
  end

  @doc """
  Creates a new endpoint for an application or updates the settings and
  attributes of an existing endpoint for an application. You can also use
  this operation to define custom attributes for an endpoint. If an update
  includes one or more values for a custom attribute, Amazon Pinpoint
  replaces (overwrites) any existing values with the new values.
  """
  def update_endpoint(client, application_id, endpoint_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/endpoints/#{URI.encode(endpoint_id)}"
    headers = []
    request(client, :put, path, headers, input, options, 202)
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
    path = "/v1/apps/#{URI.encode(application_id)}/endpoints"
    headers = []
    request(client, :put, path, headers, input, options, 202)
  end

  @doc """
  Enables the GCM channel for an application or updates the status and
  settings of the GCM channel for an application.
  """
  def update_gcm_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/gcm"
    headers = []
    request(client, :put, path, headers, input, options, 200)
  end

  @doc """
  Updates the configuration and other settings for a journey.
  """
  def update_journey(client, application_id, journey_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/journeys/#{URI.encode(journey_id)}"
    headers = []
    request(client, :put, path, headers, input, options, 200)
  end

  @doc """
  Cancels (stops) an active journey.
  """
  def update_journey_state(client, application_id, journey_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/journeys/#{URI.encode(journey_id)}/state"
    headers = []
    request(client, :put, path, headers, input, options, 200)
  end

  @doc """
  Updates an existing message template for messages that are sent through a
  push notification channel.
  """
  def update_push_template(client, template_name, input, options \\ []) do
    path = "/v1/templates/#{URI.encode(template_name)}/push"
    headers = []
    request(client, :put, path, headers, input, options, 202)
  end

  @doc """
  Updates an Amazon Pinpoint configuration for a recommender model.
  """
  def update_recommender_configuration(client, recommender_id, input, options \\ []) do
    path = "/v1/recommenders/#{URI.encode(recommender_id)}"
    headers = []
    request(client, :put, path, headers, input, options, 200)
  end

  @doc """
  Creates a new segment for an application or updates the configuration,
  dimension, and other settings for an existing segment that's associated
  with an application.
  """
  def update_segment(client, application_id, segment_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/segments/#{URI.encode(segment_id)}"
    headers = []
    request(client, :put, path, headers, input, options, 200)
  end

  @doc """
  Enables the SMS channel for an application or updates the status and
  settings of the SMS channel for an application.
  """
  def update_sms_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/sms"
    headers = []
    request(client, :put, path, headers, input, options, 200)
  end

  @doc """
  Updates an existing message template for messages that are sent through the
  SMS channel.
  """
  def update_sms_template(client, template_name, input, options \\ []) do
    path = "/v1/templates/#{URI.encode(template_name)}/sms"
    headers = []
    request(client, :put, path, headers, input, options, 202)
  end

  @doc """
  Changes the status of a specific version of a message template to *active*.
  """
  def update_template_active_version(client, template_name, template_type, input, options \\ []) do
    path = "/v1/templates/#{URI.encode(template_name)}/#{URI.encode(template_type)}/active-version"
    headers = []
    request(client, :put, path, headers, input, options, 200)
  end

  @doc """
  Enables the voice channel for an application or updates the status and
  settings of the voice channel for an application.
  """
  def update_voice_channel(client, application_id, input, options \\ []) do
    path = "/v1/apps/#{URI.encode(application_id)}/channels/voice"
    headers = []
    request(client, :put, path, headers, input, options, 200)
  end

  @doc """
  Updates an existing message template for messages that are sent through the
  voice channel.
  """
  def update_voice_template(client, template_name, input, options \\ []) do
    path = "/v1/templates/#{URI.encode(template_name)}/voice"
    headers = []
    request(client, :put, path, headers, input, options, 202)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), map(), list(), pos_integer()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, method, path, headers, input, options, success_status_code) do
    client = %{client | service: "mobiletargeting"}
    host = get_host("pinpoint", client)
    url = get_url(host, path, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"}
      | headers
    ]

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, response}

      {:ok, %HTTPoison.Response{status_code: status_code, body: body} = response}
      when status_code == 200 or status_code == 202 or status_code == 204 ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body, %{})["Message"]
        {:error, reason}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body, %{})["Message"]
        {:error, reason}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp get_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp get_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}/"
  end

  defp encode_payload(input) do
    if input != nil, do: Poison.Encoder.encode(input, %{}), else: ""
  end
end
