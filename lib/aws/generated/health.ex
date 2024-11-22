# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Health do
  @moduledoc """
  Health

  The Health API provides access to the Health information that appears in the
  [Health Dashboard](https://health.aws.amazon.com/health/home).  You can use
  the API operations to get information about events that might affect your Amazon
  Web Services services and resources.

  You must have a Business, Enterprise On-Ramp, or Enterprise Support plan from
  [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/) to use the
  Health API. If you call the Health API from an
  Amazon Web Services account that doesn't have a Business, Enterprise On-Ramp, or
  Enterprise Support plan, you receive a
  `SubscriptionRequiredException` error.

  For API access, you need an access key ID and a secret access key. Use temporary
  credentials instead of long-term access keys when possible. Temporary
  credentials include
  an access key ID, a secret access key, and a security token that indicates when
  the
  credentials expire. For more information, see [Best practices for managing Amazon Web Services access
  keys](https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html)
  in the *Amazon Web Services General Reference*.

  You can use the Health endpoint health.us-east-1.amazonaws.com (HTTPS) to call
  the
  Health API operations. Health supports a multi-Region application architecture
  and has two regional endpoints in an active-passive configuration. You can use
  the high
  availability endpoint example to determine which Amazon Web Services Region is
  active, so that you can
  get the latest information from the API. For more information, see [Accessing the Health
  API](https://docs.aws.amazon.com/health/latest/ug/health-api.html) in the
  *Health User Guide*.

  For authentication of requests, Health uses the [Signature Version 4 Signing Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  If your Amazon Web Services account is part of Organizations, you can use the
  Health organizational
  view feature. This feature provides a centralized view of Health events across
  all
  accounts in your organization. You can aggregate Health events in real time to
  identify accounts in your organization that are affected by an operational event
  or get
  notified of security vulnerabilities. Use the organizational view API operations
  to enable
  this feature and return event information. For more information, see
  [Aggregating Health
  events](https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html) in
  the *Health User Guide*.

  When you use the Health API operations to return Health events, see the
  following recommendations:

    
  Use the
  [eventScopeCode](https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html#AWSHealth-Type-Event-eventScopeCode)
  parameter to specify whether to return Health
  events that are public or account-specific.

    
  Use pagination to view all events from the response. For example, if you call
  the `DescribeEventsForOrganization` operation to get all events in your
  organization, you might receive several page results. Specify the
  `nextToken` in the next request to return more results.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      describe_events_for_organization_response() :: %{
        "events" => list(organization_event()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_events_for_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_locale() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_locale() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_entity_aggregate() :: %{
        "accountId" => String.t(),
        "count" => integer(),
        "statuses" => map()
      }
      
  """
  @type account_entity_aggregate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_event_filter() :: %{
        "awsAccountIds" => list(String.t()()),
        "endTime" => date_time_range(),
        "entityArns" => list(String.t()()),
        "entityValues" => list(String.t()()),
        "eventStatusCodes" => list(list(any())()),
        "eventTypeCategories" => list(list(any())()),
        "eventTypeCodes" => list(String.t()()),
        "lastUpdatedTime" => date_time_range(),
        "regions" => list(String.t()()),
        "services" => list(String.t()()),
        "startTime" => date_time_range()
      }
      
  """
  @type organization_event_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_details_for_organization_request() :: %{
        optional("locale") => String.t(),
        required("organizationEventDetailFilters") => list(event_account_filter()())
      }
      
  """
  @type describe_event_details_for_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_affected_accounts_for_organization_response() :: %{
        "affectedAccounts" => list(String.t()()),
        "eventScopeCode" => list(any()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_affected_accounts_for_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_pagination_token() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_pagination_token() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      affected_entity() :: %{
        "awsAccountId" => String.t(),
        "entityArn" => String.t(),
        "entityMetadata" => map(),
        "entityUrl" => String.t(),
        "entityValue" => String.t(),
        "eventArn" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "statusCode" => list(any()),
        "tags" => map()
      }
      
  """
  @type affected_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_entity_aggregates_response() :: %{
        "entityAggregates" => list(entity_aggregate()())
      }
      
  """
  @type describe_entity_aggregates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_details() :: %{
        "event" => event(),
        "eventDescription" => event_description(),
        "eventMetadata" => map()
      }
      
  """
  @type event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_event_details_error_item() :: %{
        "awsAccountId" => String.t(),
        "errorMessage" => String.t(),
        "errorName" => String.t(),
        "eventArn" => String.t()
      }
      
  """
  @type organization_event_details_error_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_event_details() :: %{
        "awsAccountId" => String.t(),
        "event" => event(),
        "eventDescription" => event_description(),
        "eventMetadata" => map()
      }
      
  """
  @type organization_event_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_filter() :: %{
        "entityArns" => list(String.t()()),
        "entityValues" => list(String.t()()),
        "eventArns" => list(String.t()()),
        "lastUpdatedTimes" => list(date_time_range()()),
        "statusCodes" => list(list(any())()),
        "tags" => list(map()())
      }
      
  """
  @type entity_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_description() :: %{
        "latestDescription" => String.t()
      }
      
  """
  @type event_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_affected_entities_for_organization_request() :: %{
        optional("locale") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("organizationEntityAccountFilters") => list(entity_account_filter()()),
        optional("organizationEntityFilters") => list(event_account_filter()())
      }
      
  """
  @type describe_affected_entities_for_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_affected_entities_for_organization_response() :: %{
        "entities" => list(affected_entity()()),
        "failedSet" => list(organization_affected_entities_error_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_affected_entities_for_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_account_filter() :: %{
        "awsAccountId" => String.t(),
        "eventArn" => String.t()
      }
      
  """
  @type event_account_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_entity_aggregates_for_organization_response() :: %{
        "organizationEntityAggregates" => list(organization_entity_aggregate()())
      }
      
  """
  @type describe_entity_aggregates_for_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_entity_aggregates_for_organization_request() :: %{
        optional("awsAccountIds") => list(String.t()()),
        required("eventArns") => list(String.t()())
      }
      
  """
  @type describe_entity_aggregates_for_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_details_request() :: %{
        optional("locale") => String.t(),
        required("eventArns") => list(String.t()())
      }
      
  """
  @type describe_event_details_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_types_response() :: %{
        "eventTypes" => list(event_type()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_event_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_entity_aggregates_request() :: %{
        optional("eventArns") => list(String.t()())
      }
      
  """
  @type describe_entity_aggregates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_aggregate() :: %{
        "count" => integer(),
        "eventArn" => String.t(),
        "statuses" => map()
      }
      
  """
  @type entity_aggregate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_affected_entities_response() :: %{
        "entities" => list(affected_entity()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_affected_entities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_health_service_status_for_organization_response() :: %{
        "healthServiceAccessStatusForOrganization" => String.t()
      }
      
  """
  @type describe_health_service_status_for_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_entity_aggregate() :: %{
        "accounts" => list(account_entity_aggregate()()),
        "count" => integer(),
        "eventArn" => String.t(),
        "statuses" => map()
      }
      
  """
  @type organization_entity_aggregate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_affected_accounts_for_organization_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("eventArn") => String.t()
      }
      
  """
  @type describe_affected_accounts_for_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity_account_filter() :: %{
        "awsAccountId" => String.t(),
        "eventArn" => String.t(),
        "statusCodes" => list(list(any())())
      }
      
  """
  @type entity_account_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_affected_entities_error_item() :: %{
        "awsAccountId" => String.t(),
        "errorMessage" => String.t(),
        "errorName" => String.t(),
        "eventArn" => String.t()
      }
      
  """
  @type organization_affected_entities_error_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      date_time_range() :: %{
        "from" => non_neg_integer(),
        "to" => non_neg_integer()
      }
      
  """
  @type date_time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_filter() :: %{
        "availabilityZones" => list(String.t()()),
        "endTimes" => list(date_time_range()()),
        "entityArns" => list(String.t()()),
        "entityValues" => list(String.t()()),
        "eventArns" => list(String.t()()),
        "eventStatusCodes" => list(list(any())()),
        "eventTypeCategories" => list(list(any())()),
        "eventTypeCodes" => list(String.t()()),
        "lastUpdatedTimes" => list(date_time_range()()),
        "regions" => list(String.t()()),
        "services" => list(String.t()()),
        "startTimes" => list(date_time_range()()),
        "tags" => list(map()())
      }
      
  """
  @type event_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_aggregates_request() :: %{
        optional("filter") => event_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("aggregateField") => list(any())
      }
      
  """
  @type describe_event_aggregates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_events_for_organization_request() :: %{
        optional("filter") => organization_event_filter(),
        optional("locale") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_events_for_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "arn" => String.t(),
        "availabilityZone" => String.t(),
        "endTime" => non_neg_integer(),
        "eventScopeCode" => list(any()),
        "eventTypeCategory" => list(any()),
        "eventTypeCode" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "region" => String.t(),
        "service" => String.t(),
        "startTime" => non_neg_integer(),
        "statusCode" => list(any())
      }
      
  """
  @type event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_events_request() :: %{
        optional("filter") => event_filter(),
        optional("locale") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_aggregates_response() :: %{
        "eventAggregates" => list(event_aggregate()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_event_aggregates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_type_filter() :: %{
        "eventTypeCategories" => list(list(any())()),
        "eventTypeCodes" => list(String.t()()),
        "services" => list(String.t()())
      }
      
  """
  @type event_type_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_details_for_organization_response() :: %{
        "failedSet" => list(organization_event_details_error_item()()),
        "successfulSet" => list(organization_event_details()())
      }
      
  """
  @type describe_event_details_for_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_types_request() :: %{
        optional("filter") => event_type_filter(),
        optional("locale") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_event_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_type() :: %{
        "category" => list(any()),
        "code" => String.t(),
        "service" => String.t()
      }
      
  """
  @type event_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_event() :: %{
        "arn" => String.t(),
        "endTime" => non_neg_integer(),
        "eventScopeCode" => list(any()),
        "eventTypeCategory" => list(any()),
        "eventTypeCode" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "region" => String.t(),
        "service" => String.t(),
        "startTime" => non_neg_integer(),
        "statusCode" => list(any())
      }
      
  """
  @type organization_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_event_details_response() :: %{
        "failedSet" => list(event_details_error_item()()),
        "successfulSet" => list(event_details()())
      }
      
  """
  @type describe_event_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_details_error_item() :: %{
        "errorMessage" => String.t(),
        "errorName" => String.t(),
        "eventArn" => String.t()
      }
      
  """
  @type event_details_error_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_aggregate() :: %{
        "aggregateValue" => String.t(),
        "count" => integer()
      }
      
  """
  @type event_aggregate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_events_response() :: %{
        "events" => list(event()()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_affected_entities_request() :: %{
        optional("locale") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("filter") => entity_filter()
      }
      
  """
  @type describe_affected_entities_request() :: %{String.t() => any()}

  @type describe_affected_accounts_for_organization_errors() :: invalid_pagination_token()

  @type describe_affected_entities_errors() :: invalid_pagination_token() | unsupported_locale()

  @type describe_affected_entities_for_organization_errors() ::
          invalid_pagination_token() | unsupported_locale()

  @type describe_event_aggregates_errors() :: invalid_pagination_token()

  @type describe_event_details_errors() :: unsupported_locale()

  @type describe_event_details_for_organization_errors() :: unsupported_locale()

  @type describe_event_types_errors() :: invalid_pagination_token() | unsupported_locale()

  @type describe_events_errors() :: invalid_pagination_token() | unsupported_locale()

  @type describe_events_for_organization_errors() ::
          invalid_pagination_token() | unsupported_locale()

  @type disable_health_service_access_for_organization_errors() ::
          concurrent_modification_exception()

  @type enable_health_service_access_for_organization_errors() ::
          concurrent_modification_exception()

  def metadata do
    %{
      api_version: "2016-08-04",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "health",
      global?: true,
      hostname: "global.health.amazonaws.com",
      protocol: "json",
      service_id: "Health",
      signature_version: "v4",
      signing_name: "health",
      target_prefix: "AWSHealth_20160804"
    }
  end

  @doc """
  Returns a list of accounts in the organization from Organizations that are
  affected by the
  provided event.

  For more information about the different types of Health events, see
  [Event](https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html).   Before you can call this operation, you must first enable Health to work with
  Organizations. To do this, call the
  [EnableHealthServiceAccessForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html)
  operation from your organization's
  management account.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  next request to return more results.
  """
  @spec describe_affected_accounts_for_organization(
          map(),
          describe_affected_accounts_for_organization_request(),
          list()
        ) ::
          {:ok, describe_affected_accounts_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_affected_accounts_for_organization_errors()}
  def describe_affected_accounts_for_organization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAffectedAccountsForOrganization", input, options)
  end

  @doc """
  Returns a list of entities that have been affected by the specified events,
  based on the
  specified filter criteria.

  Entities can refer to individual customer resources, groups of
  customer resources, or any other construct, depending on the Amazon Web Services
  service. Events that
  have impact beyond that of the affected entities, or where the extent of impact
  is unknown,
  include at least one entity indicating this.

  At least one event ARN is required.

    
  This API operation uses pagination. Specify the `nextToken` parameter in the
  next request to return more results.

    
  This operation supports resource-level permissions. You can use this operation
  to allow or deny access to specific Health events. For more
  information, see [Resource- and action-based conditions](https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions)
  in the *Health User Guide*.
  """
  @spec describe_affected_entities(map(), describe_affected_entities_request(), list()) ::
          {:ok, describe_affected_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_affected_entities_errors()}
  def describe_affected_entities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAffectedEntities", input, options)
  end

  @doc """
  Returns a list of entities that have been affected by one or more events for one
  or more
  accounts in your organization in Organizations, based on the filter criteria.

  Entities can refer
  to individual customer resources, groups of customer resources, or any other
  construct,
  depending on the Amazon Web Services service.

  At least one event Amazon Resource Name (ARN) and account ID are required.

  Before you can call this operation, you must first enable Health to work with
  Organizations. To do this, call the
  [EnableHealthServiceAccessForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html) operation from your organization's
  management account.

    
  This API operation uses pagination. Specify the `nextToken` parameter in the
  next request to return more results.

    
  This operation doesn't support resource-level permissions. You can't use this
  operation to allow or deny access to specific Health events. For more
  information, see [Resource- and action-based
  conditions](https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions)
  in the *Health User Guide*.
  """
  @spec describe_affected_entities_for_organization(
          map(),
          describe_affected_entities_for_organization_request(),
          list()
        ) ::
          {:ok, describe_affected_entities_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_affected_entities_for_organization_errors()}
  def describe_affected_entities_for_organization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAffectedEntitiesForOrganization", input, options)
  end

  @doc """
  Returns the number of entities that are affected by each of the specified
  events.
  """
  @spec describe_entity_aggregates(map(), describe_entity_aggregates_request(), list()) ::
          {:ok, describe_entity_aggregates_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_entity_aggregates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEntityAggregates", input, options)
  end

  @doc """
  Returns a list of entity aggregates for your Organizations that are affected by
  each of the specified events.
  """
  @spec describe_entity_aggregates_for_organization(
          map(),
          describe_entity_aggregates_for_organization_request(),
          list()
        ) ::
          {:ok, describe_entity_aggregates_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_entity_aggregates_for_organization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEntityAggregatesForOrganization", input, options)
  end

  @doc """
  Returns the number of events of each event type (issue, scheduled change, and
  account
  notification).

  If no filter is specified, the counts of all events in each category are
  returned.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  next request to return more results.
  """
  @spec describe_event_aggregates(map(), describe_event_aggregates_request(), list()) ::
          {:ok, describe_event_aggregates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_event_aggregates_errors()}
  def describe_event_aggregates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEventAggregates", input, options)
  end

  @doc """
  Returns detailed information about one or more specified events.

  Information includes
  standard event data (Amazon Web Services Region, service, and so on, as returned
  by
  [DescribeEvents](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEvents.html)), a detailed event description, and possible additional metadata
  that depends upon the nature of the event. Affected entities are not included.
  To retrieve
  the entities, use the
  [DescribeAffectedEntities](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html)
  operation.

  If a specified event can't be retrieved, an error message is returned for that
  event.

  This operation supports resource-level permissions. You can use this operation
  to allow or deny access to specific Health events. For more
  information, see [Resource- and action-based conditions](https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions)
  in the *Health User Guide*.
  """
  @spec describe_event_details(map(), describe_event_details_request(), list()) ::
          {:ok, describe_event_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_event_details_errors()}
  def describe_event_details(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEventDetails", input, options)
  end

  @doc """
  Returns detailed information about one or more specified events for one or more
  Amazon Web Services accounts in your organization.

  This information includes standard event data (such as
  the Amazon Web Services Region and service), an event description, and
  (depending on the event) possible
  metadata. This operation doesn't return affected entities, such as the resources
  related to
  the event. To return affected entities, use the
  [DescribeAffectedEntitiesForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html) operation.

  Before you can call this operation, you must first enable Health to work with
  Organizations. To do this, call the
  [EnableHealthServiceAccessForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html)
  operation from your organization's
  management account.

  When you call the `DescribeEventDetailsForOrganization` operation, specify
  the `organizationEventDetailFilters` object in the request. Depending on the
  Health event type, note the following differences:

    *
  To return event details for a public event, you must specify a null value for
  the
  `awsAccountId` parameter. If you specify an account ID for a public
  event, Health returns an error message because public events aren't specific to
  an account.

    *
  To return event details for an event that is specific to an account in your
  organization, you must specify the `awsAccountId` parameter in the
  request. If you don't specify an account ID, Health returns an error message
  because the event is specific to an account in your organization.

  For more information, see
  [Event](https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html). 
  This operation doesn't support resource-level permissions. You can't use this
  operation to allow or deny access to specific Health events. For more
  information, see [Resource- and action-based
  conditions](https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions)
  in the *Health User Guide*.
  """
  @spec describe_event_details_for_organization(
          map(),
          describe_event_details_for_organization_request(),
          list()
        ) ::
          {:ok, describe_event_details_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_event_details_for_organization_errors()}
  def describe_event_details_for_organization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEventDetailsForOrganization", input, options)
  end

  @doc """
  Returns the event types that meet the specified filter criteria.

  You can use this API
  operation to find information about the Health event, such as the category,
  Amazon Web Services service, and event code. The metadata for each event appears
  in the
  [EventType](https://docs.aws.amazon.com/health/latest/APIReference/API_EventType.html)
  object.

  If you don't specify a filter criteria, the API operation returns all event
  types, in no
  particular order.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  next request to return more results.
  """
  @spec describe_event_types(map(), describe_event_types_request(), list()) ::
          {:ok, describe_event_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_event_types_errors()}
  def describe_event_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEventTypes", input, options)
  end

  @doc """
  Returns information about events that meet the specified filter criteria.

  Events are
  returned in a summary form and do not include the detailed description, any
  additional
  metadata that depends on the event type, or any affected resources. To retrieve
  that
  information, use the
  [DescribeEventDetails](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html) and
  [DescribeAffectedEntities](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html)
  operations.

  If no filter criteria are specified, all events are returned. Results are sorted
  by
  `lastModifiedTime`, starting with the most recent event.

    
  When you call the `DescribeEvents` operation and specify an entity
  for the `entityValues` parameter, Health might return public
  events that aren't specific to that resource. For example, if you call
  `DescribeEvents` and specify an ID for an Amazon Elastic Compute Cloud (Amazon
  EC2)
  instance, Health might return events that aren't specific to that resource or
  service. To get events that are specific to a service, use the
  `services` parameter in the `filter` object. For more
  information, see
  [Event](https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html).

    
  This API operation uses pagination. Specify the `nextToken` parameter in the
  next request to return more results.
  """
  @spec describe_events(map(), describe_events_request(), list()) ::
          {:ok, describe_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_events_errors()}
  def describe_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEvents", input, options)
  end

  @doc """
  Returns information about events across your organization in Organizations.

  You can use
  the`filters` parameter to specify the events that you want to return. Events
  are returned in a summary form and don't include the affected accounts, detailed
  description, any additional metadata that depends on the event type, or any
  affected
  resources. To retrieve that information, use the following operations:

    *

  [DescribeAffectedAccountsForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedAccountsForOrganization.html) 

    *

  [DescribeEventDetailsForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html)

    *

  [DescribeAffectedEntitiesForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html) 

  If you don't specify a `filter`, the
  `DescribeEventsForOrganizations` returns all events across your organization.
  Results are sorted by `lastModifiedTime`, starting with the most recent event.

  For more information about the different types of Health events, see
  [Event](https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html).

  Before you can call this operation, you must first enable Health to work with
  Organizations. To do this, call the
  [EnableHealthServiceAccessForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html)
  operation from your organization's
  management account.

  This API operation uses pagination. Specify the `nextToken` parameter in the
  next request to return more results.
  """
  @spec describe_events_for_organization(
          map(),
          describe_events_for_organization_request(),
          list()
        ) ::
          {:ok, describe_events_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_events_for_organization_errors()}
  def describe_events_for_organization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEventsForOrganization", input, options)
  end

  @doc """
  This operation provides status information on enabling or disabling Health to
  work
  with your organization.

  To call this operation, you must use the organization's
  management account.
  """
  @spec describe_health_service_status_for_organization(map(), %{}, list()) ::
          {:ok, describe_health_service_status_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def describe_health_service_status_for_organization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeHealthServiceStatusForOrganization",
      input,
      options
    )
  end

  @doc """
  Disables Health from working with Organizations.

  To call this operation, you must sign
  in to the organization's management account. For more information, see
  [Aggregating Health
  events](https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html) in
  the *Health User Guide*.

  This operation doesn't remove the service-linked role from the management
  account in your
  organization. You must use the IAM console, API, or Command Line Interface (CLI)
  to remove the
  service-linked role. For more information, see [Deleting a Service-Linked Role](https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html#delete-service-linked-role)
  in the
  *IAM User Guide*.

  You can also disable the organizational feature by using the Organizations
  [DisableAWSServiceAccess](https://docs.aws.amazon.com/organizations/latest/APIReference/API_DisableAWSServiceAccess.html)
  API operation. After you call this operation,
  Health stops aggregating events for all other Amazon Web Services accounts in
  your organization.
  If you call the Health API operations for organizational view, Health returns
  an error. Health continues to aggregate health events for your
  Amazon Web Services account.
  """
  @spec disable_health_service_access_for_organization(map(), %{}, list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_health_service_access_for_organization_errors()}
  def disable_health_service_access_for_organization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DisableHealthServiceAccessForOrganization",
      input,
      options
    )
  end

  @doc """
  Enables Health to work with Organizations.

  You can use the organizational view feature
  to aggregate events from all Amazon Web Services accounts in your organization
  in a centralized location.

  This operation also creates a service-linked role for the management account in
  the
  organization.

  To call this operation, you must meet the following requirements:

    
  You must have a Business, Enterprise On-Ramp, or Enterprise Support plan from
  [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/) to use the Health API. If you call
  the Health API from an Amazon Web Services account that doesn't have a
  Business, Enterprise On-Ramp, or Enterprise Support plan, you receive a
  `SubscriptionRequiredException`
  error.

    
  You must have permission to call this operation from the organization's
  management account. For example IAM policies, see [Health
  identity-based policy
  examples](https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html).

  If you don't have the required support plan, you can instead use the Health
  console
  to enable the organizational view feature. For more information, see
  [Aggregating Health
  events](https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html) in
  the *Health User Guide*.
  """
  @spec enable_health_service_access_for_organization(map(), %{}, list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_health_service_access_for_organization_errors()}
  def enable_health_service_access_for_organization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableHealthServiceAccessForOrganization", input, options)
  end
end
