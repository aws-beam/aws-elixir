# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Connect do
  @moduledoc """
  Amazon Connect is a cloud-based contact center solution that makes it easy
  to set up and manage a customer contact center and provide reliable
  customer engagement at any scale.

  Amazon Connect provides rich metrics and real-time reporting that allow you
  to optimize contact routing. You can also resolve customer issues more
  efficiently by putting customers in touch with the right agents.

  There are limits to the number of Amazon Connect resources that you can
  create and limits to the number of requests that you can make per second.
  For more information, see [Amazon Connect Service
  Quotas](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
  in the *Amazon Connect Administrator Guide*.

  To connect programmatically to an AWS service, you use an endpoint. For a
  list of Amazon Connect endpoints, see [Amazon Connect
  Endpoints](https://docs.aws.amazon.com/general/latest/gr/connect_region.html).

  <note> Working with contact flows? Check out the [Amazon Connect Flow
  language](https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html).

  </note>
  """

  @doc """
  Associates a set of queues with a routing profile.
  """
  def associate_routing_profile_queues(client, instance_id, routing_profile_id, input, options \\ []) do
    path_ = "/routing-profiles/#{URI.encode(instance_id)}/#{URI.encode(routing_profile_id)}/associate-queues"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a contact flow for the specified Amazon Connect instance.

  You can also create and update contact flows using the [Amazon Connect Flow
  language](https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html).
  """
  def create_contact_flow(client, instance_id, input, options \\ []) do
    path_ = "/contact-flows/#{URI.encode(instance_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new routing profile.
  """
  def create_routing_profile(client, instance_id, input, options \\ []) do
    path_ = "/routing-profiles/#{URI.encode(instance_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a user account for the specified Amazon Connect instance.

  For information about how to create user accounts using the Amazon Connect
  console, see [Add
  Users](https://docs.aws.amazon.com/connect/latest/adminguide/user-management.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def create_user(client, instance_id, input, options \\ []) do
    path_ = "/users/#{URI.encode(instance_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a user account from the specified Amazon Connect instance.

  For information about what happens to a user's data when their account is
  deleted, see [Delete Users from Your Amazon Connect
  Instance](https://docs.aws.amazon.com/connect/latest/adminguide/delete-users.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def delete_user(client, instance_id, user_id, input, options \\ []) do
    path_ = "/users/#{URI.encode(instance_id)}/#{URI.encode(user_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes the specified contact flow.

  You can also create and update contact flows using the [Amazon Connect Flow
  language](https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html).
  """
  def describe_contact_flow(client, contact_flow_id, instance_id, options \\ []) do
    path_ = "/contact-flows/#{URI.encode(instance_id)}/#{URI.encode(contact_flow_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes the specified routing profile.
  """
  def describe_routing_profile(client, instance_id, routing_profile_id, options \\ []) do
    path_ = "/routing-profiles/#{URI.encode(instance_id)}/#{URI.encode(routing_profile_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes the specified user account. You can find the instance ID in the
  console (it’s the final part of the ARN). The console does not display the
  user IDs. Instead, list the users and note the IDs provided in the output.
  """
  def describe_user(client, instance_id, user_id, options \\ []) do
    path_ = "/users/#{URI.encode(instance_id)}/#{URI.encode(user_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes the specified hierarchy group.
  """
  def describe_user_hierarchy_group(client, hierarchy_group_id, instance_id, options \\ []) do
    path_ = "/user-hierarchy-groups/#{URI.encode(instance_id)}/#{URI.encode(hierarchy_group_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes the hierarchy structure of the specified Amazon Connect instance.
  """
  def describe_user_hierarchy_structure(client, instance_id, options \\ []) do
    path_ = "/user-hierarchy-structure/#{URI.encode(instance_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Disassociates a set of queues from a routing profile.
  """
  def disassociate_routing_profile_queues(client, instance_id, routing_profile_id, input, options \\ []) do
    path_ = "/routing-profiles/#{URI.encode(instance_id)}/#{URI.encode(routing_profile_id)}/disassociate-queues"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves the contact attributes for the specified contact.
  """
  def get_contact_attributes(client, initial_contact_id, instance_id, options \\ []) do
    path_ = "/contact/attributes/#{URI.encode(instance_id)}/#{URI.encode(initial_contact_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets the real-time metric data from the specified Amazon Connect instance.

  For a description of each metric, see [Real-time Metrics
  Definitions](https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def get_current_metric_data(client, instance_id, input, options \\ []) do
    path_ = "/metrics/current/#{URI.encode(instance_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves a token for federation.
  """
  def get_federation_token(client, instance_id, options \\ []) do
    path_ = "/user/federate/#{URI.encode(instance_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets historical metric data from the specified Amazon Connect instance.

  For a description of each historical metric, see [Historical Metrics
  Definitions](https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def get_metric_data(client, instance_id, input, options \\ []) do
    path_ = "/metrics/historical/#{URI.encode(instance_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Provides information about the contact flows for the specified Amazon
  Connect instance.

  You can also create and update contact flows using the [Amazon Connect Flow
  language](https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html).

  For more information about contact flows, see [Contact
  Flows](https://docs.aws.amazon.com/connect/latest/adminguide/concepts-contact-flows.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def list_contact_flows(client, instance_id, contact_flow_types \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/contact-flows-summary/#{URI.encode(instance_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(contact_flow_types) do
      [{"contactFlowTypes", contact_flow_types} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Provides information about the hours of operation for the specified Amazon
  Connect instance.

  For more information about hours of operation, see [Set the Hours of
  Operation for a
  Queue](https://docs.aws.amazon.com/connect/latest/adminguide/set-hours-operation.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def list_hours_of_operations(client, instance_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/hours-of-operations-summary/#{URI.encode(instance_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Provides information about the phone numbers for the specified Amazon
  Connect instance.

  For more information about phone numbers, see [Set Up Phone Numbers for
  Your Contact
  Center](https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def list_phone_numbers(client, instance_id, max_results \\ nil, next_token \\ nil, phone_number_country_codes \\ nil, phone_number_types \\ nil, options \\ []) do
    path_ = "/phone-numbers-summary/#{URI.encode(instance_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(phone_number_types) do
      [{"phoneNumberTypes", phone_number_types} | query_]
    else
      query_
    end
    query_ = if !is_nil(phone_number_country_codes) do
      [{"phoneNumberCountryCodes", phone_number_country_codes} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Provides information about the prompts for the specified Amazon Connect
  instance.
  """
  def list_prompts(client, instance_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/prompts-summary/#{URI.encode(instance_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Provides information about the queues for the specified Amazon Connect
  instance.

  For more information about queues, see [Queues: Standard and
  Agent](https://docs.aws.amazon.com/connect/latest/adminguide/concepts-queues-standard-and-agent.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def list_queues(client, instance_id, max_results \\ nil, next_token \\ nil, queue_types \\ nil, options \\ []) do
    path_ = "/queues-summary/#{URI.encode(instance_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(queue_types) do
      [{"queueTypes", queue_types} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  List the queues associated with a routing profile.
  """
  def list_routing_profile_queues(client, instance_id, routing_profile_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/routing-profiles/#{URI.encode(instance_id)}/#{URI.encode(routing_profile_id)}/queues"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Provides summary information about the routing profiles for the specified
  Amazon Connect instance.

  For more information about routing profiles, see [Routing
  Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing.html)
  and [Create a Routing
  Profile](https://docs.aws.amazon.com/connect/latest/adminguide/routing-profiles.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def list_routing_profiles(client, instance_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/routing-profiles-summary/#{URI.encode(instance_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Provides summary information about the security profiles for the specified
  Amazon Connect instance.

  For more information about security profiles, see [Security
  Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def list_security_profiles(client, instance_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/security-profiles-summary/#{URI.encode(instance_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the tags for the specified resource.

  For sample policies that use tags, see [Amazon Connect Identity-Based
  Policy
  Examples](https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Provides summary information about the hierarchy groups for the specified
  Amazon Connect instance.

  For more information about agent hierarchies, see [Set Up Agent
  Hierarchies](https://docs.aws.amazon.com/connect/latest/adminguide/agent-hierarchy.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def list_user_hierarchy_groups(client, instance_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/user-hierarchy-groups-summary/#{URI.encode(instance_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Provides summary information about the users for the specified Amazon
  Connect instance.
  """
  def list_users(client, instance_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/users-summary/#{URI.encode(instance_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  When a contact is being recorded, and the recording has been suspended
  using SuspendContactRecording, this API resumes recording the call.

  Only voice recordings are supported at this time.
  """
  def resume_contact_recording(client, input, options \\ []) do
    path_ = "/contact/resume-recording"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Initiates a contact flow to start a new chat for the customer. Response of
  this API provides a token required to obtain credentials from the
  [CreateParticipantConnection](https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html)
  API in the Amazon Connect Participant Service.

  When a new chat contact is successfully created, clients need to subscribe
  to the participant’s connection for the created chat within 5 minutes. This
  is achieved by invoking
  [CreateParticipantConnection](https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html)
  with WEBSOCKET and CONNECTION_CREDENTIALS.

  A 429 error occurs in two situations:

  <ul> <li> API rate limit is exceeded. API TPS throttling returns a
  `TooManyRequests` exception from the API Gateway.

  </li> <li> The [quota for concurrent active
  chats](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
  is exceeded. Active chat throttling returns a `LimitExceededException`.

  </li> </ul> For more information about how chat works, see
  [Chat](https://docs.aws.amazon.com/connect/latest/adminguide/chat.html) in
  the *Amazon Connect Administrator Guide*.
  """
  def start_chat_contact(client, input, options \\ []) do
    path_ = "/contact/chat"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  This API starts recording the contact when the agent joins the call.
  StartContactRecording is a one-time action. For example, if you use
  StopContactRecording to stop recording an ongoing call, you can't use
  StartContactRecording to restart it. For scenarios where the recording has
  started and you want to suspend and resume it, such as when collecting
  sensitive information (for example, a credit card number), use
  SuspendContactRecording and ResumeContactRecording.

  You can use this API to override the recording behavior configured in the
  [Set recording
  behavior](https://docs.aws.amazon.com/connect/latest/adminguide/set-recording-behavior.html)
  block.

  Only voice recordings are supported at this time.
  """
  def start_contact_recording(client, input, options \\ []) do
    path_ = "/contact/start-recording"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  This API places an outbound call to a contact, and then initiates the
  contact flow. It performs the actions in the contact flow that's specified
  (in `ContactFlowId`).

  Agents are not involved in initiating the outbound API (that is, dialing
  the contact). If the contact flow places an outbound call to a contact, and
  then puts the contact in queue, that's when the call is routed to the
  agent, like any other inbound case.

  There is a 60 second dialing timeout for this operation. If the call is not
  connected after 60 seconds, it fails.

  <note> UK numbers with a 447 prefix are not allowed by default. Before you
  can dial these UK mobile numbers, you must submit a service quota increase
  request. For more information, see [Amazon Connect Service
  Quotas](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
  in the *Amazon Connect Administrator Guide*.

  </note>
  """
  def start_outbound_voice_contact(client, input, options \\ []) do
    path_ = "/contact/outbound-voice"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Ends the specified contact.
  """
  def stop_contact(client, input, options \\ []) do
    path_ = "/contact/stop"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  When a contact is being recorded, this API stops recording the call.
  StopContactRecording is a one-time action. If you use StopContactRecording
  to stop recording an ongoing call, you can't use StartContactRecording to
  restart it. For scenarios where the recording has started and you want to
  suspend it for sensitive information (for example, to collect a credit card
  number), and then restart it, use SuspendContactRecording and
  ResumeContactRecording.

  Only voice recordings are supported at this time.
  """
  def stop_contact_recording(client, input, options \\ []) do
    path_ = "/contact/stop-recording"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  When a contact is being recorded, this API suspends recording the call. For
  example, you might suspend the call recording while collecting sensitive
  information, such as a credit card number. Then use ResumeContactRecording
  to restart recording.

  The period of time that the recording is suspended is filled with silence
  in the final recording.

  Only voice recordings are supported at this time.
  """
  def suspend_contact_recording(client, input, options \\ []) do
    path_ = "/contact/suspend-recording"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds the specified tags to the specified resource.

  The supported resource types are users, routing profiles, and contact
  flows.

  For sample policies that use tags, see [Amazon Connect Identity-Based
  Policy
  Examples](https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes the specified tags from the specified resource.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"tagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates or updates the contact attributes associated with the specified
  contact.

  You can add or update attributes for both ongoing and completed contacts.
  For example, you can update the customer's name or the reason the customer
  called while the call is active, or add notes about steps that the agent
  took during the call that are displayed to the next agent that takes the
  call. You can also update attributes for a contact using data from your CRM
  application and save the data with the contact in Amazon Connect. You could
  also flag calls for additional analysis, such as legal review or
  identifying abusive callers.

  Contact attributes are available in Amazon Connect for 24 months, and are
  then deleted.

  This operation is also available in the Amazon Connect Flow language. See
  [UpdateContactAttributes](https://docs.aws.amazon.com/connect/latest/adminguide/contact-actions-updatecontactattributes.html).

  **Important:** You cannot use the operation to update attributes for
  contacts that occurred prior to the release of the API, September 12, 2018.
  You can update attributes only for contacts that started after the release
  of the API. If you attempt to update attributes for a contact that occurred
  prior to the release of the API, a 400 error is returned. This applies also
  to queued callbacks that were initiated prior to the release of the API but
  are still active in your instance.
  """
  def update_contact_attributes(client, input, options \\ []) do
    path_ = "/contact/attributes"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the specified contact flow.

  You can also create and update contact flows using the [Amazon Connect Flow
  language](https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html).
  """
  def update_contact_flow_content(client, contact_flow_id, instance_id, input, options \\ []) do
    path_ = "/contact-flows/#{URI.encode(instance_id)}/#{URI.encode(contact_flow_id)}/content"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  The name of the contact flow.
  """
  def update_contact_flow_name(client, contact_flow_id, instance_id, input, options \\ []) do
    path_ = "/contact-flows/#{URI.encode(instance_id)}/#{URI.encode(contact_flow_id)}/name"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the channels that agents can handle in the Contact Control Panel
  (CCP) for a routing profile.
  """
  def update_routing_profile_concurrency(client, instance_id, routing_profile_id, input, options \\ []) do
    path_ = "/routing-profiles/#{URI.encode(instance_id)}/#{URI.encode(routing_profile_id)}/concurrency"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the default outbound queue of a routing profile.
  """
  def update_routing_profile_default_outbound_queue(client, instance_id, routing_profile_id, input, options \\ []) do
    path_ = "/routing-profiles/#{URI.encode(instance_id)}/#{URI.encode(routing_profile_id)}/default-outbound-queue"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the name and description of a routing profile. The request accepts
  the following data in JSON format. At least `Name` or `Description` must be
  provided.
  """
  def update_routing_profile_name(client, instance_id, routing_profile_id, input, options \\ []) do
    path_ = "/routing-profiles/#{URI.encode(instance_id)}/#{URI.encode(routing_profile_id)}/name"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the properties associated with a set of queues for a routing
  profile.
  """
  def update_routing_profile_queues(client, instance_id, routing_profile_id, input, options \\ []) do
    path_ = "/routing-profiles/#{URI.encode(instance_id)}/#{URI.encode(routing_profile_id)}/queues"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Assigns the specified hierarchy group to the specified user.
  """
  def update_user_hierarchy(client, instance_id, user_id, input, options \\ []) do
    path_ = "/users/#{URI.encode(instance_id)}/#{URI.encode(user_id)}/hierarchy"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the identity information for the specified user.

  <important> Someone with the ability to invoke `UpdateUserIndentityInfo`
  can change the login credentials of other users by changing their email
  address. This poses a security risk to your organization. They can change
  the email address of a user to the attacker's email address, and then reset
  the password through email. We strongly recommend limiting who has the
  ability to invoke `UpdateUserIndentityInfo`. For more information, see
  [Best Practices for Security
  Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html)
  in the *Amazon Connect Administrator Guide*.

  </important>
  """
  def update_user_identity_info(client, instance_id, user_id, input, options \\ []) do
    path_ = "/users/#{URI.encode(instance_id)}/#{URI.encode(user_id)}/identity-info"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the phone configuration settings for the specified user.
  """
  def update_user_phone_config(client, instance_id, user_id, input, options \\ []) do
    path_ = "/users/#{URI.encode(instance_id)}/#{URI.encode(user_id)}/phone-config"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Assigns the specified routing profile to the specified user.
  """
  def update_user_routing_profile(client, instance_id, user_id, input, options \\ []) do
    path_ = "/users/#{URI.encode(instance_id)}/#{URI.encode(user_id)}/routing-profile"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Assigns the specified security profiles to the specified user.
  """
  def update_user_security_profiles(client, instance_id, user_id, input, options \\ []) do
    path_ = "/users/#{URI.encode(instance_id)}/#{URI.encode(user_id)}/security-profiles"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "connect"}
    host = build_host("connect", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    {client, fun} = Application.get_env(:aws_elixir, :http_client, {Aws.Internal.HttpClient, :request})
    apply(client, fun, [method, url, payload, headers, options, success_status_code])
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

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: encode!(input), else: ""
  end

  defp encode!(input) do
    {encoder, fun} = Application.get_env(:aws_elixir, :json_encoder, {Poison, :encode!})
    apply(encoder, fun, [input])
  end
end
