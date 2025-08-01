# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MailManager do
  @moduledoc """
  Amazon SES Mail Manager API

  The Amazon SES Mail Manager API contains operations and data types that comprise
  the Mail Manager feature of [Amazon Simple Email Service (SES)](http://aws.amazon.com/ses).

  Mail Manager is a set of Amazon SES email gateway features designed to help you
  strengthen your organization's email infrastructure, simplify email workflow
  management, and streamline email compliance control. To learn more, see the
  [Mail Manager chapter](https://docs.aws.amazon.com/ses/latest/dg/eb.html) in the
  *Amazon SES Developer Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      create_addon_instance_response() :: %{
        "AddonInstanceId" => String.t() | Atom.t()
      }
      
  """
  @type create_addon_instance_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      import_data_format() :: %{
        "ImportDataType" => list(any())
      }
      
  """
  @type import_data_format() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_traffic_policies_request() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_traffic_policies_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_analysis() :: %{
        "Analyzer" => String.t() | Atom.t(),
        "ResultField" => String.t() | Atom.t()
      }
      
  """
  @type ingress_analysis() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_message_content_response() :: %{
        "Body" => message_body()
      }
      
  """
  @type get_archive_message_content_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_point_password_configuration() :: %{
        "PreviousSmtpPasswordExpiryTimestamp" => [non_neg_integer()],
        "PreviousSmtpPasswordVersion" => [String.t() | Atom.t()],
        "SmtpPasswordVersion" => [String.t() | Atom.t()]
      }
      
  """
  @type ingress_point_password_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_address_list_import_job_response() :: %{
        "AddressListId" => String.t() | Atom.t(),
        "CompletedTimestamp" => [non_neg_integer()],
        "CreatedTimestamp" => [non_neg_integer()],
        "Error" => String.t() | Atom.t(),
        "FailedItemsCount" => integer(),
        "ImportDataFormat" => import_data_format(),
        "ImportedItemsCount" => integer(),
        "JobId" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "PreSignedUrl" => String.t() | Atom.t(),
        "StartTimestamp" => [non_neg_integer()],
        "Status" => list(any())
      }
      
  """
  @type get_address_list_import_job_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_address_list_import_job_response() :: %{}
      
  """
  @type start_address_list_import_job_response() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t() | Atom.t(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_message_response() :: %{
        "Envelope" => envelope(),
        "MessageDownloadLink" => String.t() | Atom.t(),
        "Metadata" => metadata()
      }
      
  """
  @type get_archive_message_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_relay_response() :: %{}
      
  """
  @type update_relay_response() :: %{}

  @typedoc """

  ## Example:
      
      rule_dmarc_expression() :: %{
        "Operator" => list(any()),
        "Values" => list(list(any())())
      }
      
  """
  @type rule_dmarc_expression() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      drop_action() :: %{}
      
  """
  @type drop_action() :: %{}

  @typedoc """

  ## Example:
      
      update_rule_set_request() :: %{
        optional("RuleSetName") => String.t() | Atom.t(),
        optional("Rules") => list(rule()),
        required("RuleSetId") => String.t() | Atom.t()
      }
      
  """
  @type update_rule_set_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      addon_instance() :: %{
        "AddonInstanceArn" => String.t() | Atom.t(),
        "AddonInstanceId" => String.t() | Atom.t(),
        "AddonName" => String.t() | Atom.t(),
        "AddonSubscriptionId" => String.t() | Atom.t(),
        "CreatedTimestamp" => [non_neg_integer()]
      }
      
  """
  @type addon_instance() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_search_results_response() :: %{
        "Rows" => list(row())
      }
      
  """
  @type get_archive_search_results_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_archives_response() :: %{
        "Archives" => list(archive()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_archives_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      stop_archive_search_response() :: %{}
      
  """
  @type stop_archive_search_response() :: %{}

  @typedoc """

  ## Example:
      
      list_ingress_points_request() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_ingress_points_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_traffic_policy_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("MaxMessageSizeBytes") => integer(),
        optional("Tags") => list(tag()),
        required("DefaultAction") => list(any()),
        required("PolicyStatements") => list(policy_statement()),
        required("TrafficPolicyName") => String.t() | Atom.t()
      }
      
  """
  @type create_traffic_policy_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_address_lists_request() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_address_lists_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_addon_instance_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("Tags") => list(tag()),
        required("AddonSubscriptionId") => String.t() | Atom.t()
      }
      
  """
  @type create_addon_instance_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_ingress_point_request() :: %{
        optional("IngressPointConfiguration") => list(),
        optional("IngressPointName") => String.t() | Atom.t(),
        optional("RuleSetId") => String.t() | Atom.t(),
        optional("StatusToUpdate") => list(any()),
        optional("TrafficPolicyId") => String.t() | Atom.t(),
        required("IngressPointId") => String.t() | Atom.t()
      }
      
  """
  @type update_ingress_point_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      relay_action() :: %{
        "ActionFailurePolicy" => list(any()),
        "MailFrom" => list(any()),
        "Relay" => String.t() | Atom.t()
      }
      
  """
  @type relay_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_address_list_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("Tags") => list(tag()),
        required("AddressListName") => String.t() | Atom.t()
      }
      
  """
  @type create_address_list_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      rule_number_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any()),
        "Value" => [float()]
      }
      
  """
  @type rule_number_expression() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      export_status() :: %{
        "CompletionTimestamp" => [non_neg_integer()],
        "ErrorMessage" => String.t() | Atom.t(),
        "State" => list(any()),
        "SubmissionTimestamp" => [non_neg_integer()]
      }
      
  """
  @type export_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_address_list_response() :: %{}
      
  """
  @type delete_address_list_response() :: %{}

  @typedoc """

  ## Example:
      
      get_archive_search_response() :: %{
        "ArchiveId" => String.t() | Atom.t(),
        "Filters" => archive_filters(),
        "FromTimestamp" => [non_neg_integer()],
        "MaxResults" => integer(),
        "Status" => search_status(),
        "ToTimestamp" => [non_neg_integer()]
      }
      
  """
  @type get_archive_search_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_members_of_address_list_request() :: %{
        optional("Filter") => address_filter(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("PageSize") => integer(),
        required("AddressListId") => String.t() | Atom.t()
      }
      
  """
  @type list_members_of_address_list_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_relay_response() :: %{
        "Authentication" => list(),
        "CreatedTimestamp" => [non_neg_integer()],
        "LastModifiedTimestamp" => [non_neg_integer()],
        "RelayArn" => String.t() | Atom.t(),
        "RelayId" => String.t() | Atom.t(),
        "RelayName" => String.t() | Atom.t(),
        "ServerName" => String.t() | Atom.t(),
        "ServerPort" => integer()
      }
      
  """
  @type get_relay_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      s3_action() :: %{
        "ActionFailurePolicy" => list(any()),
        "RoleArn" => String.t() | Atom.t(),
        "S3Bucket" => String.t() | Atom.t(),
        "S3Prefix" => String.t() | Atom.t(),
        "S3SseKmsKeyId" => String.t() | Atom.t()
      }
      
  """
  @type s3_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      stop_address_list_import_job_request() :: %{
        required("JobId") => String.t() | Atom.t()
      }
      
  """
  @type stop_address_list_import_job_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_addon_subscriptions_response() :: %{
        "AddonSubscriptions" => list(addon_subscription()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_addon_subscriptions_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_addon_instance_request() :: %{
        required("AddonInstanceId") => String.t() | Atom.t()
      }
      
  """
  @type delete_addon_instance_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_traffic_policy_response() :: %{}
      
  """
  @type update_traffic_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      rule_ip_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any()),
        "Values" => list(String.t() | Atom.t())
      }
      
  """
  @type rule_ip_expression() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_archive_export_request() :: %{
        optional("Filters") => archive_filters(),
        optional("IncludeMetadata") => [boolean()],
        optional("MaxResults") => integer(),
        required("ArchiveId") => String.t() | Atom.t(),
        required("ExportDestinationConfiguration") => list(),
        required("FromTimestamp") => [non_neg_integer()],
        required("ToTimestamp") => [non_neg_integer()]
      }
      
  """
  @type start_archive_export_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      relay() :: %{
        "LastModifiedTimestamp" => [non_neg_integer()],
        "RelayId" => String.t() | Atom.t(),
        "RelayName" => String.t() | Atom.t()
      }
      
  """
  @type relay() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_addon_instances_response() :: %{
        "AddonInstances" => list(addon_instance()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_addon_instances_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      metadata() :: %{
        "ConfigurationSet" => [String.t() | Atom.t()],
        "IngressPointId" => String.t() | Atom.t(),
        "RuleSetId" => String.t() | Atom.t(),
        "SenderHostname" => [String.t() | Atom.t()],
        "SenderIpAddress" => String.t() | Atom.t(),
        "SendingMethod" => [String.t() | Atom.t()],
        "SendingPool" => [String.t() | Atom.t()],
        "SourceArn" => [String.t() | Atom.t()],
        "SourceIdentity" => [String.t() | Atom.t()],
        "Timestamp" => [non_neg_integer()],
        "TlsCipherSuite" => [String.t() | Atom.t()],
        "TlsProtocol" => [String.t() | Atom.t()],
        "TrafficPolicyId" => String.t() | Atom.t()
      }
      
  """
  @type metadata() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_traffic_policies_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "TrafficPolicies" => list(traffic_policy())
      }
      
  """
  @type list_traffic_policies_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      message_body() :: %{
        "Html" => [String.t() | Atom.t()],
        "MessageMalformed" => [boolean()],
        "Text" => [String.t() | Atom.t()]
      }
      
  """
  @type message_body() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_address_list_import_job_request() :: %{
        required("JobId") => String.t() | Atom.t()
      }
      
  """
  @type get_address_list_import_job_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rule_set_response() :: %{}
      
  """
  @type delete_rule_set_response() :: %{}

  @typedoc """

  ## Example:
      
      get_addon_subscription_request() :: %{
        required("AddonSubscriptionId") => String.t() | Atom.t()
      }
      
  """
  @type get_addon_subscription_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_search_request() :: %{
        required("SearchId") => String.t() | Atom.t()
      }
      
  """
  @type get_archive_search_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_archive_export_response() :: %{
        "ExportId" => String.t() | Atom.t()
      }
      
  """
  @type start_archive_export_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      policy_statement() :: %{
        "Action" => list(any()),
        "Conditions" => list(list())
      }
      
  """
  @type policy_statement() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      traffic_policy() :: %{
        "DefaultAction" => list(any()),
        "TrafficPolicyId" => String.t() | Atom.t(),
        "TrafficPolicyName" => String.t() | Atom.t()
      }
      
  """
  @type traffic_policy() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t() | Atom.t(),
        required("TagKeys") => list(String.t() | Atom.t())
      }
      
  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_ingress_point_response() :: %{
        "ARecord" => String.t() | Atom.t(),
        "CreatedTimestamp" => [non_neg_integer()],
        "IngressPointArn" => String.t() | Atom.t(),
        "IngressPointAuthConfiguration" => ingress_point_auth_configuration(),
        "IngressPointId" => String.t() | Atom.t(),
        "IngressPointName" => String.t() | Atom.t(),
        "LastUpdatedTimestamp" => [non_neg_integer()],
        "NetworkConfiguration" => list(),
        "RuleSetId" => String.t() | Atom.t(),
        "Status" => list(any()),
        "TrafficPolicyId" => String.t() | Atom.t(),
        "Type" => list(any())
      }
      
  """
  @type get_ingress_point_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_address_list_response() :: %{
        "AddressListArn" => String.t() | Atom.t(),
        "AddressListId" => String.t() | Atom.t(),
        "AddressListName" => String.t() | Atom.t(),
        "CreatedTimestamp" => [non_neg_integer()],
        "LastUpdatedTimestamp" => [non_neg_integer()]
      }
      
  """
  @type get_address_list_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_message_request() :: %{
        required("ArchivedMessageId") => String.t() | Atom.t()
      }
      
  """
  @type get_archive_message_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      rule_boolean_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any())
      }
      
  """
  @type rule_boolean_expression() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_address_list_import_job_request() :: %{
        required("JobId") => String.t() | Atom.t()
      }
      
  """
  @type start_address_list_import_job_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      send_action() :: %{
        "ActionFailurePolicy" => list(any()),
        "RoleArn" => String.t() | Atom.t()
      }
      
  """
  @type send_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_rule_set_response() :: %{
        "CreatedDate" => [non_neg_integer()],
        "LastModificationDate" => [non_neg_integer()],
        "RuleSetArn" => String.t() | Atom.t(),
        "RuleSetId" => String.t() | Atom.t(),
        "RuleSetName" => String.t() | Atom.t(),
        "Rules" => list(rule())
      }
      
  """
  @type get_rule_set_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      deliver_to_mailbox_action() :: %{
        "ActionFailurePolicy" => list(any()),
        "MailboxArn" => String.t() | Atom.t(),
        "RoleArn" => String.t() | Atom.t()
      }
      
  """
  @type deliver_to_mailbox_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      rule_verdict_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any()),
        "Values" => list(list(any())())
      }
      
  """
  @type rule_verdict_expression() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_relay_request() :: %{
        required("RelayId") => String.t() | Atom.t()
      }
      
  """
  @type get_relay_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      register_member_to_address_list_response() :: %{}
      
  """
  @type register_member_to_address_list_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_archive_response() :: %{}
      
  """
  @type delete_archive_response() :: %{}

  @typedoc """

  ## Example:
      
      get_addon_instance_response() :: %{
        "AddonInstanceArn" => String.t() | Atom.t(),
        "AddonName" => String.t() | Atom.t(),
        "AddonSubscriptionId" => String.t() | Atom.t(),
        "CreatedTimestamp" => [non_neg_integer()]
      }
      
  """
  @type get_addon_instance_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_boolean_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any())
      }
      
  """
  @type ingress_boolean_expression() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_address_list_import_job_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        required("AddressListId") => String.t() | Atom.t(),
        required("ImportDataFormat") => import_data_format(),
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type create_address_list_import_job_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      search_summary() :: %{
        "SearchId" => String.t() | Atom.t(),
        "Status" => search_status()
      }
      
  """
  @type search_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_archive_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("KmsKeyArn") => String.t() | Atom.t(),
        optional("Retention") => list(),
        optional("Tags") => list(tag()),
        required("ArchiveName") => String.t() | Atom.t()
      }
      
  """
  @type create_archive_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_archive_request() :: %{
        required("ArchiveId") => String.t() | Atom.t()
      }
      
  """
  @type delete_archive_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_point() :: %{
        "ARecord" => String.t() | Atom.t(),
        "IngressPointId" => String.t() | Atom.t(),
        "IngressPointName" => String.t() | Atom.t(),
        "Status" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type ingress_point() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_addon_instance_response() :: %{}
      
  """
  @type delete_addon_instance_response() :: %{}

  @typedoc """

  ## Example:
      
      public_network_configuration() :: %{
        "IpType" => list(any())
      }
      
  """
  @type public_network_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_address_list_import_job_response() :: %{
        "JobId" => String.t() | Atom.t(),
        "PreSignedUrl" => String.t() | Atom.t()
      }
      
  """
  @type create_address_list_import_job_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_is_in_address_list() :: %{
        "AddressLists" => list(String.t() | Atom.t()),
        "Attribute" => list(any())
      }
      
  """
  @type ingress_is_in_address_list() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      sns_action() :: %{
        "ActionFailurePolicy" => list(any()),
        "Encoding" => list(any()),
        "PayloadType" => list(any()),
        "RoleArn" => String.t() | Atom.t(),
        "TopicArn" => String.t() | Atom.t()
      }
      
  """
  @type sns_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_archives_request() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_archives_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_addon_subscription_response() :: %{
        "AddonSubscriptionId" => String.t() | Atom.t()
      }
      
  """
  @type create_addon_subscription_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_response() :: %{
        "ArchiveArn" => String.t() | Atom.t(),
        "ArchiveId" => String.t() | Atom.t(),
        "ArchiveName" => String.t() | Atom.t(),
        "ArchiveState" => list(any()),
        "CreatedTimestamp" => [non_neg_integer()],
        "KmsKeyArn" => String.t() | Atom.t(),
        "LastUpdatedTimestamp" => [non_neg_integer()],
        "Retention" => list()
      }
      
  """
  @type get_archive_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_message_content_request() :: %{
        required("ArchivedMessageId") => String.t() | Atom.t()
      }
      
  """
  @type get_archive_message_content_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      archive_string_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any()),
        "Values" => list(String.t() | Atom.t())
      }
      
  """
  @type archive_string_expression() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_ipv4_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any()),
        "Values" => list(String.t() | Atom.t())
      }
      
  """
  @type ingress_ipv4_expression() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_address_list_import_jobs_request() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        optional("PageSize") => integer(),
        required("AddressListId") => String.t() | Atom.t()
      }
      
  """
  @type list_address_list_import_jobs_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_relays_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "Relays" => list(relay())
      }
      
  """
  @type list_relays_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      private_network_configuration() :: %{
        "VpcEndpointId" => String.t() | Atom.t()
      }
      
  """
  @type private_network_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_rule_set_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("Tags") => list(tag()),
        required("RuleSetName") => String.t() | Atom.t(),
        required("Rules") => list(rule())
      }
      
  """
  @type create_rule_set_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_addon_subscriptions_request() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_addon_subscriptions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      envelope() :: %{
        "From" => [String.t() | Atom.t()],
        "Helo" => [String.t() | Atom.t()],
        "To" => list([String.t() | Atom.t()]())
      }
      
  """
  @type envelope() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }
      
  """
  @type tag() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      archive_action() :: %{
        "ActionFailurePolicy" => list(any()),
        "TargetArchive" => String.t() | Atom.t()
      }
      
  """
  @type archive_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      stop_archive_search_request() :: %{
        required("SearchId") => String.t() | Atom.t()
      }
      
  """
  @type stop_archive_search_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      row() :: %{
        "ArchivedMessageId" => String.t() | Atom.t(),
        "Cc" => [String.t() | Atom.t()],
        "Date" => [String.t() | Atom.t()],
        "Envelope" => envelope(),
        "From" => [String.t() | Atom.t()],
        "HasAttachments" => [boolean()],
        "InReplyTo" => [String.t() | Atom.t()],
        "IngressPointId" => String.t() | Atom.t(),
        "MessageId" => [String.t() | Atom.t()],
        "ReceivedHeaders" => list([String.t() | Atom.t()]()),
        "ReceivedTimestamp" => [non_neg_integer()],
        "SenderHostname" => [String.t() | Atom.t()],
        "SenderIpAddress" => String.t() | Atom.t(),
        "SourceArn" => [String.t() | Atom.t()],
        "Subject" => [String.t() | Atom.t()],
        "To" => [String.t() | Atom.t()],
        "XMailer" => [String.t() | Atom.t()],
        "XOriginalMailer" => [String.t() | Atom.t()],
        "XPriority" => [String.t() | Atom.t()]
      }
      
  """
  @type row() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_relay_response() :: %{
        "RelayId" => String.t() | Atom.t()
      }
      
  """
  @type create_relay_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_ingress_point_request() :: %{
        required("IngressPointId") => String.t() | Atom.t()
      }
      
  """
  @type delete_ingress_point_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      saved_address() :: %{
        "Address" => String.t() | Atom.t(),
        "CreatedTimestamp" => [non_neg_integer()]
      }
      
  """
  @type saved_address() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_rule_set_response() :: %{
        "RuleSetId" => String.t() | Atom.t()
      }
      
  """
  @type create_rule_set_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_traffic_policy_response() :: %{
        "TrafficPolicyId" => String.t() | Atom.t()
      }
      
  """
  @type create_traffic_policy_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      export_summary() :: %{
        "ExportId" => String.t() | Atom.t(),
        "Status" => export_status()
      }
      
  """
  @type export_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      address_filter() :: %{
        "AddressPrefix" => String.t() | Atom.t()
      }
      
  """
  @type address_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_traffic_policy_request() :: %{
        optional("DefaultAction") => list(any()),
        optional("MaxMessageSizeBytes") => integer(),
        optional("PolicyStatements") => list(policy_statement()),
        optional("TrafficPolicyName") => String.t() | Atom.t(),
        required("TrafficPolicyId") => String.t() | Atom.t()
      }
      
  """
  @type update_traffic_policy_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_ipv6_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any()),
        "Values" => list(String.t() | Atom.t())
      }
      
  """
  @type ingress_ipv6_expression() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_address_list_request() :: %{
        required("AddressListId") => String.t() | Atom.t()
      }
      
  """
  @type delete_address_list_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_address_list_request() :: %{
        required("AddressListId") => String.t() | Atom.t()
      }
      
  """
  @type get_address_list_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_rule_set_response() :: %{}
      
  """
  @type update_rule_set_response() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_member_from_address_list_request() :: %{
        required("Address") => String.t() | Atom.t(),
        required("AddressListId") => String.t() | Atom.t()
      }
      
  """
  @type deregister_member_from_address_list_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_ingress_point_response() :: %{}
      
  """
  @type update_ingress_point_response() :: %{}

  @typedoc """

  ## Example:
      
      get_member_of_address_list_response() :: %{
        "Address" => String.t() | Atom.t(),
        "CreatedTimestamp" => [non_neg_integer()]
      }
      
  """
  @type get_member_of_address_list_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_ingress_point_response() :: %{
        "IngressPointId" => String.t() | Atom.t()
      }
      
  """
  @type create_ingress_point_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_relay_request() :: %{
        optional("Authentication") => list(),
        optional("RelayName") => String.t() | Atom.t(),
        optional("ServerName") => String.t() | Atom.t(),
        optional("ServerPort") => integer(),
        required("RelayId") => String.t() | Atom.t()
      }
      
  """
  @type update_relay_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_addon_instance_request() :: %{
        required("AddonInstanceId") => String.t() | Atom.t()
      }
      
  """
  @type get_addon_instance_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      rule_set() :: %{
        "LastModificationDate" => [non_neg_integer()],
        "RuleSetId" => String.t() | Atom.t(),
        "RuleSetName" => String.t() | Atom.t()
      }
      
  """
  @type rule_set() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      rule() :: %{
        "Actions" => list(list()),
        "Conditions" => list(list()),
        "Name" => String.t() | Atom.t(),
        "Unless" => list(list())
      }
      
  """
  @type rule() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_rule_sets_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "RuleSets" => list(rule_set())
      }
      
  """
  @type list_rule_sets_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_traffic_policy_response() :: %{}
      
  """
  @type delete_traffic_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_addon_subscription_response() :: %{}
      
  """
  @type delete_addon_subscription_response() :: %{}

  @typedoc """

  ## Example:
      
      list_archive_searches_request() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        optional("PageSize") => integer(),
        required("ArchiveId") => String.t() | Atom.t()
      }
      
  """
  @type list_archive_searches_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      import_job() :: %{
        "AddressListId" => String.t() | Atom.t(),
        "CompletedTimestamp" => [non_neg_integer()],
        "CreatedTimestamp" => [non_neg_integer()],
        "Error" => String.t() | Atom.t(),
        "FailedItemsCount" => integer(),
        "ImportDataFormat" => import_data_format(),
        "ImportedItemsCount" => integer(),
        "JobId" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "PreSignedUrl" => String.t() | Atom.t(),
        "StartTimestamp" => [non_neg_integer()],
        "Status" => list(any())
      }
      
  """
  @type import_job() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_archive_searches_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "Searches" => list(search_summary())
      }
      
  """
  @type list_archive_searches_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      analysis() :: %{
        "Analyzer" => String.t() | Atom.t(),
        "ResultField" => String.t() | Atom.t()
      }
      
  """
  @type analysis() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_addon_subscription_request() :: %{
        required("AddonSubscriptionId") => String.t() | Atom.t()
      }
      
  """
  @type delete_addon_subscription_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      archive_boolean_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any())
      }
      
  """
  @type archive_boolean_expression() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_rule_sets_request() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_rule_sets_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      stop_archive_export_request() :: %{
        required("ExportId") => String.t() | Atom.t()
      }
      
  """
  @type stop_archive_export_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_traffic_policy_response() :: %{
        "CreatedTimestamp" => [non_neg_integer()],
        "DefaultAction" => list(any()),
        "LastUpdatedTimestamp" => [non_neg_integer()],
        "MaxMessageSizeBytes" => integer(),
        "PolicyStatements" => list(policy_statement()),
        "TrafficPolicyArn" => String.t() | Atom.t(),
        "TrafficPolicyId" => String.t() | Atom.t(),
        "TrafficPolicyName" => String.t() | Atom.t()
      }
      
  """
  @type get_traffic_policy_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_tls_protocol_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any()),
        "Value" => list(any())
      }
      
  """
  @type ingress_tls_protocol_expression() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_ingress_point_response() :: %{}
      
  """
  @type delete_ingress_point_response() :: %{}

  @typedoc """

  ## Example:
      
      no_authentication() :: %{}
      
  """
  @type no_authentication() :: %{}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_request() :: %{
        required("ArchiveId") => String.t() | Atom.t()
      }
      
  """
  @type get_archive_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_address_list_import_jobs_response() :: %{
        "ImportJobs" => list(import_job()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_address_list_import_jobs_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      stop_address_list_import_job_response() :: %{}
      
  """
  @type stop_address_list_import_job_response() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_relay_response() :: %{}
      
  """
  @type delete_relay_response() :: %{}

  @typedoc """

  ## Example:
      
      deliver_to_q_business_action() :: %{
        "ActionFailurePolicy" => list(any()),
        "ApplicationId" => String.t() | Atom.t(),
        "IndexId" => String.t() | Atom.t(),
        "RoleArn" => String.t() | Atom.t()
      }
      
  """
  @type deliver_to_q_business_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      register_member_to_address_list_request() :: %{
        required("Address") => String.t() | Atom.t(),
        required("AddressListId") => String.t() | Atom.t()
      }
      
  """
  @type register_member_to_address_list_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      addon_subscription() :: %{
        "AddonName" => String.t() | Atom.t(),
        "AddonSubscriptionArn" => String.t() | Atom.t(),
        "AddonSubscriptionId" => String.t() | Atom.t(),
        "CreatedTimestamp" => [non_neg_integer()]
      }
      
  """
  @type addon_subscription() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_relay_request() :: %{
        required("RelayId") => String.t() | Atom.t()
      }
      
  """
  @type delete_relay_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      replace_recipient_action() :: %{
        "ReplaceWith" => list(String.t() | Atom.t())
      }
      
  """
  @type replace_recipient_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t() | Atom.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_archive_search_request() :: %{
        optional("Filters") => archive_filters(),
        required("ArchiveId") => String.t() | Atom.t(),
        required("FromTimestamp") => [non_neg_integer()],
        required("MaxResults") => integer(),
        required("ToTimestamp") => [non_neg_integer()]
      }
      
  """
  @type start_archive_search_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_export_response() :: %{
        "ArchiveId" => String.t() | Atom.t(),
        "ExportDestinationConfiguration" => list(),
        "Filters" => archive_filters(),
        "FromTimestamp" => [non_neg_integer()],
        "MaxResults" => integer(),
        "Status" => export_status(),
        "ToTimestamp" => [non_neg_integer()]
      }
      
  """
  @type get_archive_export_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_ingress_points_response() :: %{
        "IngressPoints" => list(ingress_point()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_ingress_points_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_archive_response() :: %{
        "ArchiveId" => String.t() | Atom.t()
      }
      
  """
  @type create_archive_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_ingress_point_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("IngressPointConfiguration") => list(),
        optional("NetworkConfiguration") => list(),
        optional("Tags") => list(tag()),
        required("IngressPointName") => String.t() | Atom.t(),
        required("RuleSetId") => String.t() | Atom.t(),
        required("TrafficPolicyId") => String.t() | Atom.t(),
        required("Type") => list(any())
      }
      
  """
  @type create_ingress_point_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_relays_request() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        optional("PageSize") => [integer()]
      }
      
  """
  @type list_relays_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      rule_is_in_address_list() :: %{
        "AddressLists" => list(String.t() | Atom.t()),
        "Attribute" => list(any())
      }
      
  """
  @type rule_is_in_address_list() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_string_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any()),
        "Values" => list([String.t() | Atom.t()]())
      }
      
  """
  @type ingress_string_expression() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_rule_set_request() :: %{
        required("RuleSetId") => String.t() | Atom.t()
      }
      
  """
  @type get_rule_set_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_addon_subscription_response() :: %{
        "AddonName" => String.t() | Atom.t(),
        "AddonSubscriptionArn" => String.t() | Atom.t(),
        "CreatedTimestamp" => [non_neg_integer()]
      }
      
  """
  @type get_addon_subscription_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      archive() :: %{
        "ArchiveId" => String.t() | Atom.t(),
        "ArchiveName" => String.t() | Atom.t(),
        "ArchiveState" => list(any()),
        "LastUpdatedTimestamp" => [non_neg_integer()]
      }
      
  """
  @type archive() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_archive_request() :: %{
        optional("ArchiveName") => String.t() | Atom.t(),
        optional("Retention") => list(),
        required("ArchiveId") => String.t() | Atom.t()
      }
      
  """
  @type update_archive_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_traffic_policy_request() :: %{
        required("TrafficPolicyId") => String.t() | Atom.t()
      }
      
  """
  @type delete_traffic_policy_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      stop_archive_export_response() :: %{}
      
  """
  @type stop_archive_export_response() :: %{}

  @typedoc """

  ## Example:
      
      get_traffic_policy_request() :: %{
        required("TrafficPolicyId") => String.t() | Atom.t()
      }
      
  """
  @type get_traffic_policy_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rule_set_request() :: %{
        required("RuleSetId") => String.t() | Atom.t()
      }
      
  """
  @type delete_rule_set_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_addon_subscription_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("Tags") => list(tag()),
        required("AddonName") => String.t() | Atom.t()
      }
      
  """
  @type create_addon_subscription_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_archive_exports_response() :: %{
        "Exports" => list(export_summary()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_archive_exports_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      address_list() :: %{
        "AddressListArn" => String.t() | Atom.t(),
        "AddressListId" => String.t() | Atom.t(),
        "AddressListName" => String.t() | Atom.t(),
        "CreatedTimestamp" => [non_neg_integer()],
        "LastUpdatedTimestamp" => [non_neg_integer()]
      }
      
  """
  @type address_list() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_members_of_address_list_response() :: %{
        "Addresses" => list(saved_address()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_members_of_address_list_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_archive_exports_request() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        optional("PageSize") => integer(),
        required("ArchiveId") => String.t() | Atom.t()
      }
      
  """
  @type list_archive_exports_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_search_results_request() :: %{
        required("SearchId") => String.t() | Atom.t()
      }
      
  """
  @type get_archive_search_results_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_archive_export_request() :: %{
        required("ExportId") => String.t() | Atom.t()
      }
      
  """
  @type get_archive_export_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_archive_response() :: %{}
      
  """
  @type update_archive_response() :: %{}

  @typedoc """

  ## Example:
      
      search_status() :: %{
        "CompletionTimestamp" => [non_neg_integer()],
        "ErrorMessage" => String.t() | Atom.t(),
        "State" => list(any()),
        "SubmissionTimestamp" => [non_neg_integer()]
      }
      
  """
  @type search_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_point_auth_configuration() :: %{
        "IngressPointPasswordConfiguration" => ingress_point_password_configuration(),
        "SecretArn" => String.t() | Atom.t()
      }
      
  """
  @type ingress_point_auth_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_member_from_address_list_response() :: %{}
      
  """
  @type deregister_member_from_address_list_response() :: %{}

  @typedoc """

  ## Example:
      
      list_address_lists_response() :: %{
        "AddressLists" => list(address_list()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_address_lists_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_archive_search_response() :: %{
        "SearchId" => String.t() | Atom.t()
      }
      
  """
  @type start_archive_search_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_ingress_point_request() :: %{
        required("IngressPointId") => String.t() | Atom.t()
      }
      
  """
  @type get_ingress_point_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_addon_instances_request() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_addon_instances_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      s3_export_destination_configuration() :: %{
        "S3Location" => String.t() | Atom.t()
      }
      
  """
  @type s3_export_destination_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      rule_string_expression() :: %{
        "Evaluate" => list(),
        "Operator" => list(any()),
        "Values" => list(String.t() | Atom.t())
      }
      
  """
  @type rule_string_expression() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_relay_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("Tags") => list(tag()),
        required("Authentication") => list(),
        required("RelayName") => String.t() | Atom.t(),
        required("ServerName") => String.t() | Atom.t(),
        required("ServerPort") => integer()
      }
      
  """
  @type create_relay_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_member_of_address_list_request() :: %{
        required("Address") => String.t() | Atom.t(),
        required("AddressListId") => String.t() | Atom.t()
      }
      
  """
  @type get_member_of_address_list_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      add_header_action() :: %{
        "HeaderName" => String.t() | Atom.t(),
        "HeaderValue" => String.t() | Atom.t()
      }
      
  """
  @type add_header_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      archive_filters() :: %{
        "Include" => list(list()),
        "Unless" => list(list())
      }
      
  """
  @type archive_filters() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_address_list_response() :: %{
        "AddressListId" => String.t() | Atom.t()
      }
      
  """
  @type create_address_list_response() :: %{String.t() | Atom.t() => any()}

  @type create_addon_instance_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_addon_subscription_errors() ::
          validation_exception() | service_quota_exceeded_exception() | conflict_exception()

  @type create_address_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_address_list_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type create_archive_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_ingress_point_errors() ::
          validation_exception() | service_quota_exceeded_exception() | conflict_exception()

  @type create_relay_errors() ::
          validation_exception() | service_quota_exceeded_exception() | conflict_exception()

  @type create_rule_set_errors() ::
          validation_exception() | service_quota_exceeded_exception() | conflict_exception()

  @type create_traffic_policy_errors() ::
          validation_exception() | service_quota_exceeded_exception() | conflict_exception()

  @type delete_addon_instance_errors() :: validation_exception() | conflict_exception()

  @type delete_addon_subscription_errors() :: validation_exception() | conflict_exception()

  @type delete_address_list_errors() ::
          throttling_exception() | access_denied_exception() | conflict_exception()

  @type delete_archive_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | conflict_exception()

  @type delete_ingress_point_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type delete_relay_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type delete_rule_set_errors() :: validation_exception() | conflict_exception()

  @type delete_traffic_policy_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type deregister_member_from_address_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_addon_instance_errors() :: validation_exception() | resource_not_found_exception()

  @type get_addon_subscription_errors() :: validation_exception() | resource_not_found_exception()

  @type get_address_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_address_list_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_archive_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_archive_export_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type get_archive_message_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type get_archive_message_content_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type get_archive_search_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type get_archive_search_results_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | conflict_exception()

  @type get_ingress_point_errors() :: validation_exception() | resource_not_found_exception()

  @type get_member_of_address_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_relay_errors() :: validation_exception() | resource_not_found_exception()

  @type get_rule_set_errors() :: validation_exception() | resource_not_found_exception()

  @type get_traffic_policy_errors() :: validation_exception() | resource_not_found_exception()

  @type list_addon_instances_errors() :: validation_exception()

  @type list_addon_subscriptions_errors() :: validation_exception()

  @type list_address_list_import_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_address_lists_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type list_archive_exports_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_archive_searches_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_archives_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type list_ingress_points_errors() :: validation_exception()

  @type list_members_of_address_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_relays_errors() :: validation_exception()

  @type list_rule_sets_errors() :: validation_exception()

  @type list_tags_for_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type list_traffic_policies_errors() :: validation_exception()

  @type register_member_to_address_list_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type start_address_list_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_archive_export_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type start_archive_search_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_address_list_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_archive_export_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type stop_archive_search_errors() ::
          throttling_exception() | validation_exception() | access_denied_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type update_archive_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_ingress_point_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type update_relay_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type update_rule_set_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type update_traffic_policy_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  def metadata do
    %{
      api_version: "2023-10-17",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "mail-manager",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "MailManager",
      signature_version: "v4",
      signing_name: "ses",
      target_prefix: "MailManagerSvc"
    }
  end

  @doc """
  Creates an Add On instance for the subscription indicated in the request.

  The resulting Amazon Resource Name (ARN) can be used in a conditional statement
  for a rule set or traffic policy.
  """
  @spec create_addon_instance(map(), create_addon_instance_request(), list()) ::
          {:ok, create_addon_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_addon_instance_errors()}
  def create_addon_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAddonInstance", input, options)
  end

  @doc """
  Creates a subscription for an Add On representing the acceptance of its terms of
  use and additional pricing.

  The subscription can then be used to create an instance for use in rule sets or
  traffic policies.
  """
  @spec create_addon_subscription(map(), create_addon_subscription_request(), list()) ::
          {:ok, create_addon_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_addon_subscription_errors()}
  def create_addon_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAddonSubscription", input, options)
  end

  @doc """
  Creates a new address list.
  """
  @spec create_address_list(map(), create_address_list_request(), list()) ::
          {:ok, create_address_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_address_list_errors()}
  def create_address_list(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAddressList", input, options)
  end

  @doc """
  Creates an import job for an address list.
  """
  @spec create_address_list_import_job(map(), create_address_list_import_job_request(), list()) ::
          {:ok, create_address_list_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_address_list_import_job_errors()}
  def create_address_list_import_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAddressListImportJob", input, options)
  end

  @doc """
  Creates a new email archive resource for storing and retaining emails.
  """
  @spec create_archive(map(), create_archive_request(), list()) ::
          {:ok, create_archive_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_archive_errors()}
  def create_archive(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateArchive", input, options)
  end

  @doc """
  Provision a new ingress endpoint resource.
  """
  @spec create_ingress_point(map(), create_ingress_point_request(), list()) ::
          {:ok, create_ingress_point_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_ingress_point_errors()}
  def create_ingress_point(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateIngressPoint", input, options)
  end

  @doc """
  Creates a relay resource which can be used in rules to relay incoming emails to
  defined relay destinations.
  """
  @spec create_relay(map(), create_relay_request(), list()) ::
          {:ok, create_relay_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_relay_errors()}
  def create_relay(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRelay", input, options)
  end

  @doc """
  Provision a new rule set.
  """
  @spec create_rule_set(map(), create_rule_set_request(), list()) ::
          {:ok, create_rule_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_rule_set_errors()}
  def create_rule_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRuleSet", input, options)
  end

  @doc """
  Provision a new traffic policy resource.
  """
  @spec create_traffic_policy(map(), create_traffic_policy_request(), list()) ::
          {:ok, create_traffic_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_traffic_policy_errors()}
  def create_traffic_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTrafficPolicy", input, options)
  end

  @doc """
  Deletes an Add On instance.
  """
  @spec delete_addon_instance(map(), delete_addon_instance_request(), list()) ::
          {:ok, delete_addon_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_addon_instance_errors()}
  def delete_addon_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAddonInstance", input, options)
  end

  @doc """
  Deletes an Add On subscription.
  """
  @spec delete_addon_subscription(map(), delete_addon_subscription_request(), list()) ::
          {:ok, delete_addon_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_addon_subscription_errors()}
  def delete_addon_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAddonSubscription", input, options)
  end

  @doc """
  Deletes an address list.
  """
  @spec delete_address_list(map(), delete_address_list_request(), list()) ::
          {:ok, delete_address_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_address_list_errors()}
  def delete_address_list(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAddressList", input, options)
  end

  @doc """
  Initiates deletion of an email archive.

  This changes the archive state to pending deletion. In this state, no new emails
  can be added, and existing archived emails become inaccessible (search, export,
  download). The archive and all of its contents will be permanently deleted 30
  days after entering the pending deletion state, regardless of the configured
  retention period.
  """
  @spec delete_archive(map(), delete_archive_request(), list()) ::
          {:ok, delete_archive_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_archive_errors()}
  def delete_archive(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteArchive", input, options)
  end

  @doc """
  Delete an ingress endpoint resource.
  """
  @spec delete_ingress_point(map(), delete_ingress_point_request(), list()) ::
          {:ok, delete_ingress_point_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_ingress_point_errors()}
  def delete_ingress_point(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteIngressPoint", input, options)
  end

  @doc """
  Deletes an existing relay resource.
  """
  @spec delete_relay(map(), delete_relay_request(), list()) ::
          {:ok, delete_relay_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_relay_errors()}
  def delete_relay(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRelay", input, options)
  end

  @doc """
  Delete a rule set.
  """
  @spec delete_rule_set(map(), delete_rule_set_request(), list()) ::
          {:ok, delete_rule_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_rule_set_errors()}
  def delete_rule_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRuleSet", input, options)
  end

  @doc """
  Delete a traffic policy resource.
  """
  @spec delete_traffic_policy(map(), delete_traffic_policy_request(), list()) ::
          {:ok, delete_traffic_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_traffic_policy_errors()}
  def delete_traffic_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTrafficPolicy", input, options)
  end

  @doc """
  Removes a member from an address list.
  """
  @spec deregister_member_from_address_list(
          map(),
          deregister_member_from_address_list_request(),
          list()
        ) ::
          {:ok, deregister_member_from_address_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_member_from_address_list_errors()}
  def deregister_member_from_address_list(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterMemberFromAddressList", input, options)
  end

  @doc """
  Gets detailed information about an Add On instance.
  """
  @spec get_addon_instance(map(), get_addon_instance_request(), list()) ::
          {:ok, get_addon_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_addon_instance_errors()}
  def get_addon_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAddonInstance", input, options)
  end

  @doc """
  Gets detailed information about an Add On subscription.
  """
  @spec get_addon_subscription(map(), get_addon_subscription_request(), list()) ::
          {:ok, get_addon_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_addon_subscription_errors()}
  def get_addon_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAddonSubscription", input, options)
  end

  @doc """
  Fetch attributes of an address list.
  """
  @spec get_address_list(map(), get_address_list_request(), list()) ::
          {:ok, get_address_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_address_list_errors()}
  def get_address_list(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAddressList", input, options)
  end

  @doc """
  Fetch attributes of an import job.
  """
  @spec get_address_list_import_job(map(), get_address_list_import_job_request(), list()) ::
          {:ok, get_address_list_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_address_list_import_job_errors()}
  def get_address_list_import_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAddressListImportJob", input, options)
  end

  @doc """
  Retrieves the full details and current state of a specified email archive.
  """
  @spec get_archive(map(), get_archive_request(), list()) ::
          {:ok, get_archive_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_archive_errors()}
  def get_archive(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetArchive", input, options)
  end

  @doc """
  Retrieves the details and current status of a specific email archive export job.
  """
  @spec get_archive_export(map(), get_archive_export_request(), list()) ::
          {:ok, get_archive_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_archive_export_errors()}
  def get_archive_export(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetArchiveExport", input, options)
  end

  @doc """
  Returns a pre-signed URL that provides temporary download access to the specific
  email message stored in the archive.
  """
  @spec get_archive_message(map(), get_archive_message_request(), list()) ::
          {:ok, get_archive_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_archive_message_errors()}
  def get_archive_message(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetArchiveMessage", input, options)
  end

  @doc """
  Returns the textual content of a specific email message stored in the archive.

  Attachments are not included.
  """
  @spec get_archive_message_content(map(), get_archive_message_content_request(), list()) ::
          {:ok, get_archive_message_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_archive_message_content_errors()}
  def get_archive_message_content(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetArchiveMessageContent", input, options)
  end

  @doc """
  Retrieves the details and current status of a specific email archive search job.
  """
  @spec get_archive_search(map(), get_archive_search_request(), list()) ::
          {:ok, get_archive_search_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_archive_search_errors()}
  def get_archive_search(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetArchiveSearch", input, options)
  end

  @doc """
  Returns the results of a completed email archive search job.
  """
  @spec get_archive_search_results(map(), get_archive_search_results_request(), list()) ::
          {:ok, get_archive_search_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_archive_search_results_errors()}
  def get_archive_search_results(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetArchiveSearchResults", input, options)
  end

  @doc """
  Fetch ingress endpoint resource attributes.
  """
  @spec get_ingress_point(map(), get_ingress_point_request(), list()) ::
          {:ok, get_ingress_point_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ingress_point_errors()}
  def get_ingress_point(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetIngressPoint", input, options)
  end

  @doc """
  Fetch attributes of a member in an address list.
  """
  @spec get_member_of_address_list(map(), get_member_of_address_list_request(), list()) ::
          {:ok, get_member_of_address_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_member_of_address_list_errors()}
  def get_member_of_address_list(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetMemberOfAddressList", input, options)
  end

  @doc """
  Fetch the relay resource and it's attributes.
  """
  @spec get_relay(map(), get_relay_request(), list()) ::
          {:ok, get_relay_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_relay_errors()}
  def get_relay(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRelay", input, options)
  end

  @doc """
  Fetch attributes of a rule set.
  """
  @spec get_rule_set(map(), get_rule_set_request(), list()) ::
          {:ok, get_rule_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_rule_set_errors()}
  def get_rule_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRuleSet", input, options)
  end

  @doc """
  Fetch attributes of a traffic policy resource.
  """
  @spec get_traffic_policy(map(), get_traffic_policy_request(), list()) ::
          {:ok, get_traffic_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_traffic_policy_errors()}
  def get_traffic_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTrafficPolicy", input, options)
  end

  @doc """
  Lists all Add On instances in your account.
  """
  @spec list_addon_instances(map(), list_addon_instances_request(), list()) ::
          {:ok, list_addon_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_addon_instances_errors()}
  def list_addon_instances(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAddonInstances", input, options)
  end

  @doc """
  Lists all Add On subscriptions in your account.
  """
  @spec list_addon_subscriptions(map(), list_addon_subscriptions_request(), list()) ::
          {:ok, list_addon_subscriptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_addon_subscriptions_errors()}
  def list_addon_subscriptions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAddonSubscriptions", input, options)
  end

  @doc """
  Lists jobs for an address list.
  """
  @spec list_address_list_import_jobs(map(), list_address_list_import_jobs_request(), list()) ::
          {:ok, list_address_list_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_address_list_import_jobs_errors()}
  def list_address_list_import_jobs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAddressListImportJobs", input, options)
  end

  @doc """
  Lists address lists for this account.
  """
  @spec list_address_lists(map(), list_address_lists_request(), list()) ::
          {:ok, list_address_lists_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_address_lists_errors()}
  def list_address_lists(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAddressLists", input, options)
  end

  @doc """
  Returns a list of email archive export jobs.
  """
  @spec list_archive_exports(map(), list_archive_exports_request(), list()) ::
          {:ok, list_archive_exports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_archive_exports_errors()}
  def list_archive_exports(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListArchiveExports", input, options)
  end

  @doc """
  Returns a list of email archive search jobs.
  """
  @spec list_archive_searches(map(), list_archive_searches_request(), list()) ::
          {:ok, list_archive_searches_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_archive_searches_errors()}
  def list_archive_searches(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListArchiveSearches", input, options)
  end

  @doc """
  Returns a list of all email archives in your account.
  """
  @spec list_archives(map(), list_archives_request(), list()) ::
          {:ok, list_archives_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_archives_errors()}
  def list_archives(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListArchives", input, options)
  end

  @doc """
  List all ingress endpoint resources.
  """
  @spec list_ingress_points(map(), list_ingress_points_request(), list()) ::
          {:ok, list_ingress_points_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_ingress_points_errors()}
  def list_ingress_points(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListIngressPoints", input, options)
  end

  @doc """
  Lists members of an address list.
  """
  @spec list_members_of_address_list(map(), list_members_of_address_list_request(), list()) ::
          {:ok, list_members_of_address_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_members_of_address_list_errors()}
  def list_members_of_address_list(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListMembersOfAddressList", input, options)
  end

  @doc """
  Lists all the existing relay resources.
  """
  @spec list_relays(map(), list_relays_request(), list()) ::
          {:ok, list_relays_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_relays_errors()}
  def list_relays(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRelays", input, options)
  end

  @doc """
  List rule sets for this account.
  """
  @spec list_rule_sets(map(), list_rule_sets_request(), list()) ::
          {:ok, list_rule_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_rule_sets_errors()}
  def list_rule_sets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRuleSets", input, options)
  end

  @doc """
  Retrieves the list of tags (keys and values) assigned to the resource.
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
  List traffic policy resources.
  """
  @spec list_traffic_policies(map(), list_traffic_policies_request(), list()) ::
          {:ok, list_traffic_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_traffic_policies_errors()}
  def list_traffic_policies(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTrafficPolicies", input, options)
  end

  @doc """
  Adds a member to an address list.
  """
  @spec register_member_to_address_list(map(), register_member_to_address_list_request(), list()) ::
          {:ok, register_member_to_address_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_member_to_address_list_errors()}
  def register_member_to_address_list(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterMemberToAddressList", input, options)
  end

  @doc """
  Starts an import job for an address list.
  """
  @spec start_address_list_import_job(map(), start_address_list_import_job_request(), list()) ::
          {:ok, start_address_list_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_address_list_import_job_errors()}
  def start_address_list_import_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartAddressListImportJob", input, options)
  end

  @doc """
  Initiates an export of emails from the specified archive.
  """
  @spec start_archive_export(map(), start_archive_export_request(), list()) ::
          {:ok, start_archive_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_archive_export_errors()}
  def start_archive_export(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartArchiveExport", input, options)
  end

  @doc """
  Initiates a search across emails in the specified archive.
  """
  @spec start_archive_search(map(), start_archive_search_request(), list()) ::
          {:ok, start_archive_search_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_archive_search_errors()}
  def start_archive_search(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartArchiveSearch", input, options)
  end

  @doc """
  Stops an ongoing import job for an address list.
  """
  @spec stop_address_list_import_job(map(), stop_address_list_import_job_request(), list()) ::
          {:ok, stop_address_list_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_address_list_import_job_errors()}
  def stop_address_list_import_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopAddressListImportJob", input, options)
  end

  @doc """
  Stops an in-progress export of emails from an archive.
  """
  @spec stop_archive_export(map(), stop_archive_export_request(), list()) ::
          {:ok, stop_archive_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_archive_export_errors()}
  def stop_archive_export(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopArchiveExport", input, options)
  end

  @doc """
  Stops an in-progress archive search job.
  """
  @spec stop_archive_search(map(), stop_archive_search_request(), list()) ::
          {:ok, stop_archive_search_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_archive_search_errors()}
  def stop_archive_search(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopArchiveSearch", input, options)
  end

  @doc """
  Adds one or more tags (keys and values) to a specified resource.
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
  Remove one or more tags (keys and values) from a specified resource.
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
  Updates the attributes of an existing email archive.
  """
  @spec update_archive(map(), update_archive_request(), list()) ::
          {:ok, update_archive_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_archive_errors()}
  def update_archive(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateArchive", input, options)
  end

  @doc """
  Update attributes of a provisioned ingress endpoint resource.
  """
  @spec update_ingress_point(map(), update_ingress_point_request(), list()) ::
          {:ok, update_ingress_point_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_ingress_point_errors()}
  def update_ingress_point(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateIngressPoint", input, options)
  end

  @doc """
  Updates the attributes of an existing relay resource.
  """
  @spec update_relay(map(), update_relay_request(), list()) ::
          {:ok, update_relay_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_relay_errors()}
  def update_relay(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRelay", input, options)
  end

  @doc """
  Update attributes of an already provisioned rule set.
  """
  @spec update_rule_set(map(), update_rule_set_request(), list()) ::
          {:ok, update_rule_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_rule_set_errors()}
  def update_rule_set(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRuleSet", input, options)
  end

  @doc """
  Update attributes of an already provisioned traffic policy resource.
  """
  @spec update_traffic_policy(map(), update_traffic_policy_request(), list()) ::
          {:ok, update_traffic_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_traffic_policy_errors()}
  def update_traffic_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTrafficPolicy", input, options)
  end
end
