# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SecurityIR do
  @moduledoc """
  This guide documents the action and response elements for use of the service.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      case_attachment_attributes() :: %{
        "attachmentId" => String.t() | atom(),
        "attachmentStatus" => list(any()),
        "createdDate" => [non_neg_integer()],
        "creator" => String.t() | atom(),
        "fileName" => String.t() | atom()
      }

  """
  @type case_attachment_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_membership_response() :: %{
        "accountId" => String.t() | atom(),
        "customerType" => list(any()),
        "incidentResponseTeam" => list(incident_responder()),
        "membershipAccountsConfigurations" => membership_accounts_configurations(),
        "membershipActivationTimestamp" => [non_neg_integer()],
        "membershipArn" => String.t() | atom(),
        "membershipDeactivationTimestamp" => [non_neg_integer()],
        "membershipId" => String.t() | atom(),
        "membershipName" => String.t() | atom(),
        "membershipStatus" => list(any()),
        "numberOfAccountsCovered" => [float()],
        "optInFeatures" => list(opt_in_feature()),
        "region" => list(any())
      }

  """
  @type get_membership_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      security_incident_response_not_active_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type security_incident_response_not_active_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_membership_account_detail_error() :: %{
        "accountId" => String.t() | atom(),
        "error" => [String.t() | atom()],
        "message" => [String.t() | atom()]
      }

  """
  @type get_membership_account_detail_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_membership_item() :: %{
        "accountId" => String.t() | atom(),
        "membershipArn" => String.t() | atom(),
        "membershipId" => String.t() | atom(),
        "membershipStatus" => list(any()),
        "region" => list(any())
      }

  """
  @type list_membership_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_membership_account_detail_item() :: %{
        "accountId" => String.t() | atom(),
        "relationshipStatus" => list(any()),
        "relationshipType" => list(any())
      }

  """
  @type get_membership_account_detail_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_case_comment_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        required("body") => String.t() | atom()
      }

  """
  @type create_case_comment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      watcher() :: %{
        "email" => String.t() | atom(),
        "jobTitle" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type watcher() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_memberships_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_memberships_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      impacted_aws_region() :: %{
        "region" => list(any())
      }

  """
  @type impacted_aws_region() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_case_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("impactedAwsRegions") => list(impacted_aws_region()),
        optional("impactedServices") => list(String.t() | atom()),
        optional("tags") => map(),
        optional("threatActorIpAddresses") => list(threat_actor_ip()),
        required("description") => String.t() | atom(),
        required("engagementType") => list(any()),
        required("impactedAccounts") => list(String.t() | atom()),
        required("reportedIncidentStartDate") => [non_neg_integer()],
        required("resolverType") => list(any()),
        required("title") => String.t() | atom(),
        required("watchers") => list(watcher())
      }

  """
  @type create_case_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      incident_responder() :: %{
        "email" => String.t() | atom(),
        "jobTitle" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type incident_responder() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      membership_accounts_configurations() :: %{
        "coverEntireOrganization" => [boolean()],
        "organizationalUnits" => list(String.t() | atom())
      }

  """
  @type membership_accounts_configurations() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_case_response() :: %{
        "caseId" => String.t() | atom()
      }

  """
  @type create_case_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_member_account_details_request() :: %{
        required("accountIds") => list(String.t() | atom())
      }

  """
  @type batch_get_member_account_details_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_resolver_type_response() :: %{
        "caseId" => String.t() | atom(),
        "caseStatus" => list(any()),
        "resolverType" => list(any())
      }

  """
  @type update_resolver_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_cases_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_cases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_case_response() :: %{
        "actualIncidentStartDate" => [non_neg_integer()],
        "caseArn" => String.t() | atom(),
        "caseAttachments" => list(case_attachment_attributes()),
        "caseStatus" => list(any()),
        "closedDate" => [non_neg_integer()],
        "closureCode" => list(any()),
        "createdDate" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "engagementType" => list(any()),
        "impactedAccounts" => list(String.t() | atom()),
        "impactedAwsRegions" => list(impacted_aws_region()),
        "impactedServices" => list(String.t() | atom()),
        "lastUpdatedDate" => [non_neg_integer()],
        "pendingAction" => list(any()),
        "reportedIncidentStartDate" => [non_neg_integer()],
        "resolverType" => list(any()),
        "threatActorIpAddresses" => list(threat_actor_ip()),
        "title" => String.t() | atom(),
        "watchers" => list(watcher())
      }

  """
  @type get_case_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_cases_response() :: %{
        "items" => list(list_cases_item()),
        "nextToken" => [String.t() | atom()],
        "total" => [float()]
      }

  """
  @type list_cases_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_comments_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_comments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_cases_item() :: %{
        "caseArn" => String.t() | atom(),
        "caseId" => String.t() | atom(),
        "caseStatus" => list(any()),
        "closedDate" => [non_neg_integer()],
        "createdDate" => [non_neg_integer()],
        "engagementType" => list(any()),
        "lastUpdatedDate" => [non_neg_integer()],
        "pendingAction" => list(any()),
        "resolverType" => list(any()),
        "title" => String.t() | atom()
      }

  """
  @type list_cases_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      close_case_response() :: %{
        "caseStatus" => list(any()),
        "closedDate" => [non_neg_integer()]
      }

  """
  @type close_case_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_case_attachment_download_url_request() :: %{}

  """
  @type get_case_attachment_download_url_request() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      membership_accounts_configurations_update() :: %{
        "coverEntireOrganization" => [boolean()],
        "organizationalUnitsToAdd" => list(String.t() | atom()),
        "organizationalUnitsToRemove" => list(String.t() | atom())
      }

  """
  @type membership_accounts_configurations_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_case_attachment_upload_url_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        required("contentLength") => float(),
        required("fileName") => String.t() | atom()
      }

  """
  @type get_case_attachment_upload_url_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_case_request() :: %{}

  """
  @type get_case_request() :: %{}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()],
        "serviceCode" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_case_edits_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_case_edits_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_membership_response() :: %{}

  """
  @type update_membership_response() :: %{}

  @typedoc """

  ## Example:

      update_case_status_response() :: %{
        "caseStatus" => list(any())
      }

  """
  @type update_case_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_case_attachment_download_url_response() :: %{
        "attachmentPresignedUrl" => String.t() | atom()
      }

  """
  @type get_case_attachment_download_url_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_case_comment_request() :: %{
        required("body") => String.t() | atom()
      }

  """
  @type update_case_comment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_case_edits_response() :: %{
        "items" => list(case_edit_item()),
        "nextToken" => [String.t() | atom()],
        "total" => [integer()]
      }

  """
  @type list_case_edits_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      close_case_request() :: %{}

  """
  @type close_case_request() :: %{}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      update_case_status_request() :: %{
        required("caseStatus") => list(any())
      }

  """
  @type update_case_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_membership_request() :: %{}

  """
  @type get_membership_request() :: %{}

  @typedoc """

  ## Example:

      update_membership_request() :: %{
        optional("incidentResponseTeam") => list(incident_responder()),
        optional("membershipAccountsConfigurationsUpdate") => membership_accounts_configurations_update(),
        optional("membershipName") => String.t() | atom(),
        optional("optInFeatures") => list(opt_in_feature()),
        optional("undoMembershipCancellation") => [boolean()]
      }

  """
  @type update_membership_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_case_request() :: %{
        optional("actualIncidentStartDate") => [non_neg_integer()],
        optional("description") => String.t() | atom(),
        optional("engagementType") => list(any()),
        optional("impactedAccountsToAdd") => list(String.t() | atom()),
        optional("impactedAccountsToDelete") => list(String.t() | atom()),
        optional("impactedAwsRegionsToAdd") => list(impacted_aws_region()),
        optional("impactedAwsRegionsToDelete") => list(impacted_aws_region()),
        optional("impactedServicesToAdd") => list(String.t() | atom()),
        optional("impactedServicesToDelete") => list(String.t() | atom()),
        optional("reportedIncidentStartDate") => [non_neg_integer()],
        optional("threatActorIpAddressesToAdd") => list(threat_actor_ip()),
        optional("threatActorIpAddressesToDelete") => list(threat_actor_ip()),
        optional("title") => String.t() | atom(),
        optional("watchersToAdd") => list(watcher()),
        optional("watchersToDelete") => list(watcher())
      }

  """
  @type update_case_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      opt_in_feature() :: %{
        "featureName" => list(any()),
        "isEnabled" => [boolean()]
      }

  """
  @type opt_in_feature() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      case_edit_item() :: %{
        "action" => String.t() | atom(),
        "eventTimestamp" => [non_neg_integer()],
        "message" => String.t() | atom(),
        "principal" => [String.t() | atom()]
      }

  """
  @type case_edit_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_memberships_response() :: %{
        "items" => list(list_membership_item()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_memberships_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_case_attachment_upload_url_response() :: %{
        "attachmentPresignedUrl" => String.t() | atom()
      }

  """
  @type get_case_attachment_upload_url_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_member_account_details_response() :: %{
        "errors" => list(get_membership_account_detail_error()),
        "items" => list(get_membership_account_detail_item())
      }

  """
  @type batch_get_member_account_details_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_case_comment_response() :: %{
        "body" => String.t() | atom(),
        "commentId" => String.t() | atom()
      }

  """
  @type update_case_comment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_comments_item() :: %{
        "body" => String.t() | atom(),
        "commentId" => String.t() | atom(),
        "createdDate" => [non_neg_integer()],
        "creator" => String.t() | atom(),
        "lastUpdatedBy" => String.t() | atom(),
        "lastUpdatedDate" => [non_neg_integer()]
      }

  """
  @type list_comments_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_case_comment_response() :: %{
        "commentId" => String.t() | atom()
      }

  """
  @type create_case_comment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_resolver_type_request() :: %{
        required("resolverType") => list(any())
      }

  """
  @type update_resolver_type_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_membership_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("coverEntireOrganization") => [boolean()],
        optional("optInFeatures") => list(opt_in_feature()),
        optional("tags") => map(),
        required("incidentResponseTeam") => list(incident_responder()),
        required("membershipName") => String.t() | atom()
      }

  """
  @type create_membership_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_membership_request() :: %{}

  """
  @type cancel_membership_request() :: %{}

  @typedoc """

  ## Example:

      update_case_response() :: %{}

  """
  @type update_case_response() :: %{}

  @typedoc """

  ## Example:

      list_comments_response() :: %{
        "items" => list(list_comments_item()),
        "nextToken" => [String.t() | atom()],
        "total" => [integer()]
      }

  """
  @type list_comments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_token_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type invalid_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_membership_response() :: %{
        "membershipId" => String.t() | atom()
      }

  """
  @type create_membership_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_membership_response() :: %{
        "membershipId" => String.t() | atom()
      }

  """
  @type cancel_membership_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      threat_actor_ip() :: %{
        "ipAddress" => String.t() | atom(),
        "userAgent" => String.t() | atom()
      }

  """
  @type threat_actor_ip() :: %{(String.t() | atom()) => any()}

  @type list_tags_for_resource_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "security-ir",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Security IR",
      signature_version: "v4",
      signing_name: "security-ir",
      target_prefix: nil
    }
  end

  @doc """
  Provides information on whether the supplied account IDs are associated with a
  membership.

  AWS account ID's may appear less than 12 characters and need to be
  zero-prepended. An example would be `123123123` which is nine digits, and with
  zero-prepend would be `000123123123`. Not zero-prepending to 12 digits could
  result in errors.
  """
  @spec batch_get_member_account_details(
          map(),
          String.t() | atom(),
          batch_get_member_account_details_request(),
          list()
        ) ::
          {:ok, batch_get_member_account_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def batch_get_member_account_details(%Client{} = client, membership_id, input, options \\ []) do
    url_path = "/v1/membership/#{AWS.Util.encode_uri(membership_id)}/batch-member-details"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Cancels an existing membership.
  """
  @spec cancel_membership(map(), String.t() | atom(), cancel_membership_request(), list()) ::
          {:ok, cancel_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def cancel_membership(%Client{} = client, membership_id, input, options \\ []) do
    url_path = "/v1/membership/#{AWS.Util.encode_uri(membership_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Closes an existing case.
  """
  @spec close_case(map(), String.t() | atom(), close_case_request(), list()) ::
          {:ok, close_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def close_case(%Client{} = client, case_id, input, options \\ []) do
    url_path = "/v1/cases/#{AWS.Util.encode_uri(case_id)}/close-case"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new case.
  """
  @spec create_case(map(), create_case_request(), list()) ::
          {:ok, create_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def create_case(%Client{} = client, input, options \\ []) do
    url_path = "/v1/create-case"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Adds a comment to an existing case.
  """
  @spec create_case_comment(map(), String.t() | atom(), create_case_comment_request(), list()) ::
          {:ok, create_case_comment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def create_case_comment(%Client{} = client, case_id, input, options \\ []) do
    url_path = "/v1/cases/#{AWS.Util.encode_uri(case_id)}/create-comment"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new membership.
  """
  @spec create_membership(map(), create_membership_request(), list()) ::
          {:ok, create_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def create_membership(%Client{} = client, input, options \\ []) do
    url_path = "/v1/membership"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Returns the attributes of a case.
  """
  @spec get_case(map(), String.t() | atom(), list()) ::
          {:ok, get_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_case(%Client{} = client, case_id, options \\ []) do
    url_path = "/v1/cases/#{AWS.Util.encode_uri(case_id)}/get-case"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a Pre-Signed URL for uploading attachments into a case.
  """
  @spec get_case_attachment_download_url(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_case_attachment_download_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_case_attachment_download_url(%Client{} = client, attachment_id, case_id, options \\ []) do
    url_path =
      "/v1/cases/#{AWS.Util.encode_uri(case_id)}/get-presigned-url/#{AWS.Util.encode_uri(attachment_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 201)
  end

  @doc """
  Uploads an attachment to a case.
  """
  @spec get_case_attachment_upload_url(
          map(),
          String.t() | atom(),
          get_case_attachment_upload_url_request(),
          list()
        ) ::
          {:ok, get_case_attachment_upload_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_case_attachment_upload_url(%Client{} = client, case_id, input, options \\ []) do
    url_path = "/v1/cases/#{AWS.Util.encode_uri(case_id)}/get-presigned-url"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Returns the attributes of a membership.
  """
  @spec get_membership(map(), String.t() | atom(), list()) ::
          {:ok, get_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_membership(%Client{} = client, membership_id, options \\ []) do
    url_path = "/v1/membership/#{AWS.Util.encode_uri(membership_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Views the case history for edits made to a designated case.
  """
  @spec list_case_edits(map(), String.t() | atom(), list_case_edits_request(), list()) ::
          {:ok, list_case_edits_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_case_edits(%Client{} = client, case_id, input, options \\ []) do
    url_path = "/v1/cases/#{AWS.Util.encode_uri(case_id)}/list-case-edits"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists all cases the requester has access to.
  """
  @spec list_cases(map(), list_cases_request(), list()) ::
          {:ok, list_cases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_cases(%Client{} = client, input, options \\ []) do
    url_path = "/v1/list-cases"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns comments for a designated case.
  """
  @spec list_comments(map(), String.t() | atom(), list_comments_request(), list()) ::
          {:ok, list_comments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_comments(%Client{} = client, case_id, input, options \\ []) do
    url_path = "/v1/cases/#{AWS.Util.encode_uri(case_id)}/list-comments"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns the memberships that the calling principal can access.
  """
  @spec list_memberships(map(), list_memberships_request(), list()) ::
          {:ok, list_memberships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_memberships(%Client{} = client, input, options \\ []) do
    url_path = "/v1/memberships"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns currently configured tags on a resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds a tag(s) to a designated resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes a tag(s) from a designate resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing case.
  """
  @spec update_case(map(), String.t() | atom(), update_case_request(), list()) ::
          {:ok, update_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def update_case(%Client{} = client, case_id, input, options \\ []) do
    url_path = "/v1/cases/#{AWS.Util.encode_uri(case_id)}/update-case"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing case comment.
  """
  @spec update_case_comment(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_case_comment_request(),
          list()
        ) ::
          {:ok, update_case_comment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def update_case_comment(%Client{} = client, case_id, comment_id, input, options \\ []) do
    url_path =
      "/v1/cases/#{AWS.Util.encode_uri(case_id)}/update-case-comment/#{AWS.Util.encode_uri(comment_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the state transitions for a designated cases.

  **Self-managed**: the following states are available for self-managed cases.

    * Submitted → Detection and Analysis

    * Detection and Analysis → Containment, Eradication, and Recovery

    * Detection and Analysis → Post-incident Activities

    * Containment, Eradication, and Recovery → Detection and Analysis

    * Containment, Eradication, and Recovery → Post-incident Activities

    * Post-incident Activities → Containment, Eradication, and Recovery

    * Post-incident Activities → Detection and Analysis

    * Any → Closed

  **AWS supported**: You must use the `CloseCase` API to close.
  """
  @spec update_case_status(map(), String.t() | atom(), update_case_status_request(), list()) ::
          {:ok, update_case_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def update_case_status(%Client{} = client, case_id, input, options \\ []) do
    url_path = "/v1/cases/#{AWS.Util.encode_uri(case_id)}/update-case-status"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Updates membership configuration.
  """
  @spec update_membership(map(), String.t() | atom(), update_membership_request(), list()) ::
          {:ok, update_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def update_membership(%Client{} = client, membership_id, input, options \\ []) do
    url_path = "/v1/membership/#{AWS.Util.encode_uri(membership_id)}/update-membership"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the resolver type for a case.

  This is a one-way action and cannot be reversed.
  """
  @spec update_resolver_type(map(), String.t() | atom(), update_resolver_type_request(), list()) ::
          {:ok, update_resolver_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def update_resolver_type(%Client{} = client, case_id, input, options \\ []) do
    url_path = "/v1/cases/#{AWS.Util.encode_uri(case_id)}/update-resolver-type"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
