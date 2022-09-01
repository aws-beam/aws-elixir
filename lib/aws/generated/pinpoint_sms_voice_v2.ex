# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PinpointSMSVoiceV2 do
  @moduledoc """
  Welcome to the *Amazon Pinpoint SMS and Voice, version 2 API Reference*.

  This guide provides information about Amazon Pinpoint SMS and Voice, version 2
  API resources, including supported HTTP methods, parameters, and schemas.

  Amazon Pinpoint is an Amazon Web Services service that you can use to engage
  with your recipients across multiple messaging channels. The Amazon Pinpoint SMS
  and Voice, version 2 API provides programmatic access to options that are unique
  to the SMS and voice channels and supplements the resources provided by the
  Amazon Pinpoint API.

  If you're new to Amazon Pinpoint, it's also helpful to review the [ Amazon Pinpoint Developer
  Guide](https://docs.aws.amazon.com/pinpoint/latest/developerguide/welcome.html).
  The *Amazon Pinpoint Developer Guide* provides tutorials, code samples, and
  procedures that demonstrate how to use Amazon Pinpoint features programmatically
  and how to integrate Amazon Pinpoint functionality into mobile apps and other
  types of applications. The guide also provides key information, such as Amazon
  Pinpoint integration with other Amazon Web Services services, and the quotas
  that apply to use of the service.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2022-03-31",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "sms-voice",
      global?: false,
      protocol: "json",
      service_id: "Pinpoint SMS Voice V2",
      signature_version: "v4",
      signing_name: "sms-voice",
      target_prefix: "PinpointSMSVoiceV2"
    }
  end

  @doc """
  Associates the specified origination identity with a pool.

  If the origination identity is a phone number and is already associated with
  another pool, an Error is returned. A sender ID can be associated with multiple
  pools.

  If the origination identity configuration doesn't match the pool's
  configuration, an Error is returned.
  """
  def associate_origination_identity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateOriginationIdentity", input, options)
  end

  @doc """
  Creates a new configuration set.

  After you create the configuration set, you can add one or more event
  destinations to it.

  A configuration set is a set of rules that you apply to the SMS and voice
  messages that you send.

  When you send a message, you can optionally specify a single configuration set.
  """
  def create_configuration_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateConfigurationSet", input, options)
  end

  @doc """
  Creates a new event destination in a configuration set.

  An event destination is a location where you send message events. The event
  options are Amazon CloudWatch, Amazon Kinesis Data Firehose, or Amazon SNS. For
  example, when a message is delivered successfully, you can send information
  about that event to an event destination, or send notifications to endpoints
  that are subscribed to an Amazon SNS topic.

  Each configuration set can contain between 0 and 5 event destinations. Each
  event destination can contain a reference to a single destination, such as a
  CloudWatch or Kinesis Data Firehose destination.
  """
  def create_event_destination(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEventDestination", input, options)
  end

  @doc """
  Creates a new opt-out list.

  If the opt-out list name already exists, an Error is returned.

  An opt-out list is a list of phone numbers that are opted out, meaning you can't
  send SMS or voice messages to them. If end user replies with the keyword "STOP,"
  an entry for the phone number is added to the opt-out list. In addition to STOP,
  your recipients can use any supported opt-out keyword, such as CANCEL or OPTOUT.
  For a list of supported opt-out keywords, see [ SMS opt out
  ](https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-manage.html#channels-sms-manage-optout)
  in the *Amazon Pinpoint User Guide*.
  """
  def create_opt_out_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateOptOutList", input, options)
  end

  @doc """
  Creates a new pool and associates the specified origination identity to the
  pool.

  A pool can include one or more phone numbers and SenderIds that are associated
  with your Amazon Web Services account.

  The new pool inherits its configuration from the specified origination identity.
  This includes keywords, message type, opt-out list, two-way configuration, and
  self-managed opt-out configuration. Deletion protection isn't inherited from the
  origination identity and defaults to false.

  If the origination identity is a phone number and is already associated with
  another pool, an Error is returned. A sender ID can be associated with multiple
  pools.
  """
  def create_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePool", input, options)
  end

  @doc """
  Deletes an existing configuration set.

  A configuration set is a set of rules that you apply to voice and SMS messages
  that you send. In a configuration set, you can specify a destination for
  specific types of events related to voice and SMS messages.
  """
  def delete_configuration_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConfigurationSet", input, options)
  end

  @doc """
  Deletes an existing default message type on a configuration set.

  A message type is a type of messages that you plan to send. If you send
  account-related messages or time-sensitive messages such as one-time passcodes,
  choose **Transactional**. If you plan to send messages that contain marketing
  material or other promotional content, choose **Promotional**. This setting
  applies to your entire Amazon Web Services account.
  """
  def delete_default_message_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDefaultMessageType", input, options)
  end

  @doc """
  Deletes an existing default sender ID on a configuration set.

  A default sender ID is the identity that appears on recipients' devices when
  they receive SMS messages. Support for sender ID capabilities varies by country
  or region.
  """
  def delete_default_sender_id(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDefaultSenderId", input, options)
  end

  @doc """
  Deletes an existing event destination.

  An event destination is a location where you send response information about the
  messages that you send. For example, when a message is delivered successfully,
  you can send information about that event to an Amazon CloudWatch destination,
  or send notifications to endpoints that are subscribed to an Amazon SNS topic.
  """
  def delete_event_destination(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEventDestination", input, options)
  end

  @doc """
  Deletes an existing keyword from an origination phone number or pool.

  A keyword is a word that you can search for on a particular phone number or
  pool. It is also a specific word or phrase that an end user can send to your
  number to elicit a response, such as an informational message or a special
  offer. When your number receives a message that begins with a keyword, Amazon
  Pinpoint responds with a customizable message.

  Keywords "HELP" and "STOP" can't be deleted or modified.
  """
  def delete_keyword(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteKeyword", input, options)
  end

  @doc """
  Deletes an existing opt-out list.

  All opted out phone numbers in the opt-out list are deleted.

  If the specified opt-out list name doesn't exist or is in-use by an origination
  phone number or pool, an Error is returned.
  """
  def delete_opt_out_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteOptOutList", input, options)
  end

  @doc """
  Deletes an existing opted out destination phone number from the specified
  opt-out list.

  Each destination phone number can only be deleted once every 30 days.

  If the specified destination phone number doesn't exist or if the opt-out list
  doesn't exist, an Error is returned.
  """
  def delete_opted_out_number(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteOptedOutNumber", input, options)
  end

  @doc """
  Deletes an existing pool.

  Deleting a pool disassociates all origination identities from that pool.

  If the pool status isn't active or if deletion protection is enabled, an Error
  is returned.

  A pool is a collection of phone numbers and SenderIds. A pool can include one or
  more phone numbers and SenderIds that are associated with your Amazon Web
  Services account.
  """
  def delete_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePool", input, options)
  end

  @doc """
  Deletes an account-level monthly spending limit override for sending text
  messages.

  Deleting a spend limit override will set the `EnforcedLimit` to equal the
  `MaxLimit`, which is controlled by Amazon Web Services. For more information on
  spend limits (quotas) see [Amazon Pinpoint quotas
  ](https://docs.aws.amazon.com/pinpoint/latest/developerguide/quotas.html) in the
  *Amazon Pinpoint Developer Guide*.
  """
  def delete_text_message_spend_limit_override(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTextMessageSpendLimitOverride", input, options)
  end

  @doc """
  Deletes an account level monthly spend limit override for sending voice
  messages.

  Deleting a spend limit override sets the `EnforcedLimit` equal to the
  `MaxLimit`, which is controlled by Amazon Web Services. For more information on
  spending limits (quotas) see [Amazon Pinpoint quotas](https://docs.aws.amazon.com/pinpoint/latest/developerguide/quotas.html)
  in the *Amazon Pinpoint Developer Guide*.
  """
  def delete_voice_message_spend_limit_override(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVoiceMessageSpendLimitOverride", input, options)
  end

  @doc """
  Describes attributes of your Amazon Web Services account.

  The supported account attributes include account tier, which indicates whether
  your account is in the sandbox or production environment. When you're ready to
  move your account out of the sandbox, create an Amazon Web Services Support case
  for a service limit increase request.

  New Amazon Pinpoint accounts are placed into an SMS or voice sandbox. The
  sandbox protects both Amazon Web Services end recipients and SMS or voice
  recipients from fraud and abuse.
  """
  def describe_account_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccountAttributes", input, options)
  end

  @doc """
  Describes the current Amazon Pinpoint SMS Voice V2 resource quotas for your
  account.

  The description for a quota includes the quota name, current usage toward that
  quota, and the quota's maximum value.

  When you establish an Amazon Web Services account, the account has initial
  quotas on the maximum number of configuration sets, opt-out lists, phone
  numbers, and pools that you can create in a given Region. For more information
  see [ Amazon Pinpoint quotas
  ](https://docs.aws.amazon.com/pinpoint/latest/developerguide/quotas.html) in the
  *Amazon Pinpoint Developer Guide*.
  """
  def describe_account_limits(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccountLimits", input, options)
  end

  @doc """
  Describes the specified configuration sets or all in your account.

  If you specify configuration set names, the output includes information for only
  the specified configuration sets. If you specify filters, the output includes
  information for only those configuration sets that meet the filter criteria. If
  you don't specify configuration set names or filters, the output includes
  information for all configuration sets.

  If you specify a configuration set name that isn't valid, an error is returned.
  """
  def describe_configuration_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConfigurationSets", input, options)
  end

  @doc """
  Describes the specified keywords or all keywords on your origination phone
  number or pool.

  A keyword is a word that you can search for on a particular phone number or
  pool. It is also a specific word or phrase that an end user can send to your
  number to elicit a response, such as an informational message or a special
  offer. When your number receives a message that begins with a keyword, Amazon
  Pinpoint responds with a customizable message.

  If you specify a keyword that isn't valid, an Error is returned.
  """
  def describe_keywords(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeKeywords", input, options)
  end

  @doc """
  Describes the specified opt-out list or all opt-out lists in your account.

  If you specify opt-out list names, the output includes information for only the
  specified opt-out lists. Opt-out lists include only those that meet the filter
  criteria. If you don't specify opt-out list names or filters, the output
  includes information for all opt-out lists.

  If you specify an opt-out list name that isn't valid, an Error is returned.
  """
  def describe_opt_out_lists(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeOptOutLists", input, options)
  end

  @doc """
  Describes the specified opted out destination numbers or all opted out
  destination numbers in an opt-out list.

  If you specify opted out numbers, the output includes information for only the
  specified opted out numbers. If you specify filters, the output includes
  information for only those opted out numbers that meet the filter criteria. If
  you don't specify opted out numbers or filters, the output includes information
  for all opted out destination numbers in your opt-out list.

  If you specify an opted out number that isn't valid, an Error is returned.
  """
  def describe_opted_out_numbers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeOptedOutNumbers", input, options)
  end

  @doc """
  Describes the specified origination phone number, or all the phone numbers in
  your account.

  If you specify phone number IDs, the output includes information for only the
  specified phone numbers. If you specify filters, the output includes information
  for only those phone numbers that meet the filter criteria. If you don't specify
  phone number IDs or filters, the output includes information for all phone
  numbers.

  If you specify a phone number ID that isn't valid, an Error is returned.
  """
  def describe_phone_numbers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePhoneNumbers", input, options)
  end

  @doc """
  Retrieves the specified pools or all pools associated with your Amazon Web
  Services account.

  If you specify pool IDs, the output includes information for only the specified
  pools. If you specify filters, the output includes information for only those
  pools that meet the filter criteria. If you don't specify pool IDs or filters,
  the output includes information for all pools.

  If you specify a pool ID that isn't valid, an Error is returned.

  A pool is a collection of phone numbers and SenderIds. A pool can include one or
  more phone numbers and SenderIds that are associated with your Amazon Web
  Services account.
  """
  def describe_pools(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePools", input, options)
  end

  @doc """
  Describes the specified SenderIds or all SenderIds associated with your Amazon
  Web Services account.

  If you specify SenderIds, the output includes information for only the specified
  SenderIds. If you specify filters, the output includes information for only
  those SenderIds that meet the filter criteria. If you don't specify SenderIds or
  filters, the output includes information for all SenderIds.

  f you specify a sender ID that isn't valid, an Error is returned.
  """
  def describe_sender_ids(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSenderIds", input, options)
  end

  @doc """
  Describes the current Amazon Pinpoint monthly spend limits for sending voice and
  text messages.

  When you establish an Amazon Web Services account, the account has initial
  monthly spend limit in a given Region. For more information on increasing your
  monthly spend limit, see [ Requesting increases to your monthly SMS spending quota for Amazon Pinpoint
  ](https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-awssupport-spend-threshold.html)
  in the *Amazon Pinpoint User Guide*.
  """
  def describe_spend_limits(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSpendLimits", input, options)
  end

  @doc """
  Removes the specified origination identity from an existing pool.

  If the origination identity isn't associated with the specified pool, an Error
  is returned.
  """
  def disassociate_origination_identity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateOriginationIdentity", input, options)
  end

  @doc """
  Lists all associated origination identities in your pool.

  If you specify filters, the output includes information for only those
  origination identities that meet the filter criteria.
  """
  def list_pool_origination_identities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPoolOriginationIdentities", input, options)
  end

  @doc """
  List all tags associated with a resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates a keyword configuration on an origination phone number or
  pool.

  A keyword is a word that you can search for on a particular phone number or
  pool. It is also a specific word or phrase that an end user can send to your
  number to elicit a response, such as an informational message or a special
  offer. When your number receives a message that begins with a keyword, Amazon
  Pinpoint responds with a customizable message.

  If you specify a keyword that isn't valid, an Error is returned.
  """
  def put_keyword(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutKeyword", input, options)
  end

  @doc """
  Creates an opted out destination phone number in the opt-out list.

  If the destination phone number isn't valid or if the specified opt-out list
  doesn't exist, an Error is returned.
  """
  def put_opted_out_number(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutOptedOutNumber", input, options)
  end

  @doc """
  Releases an existing origination phone number in your account.

  Once released, a phone number is no longer available for sending messages.

  If the origination phone number has deletion protection enabled or is associated
  with a pool, an Error is returned.
  """
  def release_phone_number(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ReleasePhoneNumber", input, options)
  end

  @doc """
  Request an origination phone number for use in your account.

  For more information on phone number request see [ Requesting a number
  ](https://docs.aws.amazon.com/pinpoint/latest/userguide/settings-sms-request-number.html)
  in the *Amazon Pinpoint User Guide*.
  """
  def request_phone_number(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RequestPhoneNumber", input, options)
  end

  @doc """
  Creates a new text message and sends it to a recipient's phone number.

  SMS throughput limits are measured in Message Parts per Second (MPS). Your MPS
  limit depends on the destination country of your messages, as well as the type
  of phone number (origination number) that you use to send the message. For more
  information, see [Message Parts per Second (MPS) limits](https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-limitations-mps.html)
  in the *Amazon Pinpoint User Guide*.
  """
  def send_text_message(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendTextMessage", input, options)
  end

  @doc """
  Allows you to send a request that sends a text message through Amazon Pinpoint.

  This operation uses [Amazon Polly](http://aws.amazon.com/polly/) to convert a
  text script into a voice message.
  """
  def send_voice_message(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendVoiceMessage", input, options)
  end

  @doc """
  Sets the default message type on a configuration set.

  Choose the category of SMS messages that you plan to send from this account. If
  you send account-related messages or time-sensitive messages such as one-time
  passcodes, choose **Transactional**. If you plan to send messages that contain
  marketing material or other promotional content, choose **Promotional**. This
  setting applies to your entire Amazon Web Services account.
  """
  def set_default_message_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetDefaultMessageType", input, options)
  end

  @doc """
  Sets default sender ID on a configuration set.

  When sending a text message to a destination country that supports sender IDs,
  the default sender ID on the configuration set specified will be used if no
  dedicated origination phone numbers or registered sender IDs are available in
  your account.
  """
  def set_default_sender_id(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetDefaultSenderId", input, options)
  end

  @doc """
  Sets an account level monthly spend limit override for sending text messages.

  The requested spend limit must be less than or equal to the `MaxLimit`, which is
  set by Amazon Web Services.
  """
  def set_text_message_spend_limit_override(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetTextMessageSpendLimitOverride", input, options)
  end

  @doc """
  Sets an account level monthly spend limit override for sending voice messages.

  The requested spend limit must be less than or equal to the `MaxLimit`, which is
  set by Amazon Web Services.
  """
  def set_voice_message_spend_limit_override(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetVoiceMessageSpendLimitOverride", input, options)
  end

  @doc """
  Adds or overwrites only the specified tags for the specified Amazon Pinpoint SMS
  Voice, version 2 resource.

  When you specify an existing tag key, the value is overwritten with the new
  value. Each resource can have a maximum of 50 tags. Each tag consists of a key
  and an optional value. Tag keys must be unique per resource. For more
  information about tags, see [ Tagging Amazon Pinpoint resources](https://docs.aws.amazon.com/pinpoint/latest/developerguide/tagging-resources.html)
  in the *Amazon Pinpoint Developer Guide*.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes the association of the specified tags from an Amazon Pinpoint SMS Voice
  V2 resource.

  For more information on tags see [ Tagging Amazon Pinpoint resources](https://docs.aws.amazon.com/pinpoint/latest/developerguide/tagging-resources.html)
  in the *Amazon Pinpoint Developer Guide*.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an existing event destination in a configuration set.

  You can update the IAM role ARN for CloudWatch Logs and Kinesis Data Firehose.
  You can also enable or disable the event destination.

  You may want to update an event destination to change its matching event types
  or updating the destination resource ARN. You can't change an event
  destination's type between CloudWatch Logs, Kinesis Data Firehose, and Amazon
  SNS.
  """
  def update_event_destination(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEventDestination", input, options)
  end

  @doc """
  Updates the configuration of an existing origination phone number.

  You can update the opt-out list, enable or disable two-way messaging, change the
  TwoWayChannelArn, enable or disable self-managed opt-outs, and enable or disable
  deletion protection.

  If the origination phone number is associated with a pool, an Error is returned.
  """
  def update_phone_number(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePhoneNumber", input, options)
  end

  @doc """
  Updates the configuration of an existing pool.

  You can update the opt-out list, enable or disable two-way messaging, change the
  `TwoWayChannelArn`, enable or disable self-managed opt-outs, enable or disable
  deletion protection, and enable or disable shared routes.
  """
  def update_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePool", input, options)
  end
end
