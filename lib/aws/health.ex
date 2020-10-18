# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Health do
  @moduledoc """
  AWS Health

  The AWS Health API provides programmatic access to the AWS Health
  information that appears in the [AWS Personal Health
  Dashboard](https://phd.aws.amazon.com/phd/home#/). You can use the API
  operations to get information about AWS Health events that affect your AWS
  services and resources.

  <note> You must have a Business or Enterprise support plan from [AWS
  Support](http://aws.amazon.com/premiumsupport/) to use the AWS Health API.
  If you call the AWS Health API from an AWS account that doesn't have a
  Business or Enterprise support plan, you receive a
  `SubscriptionRequiredException` error.

  </note> AWS Health has a single endpoint: health.us-east-1.amazonaws.com
  (HTTPS). Use this endpoint to call the AWS Health API operations.

  For authentication of requests, AWS Health uses the [Signature Version 4
  Signing
  Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  If your AWS account is part of AWS Organizations, you can use the AWS
  Health organizational view feature. This feature provides a centralized
  view of AWS Health events across all accounts in your organization. You can
  aggregate AWS Health events in real time to identify accounts in your
  organization that are affected by an operational event or get notified of
  security vulnerabilities. Use the organizational view API operations to
  enable this feature and return event information. For more information, see
  [Aggregating AWS Health
  events](https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html)
  in the *AWS Health User Guide*.

  <note> When you use the AWS Health API operations to return AWS Health
  events, see the following recommendations:

  <ul> <li> Use the
  [eventScopeCode](https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html#AWSHealth-Type-Event-eventScopeCode)
  parameter to specify whether to return AWS Health events that are public or
  account-specific.

  </li> <li> Use pagination to view all events from the response. For
  example, if you call the `DescribeEventsForOrganization` operation to get
  all events in your organization, you might receive several page results.
  Specify the `nextToken` in the next request to return more results.

  </li> </ul> </note>
  """

  @doc """
  Returns a list of accounts in the organization from AWS Organizations that
  are affected by the provided event. For more information about the
  different types of AWS Health events, see
  [Event](https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html).

  Before you can call this operation, you must first enable AWS Health to
  work with AWS Organizations. To do this, call the
  [EnableHealthServiceAccessForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html)
  operation from your organization's master account.

  <note> This API operation uses pagination. Specify the `nextToken`
  parameter in the next request to return more results.

  </note>
  """
  def describe_affected_accounts_for_organization(client, input, options \\ []) do
    request(client, "DescribeAffectedAccountsForOrganization", input, options)
  end

  @doc """
  Returns a list of entities that have been affected by the specified events,
  based on the specified filter criteria. Entities can refer to individual
  customer resources, groups of customer resources, or any other construct,
  depending on the AWS service. Events that have impact beyond that of the
  affected entities, or where the extent of impact is unknown, include at
  least one entity indicating this.

  At least one event ARN is required. Results are sorted by the
  `lastUpdatedTime` of the entity, starting with the most recent.

  <note> This API operation uses pagination. Specify the `nextToken`
  parameter in the next request to return more results.

  </note>
  """
  def describe_affected_entities(client, input, options \\ []) do
    request(client, "DescribeAffectedEntities", input, options)
  end

  @doc """
  Returns a list of entities that have been affected by one or more events
  for one or more accounts in your organization in AWS Organizations, based
  on the filter criteria. Entities can refer to individual customer
  resources, groups of customer resources, or any other construct, depending
  on the AWS service.

  At least one event Amazon Resource Name (ARN) and account ID are required.
  Results are sorted by the `lastUpdatedTime` of the entity, starting with
  the most recent.

  Before you can call this operation, you must first enable AWS Health to
  work with AWS Organizations. To do this, call the
  [EnableHealthServiceAccessForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html)
  operation from your organization's master account.

  <note> This API operation uses pagination. Specify the `nextToken`
  parameter in the next request to return more results.

  </note>
  """
  def describe_affected_entities_for_organization(client, input, options \\ []) do
    request(client, "DescribeAffectedEntitiesForOrganization", input, options)
  end

  @doc """
  Returns the number of entities that are affected by each of the specified
  events. If no events are specified, the counts of all affected entities are
  returned.
  """
  def describe_entity_aggregates(client, input, options \\ []) do
    request(client, "DescribeEntityAggregates", input, options)
  end

  @doc """
  Returns the number of events of each event type (issue, scheduled change,
  and account notification). If no filter is specified, the counts of all
  events in each category are returned.

  <note> This API operation uses pagination. Specify the `nextToken`
  parameter in the next request to return more results.

  </note>
  """
  def describe_event_aggregates(client, input, options \\ []) do
    request(client, "DescribeEventAggregates", input, options)
  end

  @doc """
  Returns detailed information about one or more specified events.
  Information includes standard event data (Region, service, and so on, as
  returned by
  [DescribeEvents](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEvents.html)),
  a detailed event description, and possible additional metadata that depends
  upon the nature of the event. Affected entities are not included. To
  retrieve those, use the
  [DescribeAffectedEntities](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html)
  operation.

  If a specified event cannot be retrieved, an error message is returned for
  that event.
  """
  def describe_event_details(client, input, options \\ []) do
    request(client, "DescribeEventDetails", input, options)
  end

  @doc """
  Returns detailed information about one or more specified events for one or
  more accounts in your organization. Information includes standard event
  data (Region, service, and so on, as returned by
  [DescribeEventsForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventsForOrganization.html)),
  a detailed event description, and possible additional metadata that depends
  upon the nature of the event. Affected entities are not included; to
  retrieve those, use the
  [DescribeAffectedEntitiesForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html)
  operation.

  Before you can call this operation, you must first enable AWS Health to
  work with AWS Organizations. To do this, call the
  [EnableHealthServiceAccessForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html)
  operation from your organization's master account.

  When you call the `DescribeEventDetailsForOrganization` operation, you
  specify the `organizationEventDetailFilters` object in the request.
  Depending on the AWS Health event type, note the following differences:

  <ul> <li> If the event is public, the `awsAccountId` parameter must be
  empty. If you specify an account ID for a public event, then an error
  message is returned. That's because the event might apply to all AWS
  accounts and isn't specific to an account in your organization.

  </li> <li> If the event is specific to an account, then you must specify
  the `awsAccountId` parameter in the request. If you don't specify an
  account ID, an error message returns because the event is specific to an
  AWS account in your organization.

  </li> </ul> For more information, see
  [Event](https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html).
  """
  def describe_event_details_for_organization(client, input, options \\ []) do
    request(client, "DescribeEventDetailsForOrganization", input, options)
  end

  @doc """
  Returns the event types that meet the specified filter criteria. If no
  filter criteria are specified, all event types are returned, in no
  particular order.

  <note> This API operation uses pagination. Specify the `nextToken`
  parameter in the next request to return more results.

  </note>
  """
  def describe_event_types(client, input, options \\ []) do
    request(client, "DescribeEventTypes", input, options)
  end

  @doc """
  Returns information about events that meet the specified filter criteria.
  Events are returned in a summary form and do not include the detailed
  description, any additional metadata that depends on the event type, or any
  affected resources. To retrieve that information, use the
  [DescribeEventDetails](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html)
  and
  [DescribeAffectedEntities](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html)
  operations.

  If no filter criteria are specified, all events are returned. Results are
  sorted by `lastModifiedTime`, starting with the most recent event.

  <note> <ul> <li> When you call the `DescribeEvents` operation and specify
  an entity for the `entityValues` parameter, AWS Health might return public
  events that aren't specific to that resource. For example, if you call
  `DescribeEvents` and specify an ID for an Amazon Elastic Compute Cloud
  (Amazon EC2) instance, AWS Health might return events that aren't specific
  to that resource or service. To get events that are specific to a service,
  use the `services` parameter in the `filter` object. For more information,
  see
  [Event](https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html).

  </li> <li> This API operation uses pagination. Specify the `nextToken`
  parameter in the next request to return more results.

  </li> </ul> </note>
  """
  def describe_events(client, input, options \\ []) do
    request(client, "DescribeEvents", input, options)
  end

  @doc """
  Returns information about events across your organization in AWS
  Organizations. You can use the`filters` parameter to specify the events
  that you want to return. Events are returned in a summary form and don't
  include the affected accounts, detailed description, any additional
  metadata that depends on the event type, or any affected resources. To
  retrieve that information, use the following operations:

  <ul> <li>
  [DescribeAffectedAccountsForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedAccountsForOrganization.html)

  </li> <li>
  [DescribeEventDetailsForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html)

  </li> <li>
  [DescribeAffectedEntitiesForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html)

  </li> </ul> If you don't specify a `filter`, the
  `DescribeEventsForOrganizations` returns all events across your
  organization. Results are sorted by `lastModifiedTime`, starting with the
  most recent event.

  For more information about the different types of AWS Health events, see
  [Event](https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html).

  Before you can call this operation, you must first enable AWS Health to
  work with AWS Organizations. To do this, call the
  [EnableHealthServiceAccessForOrganization](https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html)
  operation from your organization's master AWS account.

  <note> This API operation uses pagination. Specify the `nextToken`
  parameter in the next request to return more results.

  </note>
  """
  def describe_events_for_organization(client, input, options \\ []) do
    request(client, "DescribeEventsForOrganization", input, options)
  end

  @doc """
  This operation provides status information on enabling or disabling AWS
  Health to work with your organization. To call this operation, you must
  sign in as an IAM user, assume an IAM role, or sign in as the root user
  (not recommended) in the organization's master account.
  """
  def describe_health_service_status_for_organization(client, input, options \\ []) do
    request(client, "DescribeHealthServiceStatusForOrganization", input, options)
  end

  @doc """
  Disables AWS Health from working with AWS Organizations. To call this
  operation, you must sign in as an AWS Identity and Access Management (IAM)
  user, assume an IAM role, or sign in as the root user (not recommended) in
  the organization's master AWS account. For more information, see
  [Aggregating AWS Health
  events](https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html)
  in the *AWS Health User Guide*.

  This operation doesn't remove the service-linked role (SLR) from the AWS
  master account in your organization. You must use the IAM console, API, or
  AWS Command Line Interface (AWS CLI) to remove the SLR. For more
  information, see [Deleting a Service-Linked
  Role](https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html#delete-service-linked-role)
  in the *IAM User Guide*.

  <note> You can also disable the organizational feature by using the
  Organizations
  [DisableAWSServiceAccess](https://docs.aws.amazon.com/organizations/latest/APIReference/API_DisableAWSServiceAccess.html)
  API operation. After you call this operation, AWS Health stops aggregating
  events for all other AWS accounts in your organization. If you call the AWS
  Health API operations for organizational view, AWS Health returns an error.
  AWS Health continues to aggregate health events for your AWS account.

  </note>
  """
  def disable_health_service_access_for_organization(client, input, options \\ []) do
    request(client, "DisableHealthServiceAccessForOrganization", input, options)
  end

  @doc """
  Calling this operation enables AWS Health to work with AWS Organizations.
  This applies a service-linked role (SLR) to the master account in the
  organization. To call this operation, you must sign in as an IAM user,
  assume an IAM role, or sign in as the root user (not recommended) in the
  organization's master account.

  For more information, see [Aggregating AWS Health
  events](https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html)
  in the *AWS Health User Guide*.
  """
  def enable_health_service_access_for_organization(client, input, options \\ []) do
    request(client, "EnableHealthServiceAccessForOrganization", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "health"}
    host = build_host("health", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSHealth_20160804.#{action}"}
    ]

    payload = encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    perform_request(:post, url, payload, headers, options, 200)
  end

  defp encode!(input) do
    {encoder, fun} = Application.get_env(:aws_elixir, :json_encoder, {Poison, :encode!})
    apply(encoder, fun, [input])
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    {client, fun} = Application.get_env(:aws_elixir, :http_client, {Aws.Internal.HttpClient, :request})
    apply(client, fun, [method, url, payload, headers, options, success_status_code])
  end

  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
