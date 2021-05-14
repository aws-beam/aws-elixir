# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AlexaForBusiness do
  @moduledoc """
  Alexa for Business helps you use Alexa in your organization.

  Alexa for Business provides you with the tools to manage Alexa devices, enroll
  your users, and assign skills, at scale. You can build your own context-aware
  voice skills using the Alexa Skills Kit and the Alexa for Business API
  operations. You can also make these available as private skills for your
  organization. Alexa for Business makes it efficient to voice-enable your
  products and services, thus providing context-aware voice experiences for your
  customers. Device makers building with the Alexa Voice Service (AVS) can create
  fully integrated solutions, register their products with Alexa for Business, and
  manage them as shared devices in their organization.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-11-09",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "a4b",
      global?: false,
      protocol: "json",
      service_id: "Alexa For Business",
      signature_version: "v4",
      signing_name: "a4b",
      target_prefix: "AlexaForBusiness"
    }
  end

  @doc """
  Associates a skill with the organization under the customer's AWS account.

  If a skill is private, the user implicitly accepts access to this skill during
  enablement.
  """
  def approve_skill(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ApproveSkill", input, options)
  end

  @doc """
  Associates a contact with a given address book.
  """
  def associate_contact_with_address_book(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateContactWithAddressBook", input, options)
  end

  @doc """
  Associates a device with the specified network profile.
  """
  def associate_device_with_network_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateDeviceWithNetworkProfile", input, options)
  end

  @doc """
  Associates a device with a given room.

  This applies all the settings from the room profile to the device, and all the
  skills in any skill groups added to that room. This operation requires the
  device to be online, or else a manual sync is required.
  """
  def associate_device_with_room(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateDeviceWithRoom", input, options)
  end

  @doc """
  Associates a skill group with a given room.

  This enables all skills in the associated skill group on all devices in the
  room.
  """
  def associate_skill_group_with_room(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateSkillGroupWithRoom", input, options)
  end

  @doc """
  Associates a skill with a skill group.
  """
  def associate_skill_with_skill_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateSkillWithSkillGroup", input, options)
  end

  @doc """
  Makes a private skill available for enrolled users to enable on their devices.
  """
  def associate_skill_with_users(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateSkillWithUsers", input, options)
  end

  @doc """
  Creates an address book with the specified details.
  """
  def create_address_book(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAddressBook", input, options)
  end

  @doc """
  Creates a recurring schedule for usage reports to deliver to the specified S3
  location with a specified daily or weekly interval.
  """
  def create_business_report_schedule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateBusinessReportSchedule", input, options)
  end

  @doc """
  Adds a new conference provider under the user's AWS account.
  """
  def create_conference_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateConferenceProvider", input, options)
  end

  @doc """
  Creates a contact with the specified details.
  """
  def create_contact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateContact", input, options)
  end

  @doc """
  Creates a gateway group with the specified details.
  """
  def create_gateway_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateGatewayGroup", input, options)
  end

  @doc """
  Creates a network profile with the specified details.
  """
  def create_network_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateNetworkProfile", input, options)
  end

  @doc """
  Creates a new room profile with the specified details.
  """
  def create_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateProfile", input, options)
  end

  @doc """
  Creates a room with the specified details.
  """
  def create_room(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateRoom", input, options)
  end

  @doc """
  Creates a skill group with a specified name and description.
  """
  def create_skill_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateSkillGroup", input, options)
  end

  @doc """
  Creates a user.
  """
  def create_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateUser", input, options)
  end

  @doc """
  Deletes an address book by the address book ARN.
  """
  def delete_address_book(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAddressBook", input, options)
  end

  @doc """
  Deletes the recurring report delivery schedule with the specified schedule ARN.
  """
  def delete_business_report_schedule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteBusinessReportSchedule", input, options)
  end

  @doc """
  Deletes a conference provider.
  """
  def delete_conference_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteConferenceProvider", input, options)
  end

  @doc """
  Deletes a contact by the contact ARN.
  """
  def delete_contact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteContact", input, options)
  end

  @doc """
  Removes a device from Alexa For Business.
  """
  def delete_device(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDevice", input, options)
  end

  @doc """
  When this action is called for a specified shared device, it allows authorized
  users to delete the device's entire previous history of voice input data and
  associated response data.

  This action can be called once every 24 hours for a specific shared device.
  """
  def delete_device_usage_data(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDeviceUsageData", input, options)
  end

  @doc """
  Deletes a gateway group.
  """
  def delete_gateway_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteGatewayGroup", input, options)
  end

  @doc """
  Deletes a network profile by the network profile ARN.
  """
  def delete_network_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteNetworkProfile", input, options)
  end

  @doc """
  Deletes a room profile by the profile ARN.
  """
  def delete_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteProfile", input, options)
  end

  @doc """
  Deletes a room by the room ARN.
  """
  def delete_room(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRoom", input, options)
  end

  @doc """
  Deletes room skill parameter details by room, skill, and parameter key ID.
  """
  def delete_room_skill_parameter(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRoomSkillParameter", input, options)
  end

  @doc """
  Unlinks a third-party account from a skill.
  """
  def delete_skill_authorization(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteSkillAuthorization", input, options)
  end

  @doc """
  Deletes a skill group by skill group ARN.
  """
  def delete_skill_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteSkillGroup", input, options)
  end

  @doc """
  Deletes a specified user by user ARN and enrollment ARN.
  """
  def delete_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteUser", input, options)
  end

  @doc """
  Disassociates a contact from a given address book.
  """
  def disassociate_contact_from_address_book(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateContactFromAddressBook", input, options)
  end

  @doc """
  Disassociates a device from its current room.

  The device continues to be connected to the Wi-Fi network and is still
  registered to the account. The device settings and skills are removed from the
  room.
  """
  def disassociate_device_from_room(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateDeviceFromRoom", input, options)
  end

  @doc """
  Disassociates a skill from a skill group.
  """
  def disassociate_skill_from_skill_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateSkillFromSkillGroup", input, options)
  end

  @doc """
  Makes a private skill unavailable for enrolled users and prevents them from
  enabling it on their devices.
  """
  def disassociate_skill_from_users(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateSkillFromUsers", input, options)
  end

  @doc """
  Disassociates a skill group from a specified room.

  This disables all skills in the skill group on all devices in the room.
  """
  def disassociate_skill_group_from_room(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateSkillGroupFromRoom", input, options)
  end

  @doc """
  Forgets smart home appliances associated to a room.
  """
  def forget_smart_home_appliances(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ForgetSmartHomeAppliances", input, options)
  end

  @doc """
  Gets address the book details by the address book ARN.
  """
  def get_address_book(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAddressBook", input, options)
  end

  @doc """
  Retrieves the existing conference preferences.
  """
  def get_conference_preference(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetConferencePreference", input, options)
  end

  @doc """
  Gets details about a specific conference provider.
  """
  def get_conference_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetConferenceProvider", input, options)
  end

  @doc """
  Gets the contact details by the contact ARN.
  """
  def get_contact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetContact", input, options)
  end

  @doc """
  Gets the details of a device by device ARN.
  """
  def get_device(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetDevice", input, options)
  end

  @doc """
  Retrieves the details of a gateway.
  """
  def get_gateway(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetGateway", input, options)
  end

  @doc """
  Retrieves the details of a gateway group.
  """
  def get_gateway_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetGatewayGroup", input, options)
  end

  @doc """
  Retrieves the configured values for the user enrollment invitation email
  template.
  """
  def get_invitation_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetInvitationConfiguration", input, options)
  end

  @doc """
  Gets the network profile details by the network profile ARN.
  """
  def get_network_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetNetworkProfile", input, options)
  end

  @doc """
  Gets the details of a room profile by profile ARN.
  """
  def get_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetProfile", input, options)
  end

  @doc """
  Gets room details by room ARN.
  """
  def get_room(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetRoom", input, options)
  end

  @doc """
  Gets room skill parameter details by room, skill, and parameter key ARN.
  """
  def get_room_skill_parameter(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetRoomSkillParameter", input, options)
  end

  @doc """
  Gets skill group details by skill group ARN.
  """
  def get_skill_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetSkillGroup", input, options)
  end

  @doc """
  Lists the details of the schedules that a user configured.

  A download URL of the report associated with each schedule is returned every
  time this action is called. A new download URL is returned each time, and is
  valid for 24 hours.
  """
  def list_business_report_schedules(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListBusinessReportSchedules", input, options)
  end

  @doc """
  Lists conference providers under a specific AWS account.
  """
  def list_conference_providers(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListConferenceProviders", input, options)
  end

  @doc """
  Lists the device event history, including device connection status, for up to 30
  days.
  """
  def list_device_events(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDeviceEvents", input, options)
  end

  @doc """
  Retrieves a list of gateway group summaries.

  Use GetGatewayGroup to retrieve details of a specific gateway group.
  """
  def list_gateway_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListGatewayGroups", input, options)
  end

  @doc """
  Retrieves a list of gateway summaries.

  Use GetGateway to retrieve details of a specific gateway. An optional gateway
  group ARN can be provided to only retrieve gateway summaries of gateways that
  are associated with that gateway group ARN.
  """
  def list_gateways(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListGateways", input, options)
  end

  @doc """
  Lists all enabled skills in a specific skill group.
  """
  def list_skills(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSkills", input, options)
  end

  @doc """
  Lists all categories in the Alexa skill store.
  """
  def list_skills_store_categories(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSkillsStoreCategories", input, options)
  end

  @doc """
  Lists all skills in the Alexa skill store by category.
  """
  def list_skills_store_skills_by_category(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSkillsStoreSkillsByCategory", input, options)
  end

  @doc """
  Lists all of the smart home appliances associated with a room.
  """
  def list_smart_home_appliances(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSmartHomeAppliances", input, options)
  end

  @doc """
  Lists all tags for the specified resource.
  """
  def list_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTags", input, options)
  end

  @doc """
  Sets the conference preferences on a specific conference provider at the account
  level.
  """
  def put_conference_preference(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutConferencePreference", input, options)
  end

  @doc """
  Configures the email template for the user enrollment invitation with the
  specified attributes.
  """
  def put_invitation_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutInvitationConfiguration", input, options)
  end

  @doc """
  Updates room skill parameter details by room, skill, and parameter key ID.

  Not all skills have a room skill parameter.
  """
  def put_room_skill_parameter(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutRoomSkillParameter", input, options)
  end

  @doc """
  Links a user's account to a third-party skill provider.

  If this API operation is called by an assumed IAM role, the skill being linked
  must be a private skill. Also, the skill must be owned by the AWS account that
  assumed the IAM role.
  """
  def put_skill_authorization(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutSkillAuthorization", input, options)
  end

  @doc """
  Registers an Alexa-enabled device built by an Original Equipment Manufacturer
  (OEM) using Alexa Voice Service (AVS).
  """
  def register_avs_device(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RegisterAVSDevice", input, options)
  end

  @doc """
  Disassociates a skill from the organization under a user's AWS account.

  If the skill is a private skill, it moves to an AcceptStatus of PENDING. Any
  private or public skill that is rejected can be added later by calling the
  ApproveSkill API.
  """
  def reject_skill(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RejectSkill", input, options)
  end

  @doc """
  Determines the details for the room from which a skill request was invoked.

  This operation is used by skill developers.

  To query ResolveRoom from an Alexa skill, the skill ID needs to be authorized.
  When the skill is using an AWS Lambda function, the skill is automatically
  authorized when you publish your skill as a private skill to your AWS account.
  Skills that are hosted using a custom web service must be manually authorized.
  To get your skill authorized, contact AWS Support with your AWS account ID that
  queries the ResolveRoom API and skill ID.
  """
  def resolve_room(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ResolveRoom", input, options)
  end

  @doc """
  Revokes an invitation and invalidates the enrollment URL.
  """
  def revoke_invitation(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RevokeInvitation", input, options)
  end

  @doc """
  Searches address books and lists the ones that meet a set of filter and sort
  criteria.
  """
  def search_address_books(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SearchAddressBooks", input, options)
  end

  @doc """
  Searches contacts and lists the ones that meet a set of filter and sort
  criteria.
  """
  def search_contacts(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SearchContacts", input, options)
  end

  @doc """
  Searches devices and lists the ones that meet a set of filter criteria.
  """
  def search_devices(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SearchDevices", input, options)
  end

  @doc """
  Searches network profiles and lists the ones that meet a set of filter and sort
  criteria.
  """
  def search_network_profiles(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SearchNetworkProfiles", input, options)
  end

  @doc """
  Searches room profiles and lists the ones that meet a set of filter criteria.
  """
  def search_profiles(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SearchProfiles", input, options)
  end

  @doc """
  Searches rooms and lists the ones that meet a set of filter and sort criteria.
  """
  def search_rooms(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SearchRooms", input, options)
  end

  @doc """
  Searches skill groups and lists the ones that meet a set of filter and sort
  criteria.
  """
  def search_skill_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SearchSkillGroups", input, options)
  end

  @doc """
  Searches users and lists the ones that meet a set of filter and sort criteria.
  """
  def search_users(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SearchUsers", input, options)
  end

  @doc """
  Triggers an asynchronous flow to send text, SSML, or audio announcements to
  rooms that are identified by a search or filter.
  """
  def send_announcement(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SendAnnouncement", input, options)
  end

  @doc """
  Sends an enrollment invitation email with a URL to a user.

  The URL is valid for 30 days or until you call this operation again, whichever
  comes first.
  """
  def send_invitation(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SendInvitation", input, options)
  end

  @doc """
  Resets a device and its account to the known default settings.

  This clears all information and settings set by previous users in the following
  ways:

    * Bluetooth - This unpairs all bluetooth devices paired with your
  echo device.

    * Volume - This resets the echo device's volume to the default
  value.

    * Notifications - This clears all notifications from your echo
  device.

    * Lists - This clears all to-do items from your echo device.

    * Settings - This internally syncs the room's profile (if the device
  is assigned to a room), contacts, address books, delegation access for account
  linking, and communications (if enabled on the room profile).
  """
  def start_device_sync(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartDeviceSync", input, options)
  end

  @doc """
  Initiates the discovery of any smart home appliances associated with the room.
  """
  def start_smart_home_appliance_discovery(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartSmartHomeApplianceDiscovery", input, options)
  end

  @doc """
  Adds metadata tags to a specified resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes metadata tags from a specified resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Updates address book details by the address book ARN.
  """
  def update_address_book(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateAddressBook", input, options)
  end

  @doc """
  Updates the configuration of the report delivery schedule with the specified
  schedule ARN.
  """
  def update_business_report_schedule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateBusinessReportSchedule", input, options)
  end

  @doc """
  Updates an existing conference provider's settings.
  """
  def update_conference_provider(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateConferenceProvider", input, options)
  end

  @doc """
  Updates the contact details by the contact ARN.
  """
  def update_contact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateContact", input, options)
  end

  @doc """
  Updates the device name by device ARN.
  """
  def update_device(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDevice", input, options)
  end

  @doc """
  Updates the details of a gateway.

  If any optional field is not provided, the existing corresponding value is left
  unmodified.
  """
  def update_gateway(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateGateway", input, options)
  end

  @doc """
  Updates the details of a gateway group.

  If any optional field is not provided, the existing corresponding value is left
  unmodified.
  """
  def update_gateway_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateGatewayGroup", input, options)
  end

  @doc """
  Updates a network profile by the network profile ARN.
  """
  def update_network_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateNetworkProfile", input, options)
  end

  @doc """
  Updates an existing room profile by room profile ARN.
  """
  def update_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateProfile", input, options)
  end

  @doc """
  Updates room details by room ARN.
  """
  def update_room(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateRoom", input, options)
  end

  @doc """
  Updates skill group details by skill group ARN.
  """
  def update_skill_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateSkillGroup", input, options)
  end
end
