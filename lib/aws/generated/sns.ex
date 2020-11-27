# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SNS do
  @moduledoc """
  Amazon Simple Notification Service

  Amazon Simple Notification Service (Amazon SNS) is a web service that enables
  you to build distributed web-enabled applications.

  Applications can use Amazon SNS to easily push real-time notification messages
  to interested subscribers over multiple delivery protocols. For more information
  about this product see [https://aws.amazon.com/sns](http://aws.amazon.com/sns/). For detailed information about Amazon SNS features and their associated API
  calls, see the [Amazon SNS Developer
  Guide](https://docs.aws.amazon.com/sns/latest/dg/).

  For information on the permissions you need to use this API, see [Identity and access management in Amazon
  SNS](https://docs.aws.amazon.com/sns/latest/dg/sns-authentication-and-access-control.html)
  in the *Amazon SNS Developer Guide.*

  We also provide SDKs that enable you to access Amazon SNS from your preferred
  programming language. The SDKs contain functionality that automatically takes
  care of tasks such as: cryptographically signing your service requests, retrying
  requests, and handling error responses. For a list of available SDKs, go to
  [Tools for Amazon Web Services](http://aws.amazon.com/tools/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "Amazon SNS",
      api_version: "2010-03-31",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "sns",
      global?: false,
      protocol: "query",
      service_id: "SNS",
      signature_version: "v4",
      signing_name: "sns",
      target_prefix: nil
    }
  end

  @doc """
  Adds a statement to a topic's access control policy, granting access for the
  specified AWS accounts to the specified actions.
  """
  def add_permission(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddPermission", input, options)
  end

  @doc """
  Accepts a phone number and indicates whether the phone holder has opted out of
  receiving SMS messages from your account.

  You cannot send SMS messages to a number that is opted out.

  To resume sending messages, you can opt in the number by using the
  `OptInPhoneNumber` action.
  """
  def check_if_phone_number_is_opted_out(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CheckIfPhoneNumberIsOptedOut", input, options)
  end

  @doc """
  Verifies an endpoint owner's intent to receive messages by validating the token
  sent to the endpoint by an earlier `Subscribe` action.

  If the token is valid, the action creates a new subscription and returns its
  Amazon Resource Name (ARN). This call requires an AWS signature only when the
  `AuthenticateOnUnsubscribe` flag is set to "true".
  """
  def confirm_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ConfirmSubscription", input, options)
  end

  @doc """
  Creates a platform application object for one of the supported push notification
  services, such as APNS and GCM (Firebase Cloud Messaging), to which devices and
  mobile apps may register.

  You must specify `PlatformPrincipal` and `PlatformCredential` attributes when
  using the `CreatePlatformApplication` action.

  `PlatformPrincipal` and `PlatformCredential` are received from the notification
  service.

    * For `ADM`, `PlatformPrincipal` is `client id` and
  `PlatformCredential` is `client secret`.

    * For `Baidu`, `PlatformPrincipal` is `API key` and
  `PlatformCredential` is `secret key`.

    * For `APNS` and `APNS_SANDBOX`, `PlatformPrincipal` is `SSL
  certificate` and `PlatformCredential` is `private key`.

    * For `GCM` (Firebase Cloud Messaging), there is no
  `PlatformPrincipal` and the `PlatformCredential` is `API key`.

    * For `MPNS`, `PlatformPrincipal` is `TLS certificate` and
  `PlatformCredential` is `private key`.

    * For `WNS`, `PlatformPrincipal` is `Package Security Identifier`
  and `PlatformCredential` is `secret key`.

  You can use the returned `PlatformApplicationArn` as an attribute for the
  `CreatePlatformEndpoint` action.
  """
  def create_platform_application(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreatePlatformApplication", input, options)
  end

  @doc """
  Creates an endpoint for a device and mobile app on one of the supported push
  notification services, such as GCM (Firebase Cloud Messaging) and APNS.

  `CreatePlatformEndpoint` requires the `PlatformApplicationArn` that is returned
  from `CreatePlatformApplication`. You can use the returned `EndpointArn` to send
  a message to a mobile app or by the `Subscribe` action for subscription to a
  topic. The `CreatePlatformEndpoint` action is idempotent, so if the requester
  already owns an endpoint with the same device token and attributes, that
  endpoint's ARN is returned without creating a new endpoint. For more
  information, see [Using Amazon SNS Mobile Push Notifications](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

  When using `CreatePlatformEndpoint` with Baidu, two attributes must be provided:
  ChannelId and UserId. The token field must also contain the ChannelId. For more
  information, see [Creating an Amazon SNS Endpoint for Baidu](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePushBaiduEndpoint.html).
  """
  def create_platform_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreatePlatformEndpoint", input, options)
  end

  @doc """
  Creates a topic to which notifications can be published.

  Users can create at most 100,000 standard topics (at most 1,000 FIFO topics).
  For more information, see
  [https://aws.amazon.com/sns](http://aws.amazon.com/sns/). This action is
  idempotent, so if the requester already owns a topic with the specified name,
  that topic's ARN is returned without creating a new topic.
  """
  def create_topic(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateTopic", input, options)
  end

  @doc """
  Deletes the endpoint for a device and mobile app from Amazon SNS.

  This action is idempotent. For more information, see [Using Amazon SNS Mobile Push
  Notifications](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

  When you delete an endpoint that is also subscribed to a topic, then you must
  also unsubscribe the endpoint from the topic.
  """
  def delete_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEndpoint", input, options)
  end

  @doc """
  Deletes a platform application object for one of the supported push notification
  services, such as APNS and GCM (Firebase Cloud Messaging).

  For more information, see [Using Amazon SNS Mobile Push Notifications](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).
  """
  def delete_platform_application(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeletePlatformApplication", input, options)
  end

  @doc """
  Deletes a topic and all its subscriptions.

  Deleting a topic might prevent some messages previously sent to the topic from
  being delivered to subscribers. This action is idempotent, so deleting a topic
  that does not exist does not result in an error.
  """
  def delete_topic(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteTopic", input, options)
  end

  @doc """
  Retrieves the endpoint attributes for a device on one of the supported push
  notification services, such as GCM (Firebase Cloud Messaging) and APNS.

  For more information, see [Using Amazon SNS Mobile Push Notifications](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).
  """
  def get_endpoint_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetEndpointAttributes", input, options)
  end

  @doc """
  Retrieves the attributes of the platform application object for the supported
  push notification services, such as APNS and GCM (Firebase Cloud Messaging).

  For more information, see [Using Amazon SNS Mobile Push Notifications](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).
  """
  def get_platform_application_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetPlatformApplicationAttributes", input, options)
  end

  @doc """
  Returns the settings for sending SMS messages from your account.

  These settings are set with the `SetSMSAttributes` action.
  """
  def get_s_m_s_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetSMSAttributes", input, options)
  end

  @doc """
  Returns all of the properties of a subscription.
  """
  def get_subscription_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetSubscriptionAttributes", input, options)
  end

  @doc """
  Returns all of the properties of a topic.

  Topic properties returned might differ based on the authorization of the user.
  """
  def get_topic_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetTopicAttributes", input, options)
  end

  @doc """
  Lists the endpoints and endpoint attributes for devices in a supported push
  notification service, such as GCM (Firebase Cloud Messaging) and APNS.

  The results for `ListEndpointsByPlatformApplication` are paginated and return a
  limited list of endpoints, up to 100. If additional records are available after
  the first page results, then a NextToken string will be returned. To receive the
  next page, you call `ListEndpointsByPlatformApplication` again using the
  NextToken string received from the previous call. When there are no more records
  to return, NextToken will be null. For more information, see [Using Amazon SNS Mobile Push
  Notifications](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

  This action is throttled at 30 transactions per second (TPS).
  """
  def list_endpoints_by_platform_application(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListEndpointsByPlatformApplication", input, options)
  end

  @doc """
  Returns a list of phone numbers that are opted out, meaning you cannot send SMS
  messages to them.

  The results for `ListPhoneNumbersOptedOut` are paginated, and each page returns
  up to 100 phone numbers. If additional phone numbers are available after the
  first page of results, then a `NextToken` string will be returned. To receive
  the next page, you call `ListPhoneNumbersOptedOut` again using the `NextToken`
  string received from the previous call. When there are no more records to
  return, `NextToken` will be null.
  """
  def list_phone_numbers_opted_out(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPhoneNumbersOptedOut", input, options)
  end

  @doc """
  Lists the platform application objects for the supported push notification
  services, such as APNS and GCM (Firebase Cloud Messaging).

  The results for `ListPlatformApplications` are paginated and return a limited
  list of applications, up to 100. If additional records are available after the
  first page results, then a NextToken string will be returned. To receive the
  next page, you call `ListPlatformApplications` using the NextToken string
  received from the previous call. When there are no more records to return,
  `NextToken` will be null. For more information, see [Using Amazon SNS Mobile Push
  Notifications](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

  This action is throttled at 15 transactions per second (TPS).
  """
  def list_platform_applications(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPlatformApplications", input, options)
  end

  @doc """
  Returns a list of the requester's subscriptions.

  Each call returns a limited list of subscriptions, up to 100. If there are more
  subscriptions, a `NextToken` is also returned. Use the `NextToken` parameter in
  a new `ListSubscriptions` call to get further results.

  This action is throttled at 30 transactions per second (TPS).
  """
  def list_subscriptions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSubscriptions", input, options)
  end

  @doc """
  Returns a list of the subscriptions to a specific topic.

  Each call returns a limited list of subscriptions, up to 100. If there are more
  subscriptions, a `NextToken` is also returned. Use the `NextToken` parameter in
  a new `ListSubscriptionsByTopic` call to get further results.

  This action is throttled at 30 transactions per second (TPS).
  """
  def list_subscriptions_by_topic(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSubscriptionsByTopic", input, options)
  end

  @doc """
  List all tags added to the specified Amazon SNS topic.

  For an overview, see [Amazon SNS Tags](https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html) in the *Amazon
  Simple Notification Service Developer Guide*.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Returns a list of the requester's topics.

  Each call returns a limited list of topics, up to 100. If there are more topics,
  a `NextToken` is also returned. Use the `NextToken` parameter in a new
  `ListTopics` call to get further results.

  This action is throttled at 30 transactions per second (TPS).
  """
  def list_topics(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTopics", input, options)
  end

  @doc """
  Use this request to opt in a phone number that is opted out, which enables you
  to resume sending SMS messages to the number.

  You can opt in a phone number only once every 30 days.
  """
  def opt_in_phone_number(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "OptInPhoneNumber", input, options)
  end

  @doc """
  Sends a message to an Amazon SNS topic, a text message (SMS message) directly to
  a phone number, or a message to a mobile platform endpoint (when you specify the
  `TargetArn`).

  If you send a message to a topic, Amazon SNS delivers the message to each
  endpoint that is subscribed to the topic. The format of the message depends on
  the notification protocol for each subscribed endpoint.

  When a `messageId` is returned, the message has been saved and Amazon SNS will
  attempt to deliver it shortly.

  To use the `Publish` action for sending a message to a mobile endpoint, such as
  an app on a Kindle device or mobile phone, you must specify the EndpointArn for
  the TargetArn parameter. The EndpointArn is returned when making a call with the
  `CreatePlatformEndpoint` action.

  For more information about formatting messages, see [Send Custom Platform-Specific Payloads in Messages to Mobile
  Devices](https://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-custommessage.html).

  You can publish messages only to topics and endpoints in the same AWS Region.
  """
  def publish(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "Publish", input, options)
  end

  @doc """
  Removes a statement from a topic's access control policy.
  """
  def remove_permission(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemovePermission", input, options)
  end

  @doc """
  Sets the attributes for an endpoint for a device on one of the supported push
  notification services, such as GCM (Firebase Cloud Messaging) and APNS.

  For more information, see [Using Amazon SNS Mobile Push Notifications](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).
  """
  def set_endpoint_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetEndpointAttributes", input, options)
  end

  @doc """
  Sets the attributes of the platform application object for the supported push
  notification services, such as APNS and GCM (Firebase Cloud Messaging).

  For more information, see [Using Amazon SNS Mobile Push Notifications](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).
  For information on configuring attributes for message delivery status, see
  [Using Amazon SNS Application Attributes for Message Delivery Status](https://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html).
  """
  def set_platform_application_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetPlatformApplicationAttributes", input, options)
  end

  @doc """
  Use this request to set the default settings for sending SMS messages and
  receiving daily SMS usage reports.

  You can override some of these settings for a single message when you use the
  `Publish` action with the `MessageAttributes.entry.N` parameter. For more
  information, see [Publishing to a mobile phone](https://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html) in
  the *Amazon SNS Developer Guide*.
  """
  def set_s_m_s_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetSMSAttributes", input, options)
  end

  @doc """
  Allows a subscription owner to set an attribute of the subscription to a new
  value.
  """
  def set_subscription_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetSubscriptionAttributes", input, options)
  end

  @doc """
  Allows a topic owner to set an attribute of the topic to a new value.
  """
  def set_topic_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetTopicAttributes", input, options)
  end

  @doc """
  Subscribes an endpoint to an Amazon SNS topic.

  If the endpoint type is HTTP/S or email, or if the endpoint and the topic are
  not in the same AWS account, the endpoint owner must run the
  `ConfirmSubscription` action to confirm the subscription.

  You call the `ConfirmSubscription` action with the token from the subscription
  response. Confirmation tokens are valid for three days.

  This action is throttled at 100 transactions per second (TPS).
  """
  def subscribe(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "Subscribe", input, options)
  end

  @doc """
  Add tags to the specified Amazon SNS topic.

  For an overview, see [Amazon SNS Tags](https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html) in the *Amazon
  SNS Developer Guide*.

  When you use topic tags, keep the following guidelines in mind:

    * Adding more than 50 tags to a topic isn't recommended.

    * Tags don't have any semantic meaning. Amazon SNS interprets tags
  as character strings.

    * Tags are case-sensitive.

    * A new tag with a key identical to that of an existing tag
  overwrites the existing tag.

    * Tagging actions are limited to 10 TPS per AWS account, per AWS
  region. If your application requires a higher throughput, file a [technical support
  request](https://console.aws.amazon.com/support/home#/case/create?issueType=technical).
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Deletes a subscription.

  If the subscription requires authentication for deletion, only the owner of the
  subscription or the topic's owner can unsubscribe, and an AWS signature is
  required. If the `Unsubscribe` call does not require authentication and the
  requester is not the subscription owner, a final cancellation message is
  delivered to the endpoint, so that the endpoint owner can easily resubscribe to
  the topic if the `Unsubscribe` request was unintended.

  This action is throttled at 100 transactions per second (TPS).
  """
  def unsubscribe(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "Unsubscribe", input, options)
  end

  @doc """
  Remove tags from the specified Amazon SNS topic.

  For an overview, see [Amazon SNS Tags](https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html) in the *Amazon
  SNS Developer Guide*.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end
end