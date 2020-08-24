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
  Limits](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
  in the *Amazon Connect Administrator Guide*.
  """

  @doc """
  Creates a user account for the specified Amazon Connect instance.
  """
  def create_user(client, instance_id, input, options \\ []) do
    path_ = "/users/#{URI.encode(instance_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a user account from the specified Amazon Connect instance.
  """
  def delete_user(client, instance_id, user_id, input, options \\ []) do
    path_ = "/users/#{URI.encode(instance_id)}/#{URI.encode(user_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
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

  For more information, see [Real-time Metrics
  Reports](https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-reports.html)
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

  For more information, see [Historical Metrics
  Reports](https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics.html)
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
  Provides information about the queues for the specified Amazon Connect
  instance.
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
  Provides summary information about the routing profiles for the specified
  Amazon Connect instance.
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

  The supported resource type is users.
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
          {:ok, Poison.Parser.t(), Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
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

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, response}

      {:ok, %HTTPoison.Response{status_code: status_code, body: body} = response}
      when status_code == 200 or status_code == 202 or status_code == 204 ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, %{}, response}

      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
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
    if input != nil, do: Poison.Encoder.encode(input, %{}), else: ""
  end
end
