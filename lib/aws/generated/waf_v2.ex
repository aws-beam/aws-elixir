# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WAFV2 do
  @moduledoc """
  WAF

  This is the latest version of the **WAF** API,
  released in November, 2019.

  The names of the entities that you use to access this API,
  like endpoints and namespaces, all have the versioning information added, like
  "V2" or
  "v2", to distinguish from the prior version. We recommend migrating your
  resources to
  this version, because it has a number of significant improvements.

  If you used WAF prior to this release, you can't use this WAFV2 API to access
  any
  WAF resources that you created before. WAF Classic support will end on September
  30, 2025.

  For information about WAF, including how to migrate your WAF Classic resources
  to this version,
  see the [WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

  WAF is a web application firewall that lets you monitor the HTTP and HTTPS
  requests that are forwarded to a protected resource. Protected resource types
  include Amazon CloudFront distribution, Amazon API Gateway REST API, Application
  Load Balancer, AppSync
  GraphQL API, Amazon Cognito user pool, App Runner service, Amplify application,
  and Amazon Web Services Verified Access instance. WAF also lets you control
  access to your content,
  to protect the Amazon Web Services resource that WAF is monitoring. Based on
  conditions that
  you specify, such as the IP addresses that requests originate from or the values
  of query
  strings, the protected resource responds to requests with either the requested
  content, an HTTP 403 status code
  (Forbidden), or with a custom response.

  This API guide is for developers who need detailed information about WAF API
  actions,
  data types, and errors. For detailed information about WAF features and guidance
  for configuring and using
  WAF, see the [WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html).

  You can make calls using the endpoints listed in [WAF endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/waf.html).

    *
  For regional resources, you can use any of the endpoints in the list.
  A regional application can be an Application Load Balancer (ALB), an Amazon API
  Gateway REST API, an AppSync GraphQL API, an Amazon Cognito user pool, an App
  Runner service, or an Amazon Web Services Verified Access instance.

    *
  For Amazon CloudFront and Amplify, you must use the API endpoint listed for
  US East (N. Virginia): us-east-1.

  Alternatively, you can use one of the Amazon Web Services SDKs to access an API
  that's tailored to the
  programming language or platform that you're using. For more information, see
  [Amazon Web Services SDKs](http://aws.amazon.com/tools/#SDKs).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      header_order() :: %{
        "OversizeHandling" => list(any())
      }
      
  """
  @type header_order() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_sampled_requests_request() :: %{
        required("MaxItems") => float(),
        required("RuleMetricName") => String.t() | atom(),
        required("Scope") => list(any()),
        required("TimeWindow") => time_window(),
        required("WebAclArn") => String.t() | atom()
      }
      
  """
  @type get_sampled_requests_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      request_inspection() :: %{
        "PasswordField" => password_field(),
        "PayloadType" => list(any()),
        "UsernameField" => username_field()
      }
      
  """
  @type request_inspection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      version_to_publish() :: %{
        "AssociatedRuleGroupArn" => String.t() | atom(),
        "ForecastedLifetime" => integer()
      }
      
  """
  @type version_to_publish() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_rule_group_statement() :: %{
        "ExcludedRules" => list(excluded_rule()),
        "ManagedRuleGroupConfigs" => list(managed_rule_group_config()),
        "Name" => String.t() | atom(),
        "RuleActionOverrides" => list(rule_action_override()),
        "ScopeDownStatement" => statement(),
        "VendorName" => String.t() | atom(),
        "Version" => String.t() | atom()
      }
      
  """
  @type managed_rule_group_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_web_acl_response() :: %{}
      
  """
  @type associate_web_acl_response() :: %{}

  @typedoc """

  ## Example:
      
      rule_action_override() :: %{
        "ActionToUse" => rule_action(),
        "Name" => String.t() | atom()
      }
      
  """
  @type rule_action_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      w_a_f_expired_managed_rule_group_version_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type w_a_f_expired_managed_rule_group_version_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      password_field() :: %{
        "Identifier" => String.t() | atom()
      }
      
  """
  @type password_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_rule_group_response() :: %{
        "NextLockToken" => String.t() | atom()
      }
      
  """
  @type update_rule_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      check_capacity_request() :: %{
        required("Rules") => list(rule()),
        required("Scope") => list(any())
      }
      
  """
  @type check_capacity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      w_a_f_nonexistent_item_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type w_a_f_nonexistent_item_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      aws_managed_rules_a_c_f_p_rule_set() :: %{
        "CreationPath" => String.t() | atom(),
        "EnableRegexInPath" => boolean(),
        "RegistrationPagePath" => String.t() | atom(),
        "RequestInspection" => request_inspection_a_c_f_p(),
        "ResponseInspection" => response_inspection()
      }
      
  """
  @type aws_managed_rules_a_c_f_p_rule_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      single_query_argument() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type single_query_argument() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resources_for_web_acl_request() :: %{
        optional("ResourceType") => list(any()),
        required("WebACLArn") => String.t() | atom()
      }
      
  """
  @type list_resources_for_web_acl_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rate_based_statement_custom_key() :: %{
        "ASN" => rate_limit_asn(),
        "Cookie" => rate_limit_cookie(),
        "ForwardedIP" => rate_limit_forwarded_ip(),
        "HTTPMethod" => rate_limit_h_t_t_p_method(),
        "Header" => rate_limit_header(),
        "IP" => rate_limit_ip(),
        "JA3Fingerprint" => rate_limit_j_a3_fingerprint(),
        "JA4Fingerprint" => rate_limit_j_a4_fingerprint(),
        "LabelNamespace" => rate_limit_label_namespace(),
        "QueryArgument" => rate_limit_query_argument(),
        "QueryString" => rate_limit_query_string(),
        "UriPath" => rate_limit_uri_path()
      }
      
  """
  @type rate_based_statement_custom_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_decrypted_api_key_response() :: %{
        "CreationTimestamp" => non_neg_integer(),
        "TokenDomains" => list(String.t() | atom())
      }
      
  """
  @type get_decrypted_api_key_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_api_keys_response() :: %{
        "APIKeySummaries" => list(api_key_summary()),
        "ApplicationIntegrationURL" => String.t() | atom(),
        "NextMarker" => String.t() | atom()
      }
      
  """
  @type list_api_keys_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      api_key_summary() :: %{
        "APIKey" => String.t() | atom(),
        "CreationTimestamp" => non_neg_integer(),
        "TokenDomains" => list(String.t() | atom()),
        "Version" => integer()
      }
      
  """
  @type api_key_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rate_limit_query_argument() :: %{
        "Name" => String.t() | atom(),
        "TextTransformations" => list(text_transformation())
      }
      
  """
  @type rate_limit_query_argument() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_rule_group_request() :: %{
        optional("ARN") => String.t() | atom(),
        optional("Id") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("Scope") => list(any())
      }
      
  """
  @type get_rule_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_managed_products_by_vendor_response() :: %{
        "ManagedProducts" => list(managed_product_descriptor())
      }
      
  """
  @type describe_managed_products_by_vendor_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_rule_groups_response() :: %{
        "NextMarker" => String.t() | atom(),
        "RuleGroups" => list(rule_group_summary())
      }
      
  """
  @type list_rule_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      response_inspection_json() :: %{
        "FailureValues" => list(String.t() | atom()),
        "Identifier" => String.t() | atom(),
        "SuccessValues" => list(String.t() | atom())
      }
      
  """
  @type response_inspection_json() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_ip_sets_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type list_ip_sets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rate_based_statement_managed_keys_ip_set() :: %{
        "Addresses" => list(String.t() | atom()),
        "IPAddressVersion" => list(any())
      }
      
  """
  @type rate_based_statement_managed_keys_ip_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      j_a4_fingerprint() :: %{
        "FallbackBehavior" => list(any())
      }
      
  """
  @type j_a4_fingerprint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      request_inspection_a_c_f_p() :: %{
        "AddressFields" => list(address_field()),
        "EmailField" => email_field(),
        "PasswordField" => password_field(),
        "PayloadType" => list(any()),
        "PhoneNumberFields" => list(phone_number_field()),
        "UsernameField" => username_field()
      }
      
  """
  @type request_inspection_a_c_f_p() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query_string() :: %{}
      
  """
  @type query_string() :: %{}

  @typedoc """

  ## Example:
      
      response_inspection() :: %{
        "BodyContains" => response_inspection_body_contains(),
        "Header" => response_inspection_header(),
        "Json" => response_inspection_json(),
        "StatusCode" => response_inspection_status_code()
      }
      
  """
  @type response_inspection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      custom_response_body() :: %{
        "Content" => String.t() | atom(),
        "ContentType" => list(any())
      }
      
  """
  @type custom_response_body() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rate_limit_ip() :: %{}
      
  """
  @type rate_limit_ip() :: %{}

  @typedoc """

  ## Example:
      
      custom_response() :: %{
        "CustomResponseBodyKey" => String.t() | atom(),
        "ResponseCode" => integer(),
        "ResponseHeaders" => list(custom_h_t_t_p_header())
      }
      
  """
  @type custom_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_all_managed_products_response() :: %{
        "ManagedProducts" => list(managed_product_descriptor())
      }
      
  """
  @type describe_all_managed_products_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rate_limit_label_namespace() :: %{
        "Namespace" => String.t() | atom()
      }
      
  """
  @type rate_limit_label_namespace() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_managed_rule_set_version_expiry_date_response() :: %{
        "ExpiringVersion" => String.t() | atom(),
        "ExpiryTimestamp" => non_neg_integer(),
        "NextLockToken" => String.t() | atom()
      }
      
  """
  @type update_managed_rule_set_version_expiry_date_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      w_a_f_unsupported_aggregate_key_type_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type w_a_f_unsupported_aggregate_key_type_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      field_to_match() :: %{
        "AllQueryArguments" => all_query_arguments(),
        "Body" => body(),
        "Cookies" => cookies(),
        "HeaderOrder" => header_order(),
        "Headers" => headers(),
        "JA3Fingerprint" => j_a3_fingerprint(),
        "JA4Fingerprint" => j_a4_fingerprint(),
        "JsonBody" => json_body(),
        "Method" => method(),
        "QueryString" => query_string(),
        "SingleHeader" => single_header(),
        "SingleQueryArgument" => single_query_argument(),
        "UriFragment" => uri_fragment(),
        "UriPath" => uri_path()
      }
      
  """
  @type field_to_match() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      w_a_f_service_linked_role_error_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type w_a_f_service_linked_role_error_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      allow_action() :: %{
        "CustomRequestHandling" => custom_request_handling()
      }
      
  """
  @type allow_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      regex_pattern_set_reference_statement() :: %{
        "ARN" => String.t() | atom(),
        "FieldToMatch" => field_to_match(),
        "TextTransformations" => list(text_transformation())
      }
      
  """
  @type regex_pattern_set_reference_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_ip_set_response() :: %{
        "NextLockToken" => String.t() | atom()
      }
      
  """
  @type update_ip_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_mobile_sdk_release_request() :: %{
        required("Platform") => list(any()),
        required("ReleaseVersion") => String.t() | atom()
      }
      
  """
  @type get_mobile_sdk_release_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_web_acl_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("WebACLArn") => String.t() | atom()
      }
      
  """
  @type associate_web_acl_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      count_action() :: %{
        "CustomRequestHandling" => custom_request_handling()
      }
      
  """
  @type count_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rule_group() :: %{
        "ARN" => String.t() | atom(),
        "AvailableLabels" => list(label_summary()),
        "Capacity" => float(),
        "ConsumedLabels" => list(label_summary()),
        "CustomResponseBodies" => map(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LabelNamespace" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Rules" => list(rule()),
        "VisibilityConfig" => visibility_config()
      }
      
  """
  @type rule_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_rule_set() :: %{
        "ARN" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LabelNamespace" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PublishedVersions" => map(),
        "RecommendedVersion" => String.t() | atom()
      }
      
  """
  @type managed_rule_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      generate_mobile_sdk_release_url_response() :: %{
        "Url" => String.t() | atom()
      }
      
  """
  @type generate_mobile_sdk_release_url_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rate_based_statement() :: %{
        "AggregateKeyType" => list(any()),
        "CustomKeys" => list(rate_based_statement_custom_key()),
        "EvaluationWindowSec" => float(),
        "ForwardedIPConfig" => forwarded_ip_config(),
        "Limit" => float(),
        "ScopeDownStatement" => statement()
      }
      
  """
  @type rate_based_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_web_acl_for_resource_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type get_web_acl_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_rule_set_summary() :: %{
        "ARN" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LabelNamespace" => String.t() | atom(),
        "LockToken" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type managed_rule_set_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sqli_match_statement() :: %{
        "FieldToMatch" => field_to_match(),
        "SensitivityLevel" => list(any()),
        "TextTransformations" => list(text_transformation())
      }
      
  """
  @type sqli_match_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_ip_set_request() :: %{
        required("Id") => String.t() | atom(),
        required("LockToken") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type delete_ip_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      statement() :: %{
        "AndStatement" => and_statement(),
        "AsnMatchStatement" => asn_match_statement(),
        "ByteMatchStatement" => byte_match_statement(),
        "GeoMatchStatement" => geo_match_statement(),
        "IPSetReferenceStatement" => ip_set_reference_statement(),
        "LabelMatchStatement" => label_match_statement(),
        "ManagedRuleGroupStatement" => managed_rule_group_statement(),
        "NotStatement" => not_statement(),
        "OrStatement" => or_statement(),
        "RateBasedStatement" => rate_based_statement(),
        "RegexMatchStatement" => regex_match_statement(),
        "RegexPatternSetReferenceStatement" => regex_pattern_set_reference_statement(),
        "RuleGroupReferenceStatement" => rule_group_reference_statement(),
        "SizeConstraintStatement" => size_constraint_statement(),
        "SqliMatchStatement" => sqli_match_statement(),
        "XssMatchStatement" => xss_match_statement()
      }
      
  """
  @type statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      custom_request_handling() :: %{
        "InsertHeaders" => list(custom_h_t_t_p_header())
      }
      
  """
  @type custom_request_handling() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      regex_match_statement() :: %{
        "FieldToMatch" => field_to_match(),
        "RegexString" => String.t() | atom(),
        "TextTransformations" => list(text_transformation())
      }
      
  """
  @type regex_match_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_rule_group_response() :: %{
        "LockToken" => String.t() | atom(),
        "RuleGroup" => rule_group()
      }
      
  """
  @type get_rule_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      w_a_f_unavailable_entity_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type w_a_f_unavailable_entity_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_regex_pattern_set_request() :: %{
        required("Id") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type get_regex_pattern_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      response_inspection_status_code() :: %{
        "FailureCodes" => list(integer()),
        "SuccessCodes" => list(integer())
      }
      
  """
  @type response_inspection_status_code() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_web_acl_response() :: %{
        "ApplicationIntegrationURL" => String.t() | atom(),
        "LockToken" => String.t() | atom(),
        "WebACL" => web_acl()
      }
      
  """
  @type get_web_acl_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_info_for_resource() :: %{
        "ResourceARN" => String.t() | atom(),
        "TagList" => list(tag())
      }
      
  """
  @type tag_info_for_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      w_a_f_invalid_permission_policy_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type w_a_f_invalid_permission_policy_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      request_body_associated_resource_type_config() :: %{
        "DefaultSizeInspectionLimit" => list(any())
      }
      
  """
  @type request_body_associated_resource_type_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_product_descriptor() :: %{
        "IsAdvancedManagedRuleSet" => boolean(),
        "IsVersioningSupported" => boolean(),
        "ManagedRuleSetName" => String.t() | atom(),
        "ProductDescription" => String.t() | atom(),
        "ProductId" => String.t() | atom(),
        "ProductLink" => String.t() | atom(),
        "ProductTitle" => String.t() | atom(),
        "SnsTopicArn" => String.t() | atom(),
        "VendorName" => String.t() | atom()
      }
      
  """
  @type managed_product_descriptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      captcha_config() :: %{
        "ImmunityTimeProperty" => immunity_time_property()
      }
      
  """
  @type captcha_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_available_managed_rule_group_versions_response() :: %{
        "CurrentDefaultVersion" => String.t() | atom(),
        "NextMarker" => String.t() | atom(),
        "Versions" => list(managed_rule_group_version())
      }
      
  """
  @type list_available_managed_rule_group_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      generate_mobile_sdk_release_url_request() :: %{
        required("Platform") => list(any()),
        required("ReleaseVersion") => String.t() | atom()
      }
      
  """
  @type generate_mobile_sdk_release_url_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_ip_set_request() :: %{
        optional("Description") => String.t() | atom(),
        required("Addresses") => list(String.t() | atom()),
        required("Id") => String.t() | atom(),
        required("LockToken") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type update_ip_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      logging_configuration() :: %{
        "LogDestinationConfigs" => list(String.t() | atom()),
        "LogScope" => list(any()),
        "LogType" => list(any()),
        "LoggingFilter" => logging_filter(),
        "ManagedByFirewallManager" => boolean(),
        "RedactedFields" => list(field_to_match()),
        "ResourceArn" => String.t() | atom()
      }
      
  """
  @type logging_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_attribute() :: %{
        "Name" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type application_attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rate_limit_cookie() :: %{
        "Name" => String.t() | atom(),
        "TextTransformations" => list(text_transformation())
      }
      
  """
  @type rate_limit_cookie() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_rule_group_response() :: %{
        "Summary" => rule_group_summary()
      }
      
  """
  @type create_rule_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_rule_group_request() :: %{
        optional("CustomResponseBodies") => map(),
        optional("Description") => String.t() | atom(),
        optional("Rules") => list(rule()),
        optional("Tags") => list(tag()),
        required("Capacity") => float(),
        required("Name") => String.t() | atom(),
        required("Scope") => list(any()),
        required("VisibilityConfig") => visibility_config()
      }
      
  """
  @type create_rule_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      w_a_f_associated_item_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type w_a_f_associated_item_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_logging_configuration_response() :: %{
        "LoggingConfiguration" => logging_configuration()
      }
      
  """
  @type put_logging_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      challenge_action() :: %{
        "CustomRequestHandling" => custom_request_handling()
      }
      
  """
  @type challenge_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_all_managed_products_request() :: %{
        required("Scope") => list(any())
      }
      
  """
  @type describe_all_managed_products_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_available_managed_rule_groups_response() :: %{
        "ManagedRuleGroups" => list(managed_rule_group_summary()),
        "NextMarker" => String.t() | atom()
      }
      
  """
  @type list_available_managed_rule_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_regex_pattern_set_request() :: %{
        required("Id") => String.t() | atom(),
        required("LockToken") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type delete_regex_pattern_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      web_acl() :: %{
        "ARN" => String.t() | atom(),
        "ApplicationConfig" => application_config(),
        "AssociationConfig" => association_config(),
        "Capacity" => float(),
        "CaptchaConfig" => captcha_config(),
        "ChallengeConfig" => challenge_config(),
        "CustomResponseBodies" => map(),
        "DataProtectionConfig" => data_protection_config(),
        "DefaultAction" => default_action(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LabelNamespace" => String.t() | atom(),
        "ManagedByFirewallManager" => boolean(),
        "Name" => String.t() | atom(),
        "OnSourceDDoSProtectionConfig" => on_source_d_do_s_protection_config(),
        "PostProcessFirewallManagerRuleGroups" => list(firewall_manager_rule_group()),
        "PreProcessFirewallManagerRuleGroups" => list(firewall_manager_rule_group()),
        "RetrofittedByFirewallManager" => boolean(),
        "Rules" => list(rule()),
        "TokenDomains" => list(String.t() | atom()),
        "VisibilityConfig" => visibility_config()
      }
      
  """
  @type web_acl() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_rate_based_statement_managed_keys_response() :: %{
        "ManagedKeysIPV4" => rate_based_statement_managed_keys_ip_set(),
        "ManagedKeysIPV6" => rate_based_statement_managed_keys_ip_set()
      }
      
  """
  @type get_rate_based_statement_managed_keys_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_rule_set_version() :: %{
        "AssociatedRuleGroupArn" => String.t() | atom(),
        "Capacity" => float(),
        "ExpiryTimestamp" => non_neg_integer(),
        "ForecastedLifetime" => integer(),
        "LastUpdateTimestamp" => non_neg_integer(),
        "PublishTimestamp" => non_neg_integer()
      }
      
  """
  @type managed_rule_set_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      w_a_f_internal_error_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type w_a_f_internal_error_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_permission_policy_response() :: %{}
      
  """
  @type delete_permission_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      all_query_arguments() :: %{}
      
  """
  @type all_query_arguments() :: %{}

  @typedoc """

  ## Example:
      
      get_rate_based_statement_managed_keys_request() :: %{
        optional("RuleGroupRuleName") => String.t() | atom(),
        required("RuleName") => String.t() | atom(),
        required("Scope") => list(any()),
        required("WebACLId") => String.t() | atom(),
        required("WebACLName") => String.t() | atom()
      }
      
  """
  @type get_rate_based_statement_managed_keys_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_regex_pattern_set_request() :: %{
        optional("Description") => String.t() | atom(),
        required("Id") => String.t() | atom(),
        required("LockToken") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("RegularExpressionList") => list(regex()),
        required("Scope") => list(any())
      }
      
  """
  @type update_regex_pattern_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      block_action() :: %{
        "CustomResponse" => custom_response()
      }
      
  """
  @type block_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      size_constraint_statement() :: %{
        "ComparisonOperator" => list(any()),
        "FieldToMatch" => field_to_match(),
        "Size" => float(),
        "TextTransformations" => list(text_transformation())
      }
      
  """
  @type size_constraint_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      time_window() :: %{
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type time_window() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_ip_sets_response() :: %{
        "IPSets" => list(ip_set_summary()),
        "NextMarker" => String.t() | atom()
      }
      
  """
  @type list_ip_sets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rate_limit_h_t_t_p_method() :: %{}
      
  """
  @type rate_limit_h_t_t_p_method() :: %{}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_web_acl_response() :: %{
        "Summary" => web_acl_summary()
      }
      
  """
  @type create_web_acl_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_protection() :: %{
        "Action" => list(any()),
        "ExcludeRateBasedDetails" => boolean(),
        "ExcludeRuleMatchDetails" => boolean(),
        "Field" => field_to_protect()
      }
      
  """
  @type data_protection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      none_action() :: %{}
      
  """
  @type none_action() :: %{}

  @typedoc """

  ## Example:
      
      cookie_match_pattern() :: %{
        "All" => all(),
        "ExcludedCookies" => list(String.t() | atom()),
        "IncludedCookies" => list(String.t() | atom())
      }
      
  """
  @type cookie_match_pattern() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_rule_group_version() :: %{
        "LastUpdateTimestamp" => non_neg_integer(),
        "Name" => String.t() | atom()
      }
      
  """
  @type managed_rule_group_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      username_field() :: %{
        "Identifier" => String.t() | atom()
      }
      
  """
  @type username_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_protection_config() :: %{
        "DataProtections" => list(data_protection())
      }
      
  """
  @type data_protection_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      client_side_action() :: %{
        "ExemptUriRegularExpressions" => list(regex()),
        "Sensitivity" => list(any()),
        "UsageOfAction" => list(any())
      }
      
  """
  @type client_side_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rate_limit_forwarded_ip() :: %{}
      
  """
  @type rate_limit_forwarded_ip() :: %{}

  @typedoc """

  ## Example:
      
      rule_group_reference_statement() :: %{
        "ARN" => String.t() | atom(),
        "ExcludedRules" => list(excluded_rule()),
        "RuleActionOverrides" => list(rule_action_override())
      }
      
  """
  @type rule_group_reference_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_web_acl_response() :: %{
        "NextLockToken" => String.t() | atom()
      }
      
  """
  @type update_web_acl_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      default_action() :: %{
        "Allow" => allow_action(),
        "Block" => block_action()
      }
      
  """
  @type default_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_logging_configuration_response() :: %{
        "LoggingConfiguration" => logging_configuration()
      }
      
  """
  @type get_logging_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      response_inspection_body_contains() :: %{
        "FailureStrings" => list(String.t() | atom()),
        "SuccessStrings" => list(String.t() | atom())
      }
      
  """
  @type response_inspection_body_contains() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      aws_managed_rules_anti_d_do_s_rule_set() :: %{
        "ClientSideActionConfig" => client_side_action_config(),
        "SensitivityToBlock" => list(any())
      }
      
  """
  @type aws_managed_rules_anti_d_do_s_rule_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rate_limit_asn() :: %{}
      
  """
  @type rate_limit_asn() :: %{}

  @typedoc """

  ## Example:
      
      rate_limit_j_a3_fingerprint() :: %{
        "FallbackBehavior" => list(any())
      }
      
  """
  @type rate_limit_j_a3_fingerprint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rate_limit_query_string() :: %{
        "TextTransformations" => list(text_transformation())
      }
      
  """
  @type rate_limit_query_string() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_mobile_sdk_releases_response() :: %{
        "NextMarker" => String.t() | atom(),
        "ReleaseSummaries" => list(release_summary())
      }
      
  """
  @type list_mobile_sdk_releases_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      field_to_protect() :: %{
        "FieldKeys" => list(String.t() | atom()),
        "FieldType" => list(any())
      }
      
  """
  @type field_to_protect() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_managed_rule_set_versions_response() :: %{
        "NextLockToken" => String.t() | atom()
      }
      
  """
  @type put_managed_rule_set_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      address_field() :: %{
        "Identifier" => String.t() | atom()
      }
      
  """
  @type address_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_api_key_response() :: %{}
      
  """
  @type delete_api_key_response() :: %{}

  @typedoc """

  ## Example:
      
      ip_set() :: %{
        "ARN" => String.t() | atom(),
        "Addresses" => list(String.t() | atom()),
        "Description" => String.t() | atom(),
        "IPAddressVersion" => list(any()),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type ip_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      json_match_pattern() :: %{
        "All" => all(),
        "IncludedPaths" => list(String.t() | atom())
      }
      
  """
  @type json_match_pattern() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_managed_rule_group_response() :: %{
        "AvailableLabels" => list(label_summary()),
        "Capacity" => float(),
        "ConsumedLabels" => list(label_summary()),
        "LabelNamespace" => String.t() | atom(),
        "Rules" => list(rule_summary()),
        "SnsTopicArn" => String.t() | atom(),
        "VersionName" => String.t() | atom()
      }
      
  """
  @type describe_managed_rule_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      phone_number_field() :: %{
        "Identifier" => String.t() | atom()
      }
      
  """
  @type phone_number_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      label_match_statement() :: %{
        "Key" => String.t() | atom(),
        "Scope" => list(any())
      }
      
  """
  @type label_match_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_web_acl_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type disassociate_web_acl_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      w_a_f_tag_operation_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type w_a_f_tag_operation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "NextMarker" => String.t() | atom(),
        "TagInfoForResource" => tag_info_for_resource()
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sampled_h_t_t_p_request() :: %{
        "Action" => String.t() | atom(),
        "CaptchaResponse" => captcha_response(),
        "ChallengeResponse" => challenge_response(),
        "Labels" => list(label()),
        "OverriddenAction" => String.t() | atom(),
        "Request" => h_t_t_p_request(),
        "RequestHeadersInserted" => list(h_t_t_p_header()),
        "ResponseCodeSent" => integer(),
        "RuleNameWithinRuleGroup" => String.t() | atom(),
        "Timestamp" => non_neg_integer(),
        "Weight" => float()
      }
      
  """
  @type sampled_h_t_t_p_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      j_a3_fingerprint() :: %{
        "FallbackBehavior" => list(any())
      }
      
  """
  @type j_a3_fingerprint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_web_acl_request() :: %{
        optional("AssociationConfig") => association_config(),
        optional("CaptchaConfig") => captcha_config(),
        optional("ChallengeConfig") => challenge_config(),
        optional("CustomResponseBodies") => map(),
        optional("DataProtectionConfig") => data_protection_config(),
        optional("Description") => String.t() | atom(),
        optional("OnSourceDDoSProtectionConfig") => on_source_d_do_s_protection_config(),
        optional("Rules") => list(rule()),
        optional("TokenDomains") => list(String.t() | atom()),
        required("DefaultAction") => default_action(),
        required("Id") => String.t() | atom(),
        required("LockToken") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Scope") => list(any()),
        required("VisibilityConfig") => visibility_config()
      }
      
  """
  @type update_web_acl_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_web_acl_for_resource_response() :: %{
        "WebACL" => web_acl()
      }
      
  """
  @type get_web_acl_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      email_field() :: %{
        "Identifier" => String.t() | atom()
      }
      
  """
  @type email_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      w_a_f_invalid_parameter_exception() :: %{
        "Field" => list(any()),
        "Parameter" => String.t() | atom(),
        "Reason" => String.t() | atom(),
        "message" => String.t() | atom()
      }
      
  """
  @type w_a_f_invalid_parameter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      uri_fragment() :: %{
        "FallbackBehavior" => list(any())
      }
      
  """
  @type uri_fragment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      json_body() :: %{
        "InvalidFallbackBehavior" => list(any()),
        "MatchPattern" => json_match_pattern(),
        "MatchScope" => list(any()),
        "OversizeHandling" => list(any())
      }
      
  """
  @type json_body() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      all() :: %{}
      
  """
  @type all() :: %{}

  @typedoc """

  ## Example:
      
      uri_path() :: %{}
      
  """
  @type uri_path() :: %{}

  @typedoc """

  ## Example:
      
      list_regex_pattern_sets_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type list_regex_pattern_sets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      condition() :: %{
        "ActionCondition" => action_condition(),
        "LabelNameCondition" => label_name_condition()
      }
      
  """
  @type condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      response_inspection_header() :: %{
        "FailureValues" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "SuccessValues" => list(String.t() | atom())
      }
      
  """
  @type response_inspection_header() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      check_capacity_response() :: %{
        "Capacity" => float()
      }
      
  """
  @type check_capacity_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      visibility_config() :: %{
        "CloudWatchMetricsEnabled" => boolean(),
        "MetricName" => String.t() | atom(),
        "SampledRequestsEnabled" => boolean()
      }
      
  """
  @type visibility_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_api_key_response() :: %{
        "APIKey" => String.t() | atom()
      }
      
  """
  @type create_api_key_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      challenge_response() :: %{
        "FailureReason" => list(any()),
        "ResponseCode" => integer(),
        "SolveTimestamp" => float()
      }
      
  """
  @type challenge_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ip_set_reference_statement() :: %{
        "ARN" => String.t() | atom(),
        "IPSetForwardedIPConfig" => ip_set_forwarded_ip_config()
      }
      
  """
  @type ip_set_reference_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Behavior" => list(any()),
        "Conditions" => list(condition()),
        "Requirement" => list(any())
      }
      
  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rate_limit_uri_path() :: %{
        "TextTransformations" => list(text_transformation())
      }
      
  """
  @type rate_limit_uri_path() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rule() :: %{
        "Action" => rule_action(),
        "CaptchaConfig" => captcha_config(),
        "ChallengeConfig" => challenge_config(),
        "Name" => String.t() | atom(),
        "OverrideAction" => override_action(),
        "Priority" => integer(),
        "RuleLabels" => list(label()),
        "Statement" => statement(),
        "VisibilityConfig" => visibility_config()
      }
      
  """
  @type rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_regex_pattern_set_response() :: %{}
      
  """
  @type delete_regex_pattern_set_response() :: %{}

  @typedoc """

  ## Example:
      
      list_managed_rule_sets_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type list_managed_rule_sets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_api_key_request() :: %{
        required("Scope") => list(any()),
        required("TokenDomains") => list(String.t() | atom())
      }
      
  """
  @type create_api_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_mobile_sdk_release_response() :: %{
        "MobileSdkRelease" => mobile_sdk_release()
      }
      
  """
  @type get_mobile_sdk_release_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_logging_configuration_request() :: %{
        optional("LogScope") => list(any()),
        optional("LogType") => list(any()),
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type get_logging_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_regex_pattern_set_response() :: %{
        "LockToken" => String.t() | atom(),
        "RegexPatternSet" => regex_pattern_set()
      }
      
  """
  @type get_regex_pattern_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      regex_pattern_set_summary() :: %{
        "ARN" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LockToken" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type regex_pattern_set_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_permission_policy_request() :: %{
        required("Policy") => String.t() | atom(),
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type put_permission_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rule_action() :: %{
        "Allow" => allow_action(),
        "Block" => block_action(),
        "Captcha" => captcha_action(),
        "Challenge" => challenge_action(),
        "Count" => count_action()
      }
      
  """
  @type rule_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_managed_rule_sets_response() :: %{
        "ManagedRuleSets" => list(managed_rule_set_summary()),
        "NextMarker" => String.t() | atom()
      }
      
  """
  @type list_managed_rule_sets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      xss_match_statement() :: %{
        "FieldToMatch" => field_to_match(),
        "TextTransformations" => list(text_transformation())
      }
      
  """
  @type xss_match_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      w_a_f_invalid_operation_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type w_a_f_invalid_operation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_managed_rule_set_versions_request() :: %{
        optional("RecommendedVersion") => String.t() | atom(),
        optional("VersionsToPublish") => map(),
        required("Id") => String.t() | atom(),
        required("LockToken") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type put_managed_rule_set_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rule_summary() :: %{
        "Action" => rule_action(),
        "Name" => String.t() | atom()
      }
      
  """
  @type rule_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_managed_rule_set_version_expiry_date_request() :: %{
        required("ExpiryTimestamp") => non_neg_integer(),
        required("Id") => String.t() | atom(),
        required("LockToken") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Scope") => list(any()),
        required("VersionToExpire") => String.t() | atom()
      }
      
  """
  @type update_managed_rule_set_version_expiry_date_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_rule_group_summary() :: %{
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "VendorName" => String.t() | atom(),
        "VersioningSupported" => boolean()
      }
      
  """
  @type managed_rule_group_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      forwarded_ip_config() :: %{
        "FallbackBehavior" => list(any()),
        "HeaderName" => String.t() | atom()
      }
      
  """
  @type forwarded_ip_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_logging_configurations_response() :: %{
        "LoggingConfigurations" => list(logging_configuration()),
        "NextMarker" => String.t() | atom()
      }
      
  """
  @type list_logging_configurations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      h_t_t_p_header() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type h_t_t_p_header() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_mobile_sdk_releases_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t() | atom(),
        required("Platform") => list(any())
      }
      
  """
  @type list_mobile_sdk_releases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      challenge_config() :: %{
        "ImmunityTimeProperty" => immunity_time_property()
      }
      
  """
  @type challenge_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      and_statement() :: %{
        "Statements" => list(statement())
      }
      
  """
  @type and_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      or_statement() :: %{
        "Statements" => list(statement())
      }
      
  """
  @type or_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_permission_policy_response() :: %{
        "Policy" => String.t() | atom()
      }
      
  """
  @type get_permission_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      excluded_rule() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type excluded_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      w_a_f_invalid_resource_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type w_a_f_invalid_resource_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_web_acl_request() :: %{
        optional("ApplicationConfig") => application_config(),
        optional("AssociationConfig") => association_config(),
        optional("CaptchaConfig") => captcha_config(),
        optional("ChallengeConfig") => challenge_config(),
        optional("CustomResponseBodies") => map(),
        optional("DataProtectionConfig") => data_protection_config(),
        optional("Description") => String.t() | atom(),
        optional("OnSourceDDoSProtectionConfig") => on_source_d_do_s_protection_config(),
        optional("Rules") => list(rule()),
        optional("Tags") => list(tag()),
        optional("TokenDomains") => list(String.t() | atom()),
        required("DefaultAction") => default_action(),
        required("Name") => String.t() | atom(),
        required("Scope") => list(any()),
        required("VisibilityConfig") => visibility_config()
      }
      
  """
  @type create_web_acl_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_ip_set_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("Addresses") => list(String.t() | atom()),
        required("IPAddressVersion") => list(any()),
        required("Name") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type create_ip_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_rule_group_request() :: %{
        optional("CustomResponseBodies") => map(),
        optional("Description") => String.t() | atom(),
        optional("Rules") => list(rule()),
        required("Id") => String.t() | atom(),
        required("LockToken") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Scope") => list(any()),
        required("VisibilityConfig") => visibility_config()
      }
      
  """
  @type update_rule_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_ip_set_response() :: %{
        "IPSet" => ip_set(),
        "LockToken" => String.t() | atom()
      }
      
  """
  @type get_ip_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_rule_group_response() :: %{}
      
  """
  @type delete_rule_group_response() :: %{}

  @typedoc """

  ## Example:
      
      text_transformation() :: %{
        "Priority" => integer(),
        "Type" => list(any())
      }
      
  """
  @type text_transformation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      h_t_t_p_request() :: %{
        "ClientIP" => String.t() | atom(),
        "Country" => String.t() | atom(),
        "HTTPVersion" => String.t() | atom(),
        "Headers" => list(h_t_t_p_header()),
        "Method" => String.t() | atom(),
        "URI" => String.t() | atom()
      }
      
  """
  @type h_t_t_p_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      asn_match_statement() :: %{
        "AsnList" => list(float()),
        "ForwardedIPConfig" => forwarded_ip_config()
      }
      
  """
  @type asn_match_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      regex_pattern_set() :: %{
        "ARN" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RegularExpressionList" => list(regex())
      }
      
  """
  @type regex_pattern_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_api_key_request() :: %{
        required("APIKey") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type delete_api_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      logging_filter() :: %{
        "DefaultBehavior" => list(any()),
        "Filters" => list(filter())
      }
      
  """
  @type logging_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      release_summary() :: %{
        "ReleaseVersion" => String.t() | atom(),
        "Timestamp" => non_neg_integer()
      }
      
  """
  @type release_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_available_managed_rule_group_versions_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Scope") => list(any()),
        required("VendorName") => String.t() | atom()
      }
      
  """
  @type list_available_managed_rule_group_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rule_group_summary() :: %{
        "ARN" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LockToken" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type rule_group_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_managed_products_by_vendor_request() :: %{
        required("Scope") => list(any()),
        required("VendorName") => String.t() | atom()
      }
      
  """
  @type describe_managed_products_by_vendor_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ip_set_summary() :: %{
        "ARN" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LockToken" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type ip_set_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_regex_pattern_set_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("Name") => String.t() | atom(),
        required("RegularExpressionList") => list(regex()),
        required("Scope") => list(any())
      }
      
  """
  @type create_regex_pattern_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      headers() :: %{
        "MatchPattern" => header_match_pattern(),
        "MatchScope" => list(any()),
        "OversizeHandling" => list(any())
      }
      
  """
  @type headers() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t() | atom(),
        required("ResourceARN") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      on_source_d_do_s_protection_config() :: %{
        "ALBLowReputationMode" => list(any())
      }
      
  """
  @type on_source_d_do_s_protection_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      firewall_manager_statement() :: %{
        "ManagedRuleGroupStatement" => managed_rule_group_statement(),
        "RuleGroupReferenceStatement" => rule_group_reference_statement()
      }
      
  """
  @type firewall_manager_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_permission_policy_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type delete_permission_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_api_keys_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type list_api_keys_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      body() :: %{
        "OversizeHandling" => list(any())
      }
      
  """
  @type body() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_permission_policy_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type get_permission_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      w_a_f_duplicate_item_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type w_a_f_duplicate_item_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_firewall_manager_rule_groups_response() :: %{
        "NextWebACLLockToken" => String.t() | atom()
      }
      
  """
  @type delete_firewall_manager_rule_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      label_name_condition() :: %{
        "LabelName" => String.t() | atom()
      }
      
  """
  @type label_name_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_resources_for_web_acl_response() :: %{
        "ResourceArns" => list(String.t() | atom())
      }
      
  """
  @type list_resources_for_web_acl_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_logging_configurations_request() :: %{
        optional("Limit") => integer(),
        optional("LogScope") => list(any()),
        optional("NextMarker") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type list_logging_configurations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      single_header() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type single_header() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_logging_configuration_response() :: %{}
      
  """
  @type delete_logging_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      get_managed_rule_set_request() :: %{
        required("Id") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type get_managed_rule_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      w_a_f_optimistic_lock_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type w_a_f_optimistic_lock_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_ip_set_request() :: %{
        required("Id") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type get_ip_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      geo_match_statement() :: %{
        "CountryCodes" => list(list(any())()),
        "ForwardedIPConfig" => forwarded_ip_config()
      }
      
  """
  @type geo_match_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      captcha_action() :: %{
        "CustomRequestHandling" => custom_request_handling()
      }
      
  """
  @type captcha_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_managed_rule_set_response() :: %{
        "LockToken" => String.t() | atom(),
        "ManagedRuleSet" => managed_rule_set()
      }
      
  """
  @type get_managed_rule_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_web_acl_response() :: %{}
      
  """
  @type disassociate_web_acl_response() :: %{}

  @typedoc """

  ## Example:
      
      put_logging_configuration_request() :: %{
        required("LoggingConfiguration") => logging_configuration()
      }
      
  """
  @type put_logging_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cookies() :: %{
        "MatchPattern" => cookie_match_pattern(),
        "MatchScope" => list(any()),
        "OversizeHandling" => list(any())
      }
      
  """
  @type cookies() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_permission_policy_response() :: %{}
      
  """
  @type put_permission_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      w_a_f_log_destination_permission_issue_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type w_a_f_log_destination_permission_issue_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rate_limit_header() :: %{
        "Name" => String.t() | atom(),
        "TextTransformations" => list(text_transformation())
      }
      
  """
  @type rate_limit_header() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      aws_managed_rules_bot_control_rule_set() :: %{
        "EnableMachineLearning" => boolean(),
        "InspectionLevel" => list(any())
      }
      
  """
  @type aws_managed_rules_bot_control_rule_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_logging_configuration_request() :: %{
        optional("LogScope") => list(any()),
        optional("LogType") => list(any()),
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type delete_logging_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      method() :: %{}
      
  """
  @type method() :: %{}

  @typedoc """

  ## Example:
      
      action_condition() :: %{
        "Action" => list(any())
      }
      
  """
  @type action_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_sampled_requests_response() :: %{
        "PopulationSize" => float(),
        "SampledRequests" => list(sampled_h_t_t_p_request()),
        "TimeWindow" => time_window()
      }
      
  """
  @type get_sampled_requests_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      managed_rule_group_config() :: %{
        "AWSManagedRulesACFPRuleSet" => aws_managed_rules_a_c_f_p_rule_set(),
        "AWSManagedRulesATPRuleSet" => aws_managed_rules_a_t_p_rule_set(),
        "AWSManagedRulesAntiDDoSRuleSet" => aws_managed_rules_anti_d_do_s_rule_set(),
        "AWSManagedRulesBotControlRuleSet" => aws_managed_rules_bot_control_rule_set(),
        "LoginPath" => String.t() | atom(),
        "PasswordField" => password_field(),
        "PayloadType" => list(any()),
        "UsernameField" => username_field()
      }
      
  """
  @type managed_rule_group_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_config() :: %{
        "Attributes" => list(application_attribute())
      }
      
  """
  @type application_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      w_a_f_configuration_warning_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type w_a_f_configuration_warning_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_regex_pattern_sets_response() :: %{
        "NextMarker" => String.t() | atom(),
        "RegexPatternSets" => list(regex_pattern_set_summary())
      }
      
  """
  @type list_regex_pattern_sets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_web_acls_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type list_web_acls_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      byte_match_statement() :: %{
        "FieldToMatch" => field_to_match(),
        "PositionalConstraint" => list(any()),
        "SearchString" => binary(),
        "TextTransformations" => list(text_transformation())
      }
      
  """
  @type byte_match_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_web_acls_response() :: %{
        "NextMarker" => String.t() | atom(),
        "WebACLs" => list(web_acl_summary())
      }
      
  """
  @type list_web_acls_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rate_limit_j_a4_fingerprint() :: %{
        "FallbackBehavior" => list(any())
      }
      
  """
  @type rate_limit_j_a4_fingerprint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_ip_set_response() :: %{
        "Summary" => ip_set_summary()
      }
      
  """
  @type create_ip_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      header_match_pattern() :: %{
        "All" => all(),
        "ExcludedHeaders" => list(String.t() | atom()),
        "IncludedHeaders" => list(String.t() | atom())
      }
      
  """
  @type header_match_pattern() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_regex_pattern_set_response() :: %{
        "NextLockToken" => String.t() | atom()
      }
      
  """
  @type update_regex_pattern_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      aws_managed_rules_a_t_p_rule_set() :: %{
        "EnableRegexInPath" => boolean(),
        "LoginPath" => String.t() | atom(),
        "RequestInspection" => request_inspection(),
        "ResponseInspection" => response_inspection()
      }
      
  """
  @type aws_managed_rules_a_t_p_rule_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      captcha_response() :: %{
        "FailureReason" => list(any()),
        "ResponseCode" => integer(),
        "SolveTimestamp" => float()
      }
      
  """
  @type captcha_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_web_acl_request() :: %{
        optional("ARN") => String.t() | atom(),
        optional("Id") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("Scope") => list(any())
      }
      
  """
  @type get_web_acl_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      override_action() :: %{
        "Count" => count_action(),
        "None" => none_action()
      }
      
  """
  @type override_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_decrypted_api_key_request() :: %{
        required("APIKey") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type get_decrypted_api_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_firewall_manager_rule_groups_request() :: %{
        required("WebACLArn") => String.t() | atom(),
        required("WebACLLockToken") => String.t() | atom()
      }
      
  """
  @type delete_firewall_manager_rule_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_managed_rule_group_request() :: %{
        optional("VersionName") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Scope") => list(any()),
        required("VendorName") => String.t() | atom()
      }
      
  """
  @type describe_managed_rule_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_web_acl_response() :: %{}
      
  """
  @type delete_web_acl_response() :: %{}

  @typedoc """

  ## Example:
      
      not_statement() :: %{
        "Statement" => statement()
      }
      
  """
  @type not_statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      w_a_f_subscription_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type w_a_f_subscription_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      custom_h_t_t_p_header() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type custom_h_t_t_p_header() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_rule_group_request() :: %{
        required("Id") => String.t() | atom(),
        required("LockToken") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type delete_rule_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      w_a_f_limits_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "SourceType" => String.t() | atom()
      }
      
  """
  @type w_a_f_limits_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      firewall_manager_rule_group() :: %{
        "FirewallManagerStatement" => firewall_manager_statement(),
        "Name" => String.t() | atom(),
        "OverrideAction" => override_action(),
        "Priority" => integer(),
        "VisibilityConfig" => visibility_config()
      }
      
  """
  @type firewall_manager_rule_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_web_acl_request() :: %{
        required("Id") => String.t() | atom(),
        required("LockToken") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type delete_web_acl_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ip_set_forwarded_ip_config() :: %{
        "FallbackBehavior" => list(any()),
        "HeaderName" => String.t() | atom(),
        "Position" => list(any())
      }
      
  """
  @type ip_set_forwarded_ip_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      regex() :: %{
        "RegexString" => String.t() | atom()
      }
      
  """
  @type regex() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      w_a_f_tag_operation_internal_error_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type w_a_f_tag_operation_internal_error_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      label_summary() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type label_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      web_acl_summary() :: %{
        "ARN" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LockToken" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type web_acl_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_rule_groups_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type list_rule_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      mobile_sdk_release() :: %{
        "ReleaseNotes" => String.t() | atom(),
        "ReleaseVersion" => String.t() | atom(),
        "Tags" => list(tag()),
        "Timestamp" => non_neg_integer()
      }
      
  """
  @type mobile_sdk_release() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      label() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type label() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_ip_set_response() :: %{}
      
  """
  @type delete_ip_set_response() :: %{}

  @typedoc """

  ## Example:
      
      immunity_time_property() :: %{
        "ImmunityTime" => float()
      }
      
  """
  @type immunity_time_property() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_available_managed_rule_groups_request() :: %{
        optional("Limit") => integer(),
        optional("NextMarker") => String.t() | atom(),
        required("Scope") => list(any())
      }
      
  """
  @type list_available_managed_rule_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_regex_pattern_set_response() :: %{
        "Summary" => regex_pattern_set_summary()
      }
      
  """
  @type create_regex_pattern_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      association_config() :: %{
        "RequestBody" => map()
      }
      
  """
  @type association_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      client_side_action_config() :: %{
        "Challenge" => client_side_action()
      }
      
  """
  @type client_side_action_config() :: %{(String.t() | atom()) => any()}

  @type associate_web_acl_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_unavailable_entity_exception()
          | w_a_f_nonexistent_item_exception()

  @type check_capacity_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_subscription_not_found_exception()
          | w_a_f_invalid_resource_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_unavailable_entity_exception()
          | w_a_f_nonexistent_item_exception()
          | w_a_f_expired_managed_rule_group_version_exception()

  @type create_api_key_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()

  @type create_ip_set_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_limits_exceeded_exception()
          | w_a_f_optimistic_lock_exception()
          | w_a_f_duplicate_item_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_internal_error_exception()

  @type create_regex_pattern_set_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_limits_exceeded_exception()
          | w_a_f_optimistic_lock_exception()
          | w_a_f_duplicate_item_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_internal_error_exception()

  @type create_rule_group_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_limits_exceeded_exception()
          | w_a_f_subscription_not_found_exception()
          | w_a_f_optimistic_lock_exception()
          | w_a_f_duplicate_item_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_unavailable_entity_exception()
          | w_a_f_nonexistent_item_exception()

  @type create_web_acl_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_limits_exceeded_exception()
          | w_a_f_subscription_not_found_exception()
          | w_a_f_configuration_warning_exception()
          | w_a_f_optimistic_lock_exception()
          | w_a_f_duplicate_item_exception()
          | w_a_f_invalid_resource_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_unavailable_entity_exception()
          | w_a_f_nonexistent_item_exception()
          | w_a_f_expired_managed_rule_group_version_exception()

  @type delete_api_key_errors() ::
          w_a_f_optimistic_lock_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_firewall_manager_rule_groups_errors() ::
          w_a_f_optimistic_lock_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_ip_set_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_optimistic_lock_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_associated_item_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_logging_configuration_errors() ::
          w_a_f_optimistic_lock_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_permission_policy_errors() ::
          w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_regex_pattern_set_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_optimistic_lock_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_associated_item_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_rule_group_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_optimistic_lock_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_associated_item_exception()
          | w_a_f_nonexistent_item_exception()

  @type delete_web_acl_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_optimistic_lock_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_associated_item_exception()
          | w_a_f_nonexistent_item_exception()

  @type describe_all_managed_products_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()

  @type describe_managed_products_by_vendor_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()

  @type describe_managed_rule_group_errors() ::
          w_a_f_invalid_resource_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()
          | w_a_f_expired_managed_rule_group_version_exception()

  @type disassociate_web_acl_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type generate_mobile_sdk_release_url_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_decrypted_api_key_errors() ::
          w_a_f_invalid_resource_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_ip_set_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_logging_configuration_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_managed_rule_set_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_mobile_sdk_release_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_permission_policy_errors() ::
          w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_rate_based_statement_managed_keys_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_unsupported_aggregate_key_type_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_regex_pattern_set_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_rule_group_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_sampled_requests_errors() ::
          w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_web_acl_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type get_web_acl_for_resource_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_unavailable_entity_exception()
          | w_a_f_nonexistent_item_exception()

  @type list_api_keys_errors() ::
          w_a_f_invalid_resource_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()

  @type list_available_managed_rule_group_versions_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type list_available_managed_rule_groups_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()

  @type list_ip_sets_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()

  @type list_logging_configurations_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()

  @type list_managed_rule_sets_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()

  @type list_mobile_sdk_releases_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()

  @type list_regex_pattern_sets_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()

  @type list_resources_for_web_acl_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type list_rule_groups_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()

  @type list_tags_for_resource_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type list_web_acls_errors() ::
          w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()

  @type put_logging_configuration_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_log_destination_permission_issue_exception()
          | w_a_f_optimistic_lock_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_service_linked_role_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type put_managed_rule_set_versions_errors() ::
          w_a_f_optimistic_lock_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type put_permission_policy_errors() ::
          w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_invalid_permission_policy_exception()
          | w_a_f_nonexistent_item_exception()

  @type tag_resource_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_limits_exceeded_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type untag_resource_errors() ::
          w_a_f_tag_operation_internal_error_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_tag_operation_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type update_ip_set_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_optimistic_lock_exception()
          | w_a_f_duplicate_item_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type update_managed_rule_set_version_expiry_date_errors() ::
          w_a_f_optimistic_lock_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type update_regex_pattern_set_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_optimistic_lock_exception()
          | w_a_f_duplicate_item_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_nonexistent_item_exception()

  @type update_rule_group_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_subscription_not_found_exception()
          | w_a_f_configuration_warning_exception()
          | w_a_f_optimistic_lock_exception()
          | w_a_f_duplicate_item_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_unavailable_entity_exception()
          | w_a_f_nonexistent_item_exception()

  @type update_web_acl_errors() ::
          w_a_f_limits_exceeded_exception()
          | w_a_f_subscription_not_found_exception()
          | w_a_f_configuration_warning_exception()
          | w_a_f_optimistic_lock_exception()
          | w_a_f_duplicate_item_exception()
          | w_a_f_invalid_resource_exception()
          | w_a_f_invalid_operation_exception()
          | w_a_f_invalid_parameter_exception()
          | w_a_f_internal_error_exception()
          | w_a_f_unavailable_entity_exception()
          | w_a_f_nonexistent_item_exception()
          | w_a_f_expired_managed_rule_group_version_exception()

  def metadata do
    %{
      api_version: "2019-07-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "wafv2",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "WAFV2",
      signature_version: "v4",
      signing_name: "wafv2",
      target_prefix: "AWSWAF_20190729"
    }
  end

  @doc """
  Associates a web ACL with a resource, to protect the resource.

  Use this for all resource types except for Amazon CloudFront distributions. For
  Amazon CloudFront, call `UpdateDistribution` for the distribution and provide
  the Amazon Resource Name (ARN) of the web ACL in the web ACL ID. For
  information, see
  [UpdateDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html) in the *Amazon CloudFront Developer Guide*.

  ## Required permissions for customer-managed IAM policies

  This call requires permissions that are specific to the protected resource type.
  For details, see [Permissions for
  AssociateWebACL](https://docs.aws.amazon.com/waf/latest/developerguide/security_iam_service-with-iam.html#security_iam_action-AssociateWebACL)
  in the *WAF Developer Guide*.

  ## Temporary inconsistencies during updates

  When you create or change a web ACL or other WAF resources, the changes take a
  small amount of time to propagate to all areas where the resources are stored.
  The propagation time can be from a few seconds to a number of minutes.

  The following are examples of the temporary inconsistencies that you might
  notice during change propagation:

    *
  After you create a web ACL, if you try to associate it with a resource, you
  might get an exception indicating that the web ACL is unavailable.

    *
  After you add a rule group to a web ACL, the new rule group rules might be in
  effect in one area where the web ACL is used and not in another.

    *
  After you change a rule action setting, you might see the old action in some
  places and the new action in others.

    *
  After you add an IP address to an IP set that is in use in a blocking rule, the
  new address might be blocked in one area while still allowed in another.
  """
  @spec associate_web_acl(map(), associate_web_acl_request(), list()) ::
          {:ok, associate_web_acl_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_web_acl_errors()}
  def associate_web_acl(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateWebACL", input, options)
  end

  @doc """
  Returns the web ACL capacity unit (WCU) requirements for a specified scope and
  set of rules.

  You can use this to check the capacity requirements for the rules you want to
  use in a
  `RuleGroup` or `WebACL`.

  WAF uses WCUs to calculate and control the operating
  resources that are used to run your rules, rule groups, and web ACLs. WAF
  calculates capacity differently for each rule type, to reflect the relative cost
  of each rule.
  Simple rules that cost little to run use fewer WCUs than more complex rules
  that use more processing power.
  Rule group capacity is fixed at creation, which helps users plan their
  web ACL WCU usage when they use a rule group. For more information, see [WAF web ACL capacity units
  (WCU)](https://docs.aws.amazon.com/waf/latest/developerguide/aws-waf-capacity-units.html)
  in the *WAF Developer Guide*.
  """
  @spec check_capacity(map(), check_capacity_request(), list()) ::
          {:ok, check_capacity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, check_capacity_errors()}
  def check_capacity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CheckCapacity", input, options)
  end

  @doc """
  Creates an API key that contains a set of token domains.

  API keys are required for the integration of the CAPTCHA API in your JavaScript
  client applications.
  The API lets you customize the placement and characteristics of the CAPTCHA
  puzzle for your end users.
  For more information about the CAPTCHA JavaScript integration, see [WAF client application
  integration](https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html)
  in the *WAF Developer Guide*.

  You can use a single key for up to 5 domains. After you generate a key, you can
  copy it for use in your JavaScript
  integration.
  """
  @spec create_api_key(map(), create_api_key_request(), list()) ::
          {:ok, create_api_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_api_key_errors()}
  def create_api_key(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAPIKey", input, options)
  end

  @doc """
  Creates an `IPSet`, which you use to identify web requests that
  originate from specific IP addresses or ranges of IP addresses.

  For example, if you're
  receiving a lot of requests from a ranges of IP addresses, you can configure WAF
  to
  block them using an IPSet that lists those IP addresses.
  """
  @spec create_ip_set(map(), create_ip_set_request(), list()) ::
          {:ok, create_ip_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_ip_set_errors()}
  def create_ip_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateIPSet", input, options)
  end

  @doc """
  Creates a `RegexPatternSet`, which you reference in a
  `RegexPatternSetReferenceStatement`, to have WAF inspect a web request
  component for the specified patterns.
  """
  @spec create_regex_pattern_set(map(), create_regex_pattern_set_request(), list()) ::
          {:ok, create_regex_pattern_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_regex_pattern_set_errors()}
  def create_regex_pattern_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRegexPatternSet", input, options)
  end

  @doc """
  Creates a `RuleGroup` per the specifications provided.

  A rule group defines a collection of rules to inspect and control web requests
  that you can use in a `WebACL`. When you create a rule group, you define an
  immutable capacity limit. If you update a rule group, you must stay within the
  capacity. This allows others to reuse the rule group with confidence in its
  capacity requirements.
  """
  @spec create_rule_group(map(), create_rule_group_request(), list()) ::
          {:ok, create_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_rule_group_errors()}
  def create_rule_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRuleGroup", input, options)
  end

  @doc """
  Creates a `WebACL` per the specifications provided.

  A web ACL defines a collection of rules to use to inspect and control web
  requests. Each rule has a statement that defines what to look for in web
  requests and an action that WAF applies to requests that match the statement. In
  the web ACL, you assign a default action to take (allow, block) for any request
  that does not match any of the rules. The rules in a web ACL can be a
  combination of the types `Rule`, `RuleGroup`, and managed rule group. You can
  associate a web ACL with one or more Amazon Web Services resources to protect.
  The resource types include Amazon CloudFront distribution, Amazon API Gateway
  REST API, Application Load Balancer, AppSync GraphQL API, Amazon Cognito user
  pool, App Runner service, Amplify application, and Amazon Web Services Verified
  Access instance.
  """
  @spec create_web_acl(map(), create_web_acl_request(), list()) ::
          {:ok, create_web_acl_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_web_acl_errors()}
  def create_web_acl(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWebACL", input, options)
  end

  @doc """
  Deletes the specified API key.

  After you delete a key, it can take up to 24 hours for WAF to disallow use of
  the key in all regions.
  """
  @spec delete_api_key(map(), delete_api_key_request(), list()) ::
          {:ok, delete_api_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_api_key_errors()}
  def delete_api_key(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAPIKey", input, options)
  end

  @doc """
  Deletes all rule groups that are managed by Firewall Manager from the specified
  `WebACL`.

  You can only use this if `ManagedByFirewallManager` and
  `RetrofittedByFirewallManager` are both false in the web ACL.
  """
  @spec delete_firewall_manager_rule_groups(
          map(),
          delete_firewall_manager_rule_groups_request(),
          list()
        ) ::
          {:ok, delete_firewall_manager_rule_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_firewall_manager_rule_groups_errors()}
  def delete_firewall_manager_rule_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFirewallManagerRuleGroups", input, options)
  end

  @doc """
  Deletes the specified `IPSet`.
  """
  @spec delete_ip_set(map(), delete_ip_set_request(), list()) ::
          {:ok, delete_ip_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_ip_set_errors()}
  def delete_ip_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIPSet", input, options)
  end

  @doc """
  Deletes the `LoggingConfiguration` from the specified web ACL.
  """
  @spec delete_logging_configuration(map(), delete_logging_configuration_request(), list()) ::
          {:ok, delete_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_logging_configuration_errors()}
  def delete_logging_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLoggingConfiguration", input, options)
  end

  @doc """
  Permanently deletes an IAM policy from the specified rule group.

  You must be the owner of the rule group to perform this operation.
  """
  @spec delete_permission_policy(map(), delete_permission_policy_request(), list()) ::
          {:ok, delete_permission_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_permission_policy_errors()}
  def delete_permission_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePermissionPolicy", input, options)
  end

  @doc """
  Deletes the specified `RegexPatternSet`.
  """
  @spec delete_regex_pattern_set(map(), delete_regex_pattern_set_request(), list()) ::
          {:ok, delete_regex_pattern_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_regex_pattern_set_errors()}
  def delete_regex_pattern_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRegexPatternSet", input, options)
  end

  @doc """
  Deletes the specified `RuleGroup`.
  """
  @spec delete_rule_group(map(), delete_rule_group_request(), list()) ::
          {:ok, delete_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_rule_group_errors()}
  def delete_rule_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRuleGroup", input, options)
  end

  @doc """
  Deletes the specified `WebACL`.

  You can only use this if `ManagedByFirewallManager` is false in the web ACL.

  Before deleting any web ACL, first disassociate it from all resources.

    
  To retrieve a list of the resources that are associated with a web ACL, use the
  following calls:

      
  For Amazon CloudFront distributions, use the CloudFront call
  `ListDistributionsByWebACLId`. For information, see
  [ListDistributionsByWebACLId](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ListDistributionsByWebACLId.html) in the *Amazon CloudFront API Reference*.

      
  For all other resources, call `ListResourcesForWebACL`.

    
  To disassociate a resource from a web ACL, use the following calls:

      
  For Amazon CloudFront distributions, provide an empty web ACL ID in the
  CloudFront call
  `UpdateDistribution`. For information, see
  [UpdateDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html)
  in the *Amazon CloudFront API Reference*.

      
  For all other resources, call `DisassociateWebACL`.
  """
  @spec delete_web_acl(map(), delete_web_acl_request(), list()) ::
          {:ok, delete_web_acl_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_web_acl_errors()}
  def delete_web_acl(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWebACL", input, options)
  end

  @doc """
  Provides high-level information for the Amazon Web Services Managed Rules rule
  groups and Amazon Web Services Marketplace managed rule groups.
  """
  @spec describe_all_managed_products(map(), describe_all_managed_products_request(), list()) ::
          {:ok, describe_all_managed_products_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_all_managed_products_errors()}
  def describe_all_managed_products(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAllManagedProducts", input, options)
  end

  @doc """
  Provides high-level information for the managed rule groups owned by a specific
  vendor.
  """
  @spec describe_managed_products_by_vendor(
          map(),
          describe_managed_products_by_vendor_request(),
          list()
        ) ::
          {:ok, describe_managed_products_by_vendor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_managed_products_by_vendor_errors()}
  def describe_managed_products_by_vendor(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeManagedProductsByVendor", input, options)
  end

  @doc """
  Provides high-level information for a managed rule group, including descriptions
  of the rules.
  """
  @spec describe_managed_rule_group(map(), describe_managed_rule_group_request(), list()) ::
          {:ok, describe_managed_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_managed_rule_group_errors()}
  def describe_managed_rule_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeManagedRuleGroup", input, options)
  end

  @doc """
  Disassociates the specified resource from its web ACL
  association, if it has one.

  Use this for all resource types except for Amazon CloudFront distributions. For
  Amazon CloudFront, call `UpdateDistribution` for the distribution and provide an
  empty web ACL ID. For information, see
  [UpdateDistribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html) in the *Amazon CloudFront API Reference*.

  ## Required permissions for customer-managed IAM policies

  This call requires permissions that are specific to the protected resource type.
  For details, see [Permissions for
  DisassociateWebACL](https://docs.aws.amazon.com/waf/latest/developerguide/security_iam_service-with-iam.html#security_iam_action-DisassociateWebACL)
  in the *WAF Developer Guide*.
  """
  @spec disassociate_web_acl(map(), disassociate_web_acl_request(), list()) ::
          {:ok, disassociate_web_acl_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_web_acl_errors()}
  def disassociate_web_acl(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateWebACL", input, options)
  end

  @doc """
  Generates a presigned download URL for the specified release of the mobile SDK.

  The mobile SDK is not generally available. Customers who have access to the
  mobile SDK can use it to establish and manage WAF tokens for use in HTTP(S)
  requests from a mobile device to WAF. For more information, see
  [WAF client application integration](https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html)
  in the *WAF Developer Guide*.
  """
  @spec generate_mobile_sdk_release_url(map(), generate_mobile_sdk_release_url_request(), list()) ::
          {:ok, generate_mobile_sdk_release_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, generate_mobile_sdk_release_url_errors()}
  def generate_mobile_sdk_release_url(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GenerateMobileSdkReleaseUrl", input, options)
  end

  @doc """
  Returns your API key in decrypted form.

  Use this to check the token domains that you have defined for the key.

  API keys are required for the integration of the CAPTCHA API in your JavaScript
  client applications.
  The API lets you customize the placement and characteristics of the CAPTCHA
  puzzle for your end users.
  For more information about the CAPTCHA JavaScript integration, see [WAF client application
  integration](https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html)
  in the *WAF Developer Guide*.
  """
  @spec get_decrypted_api_key(map(), get_decrypted_api_key_request(), list()) ::
          {:ok, get_decrypted_api_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_decrypted_api_key_errors()}
  def get_decrypted_api_key(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDecryptedAPIKey", input, options)
  end

  @doc """
  Retrieves the specified `IPSet`.
  """
  @spec get_ip_set(map(), get_ip_set_request(), list()) ::
          {:ok, get_ip_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ip_set_errors()}
  def get_ip_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIPSet", input, options)
  end

  @doc """
  Returns the `LoggingConfiguration` for the specified web ACL.
  """
  @spec get_logging_configuration(map(), get_logging_configuration_request(), list()) ::
          {:ok, get_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_logging_configuration_errors()}
  def get_logging_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetLoggingConfiguration", input, options)
  end

  @doc """
  Retrieves the specified managed rule set.

  This is intended for use only by vendors of managed rule sets. Vendors are
  Amazon Web Services and Amazon Web Services Marketplace sellers.

  Vendors, you can use the managed rule set APIs to provide controlled rollout of
  your versioned managed rule group offerings for your customers. The APIs are
  `ListManagedRuleSets`, `GetManagedRuleSet`, `PutManagedRuleSetVersions`, and
  `UpdateManagedRuleSetVersionExpiryDate`.
  """
  @spec get_managed_rule_set(map(), get_managed_rule_set_request(), list()) ::
          {:ok, get_managed_rule_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_managed_rule_set_errors()}
  def get_managed_rule_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetManagedRuleSet", input, options)
  end

  @doc """
  Retrieves information for the specified mobile SDK release, including release
  notes and
  tags.

  The mobile SDK is not generally available. Customers who have access to the
  mobile SDK can use it to establish and manage WAF tokens for use in HTTP(S)
  requests from a mobile device to WAF. For more information, see
  [WAF client application integration](https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html)
  in the *WAF Developer Guide*.
  """
  @spec get_mobile_sdk_release(map(), get_mobile_sdk_release_request(), list()) ::
          {:ok, get_mobile_sdk_release_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_mobile_sdk_release_errors()}
  def get_mobile_sdk_release(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMobileSdkRelease", input, options)
  end

  @doc """
  Returns the IAM policy that is attached to the specified rule group.

  You must be the owner of the rule group to perform this operation.
  """
  @spec get_permission_policy(map(), get_permission_policy_request(), list()) ::
          {:ok, get_permission_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_permission_policy_errors()}
  def get_permission_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPermissionPolicy", input, options)
  end

  @doc """
  Retrieves the IP addresses that are currently blocked by a rate-based rule
  instance.

  This
  is only available for rate-based rules that aggregate solely on the IP address
  or on the forwarded IP
  address.

  The maximum
  number of addresses that can be blocked for a single rate-based rule instance is
  10,000.
  If more than 10,000 addresses exceed the rate limit, those with the highest
  rates are
  blocked.

  For a rate-based rule that you've defined inside a rule group, provide the name
  of the
  rule group reference statement in your request, in addition to the rate-based
  rule name and
  the web ACL name.

  WAF monitors web requests and manages keys independently for each unique
  combination
  of web ACL, optional rule group, and rate-based rule. For example, if you define
  a
  rate-based rule inside a rule group, and then use the rule group in a web ACL,
  WAF
  monitors web requests and manages keys for that web ACL, rule group reference
  statement,
  and rate-based rule instance. If you use the same rule group in a second web
  ACL, WAF
  monitors web requests and manages keys for this second usage completely
  independent of your
  first.
  """
  @spec get_rate_based_statement_managed_keys(
          map(),
          get_rate_based_statement_managed_keys_request(),
          list()
        ) ::
          {:ok, get_rate_based_statement_managed_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_rate_based_statement_managed_keys_errors()}
  def get_rate_based_statement_managed_keys(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRateBasedStatementManagedKeys", input, options)
  end

  @doc """
  Retrieves the specified `RegexPatternSet`.
  """
  @spec get_regex_pattern_set(map(), get_regex_pattern_set_request(), list()) ::
          {:ok, get_regex_pattern_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_regex_pattern_set_errors()}
  def get_regex_pattern_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRegexPatternSet", input, options)
  end

  @doc """
  Retrieves the specified `RuleGroup`.
  """
  @spec get_rule_group(map(), get_rule_group_request(), list()) ::
          {:ok, get_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_rule_group_errors()}
  def get_rule_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRuleGroup", input, options)
  end

  @doc """
  Gets detailed information about a specified number of requests--a sample--that
  WAF
  randomly selects from among the first 5,000 requests that your Amazon Web
  Services resource received
  during a time range that you choose.

  You can specify a sample size of up to 500 requests,
  and you can specify any time range in the previous three hours.

  `GetSampledRequests` returns a time range, which is usually the time range that
  you specified. However, if your resource (such as a CloudFront distribution)
  received 5,000
  requests before the specified time range elapsed, `GetSampledRequests` returns
  an updated time range. This new time range indicates the actual period during
  which WAF
  selected the requests in the sample.
  """
  @spec get_sampled_requests(map(), get_sampled_requests_request(), list()) ::
          {:ok, get_sampled_requests_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sampled_requests_errors()}
  def get_sampled_requests(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSampledRequests", input, options)
  end

  @doc """
  Retrieves the specified `WebACL`.
  """
  @spec get_web_acl(map(), get_web_acl_request(), list()) ::
          {:ok, get_web_acl_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_web_acl_errors()}
  def get_web_acl(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetWebACL", input, options)
  end

  @doc """
  Retrieves the `WebACL` for the specified resource.

  This call uses `GetWebACL`, to verify that your account has permission to access
  the retrieved web ACL.
  If you get an error that indicates that your account isn't authorized to perform
  `wafv2:GetWebACL` on the resource,
  that error won't be included in your CloudTrail event history.

  For Amazon CloudFront, don't use this call. Instead, call the CloudFront action
  `GetDistributionConfig`. For information, see
  [GetDistributionConfig](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistributionConfig.html) in the *Amazon CloudFront API Reference*.

  ## Required permissions for customer-managed IAM policies

  This call requires permissions that are specific to the protected resource type.
  For details, see [Permissions for
  GetWebACLForResource](https://docs.aws.amazon.com/waf/latest/developerguide/security_iam_service-with-iam.html#security_iam_action-GetWebACLForResource)
  in the *WAF Developer Guide*.
  """
  @spec get_web_acl_for_resource(map(), get_web_acl_for_resource_request(), list()) ::
          {:ok, get_web_acl_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_web_acl_for_resource_errors()}
  def get_web_acl_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetWebACLForResource", input, options)
  end

  @doc """
  Retrieves a list of the API keys that you've defined for the specified scope.

  API keys are required for the integration of the CAPTCHA API in your JavaScript
  client applications.
  The API lets you customize the placement and characteristics of the CAPTCHA
  puzzle for your end users.
  For more information about the CAPTCHA JavaScript integration, see [WAF client application
  integration](https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html)
  in the *WAF Developer Guide*.
  """
  @spec list_api_keys(map(), list_api_keys_request(), list()) ::
          {:ok, list_api_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_api_keys_errors()}
  def list_api_keys(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAPIKeys", input, options)
  end

  @doc """
  Returns a list of the available versions for the specified managed rule group.
  """
  @spec list_available_managed_rule_group_versions(
          map(),
          list_available_managed_rule_group_versions_request(),
          list()
        ) ::
          {:ok, list_available_managed_rule_group_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_available_managed_rule_group_versions_errors()}
  def list_available_managed_rule_group_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAvailableManagedRuleGroupVersions", input, options)
  end

  @doc """
  Retrieves an array of managed rule groups that are available for you to use.

  This list
  includes all Amazon Web Services Managed Rules rule groups and all of the Amazon
  Web Services Marketplace managed rule groups that you're
  subscribed to.
  """
  @spec list_available_managed_rule_groups(
          map(),
          list_available_managed_rule_groups_request(),
          list()
        ) ::
          {:ok, list_available_managed_rule_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_available_managed_rule_groups_errors()}
  def list_available_managed_rule_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAvailableManagedRuleGroups", input, options)
  end

  @doc """
  Retrieves an array of `IPSetSummary` objects for the IP sets that you
  manage.
  """
  @spec list_ip_sets(map(), list_ip_sets_request(), list()) ::
          {:ok, list_ip_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_ip_sets_errors()}
  def list_ip_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListIPSets", input, options)
  end

  @doc """
  Retrieves an array of your `LoggingConfiguration` objects.
  """
  @spec list_logging_configurations(map(), list_logging_configurations_request(), list()) ::
          {:ok, list_logging_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_logging_configurations_errors()}
  def list_logging_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLoggingConfigurations", input, options)
  end

  @doc """
  Retrieves the managed rule sets that you own.

  This is intended for use only by vendors of managed rule sets. Vendors are
  Amazon Web Services and Amazon Web Services Marketplace sellers.

  Vendors, you can use the managed rule set APIs to provide controlled rollout of
  your versioned managed rule group offerings for your customers. The APIs are
  `ListManagedRuleSets`, `GetManagedRuleSet`, `PutManagedRuleSetVersions`, and
  `UpdateManagedRuleSetVersionExpiryDate`.
  """
  @spec list_managed_rule_sets(map(), list_managed_rule_sets_request(), list()) ::
          {:ok, list_managed_rule_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_managed_rule_sets_errors()}
  def list_managed_rule_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListManagedRuleSets", input, options)
  end

  @doc """
  Retrieves a list of the available releases for the mobile SDK and the specified
  device
  platform.

  The mobile SDK is not generally available. Customers who have access to the
  mobile SDK can use it to establish and manage WAF tokens for use in HTTP(S)
  requests from a mobile device to WAF. For more information, see
  [WAF client application integration](https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html)
  in the *WAF Developer Guide*.
  """
  @spec list_mobile_sdk_releases(map(), list_mobile_sdk_releases_request(), list()) ::
          {:ok, list_mobile_sdk_releases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_mobile_sdk_releases_errors()}
  def list_mobile_sdk_releases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListMobileSdkReleases", input, options)
  end

  @doc """
  Retrieves an array of `RegexPatternSetSummary` objects for the regex
  pattern sets that you manage.
  """
  @spec list_regex_pattern_sets(map(), list_regex_pattern_sets_request(), list()) ::
          {:ok, list_regex_pattern_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_regex_pattern_sets_errors()}
  def list_regex_pattern_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRegexPatternSets", input, options)
  end

  @doc """
  Retrieves an array of the Amazon Resource Names (ARNs) for the resources that
  are associated with the specified web ACL.

  For Amazon CloudFront, don't use this call. Instead, use the CloudFront call
  `ListDistributionsByWebACLId`. For information, see
  [ListDistributionsByWebACLId](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ListDistributionsByWebACLId.html) in the *Amazon CloudFront API Reference*.

  ## Required permissions for customer-managed IAM policies

  This call requires permissions that are specific to the protected resource type.
  For details, see [Permissions for
  ListResourcesForWebACL](https://docs.aws.amazon.com/waf/latest/developerguide/security_iam_service-with-iam.html#security_iam_action-ListResourcesForWebACL)
  in the *WAF Developer Guide*.
  """
  @spec list_resources_for_web_acl(map(), list_resources_for_web_acl_request(), list()) ::
          {:ok, list_resources_for_web_acl_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resources_for_web_acl_errors()}
  def list_resources_for_web_acl(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourcesForWebACL", input, options)
  end

  @doc """
  Retrieves an array of `RuleGroupSummary` objects for the rule groups
  that you manage.
  """
  @spec list_rule_groups(map(), list_rule_groups_request(), list()) ::
          {:ok, list_rule_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_rule_groups_errors()}
  def list_rule_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRuleGroups", input, options)
  end

  @doc """
  Retrieves the `TagInfoForResource` for the specified resource.

  Tags are
  key:value pairs that you can use to categorize and manage your resources, for
  purposes like
  billing. For example, you might set the tag key to "customer" and the value to
  the customer
  name or ID. You can specify one or more tags to add to each Amazon Web Services
  resource, up to 50 tags
  for a resource.

  You can tag the Amazon Web Services resources that you manage through WAF: web
  ACLs, rule
  groups, IP sets, and regex pattern sets. You can't manage or view tags through
  the WAF
  console.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Retrieves an array of `WebACLSummary` objects for the web ACLs that you
  manage.
  """
  @spec list_web_acls(map(), list_web_acls_request(), list()) ::
          {:ok, list_web_acls_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_web_acls_errors()}
  def list_web_acls(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWebACLs", input, options)
  end

  @doc """
  Enables the specified `LoggingConfiguration`, to start logging from a
  web ACL, according to the configuration provided.

  If you configure data protection for the web ACL, the protection applies to the
  data that WAF sends to the logs.

  This operation completely replaces any mutable specifications that you already
  have for a logging configuration with the ones that you provide to this call.

  To modify an existing logging configuration, do the following:

    
  Retrieve it by calling `GetLoggingConfiguration`

    
  Update its settings as needed

    
  Provide the complete logging configuration specification to this call

  You can define one logging destination per web ACL.

  You can access information about the traffic that WAF inspects using the
  following
  steps:

    1.
  Create your logging destination. You can use an Amazon CloudWatch Logs log
  group, an Amazon Simple Storage Service (Amazon S3) bucket, or an Amazon Kinesis
  Data Firehose.

  The name that you give the destination must start with `aws-waf-logs-`.
  Depending on the type of destination, you might need to configure additional
  settings or permissions.

  For configuration requirements and pricing information for each destination
  type, see
  [Logging web ACL traffic](https://docs.aws.amazon.com/waf/latest/developerguide/logging.html)
  in the *WAF Developer Guide*.

    2.
  Associate your logging destination to your web ACL using a
  `PutLoggingConfiguration` request.

  When you successfully enable logging using a `PutLoggingConfiguration`
  request, WAF creates an additional role or policy that is required to write
  logs to the logging destination. For an Amazon CloudWatch Logs log group, WAF
  creates a resource policy on the log group.
  For an Amazon S3 bucket, WAF creates a bucket policy. For an Amazon Kinesis Data
  Firehose, WAF creates a service-linked role.

  For additional information about web ACL logging, see
  [Logging web ACL traffic information](https://docs.aws.amazon.com/waf/latest/developerguide/logging.html)
  in the *WAF Developer Guide*.
  """
  @spec put_logging_configuration(map(), put_logging_configuration_request(), list()) ::
          {:ok, put_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_logging_configuration_errors()}
  def put_logging_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutLoggingConfiguration", input, options)
  end

  @doc """
  Defines the versions of your managed rule set that you are offering to the
  customers.

  Customers see your offerings as managed rule groups with versioning.

  This is intended for use only by vendors of managed rule sets. Vendors are
  Amazon Web Services and Amazon Web Services Marketplace sellers.

  Vendors, you can use the managed rule set APIs to provide controlled rollout of
  your versioned managed rule group offerings for your customers. The APIs are
  `ListManagedRuleSets`, `GetManagedRuleSet`, `PutManagedRuleSetVersions`, and
  `UpdateManagedRuleSetVersionExpiryDate`.

  Customers retrieve their managed rule group list by calling
  `ListAvailableManagedRuleGroups`. The name that you provide here for your
  managed rule set is the name the customer sees for the corresponding managed
  rule group.
  Customers can retrieve the available versions for a managed rule group by
  calling `ListAvailableManagedRuleGroupVersions`. You provide a rule group
  specification for each version. For each managed rule set, you must specify a
  version that
  you recommend using.

  To initiate the expiration of a managed rule group version, use
  `UpdateManagedRuleSetVersionExpiryDate`.
  """
  @spec put_managed_rule_set_versions(map(), put_managed_rule_set_versions_request(), list()) ::
          {:ok, put_managed_rule_set_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_managed_rule_set_versions_errors()}
  def put_managed_rule_set_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutManagedRuleSetVersions", input, options)
  end

  @doc """
  Use this to share a rule group with other accounts.

  This action attaches an IAM policy to the specified resource. You must be the
  owner of the rule group to perform this operation.

  This action is subject to the following restrictions:

    *
  You can attach only one policy with each `PutPermissionPolicy`
  request.

    *
  The ARN in the request must be a valid WAF `RuleGroup` ARN and the
  rule group must exist in the same Region.

    *
  The user making the request must be the owner of the rule group.

  If a rule group has been shared with your account, you can access it through the
  call `GetRuleGroup`,
  and you can reference it in `CreateWebACL` and `UpdateWebACL`.
  Rule groups that are shared with you don't appear in your WAF console rule
  groups listing.
  """
  @spec put_permission_policy(map(), put_permission_policy_request(), list()) ::
          {:ok, put_permission_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_permission_policy_errors()}
  def put_permission_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutPermissionPolicy", input, options)
  end

  @doc """
  Associates tags with the specified Amazon Web Services resource.

  Tags are key:value pairs that you can
  use to categorize and manage your resources, for purposes like billing. For
  example, you
  might set the tag key to "customer" and the value to the customer name or ID.
  You can
  specify one or more tags to add to each Amazon Web Services resource, up to 50
  tags for a
  resource.

  You can tag the Amazon Web Services resources that you manage through WAF: web
  ACLs, rule
  groups, IP sets, and regex pattern sets. You can't manage or view tags through
  the WAF
  console.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Disassociates tags from an Amazon Web Services resource.

  Tags are key:value pairs that you can
  associate with Amazon Web Services resources. For example, the tag key might be
  "customer" and the tag
  value might be "companyA." You can specify one or more tags to add to each
  container. You
  can add up to 50 tags to each Amazon Web Services resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates the specified `IPSet`.

  This operation completely replaces the mutable specifications that you already
  have for the IP set with the ones that you provide to this call.

  To modify an IP set, do the following:

    
  Retrieve it by calling `GetIPSet`

    
  Update its settings as needed

    
  Provide the complete IP set specification to this call

  ## Temporary inconsistencies during updates

  When you create or change a web ACL or other WAF resources, the changes take a
  small amount of time to propagate to all areas where the resources are stored.
  The propagation time can be from a few seconds to a number of minutes.

  The following are examples of the temporary inconsistencies that you might
  notice during change propagation:

    *
  After you create a web ACL, if you try to associate it with a resource, you
  might get an exception indicating that the web ACL is unavailable.

    *
  After you add a rule group to a web ACL, the new rule group rules might be in
  effect in one area where the web ACL is used and not in another.

    *
  After you change a rule action setting, you might see the old action in some
  places and the new action in others.

    *
  After you add an IP address to an IP set that is in use in a blocking rule, the
  new address might be blocked in one area while still allowed in another.
  """
  @spec update_ip_set(map(), update_ip_set_request(), list()) ::
          {:ok, update_ip_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_ip_set_errors()}
  def update_ip_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateIPSet", input, options)
  end

  @doc """
  Updates the expiration information for your managed rule set.

  Use this to initiate the
  expiration of a managed rule group version. After you initiate expiration for a
  version,
  WAF excludes it from the response to `ListAvailableManagedRuleGroupVersions` for
  the managed rule group.

  This is intended for use only by vendors of managed rule sets. Vendors are
  Amazon Web Services and Amazon Web Services Marketplace sellers.

  Vendors, you can use the managed rule set APIs to provide controlled rollout of
  your versioned managed rule group offerings for your customers. The APIs are
  `ListManagedRuleSets`, `GetManagedRuleSet`, `PutManagedRuleSetVersions`, and
  `UpdateManagedRuleSetVersionExpiryDate`.
  """
  @spec update_managed_rule_set_version_expiry_date(
          map(),
          update_managed_rule_set_version_expiry_date_request(),
          list()
        ) ::
          {:ok, update_managed_rule_set_version_expiry_date_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_managed_rule_set_version_expiry_date_errors()}
  def update_managed_rule_set_version_expiry_date(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateManagedRuleSetVersionExpiryDate", input, options)
  end

  @doc """
  Updates the specified `RegexPatternSet`.

  This operation completely replaces the mutable specifications that you already
  have for the regex pattern set with the ones that you provide to this call.

  To modify a regex pattern set, do the following:

    
  Retrieve it by calling `GetRegexPatternSet`

    
  Update its settings as needed

    
  Provide the complete regex pattern set specification to this call

  ## Temporary inconsistencies during updates

  When you create or change a web ACL or other WAF resources, the changes take a
  small amount of time to propagate to all areas where the resources are stored.
  The propagation time can be from a few seconds to a number of minutes.

  The following are examples of the temporary inconsistencies that you might
  notice during change propagation:

    *
  After you create a web ACL, if you try to associate it with a resource, you
  might get an exception indicating that the web ACL is unavailable.

    *
  After you add a rule group to a web ACL, the new rule group rules might be in
  effect in one area where the web ACL is used and not in another.

    *
  After you change a rule action setting, you might see the old action in some
  places and the new action in others.

    *
  After you add an IP address to an IP set that is in use in a blocking rule, the
  new address might be blocked in one area while still allowed in another.
  """
  @spec update_regex_pattern_set(map(), update_regex_pattern_set_request(), list()) ::
          {:ok, update_regex_pattern_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_regex_pattern_set_errors()}
  def update_regex_pattern_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRegexPatternSet", input, options)
  end

  @doc """
  Updates the specified `RuleGroup`.

  This operation completely replaces the mutable specifications that you already
  have for the rule group with the ones that you provide to this call.

  To modify a rule group, do the following:

    
  Retrieve it by calling `GetRuleGroup`

    
  Update its settings as needed

    
  Provide the complete rule group specification to this call

  A rule group defines a collection of rules to inspect and control web requests
  that you can use in a `WebACL`. When you create a rule group, you define an
  immutable capacity limit. If you update a rule group, you must stay within the
  capacity. This allows others to reuse the rule group with confidence in its
  capacity requirements.

  ## Temporary inconsistencies during updates

  When you create or change a web ACL or other WAF resources, the changes take a
  small amount of time to propagate to all areas where the resources are stored.
  The propagation time can be from a few seconds to a number of minutes.

  The following are examples of the temporary inconsistencies that you might
  notice during change propagation:

    *
  After you create a web ACL, if you try to associate it with a resource, you
  might get an exception indicating that the web ACL is unavailable.

    *
  After you add a rule group to a web ACL, the new rule group rules might be in
  effect in one area where the web ACL is used and not in another.

    *
  After you change a rule action setting, you might see the old action in some
  places and the new action in others.

    *
  After you add an IP address to an IP set that is in use in a blocking rule, the
  new address might be blocked in one area while still allowed in another.
  """
  @spec update_rule_group(map(), update_rule_group_request(), list()) ::
          {:ok, update_rule_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_rule_group_errors()}
  def update_rule_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRuleGroup", input, options)
  end

  @doc """
  Updates the specified `WebACL`.

  While updating a web ACL, WAF provides
  continuous coverage to the resources that you have associated with the web ACL.

  This operation completely replaces the mutable specifications that you already
  have for the web ACL with the ones that you provide to this call.

  To modify a web ACL, do the following:

    
  Retrieve it by calling `GetWebACL`

    
  Update its settings as needed

    
  Provide the complete web ACL specification to this call

  A web ACL defines a collection of rules to use to inspect and control web
  requests. Each rule has a statement that defines what to look for in web
  requests and an action that WAF applies to requests that match the statement. In
  the web ACL, you assign a default action to take (allow, block) for any request
  that does not match any of the rules. The rules in a web ACL can be a
  combination of the types `Rule`, `RuleGroup`, and managed rule group. You can
  associate a web ACL with one or more Amazon Web Services resources to protect.
  The resource types include Amazon CloudFront distribution, Amazon API Gateway
  REST API, Application Load Balancer, AppSync GraphQL API, Amazon Cognito user
  pool, App Runner service, Amplify application, and Amazon Web Services Verified
  Access instance.

  ## Temporary inconsistencies during updates

  When you create or change a web ACL or other WAF resources, the changes take a
  small amount of time to propagate to all areas where the resources are stored.
  The propagation time can be from a few seconds to a number of minutes.

  The following are examples of the temporary inconsistencies that you might
  notice during change propagation:

    *
  After you create a web ACL, if you try to associate it with a resource, you
  might get an exception indicating that the web ACL is unavailable.

    *
  After you add a rule group to a web ACL, the new rule group rules might be in
  effect in one area where the web ACL is used and not in another.

    *
  After you change a rule action setting, you might see the old action in some
  places and the new action in others.

    *
  After you add an IP address to an IP set that is in use in a blocking rule, the
  new address might be blocked in one area while still allowed in another.
  """
  @spec update_web_acl(map(), update_web_acl_request(), list()) ::
          {:ok, update_web_acl_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_web_acl_errors()}
  def update_web_acl(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWebACL", input, options)
  end
end
