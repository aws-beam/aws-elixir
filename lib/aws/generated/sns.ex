# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SNS do
  @moduledoc """
  Amazon Simple Notification Service

  Amazon Simple Notification Service (Amazon SNS) is a web service that enables
  you
  to build distributed web-enabled applications.

  Applications can use Amazon SNS to easily push
  real-time notification messages to interested subscribers over multiple delivery
  protocols. For more information about this product see the [Amazon SNS product page](http://aws.amazon.com/sns/). For detailed information about Amazon SNS
  features
  and their associated API calls, see the [Amazon SNS Developer Guide](https://docs.aws.amazon.com/sns/latest/dg/).

  For information on the permissions you need to use this API, see [Identity and access management in Amazon
  SNS](https://docs.aws.amazon.com/sns/latest/dg/sns-authentication-and-access-control.html)
  in the *Amazon SNS Developer
  Guide.*

  We also provide SDKs that enable you to access Amazon SNS from your preferred
  programming
  language. The SDKs contain functionality that automatically takes care of tasks
  such as:
  cryptographically signing your service requests, retrying requests, and handling
  error
  responses. For a list of available SDKs, go to [Tools for Amazon Web Services](http://aws.amazon.com/tools/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      set_sms_attributes_response() :: %{}
      
  """
  @type set_sms_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      create_platform_endpoint_input() :: %{
        optional("Attributes") => map(),
        optional("CustomUserData") => String.t(),
        required("PlatformApplicationArn") => String.t(),
        required("Token") => String.t()
      }
      
  """
  @type create_platform_endpoint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_disabled_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_disabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      confirm_subscription_response() :: %{
        "SubscriptionArn" => String.t()
      }
      
  """
  @type confirm_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_origination_numbers_result() :: %{
        "NextToken" => String.t(),
        "PhoneNumbers" => list(phone_number_information())
      }
      
  """
  @type list_origination_numbers_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      phone_number_information() :: %{
        "CreatedAt" => non_neg_integer(),
        "Iso2CountryCode" => String.t(),
        "NumberCapabilities" => list(list(any())()),
        "PhoneNumber" => String.t(),
        "RouteType" => list(any()),
        "Status" => String.t()
      }
      
  """
  @type phone_number_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      platform_application_disabled_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type platform_application_disabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsubscribe_input() :: %{
        required("SubscriptionArn") => String.t()
      }
      
  """
  @type unsubscribe_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_topic_input() :: %{
        optional("Attributes") => map(),
        optional("DataProtectionPolicy") => String.t(),
        optional("Tags") => list(tag()),
        required("Name") => String.t()
      }
      
  """
  @type create_topic_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_opt_in_required() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_opt_in_required() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_sms_sandbox_phone_number_input() :: %{
        required("PhoneNumber") => String.t()
      }
      
  """
  @type delete_sms_sandbox_phone_number_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_platform_applications_input() :: %{
        optional("NextToken") => String.t()
      }
      
  """
  @type list_platform_applications_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_subscription_attributes_response() :: %{
        "Attributes" => map()
      }
      
  """
  @type get_subscription_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_topic_input() :: %{
        required("TopicArn") => String.t()
      }
      
  """
  @type delete_topic_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_topic_attributes_input() :: %{
        required("TopicArn") => String.t()
      }
      
  """
  @type get_topic_attributes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      platform_application() :: %{
        "Attributes" => map(),
        "PlatformApplicationArn" => String.t()
      }
      
  """
  @type platform_application() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      create_platform_application_response() :: %{
        "PlatformApplicationArn" => String.t()
      }
      
  """
  @type create_platform_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_endpoint_attributes_input() :: %{
        required("EndpointArn") => String.t()
      }
      
  """
  @type get_endpoint_attributes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_batch_entry_id_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_batch_entry_id_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_subscriptions_by_topic_response() :: %{
        "NextToken" => String.t(),
        "Subscriptions" => list(subscription())
      }
      
  """
  @type list_subscriptions_by_topic_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      message_attribute_value() :: %{
        "BinaryValue" => binary(),
        "DataType" => String.t(),
        "StringValue" => String.t()
      }
      
  """
  @type message_attribute_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      check_if_phone_number_is_opted_out_input() :: %{
        required("phoneNumber") => String.t()
      }
      
  """
  @type check_if_phone_number_is_opted_out_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replay_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type replay_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_phone_numbers_opted_out_response() :: %{
        "nextToken" => String.t(),
        "phoneNumbers" => list(String.t())
      }
      
  """
  @type list_phone_numbers_opted_out_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      opt_in_phone_number_response() :: %{}
      
  """
  @type opt_in_phone_number_response() :: %{}

  @typedoc """

  ## Example:
      
      create_sms_sandbox_phone_number_input() :: %{
        optional("LanguageCode") => list(any()),
        required("PhoneNumber") => String.t()
      }
      
  """
  @type create_sms_sandbox_phone_number_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_sms_sandbox_phone_number_result() :: %{}
      
  """
  @type create_sms_sandbox_phone_number_result() :: %{}

  @typedoc """

  ## Example:
      
      user_error_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type user_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_subscriptions_input() :: %{
        optional("NextToken") => String.t()
      }
      
  """
  @type list_subscriptions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_topic_attributes_input() :: %{
        optional("AttributeValue") => String.t(),
        required("AttributeName") => String.t(),
        required("TopicArn") => String.t()
      }
      
  """
  @type set_topic_attributes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_policy_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type tag_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_platform_application_attributes_input() :: %{
        required("PlatformApplicationArn") => String.t()
      }
      
  """
  @type get_platform_application_attributes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sms_sandbox_phone_numbers_result() :: %{
        "NextToken" => String.t(),
        "PhoneNumbers" => list(sms_sandbox_phone_number())
      }
      
  """
  @type list_sms_sandbox_phone_numbers_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_state_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_platform_application_attributes_input() :: %{
        required("Attributes") => map(),
        required("PlatformApplicationArn") => String.t()
      }
      
  """
  @type set_platform_application_attributes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_result_error_entry() :: %{
        "Code" => String.t(),
        "Id" => String.t(),
        "Message" => String.t(),
        "SenderFault" => boolean()
      }
      
  """
  @type batch_result_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      publish_batch_response() :: %{
        "Failed" => list(batch_result_error_entry()),
        "Successful" => list(publish_batch_result_entry())
      }
      
  """
  @type publish_batch_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_sms_sandbox_phone_number_input() :: %{
        required("OneTimePassword") => String.t(),
        required("PhoneNumber") => String.t()
      }
      
  """
  @type verify_sms_sandbox_phone_number_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      publish_batch_request_entry() :: %{
        "Id" => String.t(),
        "Message" => String.t(),
        "MessageAttributes" => map(),
        "MessageDeduplicationId" => String.t(),
        "MessageGroupId" => String.t(),
        "MessageStructure" => String.t(),
        "Subject" => String.t()
      }
      
  """
  @type publish_batch_request_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_topic_response() :: %{
        "TopicArn" => String.t()
      }
      
  """
  @type create_topic_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      topic_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type topic_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_security_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_security_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      confirm_subscription_input() :: %{
        optional("AuthenticateOnUnsubscribe") => String.t(),
        required("Token") => String.t(),
        required("TopicArn") => String.t()
      }
      
  """
  @type confirm_subscription_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_platform_application_input() :: %{
        required("Attributes") => map(),
        required("Name") => String.t(),
        required("Platform") => String.t()
      }
      
  """
  @type create_platform_application_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttled_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_subscription_attributes_input() :: %{
        required("SubscriptionArn") => String.t()
      }
      
  """
  @type get_subscription_attributes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscribe_input() :: %{
        optional("Attributes") => map(),
        optional("Endpoint") => String.t(),
        optional("ReturnSubscriptionArn") => boolean(),
        required("Protocol") => String.t(),
        required("TopicArn") => String.t()
      }
      
  """
  @type subscribe_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      opted_out_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type opted_out_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sms_sandbox_phone_number() :: %{
        "PhoneNumber" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type sms_sandbox_phone_number() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_subscriptions_by_topic_input() :: %{
        optional("NextToken") => String.t(),
        required("TopicArn") => String.t()
      }
      
  """
  @type list_subscriptions_by_topic_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_sms_sandbox_phone_numbers_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_sms_sandbox_phone_numbers_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      topic() :: %{
        "TopicArn" => String.t()
      }
      
  """
  @type topic() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_value_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type tag_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_endpoint_attributes_response() :: %{
        "Attributes" => map()
      }
      
  """
  @type get_endpoint_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sms_attributes_input() :: %{
        optional("attributes") => list(String.t())
      }
      
  """
  @type get_sms_attributes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_topics_response() :: %{
        "NextToken" => String.t(),
        "Topics" => list(topic())
      }
      
  """
  @type list_topics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verification_exception() :: %{
        "Message" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type verification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_disabled_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type endpoint_disabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_permission_input() :: %{
        required("Label") => String.t(),
        required("TopicArn") => String.t()
      }
      
  """
  @type remove_permission_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      publish_batch_result_entry() :: %{
        "Id" => String.t(),
        "MessageId" => String.t(),
        "SequenceNumber" => String.t()
      }
      
  """
  @type publish_batch_result_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sms_sandbox_account_status_result() :: %{
        "IsInSandbox" => boolean()
      }
      
  """
  @type get_sms_sandbox_account_status_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      empty_batch_request_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type empty_batch_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint() :: %{
        "Attributes" => map(),
        "EndpointArn" => String.t()
      }
      
  """
  @type endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      verify_sms_sandbox_phone_number_result() :: %{}
      
  """
  @type verify_sms_sandbox_phone_number_result() :: %{}

  @typedoc """

  ## Example:
      
      kms_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_entry_ids_not_distinct_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type batch_entry_ids_not_distinct_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_sms_attributes_input() :: %{
        required("attributes") => map()
      }
      
  """
  @type set_sms_attributes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_platform_applications_response() :: %{
        "NextToken" => String.t(),
        "PlatformApplications" => list(platform_application())
      }
      
  """
  @type list_platform_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      set_subscription_attributes_input() :: %{
        optional("AttributeValue") => String.t(),
        required("AttributeName") => String.t(),
        required("SubscriptionArn") => String.t()
      }
      
  """
  @type set_subscription_attributes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_endpoint_input() :: %{
        required("EndpointArn") => String.t()
      }
      
  """
  @type delete_endpoint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscribe_response() :: %{
        "SubscriptionArn" => String.t()
      }
      
  """
  @type subscribe_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription() :: %{
        "Endpoint" => String.t(),
        "Owner" => String.t(),
        "Protocol" => String.t(),
        "SubscriptionArn" => String.t(),
        "TopicArn" => String.t()
      }
      
  """
  @type subscription() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_phone_numbers_opted_out_input() :: %{
        optional("nextToken") => String.t()
      }
      
  """
  @type list_phone_numbers_opted_out_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_subscriptions_response() :: %{
        "NextToken" => String.t(),
        "Subscriptions" => list(subscription())
      }
      
  """
  @type list_subscriptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      publish_response() :: %{
        "MessageId" => String.t(),
        "SequenceNumber" => String.t()
      }
      
  """
  @type publish_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorization_error_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type authorization_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      check_if_phone_number_is_opted_out_response() :: %{
        "isOptedOut" => boolean()
      }
      
  """
  @type check_if_phone_number_is_opted_out_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_access_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type concurrent_access_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_permission_input() :: %{
        required("AWSAccountId") => list(String.t()),
        required("ActionName") => list(String.t()),
        required("Label") => String.t(),
        required("TopicArn") => String.t()
      }
      
  """
  @type add_permission_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_protection_policy_response() :: %{
        "DataProtectionPolicy" => String.t()
      }
      
  """
  @type get_data_protection_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_origination_numbers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_origination_numbers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_endpoint_attributes_input() :: %{
        required("Attributes") => map(),
        required("EndpointArn") => String.t()
      }
      
  """
  @type set_endpoint_attributes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      publish_input() :: %{
        optional("MessageAttributes") => map(),
        optional("MessageDeduplicationId") => String.t(),
        optional("MessageGroupId") => String.t(),
        optional("MessageStructure") => String.t(),
        optional("PhoneNumber") => String.t(),
        optional("Subject") => String.t(),
        optional("TargetArn") => String.t(),
        optional("TopicArn") => String.t(),
        required("Message") => String.t()
      }
      
  """
  @type publish_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter_policy_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type filter_policy_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_endpoint_response() :: %{
        "EndpointArn" => String.t()
      }
      
  """
  @type create_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_endpoints_by_platform_application_response() :: %{
        "Endpoints" => list(endpoint()),
        "NextToken" => String.t()
      }
      
  """
  @type list_endpoints_by_platform_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_topic_attributes_response() :: %{
        "Attributes" => map()
      }
      
  """
  @type get_topic_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_topics_input() :: %{
        optional("NextToken") => String.t()
      }
      
  """
  @type list_topics_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_data_protection_policy_input() :: %{
        required("DataProtectionPolicy") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type put_data_protection_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type subscription_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_sms_sandbox_phone_number_result() :: %{}
      
  """
  @type delete_sms_sandbox_phone_number_result() :: %{}

  @typedoc """

  ## Example:
      
      get_sms_attributes_response() :: %{
        "attributes" => map()
      }
      
  """
  @type get_sms_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_sms_sandbox_account_status_input() :: %{}
      
  """
  @type get_sms_sandbox_account_status_input() :: %{}

  @typedoc """

  ## Example:
      
      stale_tag_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type stale_tag_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_invalid_state_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type kms_invalid_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_endpoints_by_platform_application_input() :: %{
        optional("NextToken") => String.t(),
        required("PlatformApplicationArn") => String.t()
      }
      
  """
  @type list_endpoints_by_platform_application_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      opt_in_phone_number_input() :: %{
        required("phoneNumber") => String.t()
      }
      
  """
  @type opt_in_phone_number_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_platform_application_attributes_response() :: %{
        "Attributes" => map()
      }
      
  """
  @type get_platform_application_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_entries_in_batch_request_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_entries_in_batch_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_error_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_request_too_long_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type batch_request_too_long_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      publish_batch_input() :: %{
        required("PublishBatchRequestEntries") => list(publish_batch_request_entry()),
        required("TopicArn") => String.t()
      }
      
  """
  @type publish_batch_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_protection_policy_input() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type get_data_protection_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_platform_application_input() :: %{
        required("PlatformApplicationArn") => String.t()
      }
      
  """
  @type delete_platform_application_input() :: %{String.t() => any()}

  @type add_permission_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()

  @type check_if_phone_number_is_opted_out_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | throttled_exception()

  @type confirm_subscription_errors() ::
          internal_error_exception()
          | subscription_limit_exceeded_exception()
          | filter_policy_limit_exceeded_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()
          | replay_limit_exceeded_exception()

  @type create_platform_application_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()

  @type create_platform_endpoint_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()

  @type create_sms_sandbox_phone_number_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | opted_out_exception()
          | throttled_exception()
          | user_error_exception()

  @type create_topic_errors() ::
          internal_error_exception()
          | stale_tag_exception()
          | concurrent_access_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | tag_limit_exceeded_exception()
          | invalid_security_exception()
          | topic_limit_exceeded_exception()
          | tag_policy_exception()

  @type delete_endpoint_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()

  @type delete_platform_application_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()

  @type delete_sms_sandbox_phone_number_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | throttled_exception()
          | user_error_exception()

  @type delete_topic_errors() ::
          internal_error_exception()
          | stale_tag_exception()
          | concurrent_access_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()
          | invalid_state_exception()
          | tag_policy_exception()

  @type get_data_protection_policy_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()
          | invalid_security_exception()

  @type get_endpoint_attributes_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()

  @type get_platform_application_attributes_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()

  @type get_sms_attributes_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | throttled_exception()

  @type get_sms_sandbox_account_status_errors() ::
          internal_error_exception() | authorization_error_exception() | throttled_exception()

  @type get_subscription_attributes_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()

  @type get_topic_attributes_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()
          | invalid_security_exception()

  @type list_endpoints_by_platform_application_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()

  @type list_origination_numbers_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | throttled_exception()

  @type list_phone_numbers_opted_out_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | throttled_exception()

  @type list_platform_applications_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()

  @type list_sms_sandbox_phone_numbers_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | throttled_exception()

  @type list_subscriptions_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()

  @type list_subscriptions_by_topic_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()

  @type list_tags_for_resource_errors() ::
          concurrent_access_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | tag_policy_exception()

  @type list_topics_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()

  @type opt_in_phone_number_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | throttled_exception()

  @type publish_errors() ::
          internal_error_exception()
          | kms_invalid_state_exception()
          | authorization_error_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | kms_not_found_exception()
          | kms_access_denied_exception()
          | endpoint_disabled_exception()
          | not_found_exception()
          | invalid_parameter_value_exception()
          | invalid_security_exception()
          | kms_throttling_exception()
          | kms_opt_in_required()
          | platform_application_disabled_exception()
          | kms_disabled_exception()

  @type publish_batch_errors() ::
          batch_request_too_long_exception()
          | internal_error_exception()
          | too_many_entries_in_batch_request_exception()
          | kms_invalid_state_exception()
          | authorization_error_exception()
          | validation_exception()
          | batch_entry_ids_not_distinct_exception()
          | invalid_parameter_exception()
          | kms_not_found_exception()
          | kms_access_denied_exception()
          | empty_batch_request_exception()
          | endpoint_disabled_exception()
          | not_found_exception()
          | invalid_parameter_value_exception()
          | invalid_security_exception()
          | invalid_batch_entry_id_exception()
          | kms_throttling_exception()
          | kms_opt_in_required()
          | platform_application_disabled_exception()
          | kms_disabled_exception()

  @type put_data_protection_policy_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()
          | invalid_security_exception()

  @type remove_permission_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()

  @type set_endpoint_attributes_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()

  @type set_platform_application_attributes_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()

  @type set_sms_attributes_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | throttled_exception()

  @type set_subscription_attributes_errors() ::
          internal_error_exception()
          | filter_policy_limit_exceeded_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()
          | replay_limit_exceeded_exception()

  @type set_topic_attributes_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()
          | invalid_security_exception()

  @type subscribe_errors() ::
          internal_error_exception()
          | subscription_limit_exceeded_exception()
          | filter_policy_limit_exceeded_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()
          | invalid_security_exception()
          | replay_limit_exceeded_exception()

  @type tag_resource_errors() ::
          stale_tag_exception()
          | concurrent_access_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | tag_limit_exceeded_exception()
          | resource_not_found_exception()
          | tag_policy_exception()

  @type unsubscribe_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | not_found_exception()
          | invalid_security_exception()

  @type untag_resource_errors() ::
          stale_tag_exception()
          | concurrent_access_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | tag_limit_exceeded_exception()
          | resource_not_found_exception()
          | tag_policy_exception()

  @type verify_sms_sandbox_phone_number_errors() ::
          internal_error_exception()
          | authorization_error_exception()
          | invalid_parameter_exception()
          | verification_exception()
          | resource_not_found_exception()
          | throttled_exception()

  def metadata do
    %{
      api_version: "2010-03-31",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "sns",
      global?: false,
      hostname: nil,
      protocol: "query",
      service_id: "SNS",
      signature_version: "v4",
      signing_name: "sns",
      target_prefix: "AmazonSimpleNotificationService"
    }
  end

  @doc """
  Adds a statement to a topic's access control policy, granting access for the
  specified
  Amazon Web Services accounts to the specified actions.

  To remove the ability to change topic permissions, you must deny permissions to
  the `AddPermission`, `RemovePermission`, and
  `SetTopicAttributes` actions in your IAM policy.
  """
  @spec add_permission(map(), add_permission_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_permission_errors()}
  def add_permission(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddPermission", input, options)
  end

  @doc """
  Accepts a phone number and indicates whether the phone holder has opted out of
  receiving SMS messages from your Amazon Web Services account.

  You cannot send SMS messages to a number
  that is opted out.

  To resume sending messages, you can opt in the number by using the
  `OptInPhoneNumber` action.
  """
  @spec check_if_phone_number_is_opted_out(
          map(),
          check_if_phone_number_is_opted_out_input(),
          list()
        ) ::
          {:ok, check_if_phone_number_is_opted_out_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, check_if_phone_number_is_opted_out_errors()}
  def check_if_phone_number_is_opted_out(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CheckIfPhoneNumberIsOptedOut", input, options)
  end

  @doc """
  Verifies an endpoint owner's intent to receive messages by validating the token
  sent
  to the endpoint by an earlier `Subscribe` action.

  If the token is valid, the
  action creates a new subscription and returns its Amazon Resource Name (ARN).
  This call
  requires an AWS signature only when the `AuthenticateOnUnsubscribe` flag is
  set to "true".
  """
  @spec confirm_subscription(map(), confirm_subscription_input(), list()) ::
          {:ok, confirm_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, confirm_subscription_errors()}
  def confirm_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ConfirmSubscription", input, options)
  end

  @doc """
  Creates a platform application object for one of the supported push notification
  services, such as APNS and GCM (Firebase Cloud Messaging), to which devices and
  mobile
  apps may register.

  You must specify `PlatformPrincipal` and
  `PlatformCredential` attributes when using the
  `CreatePlatformApplication` action.

  `PlatformPrincipal` and `PlatformCredential` are received from
  the notification service.

    *
  For ADM, `PlatformPrincipal` is `client id` and
  `PlatformCredential` is `client secret`.

    *
  For APNS and `APNS_SANDBOX` using certificate credentials,
  `PlatformPrincipal` is `SSL certificate` and
  `PlatformCredential` is `private key`.

    *
  For APNS and `APNS_SANDBOX` using token credentials,
  `PlatformPrincipal` is `signing key ID` and
  `PlatformCredential` is `signing key`.

    *
  For Baidu, `PlatformPrincipal` is `API key` and
  `PlatformCredential` is `secret key`.

    *
  For GCM (Firebase Cloud Messaging) using key credentials, there is no
  `PlatformPrincipal`. The `PlatformCredential` is
  `API key`.

    *
  For GCM (Firebase Cloud Messaging) using token credentials, there is no
  `PlatformPrincipal`. The `PlatformCredential` is a
  JSON formatted private key file. When using the Amazon Web Services CLI, the
  file must be in
  string format and special characters must be ignored. To format the file
  correctly, Amazon SNS recommends using the following command:

  ```
  SERVICE_JSON=`jq
  @json <<< cat service.json`
  ```

  .

    *
  For MPNS, `PlatformPrincipal` is `TLS certificate` and
  `PlatformCredential` is `private key`.

    *
  For WNS, `PlatformPrincipal` is

  ```
  Package Security
  Identifier
  ```

  and `PlatformCredential` is

  ```
  secret
  key
  ```

  .

  You can use the returned `PlatformApplicationArn` as an attribute for the
  `CreatePlatformEndpoint` action.
  """
  @spec create_platform_application(map(), create_platform_application_input(), list()) ::
          {:ok, create_platform_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_platform_application_errors()}
  def create_platform_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePlatformApplication", input, options)
  end

  @doc """
  Creates an endpoint for a device and mobile app on one of the supported push
  notification services, such as GCM (Firebase Cloud Messaging) and APNS.

  `CreatePlatformEndpoint` requires the `PlatformApplicationArn`
  that is returned from `CreatePlatformApplication`. You can use the returned
  `EndpointArn` to send a message to a mobile app or by the
  `Subscribe` action for subscription to a topic. The
  `CreatePlatformEndpoint` action is idempotent, so if the requester
  already owns an endpoint with the same device token and attributes, that
  endpoint's ARN
  is returned without creating a new endpoint. For more information, see [Using Amazon SNS Mobile Push
  Notifications](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

  When using `CreatePlatformEndpoint` with Baidu, two attributes must be
  provided: ChannelId and UserId. The token field must also contain the ChannelId.
  For
  more information, see [Creating an Amazon SNS Endpoint for Baidu](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePushBaiduEndpoint.html).
  """
  @spec create_platform_endpoint(map(), create_platform_endpoint_input(), list()) ::
          {:ok, create_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_platform_endpoint_errors()}
  def create_platform_endpoint(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePlatformEndpoint", input, options)
  end

  @doc """
  Adds a destination phone number to an Amazon Web Services account in the SMS
  sandbox and sends a
  one-time password (OTP) to that phone number.

  When you start using Amazon SNS to send SMS messages, your Amazon Web Services
  account is in the
  *SMS sandbox*. The SMS sandbox provides a safe environment for
  you to try Amazon SNS features without risking your reputation as an SMS sender.
  While your
  Amazon Web Services account is in the SMS sandbox, you can use all of the
  features of Amazon SNS. However, you can send
  SMS messages only to verified destination phone numbers. For more information,
  including how to
  move out of the sandbox to send messages without restrictions,
  see [SMS sandbox](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) in
  the *Amazon SNS Developer Guide*.
  """
  @spec create_sms_sandbox_phone_number(map(), create_sms_sandbox_phone_number_input(), list()) ::
          {:ok, create_sms_sandbox_phone_number_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_sms_sandbox_phone_number_errors()}
  def create_sms_sandbox_phone_number(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSMSSandboxPhoneNumber", input, options)
  end

  @doc """
  Creates a topic to which notifications can be published.

  Users can create at most
  100,000 standard topics (at most 1,000 FIFO topics). For more information, see
  [Creating an Amazon SNS topic](https://docs.aws.amazon.com/sns/latest/dg/sns-create-topic.html) in the
  *Amazon SNS Developer Guide*. This action is
  idempotent, so if the requester already owns a topic with the specified name,
  that
  topic's ARN is returned without creating a new topic.
  """
  @spec create_topic(map(), create_topic_input(), list()) ::
          {:ok, create_topic_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_topic_errors()}
  def create_topic(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTopic", input, options)
  end

  @doc """
  Deletes the endpoint for a device and mobile app from Amazon SNS.

  This action is
  idempotent. For more information, see [Using Amazon SNS Mobile Push Notifications](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

  When you delete an endpoint that is also subscribed to a topic, then you must
  also
  unsubscribe the endpoint from the topic.
  """
  @spec delete_endpoint(map(), delete_endpoint_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_endpoint_errors()}
  def delete_endpoint(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEndpoint", input, options)
  end

  @doc """
  Deletes a platform application object for one of the supported push notification
  services, such as APNS and GCM (Firebase Cloud Messaging).

  For more information, see
  [Using Amazon SNS Mobile Push
  Notifications](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).
  """
  @spec delete_platform_application(map(), delete_platform_application_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_platform_application_errors()}
  def delete_platform_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePlatformApplication", input, options)
  end

  @doc """
  Deletes an Amazon Web Services account's verified or pending phone number from
  the SMS
  sandbox.

  When you start using Amazon SNS to send SMS messages, your Amazon Web Services
  account is in the
  *SMS sandbox*. The SMS sandbox provides a safe environment for
  you to try Amazon SNS features without risking your reputation as an SMS sender.
  While your
  Amazon Web Services account is in the SMS sandbox, you can use all of the
  features of Amazon SNS. However, you can send
  SMS messages only to verified destination phone numbers. For more information,
  including how to
  move out of the sandbox to send messages without restrictions,
  see [SMS sandbox](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) in
  the *Amazon SNS Developer Guide*.
  """
  @spec delete_sms_sandbox_phone_number(map(), delete_sms_sandbox_phone_number_input(), list()) ::
          {:ok, delete_sms_sandbox_phone_number_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_sms_sandbox_phone_number_errors()}
  def delete_sms_sandbox_phone_number(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSMSSandboxPhoneNumber", input, options)
  end

  @doc """
  Deletes a topic and all its subscriptions.

  Deleting a topic might prevent some
  messages previously sent to the topic from being delivered to subscribers. This
  action
  is idempotent, so deleting a topic that does not exist does not result in an
  error.
  """
  @spec delete_topic(map(), delete_topic_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_topic_errors()}
  def delete_topic(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTopic", input, options)
  end

  @doc """
  Retrieves the specified inline `DataProtectionPolicy` document that is
  stored in the specified Amazon SNS topic.
  """
  @spec get_data_protection_policy(map(), get_data_protection_policy_input(), list()) ::
          {:ok, get_data_protection_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_protection_policy_errors()}
  def get_data_protection_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDataProtectionPolicy", input, options)
  end

  @doc """
  Retrieves the endpoint attributes for a device on one of the supported push
  notification services, such as GCM (Firebase Cloud Messaging) and APNS.

  For more
  information, see [Using Amazon SNS Mobile Push Notifications](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).
  """
  @spec get_endpoint_attributes(map(), get_endpoint_attributes_input(), list()) ::
          {:ok, get_endpoint_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_endpoint_attributes_errors()}
  def get_endpoint_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetEndpointAttributes", input, options)
  end

  @doc """
  Retrieves the attributes of the platform application object for the supported
  push
  notification services, such as APNS and GCM (Firebase Cloud Messaging).

  For more
  information, see [Using Amazon SNS Mobile Push Notifications](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).
  """
  @spec get_platform_application_attributes(
          map(),
          get_platform_application_attributes_input(),
          list()
        ) ::
          {:ok, get_platform_application_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_platform_application_attributes_errors()}
  def get_platform_application_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPlatformApplicationAttributes", input, options)
  end

  @doc """
  Returns the settings for sending SMS messages from your Amazon Web Services
  account.

  These settings are set with the `SetSMSAttributes` action.
  """
  @spec get_sms_attributes(map(), get_sms_attributes_input(), list()) ::
          {:ok, get_sms_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sms_attributes_errors()}
  def get_sms_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSMSAttributes", input, options)
  end

  @doc """
  Retrieves the SMS sandbox status for the calling Amazon Web Services account in
  the target
  Amazon Web Services Region.

  When you start using Amazon SNS to send SMS messages, your Amazon Web Services
  account is in the
  *SMS sandbox*. The SMS sandbox provides a safe environment for
  you to try Amazon SNS features without risking your reputation as an SMS sender.
  While your
  Amazon Web Services account is in the SMS sandbox, you can use all of the
  features of Amazon SNS. However, you can send
  SMS messages only to verified destination phone numbers. For more information,
  including how to
  move out of the sandbox to send messages without restrictions,
  see [SMS sandbox](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) in
  the *Amazon SNS Developer Guide*.
  """
  @spec get_sms_sandbox_account_status(map(), get_sms_sandbox_account_status_input(), list()) ::
          {:ok, get_sms_sandbox_account_status_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sms_sandbox_account_status_errors()}
  def get_sms_sandbox_account_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSMSSandboxAccountStatus", input, options)
  end

  @doc """
  Returns all of the properties of a subscription.
  """
  @spec get_subscription_attributes(map(), get_subscription_attributes_input(), list()) ::
          {:ok, get_subscription_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_subscription_attributes_errors()}
  def get_subscription_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSubscriptionAttributes", input, options)
  end

  @doc """
  Returns all of the properties of a topic.

  Topic properties returned might differ based
  on the authorization of the user.
  """
  @spec get_topic_attributes(map(), get_topic_attributes_input(), list()) ::
          {:ok, get_topic_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_topic_attributes_errors()}
  def get_topic_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTopicAttributes", input, options)
  end

  @doc """
  Lists the endpoints and endpoint attributes for devices in a supported push
  notification service, such as GCM (Firebase Cloud Messaging) and APNS.

  The results for
  `ListEndpointsByPlatformApplication` are paginated and return a limited
  list of endpoints, up to 100. If additional records are available after the
  first page
  results, then a NextToken string will be returned. To receive the next page, you
  call
  `ListEndpointsByPlatformApplication` again using the NextToken string
  received from the previous call. When there are no more records to return,
  NextToken
  will be null. For more information, see [Using Amazon SNS Mobile Push Notifications](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

  This action is throttled at 30 transactions per second (TPS).
  """
  @spec list_endpoints_by_platform_application(
          map(),
          list_endpoints_by_platform_application_input(),
          list()
        ) ::
          {:ok, list_endpoints_by_platform_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_endpoints_by_platform_application_errors()}
  def list_endpoints_by_platform_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListEndpointsByPlatformApplication", input, options)
  end

  @doc """
  Lists the calling Amazon Web Services account's dedicated origination numbers
  and their metadata.

  For more information about origination numbers, see [Origination numbers](https://docs.aws.amazon.com/sns/latest/dg/channels-sms-originating-identities-origination-numbers.html)
  in the *Amazon SNS Developer
  Guide*.
  """
  @spec list_origination_numbers(map(), list_origination_numbers_request(), list()) ::
          {:ok, list_origination_numbers_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_origination_numbers_errors()}
  def list_origination_numbers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListOriginationNumbers", input, options)
  end

  @doc """
  Returns a list of phone numbers that are opted out, meaning you cannot send SMS
  messages to them.

  The results for `ListPhoneNumbersOptedOut` are paginated, and each page
  returns up to 100 phone numbers. If additional phone numbers are available after
  the
  first page of results, then a `NextToken` string will be returned. To receive
  the next page, you call `ListPhoneNumbersOptedOut` again using the
  `NextToken` string received from the previous call. When there are no
  more records to return, `NextToken` will be null.
  """
  @spec list_phone_numbers_opted_out(map(), list_phone_numbers_opted_out_input(), list()) ::
          {:ok, list_phone_numbers_opted_out_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_phone_numbers_opted_out_errors()}
  def list_phone_numbers_opted_out(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPhoneNumbersOptedOut", input, options)
  end

  @doc """
  Lists the platform application objects for the supported push notification
  services,
  such as APNS and GCM (Firebase Cloud Messaging).

  The results for
  `ListPlatformApplications` are paginated and return a limited list of
  applications, up to 100. If additional records are available after the first
  page
  results, then a NextToken string will be returned. To receive the next page, you
  call
  `ListPlatformApplications` using the NextToken string received from the
  previous call. When there are no more records to return, `NextToken` will be
  null. For more information, see [Using Amazon SNS Mobile Push Notifications](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).

  This action is throttled at 15 transactions per second (TPS).
  """
  @spec list_platform_applications(map(), list_platform_applications_input(), list()) ::
          {:ok, list_platform_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_platform_applications_errors()}
  def list_platform_applications(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPlatformApplications", input, options)
  end

  @doc """
  Lists the calling Amazon Web Services account's current verified and pending
  destination phone
  numbers in the SMS sandbox.

  When you start using Amazon SNS to send SMS messages, your Amazon Web Services
  account is in the
  *SMS sandbox*. The SMS sandbox provides a safe environment for
  you to try Amazon SNS features without risking your reputation as an SMS sender.
  While your
  Amazon Web Services account is in the SMS sandbox, you can use all of the
  features of Amazon SNS. However, you can send
  SMS messages only to verified destination phone numbers. For more information,
  including how to
  move out of the sandbox to send messages without restrictions,
  see [SMS sandbox](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) in
  the *Amazon SNS Developer Guide*.
  """
  @spec list_sms_sandbox_phone_numbers(map(), list_sms_sandbox_phone_numbers_input(), list()) ::
          {:ok, list_sms_sandbox_phone_numbers_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sms_sandbox_phone_numbers_errors()}
  def list_sms_sandbox_phone_numbers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSMSSandboxPhoneNumbers", input, options)
  end

  @doc """
  Returns a list of the requester's subscriptions.

  Each call returns a limited list of
  subscriptions, up to 100. If there are more subscriptions, a `NextToken` is
  also returned. Use the `NextToken` parameter in a new
  `ListSubscriptions` call to get further results.

  This action is throttled at 30 transactions per second (TPS).
  """
  @spec list_subscriptions(map(), list_subscriptions_input(), list()) ::
          {:ok, list_subscriptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_subscriptions_errors()}
  def list_subscriptions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSubscriptions", input, options)
  end

  @doc """
  Returns a list of the subscriptions to a specific topic.

  Each call returns a limited
  list of subscriptions, up to 100. If there are more subscriptions, a
  `NextToken` is also returned. Use the `NextToken` parameter in
  a new `ListSubscriptionsByTopic` call to get further results.

  This action is throttled at 30 transactions per second (TPS).
  """
  @spec list_subscriptions_by_topic(map(), list_subscriptions_by_topic_input(), list()) ::
          {:ok, list_subscriptions_by_topic_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_subscriptions_by_topic_errors()}
  def list_subscriptions_by_topic(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSubscriptionsByTopic", input, options)
  end

  @doc """
  List all tags added to the specified Amazon SNS topic.

  For an overview, see [Amazon SNS Tags](https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html) in the
  *Amazon Simple Notification Service Developer Guide*.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Returns a list of the requester's topics.

  Each call returns a limited list of topics,
  up to 100. If there are more topics, a `NextToken` is also returned. Use the
  `NextToken` parameter in a new `ListTopics` call to get
  further results.

  This action is throttled at 30 transactions per second (TPS).
  """
  @spec list_topics(map(), list_topics_input(), list()) ::
          {:ok, list_topics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_topics_errors()}
  def list_topics(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTopics", input, options)
  end

  @doc """
  Use this request to opt in a phone number that is opted out, which enables you
  to
  resume sending SMS messages to the number.

  You can opt in a phone number only once every 30 days.
  """
  @spec opt_in_phone_number(map(), opt_in_phone_number_input(), list()) ::
          {:ok, opt_in_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, opt_in_phone_number_errors()}
  def opt_in_phone_number(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "OptInPhoneNumber", input, options)
  end

  @doc """
  Sends a message to an Amazon SNS topic, a text message (SMS message) directly to
  a phone
  number, or a message to a mobile platform endpoint (when you specify the
  `TargetArn`).

  If you send a message to a topic, Amazon SNS delivers the message to each
  endpoint that is
  subscribed to the topic. The format of the message depends on the notification
  protocol
  for each subscribed endpoint.

  When a `messageId` is returned, the message is saved and Amazon SNS immediately
  delivers it to subscribers.

  To use the `Publish` action for publishing a message to a mobile endpoint,
  such as an app on a Kindle device or mobile phone, you must specify the
  EndpointArn for
  the TargetArn parameter. The EndpointArn is returned when making a call with the
  `CreatePlatformEndpoint` action.

  For more information about formatting messages, see [Send Custom Platform-Specific Payloads in Messages to Mobile
  Devices](https://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-custommessage.html).

  You can publish messages only to topics and endpoints in the same
  Amazon Web Services Region.
  """
  @spec publish(map(), publish_input(), list()) ::
          {:ok, publish_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, publish_errors()}
  def publish(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "Publish", input, options)
  end

  @doc """
  Publishes up to ten messages to the specified topic.

  This is a batch version of
  `Publish`. For FIFO topics, multiple messages within a single batch are
  published in the order they are sent, and messages are deduplicated within the
  batch and
  across batches for 5 minutes.

  The result of publishing each message is reported individually in the response.
  Because the batch request can result in a combination of successful and
  unsuccessful
  actions, you should check for batch errors even when the call returns an HTTP
  status
  code of `200`.

  The maximum allowed individual message size and the maximum total payload size
  (the
  sum of the individual lengths of all of the batched messages) are both 256 KB
  (262,144
  bytes).

  Some actions take lists of parameters. These lists are specified using the
  `param.n` notation. Values of `n` are integers starting from
  1. For example, a parameter list with two elements looks like this:

  &AttributeName.1=first

  &AttributeName.2=second

  If you send a batch message to a topic, Amazon SNS publishes the batch message
  to each
  endpoint that is subscribed to the topic. The format of the batch message
  depends on the
  notification protocol for each subscribed endpoint.

  When a `messageId` is returned, the batch message is saved and Amazon SNS
  immediately delivers the message to subscribers.
  """
  @spec publish_batch(map(), publish_batch_input(), list()) ::
          {:ok, publish_batch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, publish_batch_errors()}
  def publish_batch(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PublishBatch", input, options)
  end

  @doc """
  Adds or updates an inline policy document that is stored in the specified Amazon
  SNS
  topic.
  """
  @spec put_data_protection_policy(map(), put_data_protection_policy_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_data_protection_policy_errors()}
  def put_data_protection_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutDataProtectionPolicy", input, options)
  end

  @doc """
  Removes a statement from a topic's access control policy.

  To remove the ability to change topic permissions, you must deny permissions to
  the `AddPermission`, `RemovePermission`, and
  `SetTopicAttributes` actions in your IAM policy.
  """
  @spec remove_permission(map(), remove_permission_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_permission_errors()}
  def remove_permission(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemovePermission", input, options)
  end

  @doc """
  Sets the attributes for an endpoint for a device on one of the supported push
  notification services, such as GCM (Firebase Cloud Messaging) and APNS.

  For more
  information, see [Using Amazon SNS Mobile Push Notifications](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).
  """
  @spec set_endpoint_attributes(map(), set_endpoint_attributes_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_endpoint_attributes_errors()}
  def set_endpoint_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetEndpointAttributes", input, options)
  end

  @doc """
  Sets the attributes of the platform application object for the supported push
  notification services, such as APNS and GCM (Firebase Cloud Messaging).

  For more
  information, see [Using Amazon SNS Mobile Push Notifications](https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html).
  For information on configuring
  attributes for message delivery status, see [Using Amazon SNS Application Attributes for
  Message Delivery
  Status](https://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html).
  """
  @spec set_platform_application_attributes(
          map(),
          set_platform_application_attributes_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_platform_application_attributes_errors()}
  def set_platform_application_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetPlatformApplicationAttributes", input, options)
  end

  @doc """
  Use this request to set the default settings for sending SMS messages and
  receiving
  daily SMS usage reports.

  You can override some of these settings for a single message when you use the
  `Publish` action with the `MessageAttributes.entry.N`
  parameter. For more information, see [Publishing to a mobile phone](https://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html)
  in the *Amazon SNS Developer Guide*.

  To use this operation, you must grant the Amazon SNS service principal
  (`sns.amazonaws.com`) permission to perform the
  `s3:ListBucket` action.
  """
  @spec set_sms_attributes(map(), set_sms_attributes_input(), list()) ::
          {:ok, set_sms_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_sms_attributes_errors()}
  def set_sms_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetSMSAttributes", input, options)
  end

  @doc """
  Allows a subscription owner to set an attribute of the subscription to a new
  value.
  """
  @spec set_subscription_attributes(map(), set_subscription_attributes_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_subscription_attributes_errors()}
  def set_subscription_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetSubscriptionAttributes", input, options)
  end

  @doc """
  Allows a topic owner to set an attribute of the topic to a new value.

  To remove the ability to change topic permissions, you must deny permissions to
  the `AddPermission`, `RemovePermission`, and
  `SetTopicAttributes` actions in your IAM policy.
  """
  @spec set_topic_attributes(map(), set_topic_attributes_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_topic_attributes_errors()}
  def set_topic_attributes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SetTopicAttributes", input, options)
  end

  @doc """
  Subscribes an endpoint to an Amazon SNS topic.

  If the endpoint type is HTTP/S or email, or
  if the endpoint and the topic are not in the same Amazon Web Services account,
  the endpoint owner must
  run the `ConfirmSubscription` action to confirm the subscription.

  You call the `ConfirmSubscription` action with the token from the
  subscription response. Confirmation tokens are valid for two days.

  This action is throttled at 100 transactions per second (TPS).
  """
  @spec subscribe(map(), subscribe_input(), list()) ::
          {:ok, subscribe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, subscribe_errors()}
  def subscribe(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "Subscribe", input, options)
  end

  @doc """
  Add tags to the specified Amazon SNS topic.

  For an overview, see [Amazon SNS Tags](https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html) in the
  *Amazon SNS Developer Guide*.

  When you use topic tags, keep the following guidelines in mind:

    *
  Adding more than 50 tags to a topic isn't recommended.

    *
  Tags don't have any semantic meaning. Amazon SNS interprets tags as character
  strings.

    *
  Tags are case-sensitive.

    *
  A new tag with a key identical to that of an existing tag overwrites the
  existing tag.

    *
  Tagging actions are limited to 10 TPS per Amazon Web Services account, per
  Amazon Web Services Region. If
  your application requires a higher throughput, file a [technical support request](https://console.aws.amazon.com/support/home#/case/create?issueType=technical).
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes a subscription.

  If the subscription requires authentication for deletion, only
  the owner of the subscription or the topic's owner can unsubscribe, and an
  Amazon Web Services
  signature is required. If the `Unsubscribe` call does not require
  authentication and the requester is not the subscription owner, a final
  cancellation
  message is delivered to the endpoint, so that the endpoint owner can easily
  resubscribe
  to the topic if the `Unsubscribe` request was unintended.

  Amazon SQS queue subscriptions require authentication for deletion. Only the
  owner of
  the subscription, or the owner of the topic can unsubscribe using the required
  Amazon Web Services
  signature.

  This action is throttled at 100 transactions per second (TPS).
  """
  @spec unsubscribe(map(), unsubscribe_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, unsubscribe_errors()}
  def unsubscribe(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "Unsubscribe", input, options)
  end

  @doc """
  Remove tags from the specified Amazon SNS topic.

  For an overview, see [Amazon SNS Tags](https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html) in the
  *Amazon SNS Developer Guide*.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Verifies a destination phone number with a one-time password (OTP) for the
  calling
  Amazon Web Services account.

  When you start using Amazon SNS to send SMS messages, your Amazon Web Services
  account is in the
  *SMS sandbox*. The SMS sandbox provides a safe environment for
  you to try Amazon SNS features without risking your reputation as an SMS sender.
  While your
  Amazon Web Services account is in the SMS sandbox, you can use all of the
  features of Amazon SNS. However, you can send
  SMS messages only to verified destination phone numbers. For more information,
  including how to
  move out of the sandbox to send messages without restrictions,
  see [SMS sandbox](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html) in
  the *Amazon SNS Developer Guide*.
  """
  @spec verify_sms_sandbox_phone_number(map(), verify_sms_sandbox_phone_number_input(), list()) ::
          {:ok, verify_sms_sandbox_phone_number_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, verify_sms_sandbox_phone_number_errors()}
  def verify_sms_sandbox_phone_number(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "VerifySMSSandboxPhoneNumber", input, options)
  end
end
