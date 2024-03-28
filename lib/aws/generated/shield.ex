# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Shield do
  @moduledoc """
  Shield Advanced

  This is the *Shield Advanced API Reference*.

  This guide is for developers who need detailed information about the Shield
  Advanced API actions,
  data types, and errors. For detailed information about WAF and Shield Advanced
  features and an overview of how to use the WAF and Shield Advanced APIs, see the
  [WAF and Shield Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_protection_group_request() :: %{
        optional("Members") => list(String.t()()),
        optional("ResourceType") => list(any()),
        required("Aggregation") => list(any()),
        required("Pattern") => list(any()),
        required("ProtectionGroupId") => String.t()
      }
      
  """
  @type update_protection_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_subscription_request() :: %{}
      
  """
  @type create_subscription_request() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resources_in_protection_group_response() :: %{
        "NextToken" => String.t(),
        "ResourceArns" => list(String.t()())
      }
      
  """
  @type list_resources_in_protection_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_subscription_request() :: %{}
      
  """
  @type describe_subscription_request() :: %{}

  @typedoc """

  ## Example:
      
      disable_proactive_engagement_request() :: %{}
      
  """
  @type disable_proactive_engagement_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_subscription_request() :: %{}
      
  """
  @type delete_subscription_request() :: %{}

  @typedoc """

  ## Example:
      
      attack_vector_description() :: %{
        "VectorType" => String.t()
      }
      
  """
  @type attack_vector_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_emergency_contact_settings_request() :: %{
        optional("EmergencyContactList") => list(emergency_contact()())
      }
      
  """
  @type update_emergency_contact_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_protection_group_response() :: %{
        "ProtectionGroup" => protection_group()
      }
      
  """
  @type describe_protection_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_protection_group_response() :: %{}
      
  """
  @type delete_protection_group_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_protection_group_request() :: %{
        required("ProtectionGroupId") => String.t()
      }
      
  """
  @type describe_protection_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      inclusion_protection_filters() :: %{
        "ProtectionNames" => list(String.t()()),
        "ResourceArns" => list(String.t()()),
        "ResourceTypes" => list(list(any())())
      }
      
  """
  @type inclusion_protection_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      protection_group_arbitrary_pattern_limits() :: %{
        "MaxMembers" => float()
      }
      
  """
  @type protection_group_arbitrary_pattern_limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_health_check_request() :: %{
        required("HealthCheckArn") => String.t(),
        required("ProtectionId") => String.t()
      }
      
  """
  @type disassociate_health_check_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_drt_log_bucket_request() :: %{
        required("LogBucket") => String.t()
      }
      
  """
  @type disassociate_drt_log_bucket_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_attacks_request() :: %{
        optional("EndTime") => time_range(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceArns") => list(String.t()()),
        optional("StartTime") => time_range()
      }
      
  """
  @type list_attacks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_emergency_contact_settings_response() :: %{
        "EmergencyContactList" => list(emergency_contact()())
      }
      
  """
  @type describe_emergency_contact_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      response_action() :: %{
        "Block" => block_action(),
        "Count" => count_action()
      }
      
  """
  @type response_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_drt_log_bucket_response() :: %{}
      
  """
  @type associate_drt_log_bucket_response() :: %{}

  @typedoc """

  ## Example:
      
      count_action() :: %{}
      
  """
  @type count_action() :: %{}

  @typedoc """

  ## Example:
      
      invalid_operation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      protection_limits() :: %{
        "ProtectedResourceTypeLimits" => list(limit()())
      }
      
  """
  @type protection_limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_protections_response() :: %{
        "NextToken" => String.t(),
        "Protections" => list(protection()())
      }
      
  """
  @type list_protections_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contributor() :: %{
        "Name" => String.t(),
        "Value" => float()
      }
      
  """
  @type contributor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      protection_group() :: %{
        "Aggregation" => list(any()),
        "Members" => list(String.t()()),
        "Pattern" => list(any()),
        "ProtectionGroupArn" => String.t(),
        "ProtectionGroupId" => String.t(),
        "ResourceType" => list(any())
      }
      
  """
  @type protection_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit() :: %{
        "Max" => float(),
        "Type" => String.t()
      }
      
  """
  @type limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_subscription_state_response() :: %{
        "SubscriptionState" => list(any())
      }
      
  """
  @type get_subscription_state_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      locked_subscription_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type locked_subscription_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_protection_groups_response() :: %{
        "NextToken" => String.t(),
        "ProtectionGroups" => list(protection_group()())
      }
      
  """
  @type list_protection_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      protection_group_pattern_type_limits() :: %{
        "ArbitraryPatternLimits" => protection_group_arbitrary_pattern_limits()
      }
      
  """
  @type protection_group_pattern_type_limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_attack_statistics_request() :: %{}
      
  """
  @type describe_attack_statistics_request() :: %{}

  @typedoc """

  ## Example:
      
      attack_detail() :: %{
        "AttackCounters" => list(summarized_counter()()),
        "AttackId" => String.t(),
        "AttackProperties" => list(attack_property()()),
        "EndTime" => non_neg_integer(),
        "Mitigations" => list(mitigation()()),
        "ResourceArn" => String.t(),
        "StartTime" => non_neg_integer(),
        "SubResources" => list(sub_resource_summary()())
      }
      
  """
  @type attack_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_protection_response() :: %{
        "ProtectionId" => String.t()
      }
      
  """
  @type create_protection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t(),
        "resourceType" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      block_action() :: %{}
      
  """
  @type block_action() :: %{}

  @typedoc """

  ## Example:
      
      get_subscription_state_request() :: %{}
      
  """
  @type get_subscription_state_request() :: %{}

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
      
      enable_proactive_engagement_response() :: %{}
      
  """
  @type enable_proactive_engagement_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_drt_access_request() :: %{}
      
  """
  @type describe_drt_access_request() :: %{}

  @typedoc """

  ## Example:
      
      list_protection_groups_request() :: %{
        optional("InclusionFilters") => inclusion_protection_group_filters(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_protection_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      protection() :: %{
        "ApplicationLayerAutomaticResponseConfiguration" => application_layer_automatic_response_configuration(),
        "HealthCheckIds" => list(String.t()()),
        "Id" => String.t(),
        "Name" => String.t(),
        "ProtectionArn" => String.t(),
        "ResourceArn" => String.t()
      }
      
  """
  @type protection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_attacks_response() :: %{
        "AttackSummaries" => list(attack_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_attacks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_subscription_response() :: %{
        "Subscription" => subscription()
      }
      
  """
  @type describe_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attack_volume() :: %{
        "BitsPerSecond" => attack_volume_statistics(),
        "PacketsPerSecond" => attack_volume_statistics(),
        "RequestsPerSecond" => attack_volume_statistics()
      }
      
  """
  @type attack_volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_attack_statistics_response() :: %{
        "DataItems" => list(attack_statistics_data_item()()),
        "TimeRange" => time_range()
      }
      
  """
  @type describe_attack_statistics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_application_layer_automatic_response_response() :: %{}
      
  """
  @type enable_application_layer_automatic_response_response() :: %{}

  @typedoc """

  ## Example:
      
      create_protection_group_request() :: %{
        optional("Members") => list(String.t()()),
        optional("ResourceType") => list(any()),
        optional("Tags") => list(tag()()),
        required("Aggregation") => list(any()),
        required("Pattern") => list(any()),
        required("ProtectionGroupId") => String.t()
      }
      
  """
  @type create_protection_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_protection_response() :: %{}
      
  """
  @type delete_protection_response() :: %{}

  @typedoc """

  ## Example:
      
      enable_proactive_engagement_request() :: %{}
      
  """
  @type enable_proactive_engagement_request() :: %{}

  @typedoc """

  ## Example:
      
      inclusion_protection_group_filters() :: %{
        "Aggregations" => list(list(any())()),
        "Patterns" => list(list(any())()),
        "ProtectionGroupIds" => list(String.t()()),
        "ResourceTypes" => list(list(any())())
      }
      
  """
  @type inclusion_protection_group_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_protection_request() :: %{
        optional("ProtectionId") => String.t(),
        optional("ResourceArn") => String.t()
      }
      
  """
  @type describe_protection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_proactive_engagement_details_response() :: %{}
      
  """
  @type associate_proactive_engagement_details_response() :: %{}

  @typedoc """

  ## Example:
      
      associate_health_check_response() :: %{}
      
  """
  @type associate_health_check_response() :: %{}

  @typedoc """

  ## Example:
      
      associate_drt_log_bucket_request() :: %{
        required("LogBucket") => String.t()
      }
      
  """
  @type associate_drt_log_bucket_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subscription_response() :: %{}
      
  """
  @type update_subscription_response() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => String.t(),
        "name" => String.t()
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      optimistic_lock_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type optimistic_lock_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_drt_role_response() :: %{}
      
  """
  @type disassociate_drt_role_response() :: %{}

  @typedoc """

  ## Example:
      
      disable_application_layer_automatic_response_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type disable_application_layer_automatic_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_proactive_engagement_details_request() :: %{
        required("EmergencyContactList") => list(emergency_contact()())
      }
      
  """
  @type associate_proactive_engagement_details_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_subscription_response() :: %{}
      
  """
  @type create_subscription_response() :: %{}

  @typedoc """

  ## Example:
      
      sub_resource_summary() :: %{
        "AttackVectors" => list(summarized_attack_vector()()),
        "Counters" => list(summarized_counter()()),
        "Id" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type sub_resource_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_proactive_engagement_response() :: %{}
      
  """
  @type disable_proactive_engagement_response() :: %{}

  @typedoc """

  ## Example:
      
      invalid_resource_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_resource_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_drt_role_request() :: %{}
      
  """
  @type disassociate_drt_role_request() :: %{}

  @typedoc """

  ## Example:
      
      disable_application_layer_automatic_response_response() :: %{}
      
  """
  @type disable_application_layer_automatic_response_response() :: %{}

  @typedoc """

  ## Example:
      
      attack_summary() :: %{
        "AttackId" => String.t(),
        "AttackVectors" => list(attack_vector_description()()),
        "EndTime" => non_neg_integer(),
        "ResourceArn" => String.t(),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type attack_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_application_layer_automatic_response_response() :: %{}
      
  """
  @type update_application_layer_automatic_response_response() :: %{}

  @typedoc """

  ## Example:
      
      time_range() :: %{
        "FromInclusive" => non_neg_integer(),
        "ToExclusive" => non_neg_integer()
      }
      
  """
  @type time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_protection_request() :: %{
        required("ProtectionId") => String.t()
      }
      
  """
  @type delete_protection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      summarized_attack_vector() :: %{
        "VectorCounters" => list(summarized_counter()()),
        "VectorType" => String.t()
      }
      
  """
  @type summarized_attack_vector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_attack_request() :: %{
        required("AttackId") => String.t()
      }
      
  """
  @type describe_attack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "fields" => list(validation_exception_field()()),
        "message" => String.t(),
        "reason" => list(any())
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_emergency_contact_settings_request() :: %{}
      
  """
  @type describe_emergency_contact_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      attack_property() :: %{
        "AttackLayer" => list(any()),
        "AttackPropertyIdentifier" => list(any()),
        "TopContributors" => list(contributor()()),
        "Total" => float(),
        "Unit" => list(any())
      }
      
  """
  @type attack_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_protection_group_response() :: %{}
      
  """
  @type create_protection_group_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_protection_group_request() :: %{
        required("ProtectionGroupId") => String.t()
      }
      
  """
  @type delete_protection_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attack_statistics_data_item() :: %{
        "AttackCount" => float(),
        "AttackVolume" => attack_volume()
      }
      
  """
  @type attack_statistics_data_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_subscription_response() :: %{}
      
  """
  @type delete_subscription_response() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      protection_group_limits() :: %{
        "MaxProtectionGroups" => float(),
        "PatternTypeLimits" => protection_group_pattern_type_limits()
      }
      
  """
  @type protection_group_limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_subscription_request() :: %{
        optional("AutoRenew") => list(any())
      }
      
  """
  @type update_subscription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription() :: %{
        "AutoRenew" => list(any()),
        "EndTime" => non_neg_integer(),
        "Limits" => list(limit()()),
        "ProactiveEngagementStatus" => list(any()),
        "StartTime" => non_neg_integer(),
        "SubscriptionArn" => String.t(),
        "SubscriptionLimits" => subscription_limits(),
        "TimeCommitmentInSeconds" => float()
      }
      
  """
  @type subscription() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_health_check_response() :: %{}
      
  """
  @type disassociate_health_check_response() :: %{}

  @typedoc """

  ## Example:
      
      attack_volume_statistics() :: %{
        "Max" => float()
      }
      
  """
  @type attack_volume_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      subscription_limits() :: %{
        "ProtectionGroupLimits" => protection_group_limits(),
        "ProtectionLimits" => protection_limits()
      }
      
  """
  @type subscription_limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_drt_log_bucket_response() :: %{}
      
  """
  @type disassociate_drt_log_bucket_response() :: %{}

  @typedoc """

  ## Example:
      
      emergency_contact() :: %{
        "ContactNotes" => String.t(),
        "EmailAddress" => String.t(),
        "PhoneNumber" => String.t()
      }
      
  """
  @type emergency_contact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_attack_response() :: %{
        "Attack" => attack_detail()
      }
      
  """
  @type describe_attack_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_for_dependency_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_for_dependency_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_drt_access_response() :: %{
        "LogBucketList" => list(String.t()()),
        "RoleArn" => String.t()
      }
      
  """
  @type describe_drt_access_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_resources_in_protection_group_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ProtectionGroupId") => String.t()
      }
      
  """
  @type list_resources_in_protection_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_associated_role_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type no_associated_role_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      summarized_counter() :: %{
        "Average" => float(),
        "Max" => float(),
        "N" => integer(),
        "Name" => String.t(),
        "Sum" => float(),
        "Unit" => String.t()
      }
      
  """
  @type summarized_counter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_drt_role_response() :: %{}
      
  """
  @type associate_drt_role_response() :: %{}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "message" => String.t(),
        "resourceType" => String.t()
      }
      
  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limits_exceeded_exception() :: %{
        "Limit" => float(),
        "Type" => String.t(),
        "message" => String.t()
      }
      
  """
  @type limits_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_protection_response() :: %{
        "Protection" => protection()
      }
      
  """
  @type describe_protection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_health_check_request() :: %{
        required("HealthCheckArn") => String.t(),
        required("ProtectionId") => String.t()
      }
      
  """
  @type associate_health_check_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_drt_role_request() :: %{
        required("RoleArn") => String.t()
      }
      
  """
  @type associate_drt_role_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_application_layer_automatic_response_request() :: %{
        required("Action") => response_action(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type enable_application_layer_automatic_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_protection_group_response() :: %{}
      
  """
  @type update_protection_group_response() :: %{}

  @typedoc """

  ## Example:
      
      update_application_layer_automatic_response_request() :: %{
        required("Action") => response_action(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type update_application_layer_automatic_response_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      application_layer_automatic_response_configuration() :: %{
        "Action" => response_action(),
        "Status" => list(any())
      }
      
  """
  @type application_layer_automatic_response_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mitigation() :: %{
        "MitigationName" => String.t()
      }
      
  """
  @type mitigation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_error_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_protection_request() :: %{
        optional("Tags") => list(tag()()),
        required("Name") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type create_protection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_pagination_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_pagination_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_emergency_contact_settings_response() :: %{}
      
  """
  @type update_emergency_contact_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      list_protections_request() :: %{
        optional("InclusionFilters") => inclusion_protection_filters(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_protections_request() :: %{String.t() => any()}

  @type associate_drt_log_bucket_errors() ::
          internal_error_exception()
          | limits_exceeded_exception()
          | no_associated_role_exception()
          | access_denied_for_dependency_exception()
          | invalid_parameter_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type associate_drt_role_errors() ::
          internal_error_exception()
          | access_denied_for_dependency_exception()
          | invalid_parameter_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type associate_health_check_errors() ::
          internal_error_exception()
          | limits_exceeded_exception()
          | invalid_parameter_exception()
          | invalid_resource_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()

  @type associate_proactive_engagement_details_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type create_protection_errors() ::
          internal_error_exception()
          | limits_exceeded_exception()
          | resource_already_exists_exception()
          | invalid_parameter_exception()
          | invalid_resource_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type create_protection_group_errors() ::
          internal_error_exception()
          | limits_exceeded_exception()
          | resource_already_exists_exception()
          | invalid_parameter_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()

  @type create_subscription_errors() ::
          internal_error_exception() | resource_already_exists_exception()

  @type delete_protection_errors() ::
          internal_error_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()

  @type delete_protection_group_errors() ::
          internal_error_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()

  @type delete_subscription_errors() ::
          internal_error_exception()
          | resource_not_found_exception()
          | locked_subscription_exception()

  @type describe_attack_errors() :: internal_error_exception() | access_denied_exception()

  @type describe_attack_statistics_errors() :: internal_error_exception()

  @type describe_drt_access_errors() ::
          internal_error_exception() | resource_not_found_exception()

  @type describe_emergency_contact_settings_errors() ::
          internal_error_exception() | resource_not_found_exception()

  @type describe_protection_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()

  @type describe_protection_group_errors() ::
          internal_error_exception() | resource_not_found_exception()

  @type describe_subscription_errors() ::
          internal_error_exception() | resource_not_found_exception()

  @type disable_application_layer_automatic_response_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type disable_proactive_engagement_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type disassociate_drt_log_bucket_errors() ::
          internal_error_exception()
          | no_associated_role_exception()
          | access_denied_for_dependency_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type disassociate_drt_role_errors() ::
          internal_error_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type disassociate_health_check_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | invalid_resource_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()

  @type enable_application_layer_automatic_response_errors() ::
          internal_error_exception()
          | limits_exceeded_exception()
          | invalid_parameter_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type enable_proactive_engagement_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type get_subscription_state_errors() :: internal_error_exception()

  @type list_attacks_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | invalid_operation_exception()

  @type list_protection_groups_errors() ::
          invalid_pagination_token_exception()
          | internal_error_exception()
          | resource_not_found_exception()

  @type list_protections_errors() ::
          invalid_pagination_token_exception()
          | internal_error_exception()
          | resource_not_found_exception()

  @type list_resources_in_protection_group_errors() ::
          invalid_pagination_token_exception()
          | internal_error_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          internal_error_exception()
          | invalid_resource_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | invalid_resource_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | invalid_resource_exception()
          | resource_not_found_exception()

  @type update_application_layer_automatic_response_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()
          | invalid_operation_exception()

  @type update_emergency_contact_settings_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()

  @type update_protection_group_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()

  @type update_subscription_errors() ::
          internal_error_exception()
          | invalid_parameter_exception()
          | optimistic_lock_exception()
          | resource_not_found_exception()
          | locked_subscription_exception()

  def metadata do
    %{
      api_version: "2016-06-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "shield",
      global?: true,
      protocol: "json",
      service_id: "Shield",
      signature_version: "v4",
      signing_name: "shield",
      target_prefix: "AWSShield_20160616"
    }
  end

  @doc """
  Authorizes the Shield Response Team (SRT) to access the specified Amazon S3
  bucket containing log data such as Application Load Balancer access logs,
  CloudFront logs, or logs from third party sources.

  You can associate up to 10 Amazon S3 buckets with your subscription.

  To use the services of the SRT and make an `AssociateDRTLogBucket` request, you
  must be subscribed to the [Business Support plan](http://aws.amazon.com/premiumsupport/business-support/) or the [Enterprise Support plan](http://aws.amazon.com/premiumsupport/enterprise-support/).
  """
  @spec associate_drt_log_bucket(map(), associate_drt_log_bucket_request(), list()) ::
          {:ok, associate_drt_log_bucket_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_drt_log_bucket_errors()}
  def associate_drt_log_bucket(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateDRTLogBucket", input, options)
  end

  @doc """
  Authorizes the Shield Response Team (SRT) using the specified role, to access
  your Amazon Web Services account to assist with DDoS attack mitigation during
  potential attacks.

  This enables the SRT to inspect your WAF configuration and create or update WAF
  rules and web ACLs.

  You can associate only one `RoleArn` with your subscription. If you submit an
  `AssociateDRTRole` request for an account that already has an associated role,
  the new `RoleArn` will replace the existing `RoleArn`.

  Prior to making the `AssociateDRTRole` request, you must attach the
  `AWSShieldDRTAccessPolicy` managed policy to the role that you'll specify in the
  request. You can access this policy in the IAM console at
  [AWSShieldDRTAccessPolicy](https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy). For more information see [Adding and removing IAM identity
  permissions](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html).
  The role must also trust the service principal
  `drt.shield.amazonaws.com`. For more information, see [IAM JSON policy elements: Principal](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html).

  The SRT will have access only to your WAF and Shield resources. By submitting
  this request, you authorize the SRT to inspect your WAF and Shield configuration
  and create and update WAF rules and web ACLs on your behalf. The SRT takes these
  actions only if explicitly authorized by you.

  You must have the `iam:PassRole` permission to make an `AssociateDRTRole`
  request. For more information, see [Granting a user permissions to pass a role to an Amazon Web Services
  service](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html).

  To use the services of the SRT and make an `AssociateDRTRole` request, you must
  be subscribed to the [Business Support plan](http://aws.amazon.com/premiumsupport/business-support/) or the [Enterprise Support plan](http://aws.amazon.com/premiumsupport/enterprise-support/).
  """
  @spec associate_drt_role(map(), associate_drt_role_request(), list()) ::
          {:ok, associate_drt_role_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_drt_role_errors()}
  def associate_drt_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateDRTRole", input, options)
  end

  @doc """
  Adds health-based detection to the Shield Advanced protection for a resource.

  Shield Advanced health-based detection uses the health of your Amazon Web
  Services resource to improve responsiveness and accuracy in attack detection and
  response.

  You define the health check in Route 53 and then associate it with your Shield
  Advanced protection. For more information, see [Shield Advanced Health-Based Detection](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option)
  in the *WAF Developer Guide*.
  """
  @spec associate_health_check(map(), associate_health_check_request(), list()) ::
          {:ok, associate_health_check_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_health_check_errors()}
  def associate_health_check(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateHealthCheck", input, options)
  end

  @doc """
  Initializes proactive engagement and sets the list of contacts for the Shield
  Response Team (SRT) to use.

  You must provide at least one phone number in the emergency contact list.

  After you have initialized proactive engagement using this call, to disable or
  enable proactive engagement, use the calls `DisableProactiveEngagement` and
  `EnableProactiveEngagement`.

  This call defines the list of email addresses and phone numbers that the SRT can
  use to contact you for escalations to the SRT and to initiate proactive customer
  support.

  The contacts that you provide in the request replace any contacts that were
  already defined. If you already have contacts defined and want to use them,
  retrieve the list using `DescribeEmergencyContactSettings` and then provide it
  to this call.
  """
  @spec associate_proactive_engagement_details(
          map(),
          associate_proactive_engagement_details_request(),
          list()
        ) ::
          {:ok, associate_proactive_engagement_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_proactive_engagement_details_errors()}
  def associate_proactive_engagement_details(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateProactiveEngagementDetails", input, options)
  end

  @doc """
  Enables Shield Advanced for a specific Amazon Web Services resource.

  The resource can be an Amazon CloudFront distribution, Amazon Route 53 hosted
  zone, Global Accelerator standard accelerator, Elastic IP Address, Application
  Load Balancer, or a Classic Load Balancer. You can protect Amazon EC2 instances
  and Network Load Balancers by association with protected Amazon EC2 Elastic IP
  addresses.

  You can add protection to only a single resource with each `CreateProtection`
  request. You can add protection to multiple resources
  at once through the Shield Advanced console at
  [https://console.aws.amazon.com/wafv2/shieldv2#/](https://console.aws.amazon.com/wafv2/shieldv2#/). For more information see
  [Getting Started with Shield
  Advanced](https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html)
  and [Adding Shield Advanced protection to Amazon Web Services resources](https://docs.aws.amazon.com/waf/latest/developerguide/configure-new-protection.html).
  """
  @spec create_protection(map(), create_protection_request(), list()) ::
          {:ok, create_protection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_protection_errors()}
  def create_protection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateProtection", input, options)
  end

  @doc """
  Creates a grouping of protected resources so they can be handled as a
  collective.

  This resource grouping improves the accuracy of detection and reduces false
  positives.
  """
  @spec create_protection_group(map(), create_protection_group_request(), list()) ::
          {:ok, create_protection_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_protection_group_errors()}
  def create_protection_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateProtectionGroup", input, options)
  end

  @doc """
  Activates Shield Advanced for an account.

  For accounts that are members of an Organizations organization, Shield Advanced
  subscriptions are billed against the organization's payer account,
  regardless of whether the payer account itself is subscribed.

  When you initially create a subscription, your subscription is set to be
  automatically renewed at the end of the existing subscription period. You can
  change this by submitting an `UpdateSubscription` request.
  """
  @spec create_subscription(map(), create_subscription_request(), list()) ::
          {:ok, create_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_subscription_errors()}
  def create_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSubscription", input, options)
  end

  @doc """
  Deletes an Shield Advanced `Protection`.
  """
  @spec delete_protection(map(), delete_protection_request(), list()) ::
          {:ok, delete_protection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_protection_errors()}
  def delete_protection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteProtection", input, options)
  end

  @doc """
  Removes the specified protection group.
  """
  @spec delete_protection_group(map(), delete_protection_group_request(), list()) ::
          {:ok, delete_protection_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_protection_group_errors()}
  def delete_protection_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteProtectionGroup", input, options)
  end

  @doc """
  Removes Shield Advanced from an account.

  Shield Advanced requires a 1-year subscription commitment. You cannot delete a
  subscription prior to the completion of that commitment.
  """
  @spec delete_subscription(map(), delete_subscription_request(), list()) ::
          {:ok, delete_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_subscription_errors()}
  def delete_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSubscription", input, options)
  end

  @doc """
  Describes the details of a DDoS attack.
  """
  @spec describe_attack(map(), describe_attack_request(), list()) ::
          {:ok, describe_attack_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_attack_errors()}
  def describe_attack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAttack", input, options)
  end

  @doc """
  Provides information about the number and type of attacks Shield has detected in
  the last year for all resources that belong to your account, regardless of
  whether you've defined Shield protections for them.

  This operation is available to Shield customers as well as to Shield Advanced
  customers.

  The operation returns data for the time range of midnight UTC, one year ago, to
  midnight UTC, today. For example, if the current time is `2020-10-26 15:39:32
  PDT`, equal to `2020-10-26 22:39:32 UTC`, then the time range for the attack
  data returned is from `2019-10-26 00:00:00 UTC` to `2020-10-26 00:00:00 UTC`.

  The time range indicates the period covered by the attack statistics data items.
  """
  @spec describe_attack_statistics(map(), describe_attack_statistics_request(), list()) ::
          {:ok, describe_attack_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_attack_statistics_errors()}
  def describe_attack_statistics(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAttackStatistics", input, options)
  end

  @doc """
  Returns the current role and list of Amazon S3 log buckets used by the Shield
  Response Team (SRT) to access your Amazon Web Services account while assisting
  with attack mitigation.
  """
  @spec describe_drt_access(map(), describe_drt_access_request(), list()) ::
          {:ok, describe_drt_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_drt_access_errors()}
  def describe_drt_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDRTAccess", input, options)
  end

  @doc """
  A list of email addresses and phone numbers that the Shield Response Team (SRT)
  can use to contact you if you have proactive engagement enabled, for escalations
  to the SRT and to initiate proactive customer support.
  """
  @spec describe_emergency_contact_settings(
          map(),
          describe_emergency_contact_settings_request(),
          list()
        ) ::
          {:ok, describe_emergency_contact_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_emergency_contact_settings_errors()}
  def describe_emergency_contact_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEmergencyContactSettings", input, options)
  end

  @doc """
  Lists the details of a `Protection` object.
  """
  @spec describe_protection(map(), describe_protection_request(), list()) ::
          {:ok, describe_protection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_protection_errors()}
  def describe_protection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeProtection", input, options)
  end

  @doc """
  Returns the specification for the specified protection group.
  """
  @spec describe_protection_group(map(), describe_protection_group_request(), list()) ::
          {:ok, describe_protection_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_protection_group_errors()}
  def describe_protection_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeProtectionGroup", input, options)
  end

  @doc """
  Provides details about the Shield Advanced subscription for an account.
  """
  @spec describe_subscription(map(), describe_subscription_request(), list()) ::
          {:ok, describe_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_subscription_errors()}
  def describe_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSubscription", input, options)
  end

  @doc """
  Disable the Shield Advanced automatic application layer DDoS mitigation feature
  for the protected resource.

  This
  stops Shield Advanced from creating, verifying, and applying WAF rules for
  attacks that it detects for the resource.
  """
  @spec disable_application_layer_automatic_response(
          map(),
          disable_application_layer_automatic_response_request(),
          list()
        ) ::
          {:ok, disable_application_layer_automatic_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_application_layer_automatic_response_errors()}
  def disable_application_layer_automatic_response(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableApplicationLayerAutomaticResponse", input, options)
  end

  @doc """
  Removes authorization from the Shield Response Team (SRT) to notify contacts
  about escalations to the SRT and to initiate proactive customer support.
  """
  @spec disable_proactive_engagement(map(), disable_proactive_engagement_request(), list()) ::
          {:ok, disable_proactive_engagement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_proactive_engagement_errors()}
  def disable_proactive_engagement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableProactiveEngagement", input, options)
  end

  @doc """
  Removes the Shield Response Team's (SRT) access to the specified Amazon S3
  bucket containing the logs that you shared previously.
  """
  @spec disassociate_drt_log_bucket(map(), disassociate_drt_log_bucket_request(), list()) ::
          {:ok, disassociate_drt_log_bucket_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_drt_log_bucket_errors()}
  def disassociate_drt_log_bucket(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateDRTLogBucket", input, options)
  end

  @doc """
  Removes the Shield Response Team's (SRT) access to your Amazon Web Services
  account.
  """
  @spec disassociate_drt_role(map(), disassociate_drt_role_request(), list()) ::
          {:ok, disassociate_drt_role_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_drt_role_errors()}
  def disassociate_drt_role(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateDRTRole", input, options)
  end

  @doc """
  Removes health-based detection from the Shield Advanced protection for a
  resource.

  Shield Advanced health-based detection uses the health of your Amazon Web
  Services resource to improve responsiveness and accuracy in attack detection and
  response.

  You define the health check in Route 53 and then associate or disassociate it
  with your Shield Advanced protection. For more information, see [Shield Advanced Health-Based
  Detection](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option)
  in the *WAF Developer Guide*.
  """
  @spec disassociate_health_check(map(), disassociate_health_check_request(), list()) ::
          {:ok, disassociate_health_check_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_health_check_errors()}
  def disassociate_health_check(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateHealthCheck", input, options)
  end

  @doc """
  Enable the Shield Advanced automatic application layer DDoS mitigation for the
  protected resource.

  This feature is available for Amazon CloudFront distributions and Application
  Load Balancers only.

  This causes Shield Advanced to create, verify, and apply WAF rules for DDoS
  attacks that it detects for the
  resource. Shield Advanced applies the rules in a Shield rule group inside the
  web ACL that you've associated
  with the resource. For information about how automatic mitigation works and the
  requirements for using it, see
  [Shield Advanced automatic application layer DDoS mitigation](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-advanced-automatic-app-layer-response.html).

  Don't use this action to make changes to automatic mitigation settings when it's
  already enabled for a resource. Instead, use
  `UpdateApplicationLayerAutomaticResponse`.

  To use this feature, you must associate a web ACL with the protected resource.
  The web ACL must be created using the latest version of WAF (v2). You can
  associate the web ACL through the Shield Advanced console
  at
  [https://console.aws.amazon.com/wafv2/shieldv2#/](https://console.aws.amazon.com/wafv2/shieldv2#/). For more information,
  see [Getting Started with Shield
  Advanced](https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html).
  You can also associate the web ACL to the resource through the WAF console or
  the WAF API, but you must manage Shield Advanced automatic mitigation through
  Shield Advanced. For information about WAF, see
  [WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
  """
  @spec enable_application_layer_automatic_response(
          map(),
          enable_application_layer_automatic_response_request(),
          list()
        ) ::
          {:ok, enable_application_layer_automatic_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_application_layer_automatic_response_errors()}
  def enable_application_layer_automatic_response(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableApplicationLayerAutomaticResponse", input, options)
  end

  @doc """
  Authorizes the Shield Response Team (SRT) to use email and phone to notify
  contacts about escalations to the SRT and to initiate proactive customer
  support.
  """
  @spec enable_proactive_engagement(map(), enable_proactive_engagement_request(), list()) ::
          {:ok, enable_proactive_engagement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_proactive_engagement_errors()}
  def enable_proactive_engagement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableProactiveEngagement", input, options)
  end

  @doc """
  Returns the `SubscriptionState`, either `Active` or `Inactive`.
  """
  @spec get_subscription_state(map(), get_subscription_state_request(), list()) ::
          {:ok, get_subscription_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_subscription_state_errors()}
  def get_subscription_state(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSubscriptionState", input, options)
  end

  @doc """
  Returns all ongoing DDoS attacks or all DDoS attacks during a specified time
  period.
  """
  @spec list_attacks(map(), list_attacks_request(), list()) ::
          {:ok, list_attacks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_attacks_errors()}
  def list_attacks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAttacks", input, options)
  end

  @doc """
  Retrieves `ProtectionGroup` objects for the account.

  You can retrieve all protection groups or you can provide
  filtering criteria and retrieve just the subset of protection groups that match
  the criteria.
  """
  @spec list_protection_groups(map(), list_protection_groups_request(), list()) ::
          {:ok, list_protection_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_protection_groups_errors()}
  def list_protection_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListProtectionGroups", input, options)
  end

  @doc """
  Retrieves `Protection` objects for the account.

  You can retrieve all protections or you can provide
  filtering criteria and retrieve just the subset of protections that match the
  criteria.
  """
  @spec list_protections(map(), list_protections_request(), list()) ::
          {:ok, list_protections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_protections_errors()}
  def list_protections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListProtections", input, options)
  end

  @doc """
  Retrieves the resources that are included in the protection group.
  """
  @spec list_resources_in_protection_group(
          map(),
          list_resources_in_protection_group_request(),
          list()
        ) ::
          {:ok, list_resources_in_protection_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resources_in_protection_group_errors()}
  def list_resources_in_protection_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourcesInProtectionGroup", input, options)
  end

  @doc """
  Gets information about Amazon Web Services tags for a specified Amazon Resource
  Name (ARN) in Shield.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Adds or updates tags for a resource in Shield.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes tags from a resource in Shield.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an existing Shield Advanced automatic application layer DDoS mitigation
  configuration for the specified resource.
  """
  @spec update_application_layer_automatic_response(
          map(),
          update_application_layer_automatic_response_request(),
          list()
        ) ::
          {:ok, update_application_layer_automatic_response_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_application_layer_automatic_response_errors()}
  def update_application_layer_automatic_response(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateApplicationLayerAutomaticResponse", input, options)
  end

  @doc """
  Updates the details of the list of email addresses and phone numbers that the
  Shield Response Team (SRT) can use to contact you if you have proactive
  engagement enabled, for escalations to the SRT and to initiate proactive
  customer support.
  """
  @spec update_emergency_contact_settings(
          map(),
          update_emergency_contact_settings_request(),
          list()
        ) ::
          {:ok, update_emergency_contact_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_emergency_contact_settings_errors()}
  def update_emergency_contact_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEmergencyContactSettings", input, options)
  end

  @doc """
  Updates an existing protection group.

  A protection group is a grouping of protected resources so they can be handled
  as a collective. This resource grouping improves the accuracy of detection and
  reduces false positives.
  """
  @spec update_protection_group(map(), update_protection_group_request(), list()) ::
          {:ok, update_protection_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_protection_group_errors()}
  def update_protection_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateProtectionGroup", input, options)
  end

  @doc """
  Updates the details of an existing subscription.

  Only enter values for parameters you want to change. Empty parameters are not
  updated.

  For accounts that are members of an Organizations organization, Shield Advanced
  subscriptions are billed against the organization's payer account,
  regardless of whether the payer account itself is subscribed.
  """
  @spec update_subscription(map(), update_subscription_request(), list()) ::
          {:ok, update_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_subscription_errors()}
  def update_subscription(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSubscription", input, options)
  end
end
