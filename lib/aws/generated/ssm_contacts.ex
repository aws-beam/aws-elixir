# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSMContacts do
  @moduledoc """
  Systems Manager Incident Manager is an incident management console designed to
  help users
  mitigate and recover from incidents affecting their Amazon Web Services-hosted
  applications.

  An incident is any unplanned interruption or reduction in quality of services.

  Incident Manager increases incident resolution by notifying responders of
  impact, highlighting relevant troubleshooting data, and providing collaboration
  tools to
  get services back up and running. To achieve the primary goal of reducing the
  time-to-resolution of critical incidents, Incident Manager automates response
  plans
  and enables responder team escalation.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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
    meta = metadata()

    Request.request_post(client, meta, "AcceptPage", input, options)
  end

  @doc """
  Activates a contact's contact channel.

  Incident Manager can't engage a contact until the
  contact channel has been activated.
  """
  def activate_contact_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ActivateContactChannel", input, options)
  end

  @doc """
  Contacts are either the contacts that Incident Manager engages during an
  incident or the
  escalation plans that Incident Manager uses to engage contacts in phases during
  an
  incident.
  """
  def create_contact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateContact", input, options)
  end

  @doc """
  A contact channel is the method that Incident Manager uses to engage your
  contact.
  """
  def create_contact_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateContactChannel", input, options)
  end

  @doc """
  Creates a rotation in an on-call schedule.
  """
  def create_rotation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRotation", input, options)
  end

  @doc """
  Creates an override for a rotation in an on-call schedule.
  """
  def create_rotation_override(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRotationOverride", input, options)
  end

  @doc """
  To no longer receive Incident Manager engagements to a contact channel, you can
  deactivate
  the channel.
  """
  def deactivate_contact_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeactivateContactChannel", input, options)
  end

  @doc """
  To remove a contact from Incident Manager, you can delete the contact.

  Deleting a contact
  removes them from all escalation plans and related response plans. Deleting an
  escalation
  plan removes it from all related response plans. You will have to recreate the
  contact and
  its contact channels before you can use it again.
  """
  def delete_contact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteContact", input, options)
  end

  @doc """
  To no longer receive engagements on a contact channel, you can delete the
  channel from a
  contact.

  Deleting the contact channel removes it from the contact's engagement plan. If
  you
  delete the only contact channel for a contact, you won't be able to engage that
  contact
  during an incident.
  """
  def delete_contact_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteContactChannel", input, options)
  end

  @doc """
  Deletes a rotation from the system.

  If a rotation belongs to more than one on-call
  schedule, this operation deletes it from all of them.
  """
  def delete_rotation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRotation", input, options)
  end

  @doc """
  Deletes an existing override for an on-call rotation.
  """
  def delete_rotation_override(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRotationOverride", input, options)
  end

  @doc """
  Incident Manager uses engagements to engage contacts and escalation plans during
  an incident.

  Use this command to describe the engagement that occurred during an incident.
  """
  def describe_engagement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEngagement", input, options)
  end

  @doc """
  Lists details of the engagement to a contact channel.
  """
  def describe_page(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePage", input, options)
  end

  @doc """
  Retrieves information about the specified contact or escalation plan.
  """
  def get_contact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetContact", input, options)
  end

  @doc """
  List details about a specific contact channel.
  """
  def get_contact_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetContactChannel", input, options)
  end

  @doc """
  Retrieves the resource policies attached to the specified contact or escalation
  plan.
  """
  def get_contact_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetContactPolicy", input, options)
  end

  @doc """
  Retrieves information about an on-call rotation.
  """
  def get_rotation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRotation", input, options)
  end

  @doc """
  Retrieves information about an override to an on-call rotation.
  """
  def get_rotation_override(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRotationOverride", input, options)
  end

  @doc """
  Lists all contact channels for the specified contact.
  """
  def list_contact_channels(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListContactChannels", input, options)
  end

  @doc """
  Lists all contacts and escalation plans in Incident Manager.
  """
  def list_contacts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListContacts", input, options)
  end

  @doc """
  Lists all engagements that have happened in an incident.
  """
  def list_engagements(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEngagements", input, options)
  end

  @doc """
  Lists all of the engagements to contact channels that have been acknowledged.
  """
  def list_page_receipts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPageReceipts", input, options)
  end

  @doc """
  Returns the resolution path of an engagement.

  For example, the escalation plan engaged
  in an incident might target an on-call schedule that includes several contacts
  in a
  rotation, but just one contact on-call when the incident starts. The resolution
  path
  indicates the hierarchy of *escalation plan > on-call schedule >
  contact*.
  """
  def list_page_resolutions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPageResolutions", input, options)
  end

  @doc """
  Lists the engagements to a contact's contact channels.
  """
  def list_pages_by_contact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPagesByContact", input, options)
  end

  @doc """
  Lists the engagements to contact channels that occurred by engaging a contact.
  """
  def list_pages_by_engagement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPagesByEngagement", input, options)
  end

  @doc """
  Returns a list of shifts based on rotation configuration parameters.

  The Incident Manager primarily uses this operation to populate the ## Preview
  calendar. It is not typically run by end users.
  """
  def list_preview_rotation_shifts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPreviewRotationShifts", input, options)
  end

  @doc """
  Retrieves a list of overrides currently specified for an on-call rotation.
  """
  def list_rotation_overrides(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRotationOverrides", input, options)
  end

  @doc """
  Returns a list of shifts generated by an existing rotation in the system.
  """
  def list_rotation_shifts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRotationShifts", input, options)
  end

  @doc """
  Retrieves a list of on-call rotations.
  """
  def list_rotations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRotations", input, options)
  end

  @doc """
  Lists the tags of an escalation plan or contact.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Adds a resource policy to the specified contact or escalation plan.

  The resource policy
  is used to share the contact or escalation plan using Resource Access Manager
  (RAM). For more information about cross-account sharing, see [Setting up cross-account
  functionality](https://docs.aws.amazon.com/incident-manager/latest/userguide/xa.html).
  """
  def put_contact_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutContactPolicy", input, options)
  end

  @doc """
  Sends an activation code to a contact channel.

  The contact can use this code to activate
  the contact channel in the console or with the `ActivateChannel` operation.
  Incident Manager can't engage a contact channel until it has been activated.
  """
  def send_activation_code(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendActivationCode", input, options)
  end

  @doc """
  Starts an engagement to a contact or escalation plan.

  The engagement engages each
  contact specified in the incident.
  """
  def start_engagement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartEngagement", input, options)
  end

  @doc """
  Stops an engagement before it finishes the final stage of the escalation plan or
  engagement plan.

  Further contacts aren't engaged.
  """
  def stop_engagement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopEngagement", input, options)
  end

  @doc """
  Tags a contact or escalation plan.

  You can tag only contacts and escalation plans in the
  first region of your replication set.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes tags from the specified resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates the contact or escalation plan specified.
  """
  def update_contact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateContact", input, options)
  end

  @doc """
  Updates a contact's contact channel.
  """
  def update_contact_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateContactChannel", input, options)
  end

  @doc """
  Updates the information specified for an on-call rotation.
  """
  def update_rotation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRotation", input, options)
  end
end
