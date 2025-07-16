# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MTurk do
  @moduledoc """
  Amazon Mechanical Turk API Reference
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      approve_assignment_request() :: %{
        optional("OverrideRejection") => boolean(),
        optional("RequesterFeedback") => String.t(),
        required("AssignmentId") => String.t()
      }
      
  """
  @type approve_assignment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hit_response() :: %{}
      
  """
  @type delete_hit_response() :: %{}

  @typedoc """

  ## Example:
      
      notify_workers_request() :: %{
        required("MessageText") => String.t(),
        required("Subject") => String.t(),
        required("WorkerIds") => list(String.t())
      }
      
  """
  @type notify_workers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      qualification_requirement() :: %{
        "ActionsGuarded" => list(any()),
        "Comparator" => list(any()),
        "IntegerValues" => list(integer()),
        "LocaleValues" => list(locale()),
        "QualificationTypeId" => String.t(),
        "RequiredToPreview" => boolean()
      }
      
  """
  @type qualification_requirement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      review_policy() :: %{
        "Parameters" => list(policy_parameter()),
        "PolicyName" => String.t()
      }
      
  """
  @type review_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_worker_block_request() :: %{
        optional("Reason") => String.t(),
        required("WorkerId") => String.t()
      }
      
  """
  @type delete_worker_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_qualification_type_request() :: %{
        required("QualificationTypeId") => String.t()
      }
      
  """
  @type get_qualification_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_qualification_type_request() :: %{
        optional("AnswerKey") => String.t(),
        optional("AutoGranted") => boolean(),
        optional("AutoGrantedValue") => integer(),
        optional("Keywords") => String.t(),
        optional("RetryDelayInSeconds") => float(),
        optional("Test") => String.t(),
        optional("TestDurationInSeconds") => float(),
        required("Description") => String.t(),
        required("Name") => String.t(),
        required("QualificationTypeStatus") => list(any())
      }
      
  """
  @type create_qualification_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assignment() :: %{
        "AcceptTime" => non_neg_integer(),
        "Answer" => String.t(),
        "ApprovalTime" => non_neg_integer(),
        "AssignmentId" => String.t(),
        "AssignmentStatus" => list(any()),
        "AutoApprovalTime" => non_neg_integer(),
        "Deadline" => non_neg_integer(),
        "HITId" => String.t(),
        "RejectionTime" => non_neg_integer(),
        "RequesterFeedback" => String.t(),
        "SubmitTime" => non_neg_integer(),
        "WorkerId" => String.t()
      }
      
  """
  @type assignment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_assignment_request() :: %{
        required("AssignmentId") => String.t(),
        required("RequesterFeedback") => String.t()
      }
      
  """
  @type reject_assignment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_balance_response() :: %{
        "AvailableBalance" => String.t(),
        "OnHoldBalance" => String.t()
      }
      
  """
  @type get_account_balance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_reviewable_hits_request() :: %{
        optional("HITTypeId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_reviewable_hits_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_file_upload_url_response() :: %{
        "FileUploadURL" => String.t()
      }
      
  """
  @type get_file_upload_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_qualification_types_request() :: %{
        optional("MaxResults") => integer(),
        optional("MustBeOwnedByCaller") => boolean(),
        optional("NextToken") => String.t(),
        optional("Query") => String.t(),
        required("MustBeRequestable") => boolean()
      }
      
  """
  @type list_qualification_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_qualification_request_request() :: %{
        optional("IntegerValue") => integer(),
        required("QualificationRequestId") => String.t()
      }
      
  """
  @type accept_qualification_request_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hit_type_response() :: %{
        "HITTypeId" => String.t()
      }
      
  """
  @type create_hit_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_worker_block_response() :: %{}
      
  """
  @type create_worker_block_response() :: %{}

  @typedoc """

  ## Example:
      
      service_fault() :: %{
        "Message" => String.t(),
        "TurkErrorCode" => String.t()
      }
      
  """
  @type service_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_additional_assignments_for_hit_response() :: %{}
      
  """
  @type create_additional_assignments_for_hit_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_qualification_type_request() :: %{
        required("QualificationTypeId") => String.t()
      }
      
  """
  @type delete_qualification_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      locale() :: %{
        "Country" => String.t(),
        "Subdivision" => String.t()
      }
      
  """
  @type locale() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      review_result_detail() :: %{
        "ActionId" => String.t(),
        "Key" => String.t(),
        "QuestionId" => String.t(),
        "SubjectId" => String.t(),
        "SubjectType" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type review_result_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hits_for_qualification_type_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("QualificationTypeId") => String.t()
      }
      
  """
  @type list_hits_for_qualification_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_bonus_response() :: %{}
      
  """
  @type send_bonus_response() :: %{}

  @typedoc """

  ## Example:
      
      get_file_upload_url_request() :: %{
        required("AssignmentId") => String.t(),
        required("QuestionIdentifier") => String.t()
      }
      
  """
  @type get_file_upload_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_qualification_score_request() :: %{
        required("QualificationTypeId") => String.t(),
        required("WorkerId") => String.t()
      }
      
  """
  @type get_qualification_score_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_hit_type_of_hit_request() :: %{
        required("HITId") => String.t(),
        required("HITTypeId") => String.t()
      }
      
  """
  @type update_hit_type_of_hit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      approve_assignment_response() :: %{}
      
  """
  @type approve_assignment_response() :: %{}

  @typedoc """

  ## Example:
      
      list_review_policy_results_for_hit_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PolicyLevels") => list(list(any())()),
        optional("RetrieveActions") => boolean(),
        optional("RetrieveResults") => boolean(),
        required("HITId") => String.t()
      }
      
  """
  @type list_review_policy_results_for_hit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_worker_blocks_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_worker_blocks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_bonus_request() :: %{
        optional("UniqueRequestToken") => String.t(),
        required("AssignmentId") => String.t(),
        required("BonusAmount") => String.t(),
        required("Reason") => String.t(),
        required("WorkerId") => String.t()
      }
      
  """
  @type send_bonus_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_assignment_response() :: %{}
      
  """
  @type reject_assignment_response() :: %{}

  @typedoc """

  ## Example:
      
      notification_specification() :: %{
        "Destination" => String.t(),
        "EventTypes" => list(list(any())()),
        "Transport" => list(any()),
        "Version" => String.t()
      }
      
  """
  @type notification_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bonus_payments_response() :: %{
        "BonusPayments" => list(bonus_payment()),
        "NextToken" => String.t(),
        "NumResults" => integer()
      }
      
  """
  @type list_bonus_payments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_test_event_notification_request() :: %{
        required("Notification") => notification_specification(),
        required("TestEventType") => list(any())
      }
      
  """
  @type send_test_event_notification_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notify_workers_failure_status() :: %{
        "NotifyWorkersFailureCode" => list(any()),
        "NotifyWorkersFailureMessage" => String.t(),
        "WorkerId" => String.t()
      }
      
  """
  @type notify_workers_failure_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hits_for_qualification_type_response() :: %{
        "HITs" => list(hit()),
        "NextToken" => String.t(),
        "NumResults" => integer()
      }
      
  """
  @type list_hits_for_qualification_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_balance_request() :: %{}
      
  """
  @type get_account_balance_request() :: %{}

  @typedoc """

  ## Example:
      
      update_notification_settings_response() :: %{}
      
  """
  @type update_notification_settings_response() :: %{}

  @typedoc """

  ## Example:
      
      reject_qualification_request_response() :: %{}
      
  """
  @type reject_qualification_request_response() :: %{}

  @typedoc """

  ## Example:
      
      update_qualification_type_response() :: %{
        "QualificationType" => qualification_type()
      }
      
  """
  @type update_qualification_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_hit_response() :: %{
        "HIT" => hit()
      }
      
  """
  @type get_hit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_assignment_response() :: %{
        "Assignment" => assignment(),
        "HIT" => hit()
      }
      
  """
  @type get_assignment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_qualification_request_request() :: %{
        optional("Reason") => String.t(),
        required("QualificationRequestId") => String.t()
      }
      
  """
  @type reject_qualification_request_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_worker_block_request() :: %{
        required("Reason") => String.t(),
        required("WorkerId") => String.t()
      }
      
  """
  @type create_worker_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_qualification_type_response() :: %{}
      
  """
  @type delete_qualification_type_response() :: %{}

  @typedoc """

  ## Example:
      
      list_worker_blocks_response() :: %{
        "NextToken" => String.t(),
        "NumResults" => integer(),
        "WorkerBlocks" => list(worker_block())
      }
      
  """
  @type list_worker_blocks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_qualification_with_worker_response() :: %{}
      
  """
  @type associate_qualification_with_worker_response() :: %{}

  @typedoc """

  ## Example:
      
      qualification() :: %{
        "GrantTime" => non_neg_integer(),
        "IntegerValue" => integer(),
        "LocaleValue" => locale(),
        "QualificationTypeId" => String.t(),
        "Status" => list(any()),
        "WorkerId" => String.t()
      }
      
  """
  @type qualification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_hit_review_status_response() :: %{}
      
  """
  @type update_hit_review_status_response() :: %{}

  @typedoc """

  ## Example:
      
      notify_workers_response() :: %{
        "NotifyWorkersFailureStatuses" => list(notify_workers_failure_status())
      }
      
  """
  @type notify_workers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      worker_block() :: %{
        "Reason" => String.t(),
        "WorkerId" => String.t()
      }
      
  """
  @type worker_block() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_notification_settings_request() :: %{
        optional("Active") => boolean(),
        optional("Notification") => notification_specification(),
        required("HITTypeId") => String.t()
      }
      
  """
  @type update_notification_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_error() :: %{
        "Message" => String.t(),
        "TurkErrorCode" => String.t()
      }
      
  """
  @type request_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_qualification_request_response() :: %{}
      
  """
  @type accept_qualification_request_response() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_qualification_from_worker_response() :: %{}
      
  """
  @type disassociate_qualification_from_worker_response() :: %{}

  @typedoc """

  ## Example:
      
      list_qualification_requests_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("QualificationTypeId") => String.t()
      }
      
  """
  @type list_qualification_requests_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_expiration_for_hit_response() :: %{}
      
  """
  @type update_expiration_for_hit_response() :: %{}

  @typedoc """

  ## Example:
      
      hit() :: %{
        "AssignmentDurationInSeconds" => float(),
        "AutoApprovalDelayInSeconds" => float(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "Expiration" => non_neg_integer(),
        "HITGroupId" => String.t(),
        "HITId" => String.t(),
        "HITLayoutId" => String.t(),
        "HITReviewStatus" => list(any()),
        "HITStatus" => list(any()),
        "HITTypeId" => String.t(),
        "Keywords" => String.t(),
        "MaxAssignments" => integer(),
        "NumberOfAssignmentsAvailable" => integer(),
        "NumberOfAssignmentsCompleted" => integer(),
        "NumberOfAssignmentsPending" => integer(),
        "QualificationRequirements" => list(qualification_requirement()),
        "Question" => String.t(),
        "RequesterAnnotation" => String.t(),
        "Reward" => String.t(),
        "Title" => String.t()
      }
      
  """
  @type hit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_hit_request() :: %{
        required("HITId") => String.t()
      }
      
  """
  @type get_hit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      policy_parameter() :: %{
        "Key" => String.t(),
        "MapEntries" => list(parameter_map_entry()),
        "Values" => list(String.t())
      }
      
  """
  @type policy_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bonus_payment() :: %{
        "AssignmentId" => String.t(),
        "BonusAmount" => String.t(),
        "GrantTime" => non_neg_integer(),
        "Reason" => String.t(),
        "WorkerId" => String.t()
      }
      
  """
  @type bonus_payment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workers_with_qualification_type_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any()),
        required("QualificationTypeId") => String.t()
      }
      
  """
  @type list_workers_with_qualification_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bonus_payments_request() :: %{
        optional("AssignmentId") => String.t(),
        optional("HITId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_bonus_payments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hit_request() :: %{
        optional("AssignmentReviewPolicy") => review_policy(),
        optional("AutoApprovalDelayInSeconds") => float(),
        optional("HITLayoutId") => String.t(),
        optional("HITLayoutParameters") => list(hit_layout_parameter()),
        optional("HITReviewPolicy") => review_policy(),
        optional("Keywords") => String.t(),
        optional("MaxAssignments") => integer(),
        optional("QualificationRequirements") => list(qualification_requirement()),
        optional("Question") => String.t(),
        optional("RequesterAnnotation") => String.t(),
        optional("UniqueRequestToken") => String.t(),
        required("AssignmentDurationInSeconds") => float(),
        required("Description") => String.t(),
        required("LifetimeInSeconds") => float(),
        required("Reward") => String.t(),
        required("Title") => String.t()
      }
      
  """
  @type create_hit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_qualification_with_worker_request() :: %{
        optional("IntegerValue") => integer(),
        optional("SendNotification") => boolean(),
        required("QualificationTypeId") => String.t(),
        required("WorkerId") => String.t()
      }
      
  """
  @type associate_qualification_with_worker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_qualification_requests_response() :: %{
        "NextToken" => String.t(),
        "NumResults" => integer(),
        "QualificationRequests" => list(qualification_request())
      }
      
  """
  @type list_qualification_requests_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hit_layout_parameter() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type hit_layout_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      review_action_detail() :: %{
        "ActionId" => String.t(),
        "ActionName" => String.t(),
        "CompleteTime" => non_neg_integer(),
        "ErrorCode" => String.t(),
        "Result" => String.t(),
        "Status" => list(any()),
        "TargetId" => String.t(),
        "TargetType" => String.t()
      }
      
  """
  @type review_action_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hit_with_hit_type_response() :: %{
        "HIT" => hit()
      }
      
  """
  @type create_hit_with_hit_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hits_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_hits_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_test_event_notification_response() :: %{}
      
  """
  @type send_test_event_notification_response() :: %{}

  @typedoc """

  ## Example:
      
      update_hit_review_status_request() :: %{
        optional("Revert") => boolean(),
        required("HITId") => String.t()
      }
      
  """
  @type update_hit_review_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workers_with_qualification_type_response() :: %{
        "NextToken" => String.t(),
        "NumResults" => integer(),
        "Qualifications" => list(qualification())
      }
      
  """
  @type list_workers_with_qualification_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_review_policy_results_for_hit_response() :: %{
        "AssignmentReviewPolicy" => review_policy(),
        "AssignmentReviewReport" => review_report(),
        "HITId" => String.t(),
        "HITReviewPolicy" => review_policy(),
        "HITReviewReport" => review_report(),
        "NextToken" => String.t()
      }
      
  """
  @type list_review_policy_results_for_hit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_additional_assignments_for_hit_request() :: %{
        optional("UniqueRequestToken") => String.t(),
        required("HITId") => String.t(),
        required("NumberOfAdditionalAssignments") => integer()
      }
      
  """
  @type create_additional_assignments_for_hit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      review_report() :: %{
        "ReviewActions" => list(review_action_detail()),
        "ReviewResults" => list(review_result_detail())
      }
      
  """
  @type review_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_assignment_request() :: %{
        required("AssignmentId") => String.t()
      }
      
  """
  @type get_assignment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_assignments_for_hit_response() :: %{
        "Assignments" => list(assignment()),
        "NextToken" => String.t(),
        "NumResults" => integer()
      }
      
  """
  @type list_assignments_for_hit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      qualification_type() :: %{
        "AnswerKey" => String.t(),
        "AutoGranted" => boolean(),
        "AutoGrantedValue" => integer(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "IsRequestable" => boolean(),
        "Keywords" => String.t(),
        "Name" => String.t(),
        "QualificationTypeId" => String.t(),
        "QualificationTypeStatus" => list(any()),
        "RetryDelayInSeconds" => float(),
        "Test" => String.t(),
        "TestDurationInSeconds" => float()
      }
      
  """
  @type qualification_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      qualification_request() :: %{
        "Answer" => String.t(),
        "QualificationRequestId" => String.t(),
        "QualificationTypeId" => String.t(),
        "SubmitTime" => non_neg_integer(),
        "Test" => String.t(),
        "WorkerId" => String.t()
      }
      
  """
  @type qualification_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_qualification_score_response() :: %{
        "Qualification" => qualification()
      }
      
  """
  @type get_qualification_score_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_qualification_type_response() :: %{
        "QualificationType" => qualification_type()
      }
      
  """
  @type create_qualification_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_hit_type_of_hit_response() :: %{}
      
  """
  @type update_hit_type_of_hit_response() :: %{}

  @typedoc """

  ## Example:
      
      create_hit_with_hit_type_request() :: %{
        optional("AssignmentReviewPolicy") => review_policy(),
        optional("HITLayoutId") => String.t(),
        optional("HITLayoutParameters") => list(hit_layout_parameter()),
        optional("HITReviewPolicy") => review_policy(),
        optional("MaxAssignments") => integer(),
        optional("Question") => String.t(),
        optional("RequesterAnnotation") => String.t(),
        optional("UniqueRequestToken") => String.t(),
        required("HITTypeId") => String.t(),
        required("LifetimeInSeconds") => float()
      }
      
  """
  @type create_hit_with_hit_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_hits_response() :: %{
        "HITs" => list(hit()),
        "NextToken" => String.t(),
        "NumResults" => integer()
      }
      
  """
  @type list_hits_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_expiration_for_hit_request() :: %{
        required("ExpireAt") => non_neg_integer(),
        required("HITId") => String.t()
      }
      
  """
  @type update_expiration_for_hit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_hit_request() :: %{
        required("HITId") => String.t()
      }
      
  """
  @type delete_hit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_reviewable_hits_response() :: %{
        "HITs" => list(hit()),
        "NextToken" => String.t(),
        "NumResults" => integer()
      }
      
  """
  @type list_reviewable_hits_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_qualification_type_response() :: %{
        "QualificationType" => qualification_type()
      }
      
  """
  @type get_qualification_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hit_response() :: %{
        "HIT" => hit()
      }
      
  """
  @type create_hit_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_qualification_from_worker_request() :: %{
        optional("Reason") => String.t(),
        required("QualificationTypeId") => String.t(),
        required("WorkerId") => String.t()
      }
      
  """
  @type disassociate_qualification_from_worker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_qualification_type_request() :: %{
        optional("AnswerKey") => String.t(),
        optional("AutoGranted") => boolean(),
        optional("AutoGrantedValue") => integer(),
        optional("Description") => String.t(),
        optional("QualificationTypeStatus") => list(any()),
        optional("RetryDelayInSeconds") => float(),
        optional("Test") => String.t(),
        optional("TestDurationInSeconds") => float(),
        required("QualificationTypeId") => String.t()
      }
      
  """
  @type update_qualification_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parameter_map_entry() :: %{
        "Key" => String.t(),
        "Values" => list(String.t())
      }
      
  """
  @type parameter_map_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_assignments_for_hit_request() :: %{
        optional("AssignmentStatuses") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("HITId") => String.t()
      }
      
  """
  @type list_assignments_for_hit_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_qualification_types_response() :: %{
        "NextToken" => String.t(),
        "NumResults" => integer(),
        "QualificationTypes" => list(qualification_type())
      }
      
  """
  @type list_qualification_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_hit_type_request() :: %{
        optional("AutoApprovalDelayInSeconds") => float(),
        optional("Keywords") => String.t(),
        optional("QualificationRequirements") => list(qualification_requirement()),
        required("AssignmentDurationInSeconds") => float(),
        required("Description") => String.t(),
        required("Reward") => String.t(),
        required("Title") => String.t()
      }
      
  """
  @type create_hit_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_worker_block_response() :: %{}
      
  """
  @type delete_worker_block_response() :: %{}

  @type accept_qualification_request_errors() :: request_error() | service_fault()

  @type approve_assignment_errors() :: request_error() | service_fault()

  @type associate_qualification_with_worker_errors() :: request_error() | service_fault()

  @type create_additional_assignments_for_hit_errors() :: request_error() | service_fault()

  @type create_hit_errors() :: request_error() | service_fault()

  @type create_hit_type_errors() :: request_error() | service_fault()

  @type create_hit_with_hit_type_errors() :: request_error() | service_fault()

  @type create_qualification_type_errors() :: request_error() | service_fault()

  @type create_worker_block_errors() :: request_error() | service_fault()

  @type delete_hit_errors() :: request_error() | service_fault()

  @type delete_qualification_type_errors() :: request_error() | service_fault()

  @type delete_worker_block_errors() :: request_error() | service_fault()

  @type disassociate_qualification_from_worker_errors() :: request_error() | service_fault()

  @type get_account_balance_errors() :: request_error() | service_fault()

  @type get_assignment_errors() :: request_error() | service_fault()

  @type get_file_upload_url_errors() :: request_error() | service_fault()

  @type get_hit_errors() :: request_error() | service_fault()

  @type get_qualification_score_errors() :: request_error() | service_fault()

  @type get_qualification_type_errors() :: request_error() | service_fault()

  @type list_assignments_for_hit_errors() :: request_error() | service_fault()

  @type list_bonus_payments_errors() :: request_error() | service_fault()

  @type list_hits_errors() :: request_error() | service_fault()

  @type list_hits_for_qualification_type_errors() :: request_error() | service_fault()

  @type list_qualification_requests_errors() :: request_error() | service_fault()

  @type list_qualification_types_errors() :: request_error() | service_fault()

  @type list_review_policy_results_for_hit_errors() :: request_error() | service_fault()

  @type list_reviewable_hits_errors() :: request_error() | service_fault()

  @type list_worker_blocks_errors() :: request_error() | service_fault()

  @type list_workers_with_qualification_type_errors() :: request_error() | service_fault()

  @type notify_workers_errors() :: request_error() | service_fault()

  @type reject_assignment_errors() :: request_error() | service_fault()

  @type reject_qualification_request_errors() :: request_error() | service_fault()

  @type send_bonus_errors() :: request_error() | service_fault()

  @type send_test_event_notification_errors() :: request_error() | service_fault()

  @type update_expiration_for_hit_errors() :: request_error() | service_fault()

  @type update_hit_review_status_errors() :: request_error() | service_fault()

  @type update_hit_type_of_hit_errors() :: request_error() | service_fault()

  @type update_notification_settings_errors() :: request_error() | service_fault()

  @type update_qualification_type_errors() :: request_error() | service_fault()

  def metadata do
    %{
      api_version: "2017-01-17",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mturk-requester",
      global?: true,
      hostname: nil,
      protocol: "json",
      service_id: "MTurk",
      signature_version: "v4",
      signing_name: "mturk-requester",
      target_prefix: "MTurkRequesterServiceV20170117"
    }
  end

  @doc """

  The `AcceptQualificationRequest` operation approves a Worker's request for a
  Qualification.

  Only the owner of the Qualification type can grant a Qualification request for
  that type.

  A successful request for the `AcceptQualificationRequest` operation
  returns with no errors and an empty body.
  """
  @spec accept_qualification_request(map(), accept_qualification_request_request(), list()) ::
          {:ok, accept_qualification_request_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_qualification_request_errors()}
  def accept_qualification_request(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptQualificationRequest", input, options)
  end

  @doc """

  The `ApproveAssignment` operation approves the results of a completed
  assignment.

  Approving an assignment initiates two payments from the Requester's Amazon.com
  account

    *

  The Worker who submitted the results is paid the reward specified in the HIT.

    *

  Amazon Mechanical Turk fees are debited.

  If the Requester's account does not have adequate funds for these payments,
  the call to ApproveAssignment returns an exception, and the approval is not
  processed.
  You can include an optional feedback message with the approval,
  which the Worker can see in the Status section of the web site.

  You can also call this operation for assignments that were previous rejected
  and approve them by explicitly overriding the previous rejection.
  This only works on rejected assignments that were submitted within the previous
  30 days
  and only if the assignment's related HIT has not been deleted.
  """
  @spec approve_assignment(map(), approve_assignment_request(), list()) ::
          {:ok, approve_assignment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, approve_assignment_errors()}
  def approve_assignment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ApproveAssignment", input, options)
  end

  @doc """

  The `AssociateQualificationWithWorker` operation gives a Worker a
  Qualification.

  `AssociateQualificationWithWorker` does not require that the Worker
  submit a Qualification request. It gives the Qualification directly to the
  Worker.

  You can only assign a Qualification of a Qualification type that you created
  (using
  the `CreateQualificationType` operation).

  Note: `AssociateQualificationWithWorker` does not affect any pending
  Qualification
  requests for the Qualification by the Worker. If you assign a Qualification to a
  Worker, then later grant a Qualification request made by the Worker, the
  granting of
  the request may modify the Qualification score. To resolve a pending
  Qualification
  request without affecting the Qualification the Worker already has, reject the
  request with the `RejectQualificationRequest` operation.
  """
  @spec associate_qualification_with_worker(
          map(),
          associate_qualification_with_worker_request(),
          list()
        ) ::
          {:ok, associate_qualification_with_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_qualification_with_worker_errors()}
  def associate_qualification_with_worker(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateQualificationWithWorker", input, options)
  end

  @doc """

  The
  `CreateAdditionalAssignmentsForHIT`
  operation increases the maximum number of assignments of an existing HIT.

  To extend the maximum number of assignments, specify the number of additional
  assignments.

    
  HITs created with fewer than 10 assignments cannot be extended to have 10 or
  more assignments. Attempting to add assignments in a way that brings the total
  number of assignments for a HIT from fewer than 10 assignments to 10 or more
  assignments will result in an
  `AWS.MechanicalTurk.InvalidMaximumAssignmentsIncrease`
  exception.

    
  HITs that were created before July 22, 2015 cannot be extended. Attempting to
  extend HITs that were created before July 22, 2015 will result in an
  `AWS.MechanicalTurk.HITTooOldForExtension`
  exception.
  """
  @spec create_additional_assignments_for_hit(
          map(),
          create_additional_assignments_for_hit_request(),
          list()
        ) ::
          {:ok, create_additional_assignments_for_hit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_additional_assignments_for_hit_errors()}
  def create_additional_assignments_for_hit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAdditionalAssignmentsForHIT", input, options)
  end

  @doc """
  The `CreateHIT` operation creates a new Human Intelligence Task (HIT).

  The new HIT is made available for Workers to find and accept on the Amazon
  Mechanical
  Turk website.

  This operation allows you to specify a new HIT by passing in values for the
  properties of the HIT, such as its title, reward amount and number of
  assignments. When you pass these values to `CreateHIT`, a new HIT is created for
  you, with a new `HITTypeID`. The HITTypeID can be used to create additional HITs
  in the future without needing to specify common parameters such as the title,
  description and reward amount each time.

  An alternative way to create HITs is to first generate a HITTypeID using the
  `CreateHITType` operation and then call the `CreateHITWithHITType` operation.
  This is the recommended best practice for Requesters who are creating large
  numbers of HITs.

  CreateHIT also supports several ways to provide question data: by providing a
  value
  for the `Question` parameter that fully specifies the contents of the HIT, or by
  providing
  a `HitLayoutId` and associated `HitLayoutParameters`.

  If a HIT is created with 10 or more maximum assignments, there is an additional
  fee. For more information, see
  [Amazon Mechanical Turk Pricing](https://requester.mturk.com/pricing).
  """
  @spec create_hit(map(), create_hit_request(), list()) ::
          {:ok, create_hit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_hit_errors()}
  def create_hit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateHIT", input, options)
  end

  @doc """

  The `CreateHITType` operation creates a new HIT type.

  This operation
  allows you to define a standard set of HIT properties to use when creating HITs.
  If you register a HIT type with values that match an existing HIT type, the HIT
  type
  ID of the existing type will be returned.
  """
  @spec create_hit_type(map(), create_hit_type_request(), list()) ::
          {:ok, create_hit_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_hit_type_errors()}
  def create_hit_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateHITType", input, options)
  end

  @doc """

  The `CreateHITWithHITType` operation creates a new Human Intelligence Task (HIT)
  using an existing HITTypeID generated by the `CreateHITType` operation.

  This is an alternative way to create HITs from the `CreateHIT` operation.
  This is the recommended best practice for Requesters who are creating large
  numbers of HITs.

  CreateHITWithHITType also supports several ways to provide question data:
  by providing a value for the `Question` parameter that fully specifies the
  contents of the HIT,
  or by providing a `HitLayoutId` and associated `HitLayoutParameters`.

  If a HIT is created with 10 or more maximum assignments, there is an additional
  fee.
  For more information, see [Amazon Mechanical Turk Pricing](https://requester.mturk.com/pricing).
  """
  @spec create_hit_with_hit_type(map(), create_hit_with_hit_type_request(), list()) ::
          {:ok, create_hit_with_hit_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_hit_with_hit_type_errors()}
  def create_hit_with_hit_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateHITWithHITType", input, options)
  end

  @doc """

  The
  `CreateQualificationType`
  operation creates a new Qualification type, which is represented by a
  `QualificationType`
  data structure.
  """
  @spec create_qualification_type(map(), create_qualification_type_request(), list()) ::
          {:ok, create_qualification_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_qualification_type_errors()}
  def create_qualification_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateQualificationType", input, options)
  end

  @doc """
  The `CreateWorkerBlock` operation allows you to prevent a Worker from working on
  your HITs.

  For example, you can block a Worker who is producing poor quality work. You can
  block up to 100,000 Workers.
  """
  @spec create_worker_block(map(), create_worker_block_request(), list()) ::
          {:ok, create_worker_block_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_worker_block_errors()}
  def create_worker_block(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWorkerBlock", input, options)
  end

  @doc """

  The `DeleteHIT` operation is used to delete HIT that is no longer needed.

  Only the Requester who created the HIT can delete it.

  You can only dispose of HITs that are in the `Reviewable` state,
  with all of their submitted assignments already either approved or rejected.
  If you call the DeleteHIT operation on a HIT that is not in the `Reviewable`
  state
  (for example, that has not expired, or still has active assignments),
  or on a HIT that is Reviewable but without all of its submitted assignments
  already approved or rejected, the service will return an error.

    

  HITs are automatically disposed of after 120 days.

    

  After you dispose of a HIT, you can no longer approve the HIT's rejected
  assignments.

    

  Disposed HITs are not returned in results for the ListHITs operation.

    

  Disposing HITs can improve the performance of operations such as
  ListReviewableHITs and ListHITs.
  """
  @spec delete_hit(map(), delete_hit_request(), list()) ::
          {:ok, delete_hit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_hit_errors()}
  def delete_hit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteHIT", input, options)
  end

  @doc """

  The
  `DeleteQualificationType`
  deletes a Qualification type and deletes any HIT types that are
  associated with the Qualification type.

  This operation does not revoke Qualifications already assigned
  to Workers because the Qualifications might be needed for active HITs.
  If there are any pending requests for the Qualification type, Amazon
  Mechanical Turk rejects those requests. After you delete a
  Qualification type, you can no longer use it to create HITs or HIT
  types.

  DeleteQualificationType must wait for all the HITs that use
  the deleted Qualification type to be deleted before completing. It
  may take up to 48 hours before DeleteQualificationType completes and
  the unique name of the Qualification type is available for reuse with
  CreateQualificationType.
  """
  @spec delete_qualification_type(map(), delete_qualification_type_request(), list()) ::
          {:ok, delete_qualification_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_qualification_type_errors()}
  def delete_qualification_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteQualificationType", input, options)
  end

  @doc """
  The `DeleteWorkerBlock` operation allows you to reinstate a blocked Worker to
  work on your HITs.

  This operation reverses the effects of the CreateWorkerBlock operation. You need
  the Worker ID to use this operation. If the Worker ID is missing or invalid,
  this operation fails and returns the message “WorkerId is invalid.” If the
  specified Worker is not blocked, this operation returns successfully.
  """
  @spec delete_worker_block(map(), delete_worker_block_request(), list()) ::
          {:ok, delete_worker_block_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_worker_block_errors()}
  def delete_worker_block(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWorkerBlock", input, options)
  end

  @doc """

  The `DisassociateQualificationFromWorker`
  revokes a previously granted Qualification from a user.

  You can provide a text message explaining why the Qualification was
  revoked. The user who had the Qualification can see this message.
  """
  @spec disassociate_qualification_from_worker(
          map(),
          disassociate_qualification_from_worker_request(),
          list()
        ) ::
          {:ok, disassociate_qualification_from_worker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_qualification_from_worker_errors()}
  def disassociate_qualification_from_worker(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateQualificationFromWorker", input, options)
  end

  @doc """
  The `GetAccountBalance` operation retrieves the Prepaid HITs balance in your
  Amazon Mechanical Turk account if you are a Prepaid Requester.

  Alternatively, this operation will retrieve the remaining available AWS Billing
  usage if you have enabled AWS Billing.
  Note: If you have enabled AWS Billing and still have a remaining Prepaid HITs
  balance, this balance can be viewed on the My Account page in the Requester
  console.
  """
  @spec get_account_balance(map(), get_account_balance_request(), list()) ::
          {:ok, get_account_balance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_balance_errors()}
  def get_account_balance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAccountBalance", input, options)
  end

  @doc """

  The `GetAssignment` operation retrieves the details of the specified Assignment.
  """
  @spec get_assignment(map(), get_assignment_request(), list()) ::
          {:ok, get_assignment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_assignment_errors()}
  def get_assignment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAssignment", input, options)
  end

  @doc """

  The
  `GetFileUploadURL`
  operation generates and returns a temporary URL.

  You use the
  temporary URL to retrieve a file uploaded by a Worker as an answer to
  a FileUploadAnswer question for a HIT. The temporary URL is generated
  the instant the GetFileUploadURL operation is called, and is valid
  for 60 seconds. You can get a temporary file upload URL any time
  until the HIT is disposed. After the HIT is disposed, any uploaded
  files are deleted, and cannot be retrieved.

  Pending Deprecation on December 12, 2017. The Answer Specification
  structure will no longer support the `FileUploadAnswer`
  element to be used for the QuestionForm data structure.
  Instead, we recommend that Requesters who want to create HITs asking
  Workers to upload files to use Amazon S3.
  """
  @spec get_file_upload_url(map(), get_file_upload_url_request(), list()) ::
          {:ok, get_file_upload_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_file_upload_url_errors()}
  def get_file_upload_url(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetFileUploadURL", input, options)
  end

  @doc """

  The `GetHIT` operation retrieves the details of the specified HIT.
  """
  @spec get_hit(map(), get_hit_request(), list()) ::
          {:ok, get_hit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_hit_errors()}
  def get_hit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetHIT", input, options)
  end

  @doc """

  The
  `GetQualificationScore`
  operation returns the value of a Worker's Qualification for a given
  Qualification type.

  To get a Worker's Qualification, you must know the Worker's ID. The
  Worker's ID is included in the assignment data returned by the
  `ListAssignmentsForHIT`
  operation.

  Only the owner of a Qualification type can query the value of
  a Worker's Qualification of that type.
  """
  @spec get_qualification_score(map(), get_qualification_score_request(), list()) ::
          {:ok, get_qualification_score_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_qualification_score_errors()}
  def get_qualification_score(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetQualificationScore", input, options)
  end

  @doc """

  The `GetQualificationType`operation retrieves information about a Qualification
  type using its ID.
  """
  @spec get_qualification_type(map(), get_qualification_type_request(), list()) ::
          {:ok, get_qualification_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_qualification_type_errors()}
  def get_qualification_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetQualificationType", input, options)
  end

  @doc """

  The
  `ListAssignmentsForHIT`
  operation retrieves completed assignments for a HIT.

  You can use this
  operation to retrieve the results for a HIT.

  You can get assignments for a HIT at any time, even if the
  HIT is not yet Reviewable. If a HIT requested multiple assignments,
  and has received some results but has not yet become Reviewable, you
  can still retrieve the partial results with this operation.

  Use the AssignmentStatus parameter to control which set of
  assignments for a HIT are returned. The ListAssignmentsForHIT
  operation
  can return submitted assignments awaiting approval, or it can return
  assignments that have already been approved or rejected. You can set
  AssignmentStatus=Approved,Rejected to get assignments that have
  already been approved and rejected together in one result set.

  Only the Requester who created the HIT can retrieve the
  assignments for that HIT.

  Results are sorted and divided into numbered pages and the
  operation returns a single page of results. You can use the
  parameters
  of the operation to control sorting and pagination.
  """
  @spec list_assignments_for_hit(map(), list_assignments_for_hit_request(), list()) ::
          {:ok, list_assignments_for_hit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_assignments_for_hit_errors()}
  def list_assignments_for_hit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAssignmentsForHIT", input, options)
  end

  @doc """

  The
  `ListBonusPayments`
  operation retrieves the amounts of bonuses you have paid to Workers
  for a given HIT or assignment.
  """
  @spec list_bonus_payments(map(), list_bonus_payments_request(), list()) ::
          {:ok, list_bonus_payments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_bonus_payments_errors()}
  def list_bonus_payments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBonusPayments", input, options)
  end

  @doc """

  The
  `ListHITs`
  operation returns all of a Requester's HITs.

  The operation returns
  HITs of any status, except for HITs that have been deleted of with
  the DeleteHIT operation or that have been auto-deleted.
  """
  @spec list_hits(map(), list_hits_request(), list()) ::
          {:ok, list_hits_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_hits_errors()}
  def list_hits(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListHITs", input, options)
  end

  @doc """

  The `ListHITsForQualificationType` operation returns the HITs that use
  the given Qualification type for a Qualification requirement.

  The operation returns HITs of any status, except for HITs that have been deleted
  with the `DeleteHIT` operation or that have been auto-deleted.
  """
  @spec list_hits_for_qualification_type(
          map(),
          list_hits_for_qualification_type_request(),
          list()
        ) ::
          {:ok, list_hits_for_qualification_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_hits_for_qualification_type_errors()}
  def list_hits_for_qualification_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListHITsForQualificationType", input, options)
  end

  @doc """

  The
  `ListQualificationRequests`
  operation retrieves requests for Qualifications of a particular
  Qualification type.

  The owner of the Qualification type calls this
  operation to poll for pending requests, and accepts them using the
  AcceptQualification operation.
  """
  @spec list_qualification_requests(map(), list_qualification_requests_request(), list()) ::
          {:ok, list_qualification_requests_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_qualification_requests_errors()}
  def list_qualification_requests(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListQualificationRequests", input, options)
  end

  @doc """

  The
  `ListQualificationTypes`
  operation returns a list of Qualification types, filtered by
  an optional search term.
  """
  @spec list_qualification_types(map(), list_qualification_types_request(), list()) ::
          {:ok, list_qualification_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_qualification_types_errors()}
  def list_qualification_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListQualificationTypes", input, options)
  end

  @doc """

  The `ListReviewPolicyResultsForHIT` operation retrieves the computed results
  and the actions taken in the course of executing your Review Policies for a
  given HIT.

  For information about how to specify Review Policies when you call CreateHIT,
  see Review Policies. The ListReviewPolicyResultsForHIT operation can return
  results for both
  Assignment-level and HIT-level review results.
  """
  @spec list_review_policy_results_for_hit(
          map(),
          list_review_policy_results_for_hit_request(),
          list()
        ) ::
          {:ok, list_review_policy_results_for_hit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_review_policy_results_for_hit_errors()}
  def list_review_policy_results_for_hit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListReviewPolicyResultsForHIT", input, options)
  end

  @doc """

  The `ListReviewableHITs` operation retrieves the HITs with Status equal to
  Reviewable or Status equal to Reviewing that belong to the Requester calling the
  operation.
  """
  @spec list_reviewable_hits(map(), list_reviewable_hits_request(), list()) ::
          {:ok, list_reviewable_hits_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_reviewable_hits_errors()}
  def list_reviewable_hits(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListReviewableHITs", input, options)
  end

  @doc """
  The `ListWorkersBlocks` operation retrieves a list of Workers who are blocked
  from working on your HITs.
  """
  @spec list_worker_blocks(map(), list_worker_blocks_request(), list()) ::
          {:ok, list_worker_blocks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_worker_blocks_errors()}
  def list_worker_blocks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWorkerBlocks", input, options)
  end

  @doc """

  The `ListWorkersWithQualificationType` operation returns all of the Workers
  that have been associated with a given Qualification type.
  """
  @spec list_workers_with_qualification_type(
          map(),
          list_workers_with_qualification_type_request(),
          list()
        ) ::
          {:ok, list_workers_with_qualification_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workers_with_qualification_type_errors()}
  def list_workers_with_qualification_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWorkersWithQualificationType", input, options)
  end

  @doc """

  The
  `NotifyWorkers`
  operation sends an email to one or more Workers that you specify with
  the Worker ID.

  You can specify up to 100 Worker IDs to send the same
  message with a single call to the NotifyWorkers operation. The
  NotifyWorkers operation will send a notification email to a Worker
  only if you have previously approved or rejected work from the
  Worker.
  """
  @spec notify_workers(map(), notify_workers_request(), list()) ::
          {:ok, notify_workers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, notify_workers_errors()}
  def notify_workers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "NotifyWorkers", input, options)
  end

  @doc """

  The `RejectAssignment` operation rejects the results of a completed assignment.

  You can include an optional feedback message with the rejection,
  which the Worker can see in the Status section of the web site.
  When you include a feedback message with the rejection,
  it helps the Worker understand why the assignment was rejected,
  and can improve the quality of the results the Worker submits in the future.

  Only the Requester who created the HIT can reject an assignment for the HIT.
  """
  @spec reject_assignment(map(), reject_assignment_request(), list()) ::
          {:ok, reject_assignment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_assignment_errors()}
  def reject_assignment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RejectAssignment", input, options)
  end

  @doc """

  The
  `RejectQualificationRequest`
  operation rejects a user's request for a Qualification.

  You can provide a text message explaining why the request was
  rejected. The Worker who made the request can see this message.
  """
  @spec reject_qualification_request(map(), reject_qualification_request_request(), list()) ::
          {:ok, reject_qualification_request_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_qualification_request_errors()}
  def reject_qualification_request(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RejectQualificationRequest", input, options)
  end

  @doc """

  The
  `SendBonus`
  operation issues a payment of money from your account to a Worker.

  This payment happens separately from the reward you pay to the Worker
  when you approve the Worker's assignment. The SendBonus operation
  requires the Worker's ID and the assignment ID as parameters to
  initiate payment of the bonus. You must include a message that
  explains the reason for the bonus payment, as the Worker may not be
  expecting the payment. Amazon Mechanical Turk collects a fee for
  bonus payments, similar to the HIT listing fee. This operation fails
  if your account does not have enough funds to pay for both the bonus
  and the fees.
  """
  @spec send_bonus(map(), send_bonus_request(), list()) ::
          {:ok, send_bonus_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_bonus_errors()}
  def send_bonus(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendBonus", input, options)
  end

  @doc """

  The `SendTestEventNotification` operation causes Amazon Mechanical Turk to send
  a notification message as if a HIT event occurred, according to the provided
  notification specification.

  This allows you to test notifications without
  setting up notifications for a real HIT type and trying to trigger them using
  the website.
  When you call this operation, the service attempts to send the test notification
  immediately.
  """
  @spec send_test_event_notification(map(), send_test_event_notification_request(), list()) ::
          {:ok, send_test_event_notification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_test_event_notification_errors()}
  def send_test_event_notification(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendTestEventNotification", input, options)
  end

  @doc """

  The `UpdateExpirationForHIT` operation allows you update the expiration time of
  a HIT.

  If you update it to a time in the past, the HIT will be immediately expired.
  """
  @spec update_expiration_for_hit(map(), update_expiration_for_hit_request(), list()) ::
          {:ok, update_expiration_for_hit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_expiration_for_hit_errors()}
  def update_expiration_for_hit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateExpirationForHIT", input, options)
  end

  @doc """

  The `UpdateHITReviewStatus` operation updates the status of a HIT.

  If the status is Reviewable, this operation can update the status to Reviewing,
  or it can revert a Reviewing HIT back to the Reviewable status.
  """
  @spec update_hit_review_status(map(), update_hit_review_status_request(), list()) ::
          {:ok, update_hit_review_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_hit_review_status_errors()}
  def update_hit_review_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateHITReviewStatus", input, options)
  end

  @doc """

  The
  `UpdateHITTypeOfHIT`
  operation allows you to change the HITType properties of a HIT.

  This
  operation disassociates the HIT from its old HITType properties and
  associates it with the new HITType properties. The HIT takes on the
  properties of the new HITType in place of the old ones.
  """
  @spec update_hit_type_of_hit(map(), update_hit_type_of_hit_request(), list()) ::
          {:ok, update_hit_type_of_hit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_hit_type_of_hit_errors()}
  def update_hit_type_of_hit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateHITTypeOfHIT", input, options)
  end

  @doc """

  The `UpdateNotificationSettings` operation creates, updates,
  disables or re-enables notifications for a HIT type.

  If you call the UpdateNotificationSettings operation for a HIT type that already
  has a
  notification specification, the operation replaces the old specification with a
  new one.
  You can call the UpdateNotificationSettings operation to enable or disable
  notifications
  for the HIT type, without having to modify the notification specification itself
  by providing
  updates to the Active status without specifying a new notification
  specification.
  To change the Active status of a HIT type's notifications,
  the HIT type must already have a notification specification,
  or one must be provided in the same call to `UpdateNotificationSettings`.
  """
  @spec update_notification_settings(map(), update_notification_settings_request(), list()) ::
          {:ok, update_notification_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_notification_settings_errors()}
  def update_notification_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateNotificationSettings", input, options)
  end

  @doc """

  The
  `UpdateQualificationType`
  operation modifies the attributes of an existing Qualification type,
  which is represented by a QualificationType data structure.

  Only the
  owner of a Qualification type can modify its attributes.

  Most attributes of a Qualification type can be changed after
  the type has been created. However, the Name and Keywords fields
  cannot be modified. The RetryDelayInSeconds parameter can be modified
  or added to change the delay or to enable retries, but
  RetryDelayInSeconds cannot be used to disable retries.

  You can use this operation to update the test for a
  Qualification type. The test is updated based on the values specified
  for the Test, TestDurationInSeconds and AnswerKey parameters. All
  three parameters specify the updated test. If you are updating the
  test for a type, you must specify the Test and TestDurationInSeconds
  parameters. The AnswerKey parameter is optional; omitting it specifies
  that the updated test does not have an answer key.

  If you omit the Test parameter, the test for the
  Qualification type is unchanged. There is no way to remove a test from
  a Qualification type that has one. If the type already has a test, you
  cannot update it to be AutoGranted. If the Qualification type does not
  have a test and one is provided by an update, the type will henceforth
  have a test.

  If you want to update the test duration or answer key for an
  existing test without changing the questions, you must specify a Test
  parameter with the original questions, along with the updated values.

  If you provide an updated Test but no AnswerKey, the new test
  will not have an answer key. Requests for such Qualifications must be
  granted manually.

  You can also update the AutoGranted and AutoGrantedValue
  attributes of the Qualification type.
  """
  @spec update_qualification_type(map(), update_qualification_type_request(), list()) ::
          {:ok, update_qualification_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_qualification_type_errors()}
  def update_qualification_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateQualificationType", input, options)
  end
end
