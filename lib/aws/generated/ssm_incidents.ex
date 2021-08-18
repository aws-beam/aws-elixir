# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSMIncidents do
  @moduledoc """
  AWS Systems Manager Incident Manager is an incident management console designed
  to help users mitigate and recover from incidents affecting their AWS-hosted
  applications.

  An incident is any unplanned interruption or reduction in quality of services.

  Incident Manager increases incident resolution by notifying responders of
  impact, highlighting relevant troubleshooting data, and providing collaboration
  tools to get services back up and running. To achieve the primary goal of
  reducing the time-to-resolution of critical incidents, Incident Manager
  automates response plans and enables responder team escalation.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ssm-incidents",
      global?: false,
      protocol: "rest-json",
      service_id: "SSM Incidents",
      signature_version: "v4",
      signing_name: "ssm-incidents",
      target_prefix: nil
    }
  end

  @doc """
  A replication set replicates and encrypts your data to the provided Regions with
  the provided KMS key.
  """
  def create_replication_set(%Client{} = client, input, options \\ []) do
    url_path = "/createReplicationSet"
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
  Creates a response plan that automates the initial response to incidents.

  A response plan engages contacts, starts chat channel collaboration, and
  initiates runbooks at the beginning of an incident.
  """
  def create_response_plan(%Client{} = client, input, options \\ []) do
    url_path = "/createResponsePlan"
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
  Creates a custom timeline event on the incident details page of an incident
  record.

  Timeline events are automatically created by Incident Manager, marking key
  moment during an incident. You can create custom timeline events to mark
  important events that are automatically detected by Incident Manager.
  """
  def create_timeline_event(%Client{} = client, input, options \\ []) do
    url_path = "/createTimelineEvent"
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
  Delete an incident record from Incident Manager.
  """
  def delete_incident_record(%Client{} = client, input, options \\ []) do
    url_path = "/deleteIncidentRecord"
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
      204
    )
  end

  @doc """
  Deletes all Regions in your replication set.

  Deleting the replication set deletes all Incident Manager data.
  """
  def delete_replication_set(%Client{} = client, input, options \\ []) do
    url_path = "/deleteReplicationSet"
    headers = []

    {query_params, input} =
      [
        {"arn", "arn"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
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
  Deletes the resource policy that AWS Resource Access Manager uses to share your
  Incident Manager resource.
  """
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/deleteResourcePolicy"
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
      200
    )
  end

  @doc """
  Deletes the specified response plan.

  Deleting a response plan stops all linked CloudWatch alarms and EventBridge
  events from creating an incident with this response plan.
  """
  def delete_response_plan(%Client{} = client, input, options \\ []) do
    url_path = "/deleteResponsePlan"
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
      204
    )
  end

  @doc """
  Deletes a timeline event from an incident.
  """
  def delete_timeline_event(%Client{} = client, input, options \\ []) do
    url_path = "/deleteTimelineEvent"
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
      204
    )
  end

  @doc """
  Returns the details of the specified incident record.
  """
  def get_incident_record(%Client{} = client, arn, options \\ []) do
    url_path = "/getIncidentRecord"
    headers = []
    query_params = []

    query_params =
      if !is_nil(arn) do
        [{"arn", arn} | query_params]
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
  Retrieve your Incident Manager replication set.
  """
  def get_replication_set(%Client{} = client, arn, options \\ []) do
    url_path = "/getReplicationSet"
    headers = []
    query_params = []

    query_params =
      if !is_nil(arn) do
        [{"arn", arn} | query_params]
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
  Retrieves the resource policies attached to the specified response plan.
  """
  def get_resource_policies(%Client{} = client, input, options \\ []) do
    url_path = "/getResourcePolicies"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
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
  Retrieves the details of the specified response plan.
  """
  def get_response_plan(%Client{} = client, arn, options \\ []) do
    url_path = "/getResponsePlan"
    headers = []
    query_params = []

    query_params =
      if !is_nil(arn) do
        [{"arn", arn} | query_params]
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
  Retrieves a timeline event based on its ID and incident record.
  """
  def get_timeline_event(%Client{} = client, event_id, incident_record_arn, options \\ []) do
    url_path = "/getTimelineEvent"
    headers = []
    query_params = []

    query_params =
      if !is_nil(incident_record_arn) do
        [{"incidentRecordArn", incident_record_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(event_id) do
        [{"eventId", event_id} | query_params]
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
  Lists all incident records in your account.

  Use this command to retrieve the Amazon Resource Name (ARN) of the incident
  record you want to update.
  """
  def list_incident_records(%Client{} = client, input, options \\ []) do
    url_path = "/listIncidentRecords"
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
      200
    )
  end

  @doc """
  List all related items for an incident record.
  """
  def list_related_items(%Client{} = client, input, options \\ []) do
    url_path = "/listRelatedItems"
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
      200
    )
  end

  @doc """
  Lists details about the replication set configured in your account.
  """
  def list_replication_sets(%Client{} = client, input, options \\ []) do
    url_path = "/listReplicationSets"
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
      200
    )
  end

  @doc """
  Lists all response plans in your account.
  """
  def list_response_plans(%Client{} = client, input, options \\ []) do
    url_path = "/listResponsePlans"
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
      200
    )
  end

  @doc """
  Lists the tags that are attached to the specified response plan.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Lists timeline events of the specified incident record.
  """
  def list_timeline_events(%Client{} = client, input, options \\ []) do
    url_path = "/listTimelineEvents"
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
      200
    )
  end

  @doc """
  Adds a resource policy to the specified response plan.
  """
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/putResourcePolicy"
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
      200
    )
  end

  @doc """
  Used to start an incident from CloudWatch alarms, EventBridge events, or
  manually.
  """
  def start_incident(%Client{} = client, input, options \\ []) do
    url_path = "/startIncident"
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
      200
    )
  end

  @doc """
  Adds a tag to a response plan.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      204
    )
  end

  @doc """
  Removes a tag from a resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      204
    )
  end

  @doc """
  Update deletion protection to either allow or deny deletion of the final Region
  in a replication set.
  """
  def update_deletion_protection(%Client{} = client, input, options \\ []) do
    url_path = "/updateDeletionProtection"
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
      204
    )
  end

  @doc """
  Update the details of an incident record.

  You can use this action to update an incident record from the defined chat
  channel. For more information about using actions in chat channels, see
  [Interacting through chat](https://docs.aws.amazon.com/incident-manager/latest/userguide/chat.html#chat-interact).
  """
  def update_incident_record(%Client{} = client, input, options \\ []) do
    url_path = "/updateIncidentRecord"
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
      204
    )
  end

  @doc """
  Add or remove related items from the related items tab of an incident record.
  """
  def update_related_items(%Client{} = client, input, options \\ []) do
    url_path = "/updateRelatedItems"
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
      204
    )
  end

  @doc """
  Add or delete Regions from your replication set.
  """
  def update_replication_set(%Client{} = client, input, options \\ []) do
    url_path = "/updateReplicationSet"
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
      204
    )
  end

  @doc """
  Updates the specified response plan.
  """
  def update_response_plan(%Client{} = client, input, options \\ []) do
    url_path = "/updateResponsePlan"
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
      204
    )
  end

  @doc """
  Updates a timeline event.

  You can update events of type `Custom Event`.
  """
  def update_timeline_event(%Client{} = client, input, options \\ []) do
    url_path = "/updateTimelineEvent"
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
      204
    )
  end
end
