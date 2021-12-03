# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSMContacts do
  @moduledoc """
  Systems Manager Incident Manager is an incident management console designed to
  help users mitigate and recover from incidents affecting their Amazon Web
  Services-hosted applications.

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
      abbreviation: "SSM Contacts",
      api_version: "2021-05-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ssm-contacts",
      global?: false,
      protocol: "json",
      service_id: "SSM Contacts",
      signature_version: "v4",
      signing_name: "ssm-contacts",
      target_prefix: "SSMContacts"
    }
  end

  @doc """
  Used to acknowledge an engagement to a contact channel during an incident.
  """
  def accept_page(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AcceptPage", input, options)
  end

  @doc """
  Activates a contact's contact channel.

  Incident Manager can't engage a contact until the contact channel has been
  activated.
  """
  def activate_contact_channel(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ActivateContactChannel", input, options)
  end

  @doc """
  Contacts are either the contacts that Incident Manager engages during an
  incident or the escalation plans that Incident Manager uses to engage contacts
  in phases during an incident.
  """
  def create_contact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateContact", input, options)
  end

  @doc """
  A contact channel is the method that Incident Manager uses to engage your
  contact.
  """
  def create_contact_channel(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateContactChannel", input, options)
  end

  @doc """
  To no longer receive Incident Manager engagements to a contact channel, you can
  deactivate the channel.
  """
  def deactivate_contact_channel(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeactivateContactChannel", input, options)
  end

  @doc """
  To remove a contact from Incident Manager, you can delete the contact.

  Deleting a contact removes them from all escalation plans and related response
  plans. Deleting an escalation plan removes it from all related response plans.
  You will have to recreate the contact and its contact channels before you can
  use it again.
  """
  def delete_contact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteContact", input, options)
  end

  @doc """
  To no longer receive engagements on a contact channel, you can delete the
  channel from a contact.

  Deleting the contact channel removes it from the contact's engagement plan. If
  you delete the only contact channel for a contact, you won't be able to engage
  that contact during an incident.
  """
  def delete_contact_channel(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteContactChannel", input, options)
  end

  @doc """
  Incident Manager uses engagements to engage contacts and escalation plans during
  an incident.

  Use this command to describe the engagement that occurred during an incident.
  """
  def describe_engagement(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEngagement", input, options)
  end

  @doc """
  Lists details of the engagement to a contact channel.
  """
  def describe_page(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribePage", input, options)
  end

  @doc """
  Retrieves information about the specified contact or escalation plan.
  """
  def get_contact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetContact", input, options)
  end

  @doc """
  List details about a specific contact channel.
  """
  def get_contact_channel(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetContactChannel", input, options)
  end

  @doc """
  Retrieves the resource policies attached to the specified contact or escalation
  plan.
  """
  def get_contact_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetContactPolicy", input, options)
  end

  @doc """
  Lists all contact channels for the specified contact.
  """
  def list_contact_channels(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListContactChannels", input, options)
  end

  @doc """
  Lists all contacts and escalation plans in Incident Manager.
  """
  def list_contacts(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListContacts", input, options)
  end

  @doc """
  Lists all engagements that have happened in an incident.
  """
  def list_engagements(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListEngagements", input, options)
  end

  @doc """
  Lists all of the engagements to contact channels that have been acknowledged.
  """
  def list_page_receipts(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPageReceipts", input, options)
  end

  @doc """
  Lists the engagements to a contact's contact channels.
  """
  def list_pages_by_contact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPagesByContact", input, options)
  end

  @doc """
  Lists the engagements to contact channels that occurred by engaging a contact.
  """
  def list_pages_by_engagement(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPagesByEngagement", input, options)
  end

  @doc """
  Lists the tags of an escalation plan or contact.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Adds a resource to the specified contact or escalation plan.
  """
  def put_contact_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutContactPolicy", input, options)
  end

  @doc """
  Sends an activation code to a contact channel.

  The contact can use this code to activate the contact channel in the console or
  with the `ActivateChannel` operation. Incident Manager can't engage a contact
  channel until it has been activated.
  """
  def send_activation_code(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SendActivationCode", input, options)
  end

  @doc """
  Starts an engagement to a contact or escalation plan.

  The engagement engages each contact specified in the incident.
  """
  def start_engagement(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartEngagement", input, options)
  end

  @doc """
  Stops an engagement before it finishes the final stage of the escalation plan or
  engagement plan.

  Further contacts aren't engaged.
  """
  def stop_engagement(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopEngagement", input, options)
  end

  @doc """
  Tags a contact or escalation plan.

  You can tag only contacts and escalation plans in the first region of your
  replication set.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes tags from the specified resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Updates the contact or escalation plan specified.
  """
  def update_contact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateContact", input, options)
  end

  @doc """
  Updates a contact's contact channel.
  """
  def update_contact_channel(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateContactChannel", input, options)
  end
end
