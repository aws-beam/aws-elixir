# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53 do
  @moduledoc """
  Amazon Route 53 is a highly available and scalable Domain Name System (DNS)
  web service.
  """

  @doc """
  Associates an Amazon VPC with a private hosted zone.

  <note> To perform the association, the VPC and the private hosted zone must
  already exist. Also, you can't convert a public hosted zone into a private
  hosted zone.

  </note> If you want to associate a VPC that was created by one AWS account
  with a private hosted zone that was created by a different account, do one
  of the following:

  <ul> <li> Use the AWS account that created the private hosted zone to
  submit a
  [CreateVPCAssociationAuthorization](https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateVPCAssociationAuthorization.html)
  request. Then use the account that created the VPC to submit an
  `AssociateVPCWithHostedZone` request.

  </li> <li> If a subnet in the VPC was shared with another account, you can
  use the account that the subnet was shared with to submit an
  `AssociateVPCWithHostedZone` request. For more information about sharing
  subnets, see [Working with Shared
  VPCs](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-sharing.html).

  </li> </ul>
  """
  def associate_v_p_c_with_hosted_zone(client, hosted_zone_id, input, options \\ []) do
    path = "/2013-04-01/hostedzone/#{URI.encode(hosted_zone_id)}/associatevpc"
    headers = []
    request(client, :post, path, headers, input, options, nil)
  end

  @doc """
  Creates, changes, or deletes a resource record set, which contains
  authoritative DNS information for a specified domain name or subdomain
  name. For example, you can use `ChangeResourceRecordSets` to create a
  resource record set that routes traffic for test.example.com to a web
  server that has an IP address of 192.0.2.44.

  **Deleting Resource Record Sets**

  To delete a resource record set, you must specify all the same values that
  you specified when you created it.

  **Change Batches and Transactional Changes**

  The request body must include a document with a
  `ChangeResourceRecordSetsRequest` element. The request body contains a list
  of change items, known as a change batch. Change batches are considered
  transactional changes. Route 53 validates the changes in the request and
  then either makes all or none of the changes in the change batch request.
  This ensures that DNS routing isn't adversely affected by partial changes
  to the resource record sets in a hosted zone.

  For example, suppose a change batch request contains two changes: it
  deletes the `CNAME` resource record set for www.example.com and creates an
  alias resource record set for www.example.com. If validation for both
  records succeeds, Route 53 deletes the first resource record set and
  creates the second resource record set in a single operation. If validation
  for either the `DELETE` or the `CREATE` action fails, then the request is
  canceled, and the original `CNAME` record continues to exist.

  <note> If you try to delete the same resource record set more than once in
  a single change batch, Route 53 returns an `InvalidChangeBatch` error.

  </note> **Traffic Flow**

  To create resource record sets for complex routing configurations, use
  either the traffic flow visual editor in the Route 53 console or the API
  actions for traffic policies and traffic policy instances. Save the
  configuration as a traffic policy, then associate the traffic policy with
  one or more domain names (such as example.com) or subdomain names (such as
  www.example.com), in the same hosted zone or in multiple hosted zones. You
  can roll back the updates if the new configuration isn't performing as
  expected. For more information, see [Using Traffic Flow to Route DNS
  Traffic](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/traffic-flow.html)
  in the *Amazon Route 53 Developer Guide*.

  **Create, Delete, and Upsert**

  Use `ChangeResourceRecordsSetsRequest` to perform the following actions:

  <ul> <li> `CREATE`: Creates a resource record set that has the specified
  values.

  </li> <li> `DELETE`: Deletes an existing resource record set that has the
  specified values.

  </li> <li> `UPSERT`: If a resource record set does not already exist, AWS
  creates it. If a resource set does exist, Route 53 updates it with the
  values in the request.

  </li> </ul> **Syntaxes for Creating, Updating, and Deleting Resource Record
  Sets**

  The syntax for a request depends on the type of resource record set that
  you want to create, delete, or update, such as weighted, alias, or
  failover. The XML elements in your request must appear in the order listed
  in the syntax.

  For an example for each type of resource record set, see "Examples."

  Don't refer to the syntax in the "Parameter Syntax" section, which includes
  all of the elements for every kind of resource record set that you can
  create, delete, or update by using `ChangeResourceRecordSets`.

  **Change Propagation to Route 53 DNS Servers**

  When you submit a `ChangeResourceRecordSets` request, Route 53 propagates
  your changes to all of the Route 53 authoritative DNS servers. While your
  changes are propagating, `GetChange` returns a status of `PENDING`. When
  propagation is complete, `GetChange` returns a status of `INSYNC`. Changes
  generally propagate to all Route 53 name servers within 60 seconds. For
  more information, see
  [GetChange](https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetChange.html).

  **Limits on ChangeResourceRecordSets Requests**

  For information about the limits on a `ChangeResourceRecordSets` request,
  see
  [Limits](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html)
  in the *Amazon Route 53 Developer Guide*.
  """
  def change_resource_record_sets(client, hosted_zone_id, input, options \\ []) do
    path = "/2013-04-01/hostedzone/#{URI.encode(hosted_zone_id)}/rrset/"
    headers = []
    request(client, :post, path, headers, input, options, nil)
  end

  @doc """
  Adds, edits, or deletes tags for a health check or a hosted zone.

  For information about using tags for cost allocation, see [Using Cost
  Allocation
  Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *AWS Billing and Cost Management User Guide*.
  """
  def change_tags_for_resource(client, resource_id, resource_type, input, options \\ []) do
    path = "/2013-04-01/tags/#{URI.encode(resource_type)}/#{URI.encode(resource_id)}"
    headers = []
    request(client, :post, path, headers, input, options, nil)
  end

  @doc """
  Creates a new health check.

  For information about adding health checks to resource record sets, see
  [HealthCheckId](https://docs.aws.amazon.com/Route53/latest/APIReference/API_ResourceRecordSet.html#Route53-Type-ResourceRecordSet-HealthCheckId)
  in
  [ChangeResourceRecordSets](https://docs.aws.amazon.com/Route53/latest/APIReference/API_ChangeResourceRecordSets.html).

  **ELB Load Balancers**

  If you're registering EC2 instances with an Elastic Load Balancing (ELB)
  load balancer, do not create Amazon Route 53 health checks for the EC2
  instances. When you register an EC2 instance with a load balancer, you
  configure settings for an ELB health check, which performs a similar
  function to a Route 53 health check.

  **Private Hosted Zones**

  You can associate health checks with failover resource record sets in a
  private hosted zone. Note the following:

  <ul> <li> Route 53 health checkers are outside the VPC. To check the health
  of an endpoint within a VPC by IP address, you must assign a public IP
  address to the instance in the VPC.

  </li> <li> You can configure a health checker to check the health of an
  external resource that the instance relies on, such as a database server.

  </li> <li> You can create a CloudWatch metric, associate an alarm with the
  metric, and then create a health check that is based on the state of the
  alarm. For example, you might create a CloudWatch metric that checks the
  status of the Amazon EC2 `StatusCheckFailed` metric, add an alarm to the
  metric, and then create a health check that is based on the state of the
  alarm. For information about creating CloudWatch metrics and alarms by
  using the CloudWatch console, see the [Amazon CloudWatch User
  Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/WhatIsCloudWatch.html).

  </li> </ul>
  """
  def create_health_check(client, input, options \\ []) do
    path = "/2013-04-01/healthcheck"
    headers = []
    case request(client, :post, path, headers, input, options, 201) do
      {:ok, body, response} ->
        body =
          [
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Creates a new public or private hosted zone. You create records in a public
  hosted zone to define how you want to route traffic on the internet for a
  domain, such as example.com, and its subdomains (apex.example.com,
  acme.example.com). You create records in a private hosted zone to define
  how you want to route traffic for a domain and its subdomains within one or
  more Amazon Virtual Private Clouds (Amazon VPCs).

  <important> You can't convert a public hosted zone to a private hosted zone
  or vice versa. Instead, you must create a new hosted zone with the same
  name and create new resource record sets.

  </important> For more information about charges for hosted zones, see
  [Amazon Route 53 Pricing](http://aws.amazon.com/route53/pricing/).

  Note the following:

  <ul> <li> You can't create a hosted zone for a top-level domain (TLD) such
  as .com.

  </li> <li> For public hosted zones, Route 53 automatically creates a
  default SOA record and four NS records for the zone. For more information
  about SOA and NS records, see [NS and SOA Records that Route 53 Creates for
  a Hosted
  Zone](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/SOA-NSrecords.html)
  in the *Amazon Route 53 Developer Guide*.

  If you want to use the same name servers for multiple public hosted zones,
  you can optionally associate a reusable delegation set with the hosted
  zone. See the `DelegationSetId` element.

  </li> <li> If your domain is registered with a registrar other than Route
  53, you must update the name servers with your registrar to make Route 53
  the DNS service for the domain. For more information, see [Migrating DNS
  Service for an Existing Domain to Amazon Route
  53](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/MigratingDNS.html)
  in the *Amazon Route 53 Developer Guide*.

  </li> </ul> When you submit a `CreateHostedZone` request, the initial
  status of the hosted zone is `PENDING`. For public hosted zones, this means
  that the NS and SOA records are not yet available on all Route 53 DNS
  servers. When the NS and SOA records are available, the status of the zone
  changes to `INSYNC`.
  """
  def create_hosted_zone(client, input, options \\ []) do
    path = "/2013-04-01/hostedzone"
    headers = []
    case request(client, :post, path, headers, input, options, 201) do
      {:ok, body, response} ->
        body =
          [
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Creates a configuration for DNS query logging. After you create a query
  logging configuration, Amazon Route 53 begins to publish log data to an
  Amazon CloudWatch Logs log group.

  DNS query logs contain information about the queries that Route 53 receives
  for a specified public hosted zone, such as the following:

  <ul> <li> Route 53 edge location that responded to the DNS query

  </li> <li> Domain or subdomain that was requested

  </li> <li> DNS record type, such as A or AAAA

  </li> <li> DNS response code, such as `NoError` or `ServFail`

  </li> </ul> <dl> <dt>Log Group and Resource Policy</dt> <dd> Before you
  create a query logging configuration, perform the following operations.

  <note> If you create a query logging configuration using the Route 53
  console, Route 53 performs these operations automatically.

  </note> <ol> <li> Create a CloudWatch Logs log group, and make note of the
  ARN, which you specify when you create a query logging configuration. Note
  the following:

  <ul> <li> You must create the log group in the us-east-1 region.

  </li> <li> You must use the same AWS account to create the log group and
  the hosted zone that you want to configure query logging for.

  </li> <li> When you create log groups for query logging, we recommend that
  you use a consistent prefix, for example:

  `/aws/route53/*hosted zone name* `

  In the next step, you'll create a resource policy, which controls access to
  one or more log groups and the associated AWS resources, such as Route 53
  hosted zones. There's a limit on the number of resource policies that you
  can create, so we recommend that you use a consistent prefix so you can use
  the same resource policy for all the log groups that you create for query
  logging.

  </li> </ul> </li> <li> Create a CloudWatch Logs resource policy, and give
  it the permissions that Route 53 needs to create log streams and to send
  query logs to log streams. For the value of `Resource`, specify the ARN for
  the log group that you created in the previous step. To use the same
  resource policy for all the CloudWatch Logs log groups that you created for
  query logging configurations, replace the hosted zone name with `*`, for
  example:

  `arn:aws:logs:us-east-1:123412341234:log-group:/aws/route53/*`

  <note> You can't use the CloudWatch console to create or edit a resource
  policy. You must use the CloudWatch API, one of the AWS SDKs, or the AWS
  CLI.

  </note> </li> </ol> </dd> <dt>Log Streams and Edge Locations</dt> <dd> When
  Route 53 finishes creating the configuration for DNS query logging, it does
  the following:

  <ul> <li> Creates a log stream for an edge location the first time that the
  edge location responds to DNS queries for the specified hosted zone. That
  log stream is used to log all queries that Route 53 responds to for that
  edge location.

  </li> <li> Begins to send query logs to the applicable log stream.

  </li> </ul> The name of each log stream is in the following format:

  ` *hosted zone ID*/*edge location code* `

  The edge location code is a three-letter code and an arbitrarily assigned
  number, for example, DFW3. The three-letter code typically corresponds with
  the International Air Transport Association airport code for an airport
  near the edge location. (These abbreviations might change in the future.)
  For a list of edge locations, see "The Route 53 Global Network" on the
  [Route 53 Product Details](http://aws.amazon.com/route53/details/) page.

  </dd> <dt>Queries That Are Logged</dt> <dd> Query logs contain only the
  queries that DNS resolvers forward to Route 53. If a DNS resolver has
  already cached the response to a query (such as the IP address for a load
  balancer for example.com), the resolver will continue to return the cached
  response. It doesn't forward another query to Route 53 until the TTL for
  the corresponding resource record set expires. Depending on how many DNS
  queries are submitted for a resource record set, and depending on the TTL
  for that resource record set, query logs might contain information about
  only one query out of every several thousand queries that are submitted to
  DNS. For more information about how DNS works, see [Routing Internet
  Traffic to Your Website or Web
  Application](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html)
  in the *Amazon Route 53 Developer Guide*.

  </dd> <dt>Log File Format</dt> <dd> For a list of the values in each query
  log and the format of each value, see [Logging DNS
  Queries](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html)
  in the *Amazon Route 53 Developer Guide*.

  </dd> <dt>Pricing</dt> <dd> For information about charges for query logs,
  see [Amazon CloudWatch Pricing](http://aws.amazon.com/cloudwatch/pricing/).

  </dd> <dt>How to Stop Logging</dt> <dd> If you want Route 53 to stop
  sending query logs to CloudWatch Logs, delete the query logging
  configuration. For more information, see
  [DeleteQueryLoggingConfig](https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeleteQueryLoggingConfig.html).

  </dd> </dl>
  """
  def create_query_logging_config(client, input, options \\ []) do
    path = "/2013-04-01/queryloggingconfig"
    headers = []
    case request(client, :post, path, headers, input, options, 201) do
      {:ok, body, response} ->
        body =
          [
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Creates a delegation set (a group of four name servers) that can be reused
  by multiple hosted zones that were created by the same AWS account.

  You can also create a reusable delegation set that uses the four name
  servers that are associated with an existing hosted zone. Specify the
  hosted zone ID in the `CreateReusableDelegationSet` request.

  <note> You can't associate a reusable delegation set with a private hosted
  zone.

  </note> For information about using a reusable delegation set to configure
  white label name servers, see [Configuring White Label Name
  Servers](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/white-label-name-servers.html).

  The process for migrating existing hosted zones to use a reusable
  delegation set is comparable to the process for configuring white label
  name servers. You need to perform the following steps:

  <ol> <li> Create a reusable delegation set.

  </li> <li> Recreate hosted zones, and reduce the TTL to 60 seconds or less.

  </li> <li> Recreate resource record sets in the new hosted zones.

  </li> <li> Change the registrar's name servers to use the name servers for
  the new hosted zones.

  </li> <li> Monitor traffic for the website or application.

  </li> <li> Change TTLs back to their original values.

  </li> </ol> If you want to migrate existing hosted zones to use a reusable
  delegation set, the existing hosted zones can't use any of the name servers
  that are assigned to the reusable delegation set. If one or more hosted
  zones do use one or more name servers that are assigned to the reusable
  delegation set, you can do one of the following:

  <ul> <li> For small numbers of hosted zones—up to a few hundred—it's
  relatively easy to create reusable delegation sets until you get one that
  has four name servers that don't overlap with any of the name servers in
  your hosted zones.

  </li> <li> For larger numbers of hosted zones, the easiest solution is to
  use more than one reusable delegation set.

  </li> <li> For larger numbers of hosted zones, you can also migrate hosted
  zones that have overlapping name servers to hosted zones that don't have
  overlapping name servers, then migrate the hosted zones again to use the
  reusable delegation set.

  </li> </ul>
  """
  def create_reusable_delegation_set(client, input, options \\ []) do
    path = "/2013-04-01/delegationset"
    headers = []
    case request(client, :post, path, headers, input, options, 201) do
      {:ok, body, response} ->
        body =
          [
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Creates a traffic policy, which you use to create multiple DNS resource
  record sets for one domain name (such as example.com) or one subdomain name
  (such as www.example.com).
  """
  def create_traffic_policy(client, input, options \\ []) do
    path = "/2013-04-01/trafficpolicy"
    headers = []
    case request(client, :post, path, headers, input, options, 201) do
      {:ok, body, response} ->
        body =
          [
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Creates resource record sets in a specified hosted zone based on the
  settings in a specified traffic policy version. In addition,
  `CreateTrafficPolicyInstance` associates the resource record sets with a
  specified domain name (such as example.com) or subdomain name (such as
  www.example.com). Amazon Route 53 responds to DNS queries for the domain or
  subdomain name by using the resource record sets that
  `CreateTrafficPolicyInstance` created.
  """
  def create_traffic_policy_instance(client, input, options \\ []) do
    path = "/2013-04-01/trafficpolicyinstance"
    headers = []
    case request(client, :post, path, headers, input, options, 201) do
      {:ok, body, response} ->
        body =
          [
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Creates a new version of an existing traffic policy. When you create a new
  version of a traffic policy, you specify the ID of the traffic policy that
  you want to update and a JSON-formatted document that describes the new
  version. You use traffic policies to create multiple DNS resource record
  sets for one domain name (such as example.com) or one subdomain name (such
  as www.example.com). You can create a maximum of 1000 versions of a traffic
  policy. If you reach the limit and need to create another version, you'll
  need to start a new traffic policy.
  """
  def create_traffic_policy_version(client, id, input, options \\ []) do
    path = "/2013-04-01/trafficpolicy/#{URI.encode(id)}"
    headers = []
    case request(client, :post, path, headers, input, options, 201) do
      {:ok, body, response} ->
        body =
          [
            {"Location", "Location"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Authorizes the AWS account that created a specified VPC to submit an
  `AssociateVPCWithHostedZone` request to associate the VPC with a specified
  hosted zone that was created by a different account. To submit a
  `CreateVPCAssociationAuthorization` request, you must use the account that
  created the hosted zone. After you authorize the association, use the
  account that created the VPC to submit an `AssociateVPCWithHostedZone`
  request.

  <note> If you want to associate multiple VPCs that you created by using one
  account with a hosted zone that you created by using a different account,
  you must submit one authorization request for each VPC.

  </note>
  """
  def create_v_p_c_association_authorization(client, hosted_zone_id, input, options \\ []) do
    path = "/2013-04-01/hostedzone/#{URI.encode(hosted_zone_id)}/authorizevpcassociation"
    headers = []
    request(client, :post, path, headers, input, options, nil)
  end

  @doc """
  Deletes a health check.

  <important> Amazon Route 53 does not prevent you from deleting a health
  check even if the health check is associated with one or more resource
  record sets. If you delete a health check and you don't update the
  associated resource record sets, the future status of the health check
  can't be predicted and may change. This will affect the routing of DNS
  queries for your DNS failover configuration. For more information, see
  [Replacing and Deleting Health
  Checks](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html#health-checks-deleting.html)
  in the *Amazon Route 53 Developer Guide*.

  </important> If you're using AWS Cloud Map and you configured Cloud Map to
  create a Route 53 health check when you register an instance, you can't use
  the Route 53 `DeleteHealthCheck` command to delete the health check. The
  health check is deleted automatically when you deregister the instance;
  there can be a delay of several hours before the health check is deleted
  from Route 53.
  """
  def delete_health_check(client, health_check_id, input, options \\ []) do
    path = "/2013-04-01/healthcheck/#{URI.encode(health_check_id)}"
    headers = []
    request(client, :delete, path, headers, input, options, nil)
  end

  @doc """
  Deletes a hosted zone.

  If the hosted zone was created by another service, such as AWS Cloud Map,
  see [Deleting Public Hosted Zones That Were Created by Another
  Service](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DeleteHostedZone.html#delete-public-hosted-zone-created-by-another-service)
  in the *Amazon Route 53 Developer Guide* for information about how to
  delete it. (The process is the same for public and private hosted zones
  that were created by another service.)

  If you want to keep your domain registration but you want to stop routing
  internet traffic to your website or web application, we recommend that you
  delete resource record sets in the hosted zone instead of deleting the
  hosted zone.

  <important> If you delete a hosted zone, you can't undelete it. You must
  create a new hosted zone and update the name servers for your domain
  registration, which can require up to 48 hours to take effect. (If you
  delegated responsibility for a subdomain to a hosted zone and you delete
  the child hosted zone, you must update the name servers in the parent
  hosted zone.) In addition, if you delete a hosted zone, someone could
  hijack the domain and route traffic to their own resources using your
  domain name.

  </important> If you want to avoid the monthly charge for the hosted zone,
  you can transfer DNS service for the domain to a free DNS service. When you
  transfer DNS service, you have to update the name servers for the domain
  registration. If the domain is registered with Route 53, see
  [UpdateDomainNameservers](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_UpdateDomainNameservers.html)
  for information about how to replace Route 53 name servers with name
  servers for the new DNS service. If the domain is registered with another
  registrar, use the method provided by the registrar to update name servers
  for the domain registration. For more information, perform an internet
  search on "free DNS service."

  You can delete a hosted zone only if it contains only the default SOA
  record and NS resource record sets. If the hosted zone contains other
  resource record sets, you must delete them before you can delete the hosted
  zone. If you try to delete a hosted zone that contains other resource
  record sets, the request fails, and Route 53 returns a `HostedZoneNotEmpty`
  error. For information about deleting records from your hosted zone, see
  [ChangeResourceRecordSets](https://docs.aws.amazon.com/Route53/latest/APIReference/API_ChangeResourceRecordSets.html).

  To verify that the hosted zone has been deleted, do one of the following:

  <ul> <li> Use the `GetHostedZone` action to request information about the
  hosted zone.

  </li> <li> Use the `ListHostedZones` action to get a list of the hosted
  zones associated with the current AWS account.

  </li> </ul>
  """
  def delete_hosted_zone(client, id, input, options \\ []) do
    path = "/2013-04-01/hostedzone/#{URI.encode(id)}"
    headers = []
    request(client, :delete, path, headers, input, options, nil)
  end

  @doc """
  Deletes a configuration for DNS query logging. If you delete a
  configuration, Amazon Route 53 stops sending query logs to CloudWatch Logs.
  Route 53 doesn't delete any logs that are already in CloudWatch Logs.

  For more information about DNS query logs, see
  [CreateQueryLoggingConfig](https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html).
  """
  def delete_query_logging_config(client, id, input, options \\ []) do
    path = "/2013-04-01/queryloggingconfig/#{URI.encode(id)}"
    headers = []
    request(client, :delete, path, headers, input, options, nil)
  end

  @doc """
  Deletes a reusable delegation set.

  <important> You can delete a reusable delegation set only if it isn't
  associated with any hosted zones.

  </important> To verify that the reusable delegation set is not associated
  with any hosted zones, submit a
  [GetReusableDelegationSet](https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetReusableDelegationSet.html)
  request and specify the ID of the reusable delegation set that you want to
  delete.
  """
  def delete_reusable_delegation_set(client, id, input, options \\ []) do
    path = "/2013-04-01/delegationset/#{URI.encode(id)}"
    headers = []
    request(client, :delete, path, headers, input, options, nil)
  end

  @doc """
  Deletes a traffic policy.
  """
  def delete_traffic_policy(client, id, version, input, options \\ []) do
    path = "/2013-04-01/trafficpolicy/#{URI.encode(id)}/#{URI.encode(version)}"
    headers = []
    request(client, :delete, path, headers, input, options, nil)
  end

  @doc """
  Deletes a traffic policy instance and all of the resource record sets that
  Amazon Route 53 created when you created the instance.

  <note> In the Route 53 console, traffic policy instances are known as
  policy records.

  </note>
  """
  def delete_traffic_policy_instance(client, id, input, options \\ []) do
    path = "/2013-04-01/trafficpolicyinstance/#{URI.encode(id)}"
    headers = []
    request(client, :delete, path, headers, input, options, nil)
  end

  @doc """
  Removes authorization to submit an `AssociateVPCWithHostedZone` request to
  associate a specified VPC with a hosted zone that was created by a
  different account. You must use the account that created the hosted zone to
  submit a `DeleteVPCAssociationAuthorization` request.

  <important> Sending this request only prevents the AWS account that created
  the VPC from associating the VPC with the Amazon Route 53 hosted zone in
  the future. If the VPC is already associated with the hosted zone,
  `DeleteVPCAssociationAuthorization` won't disassociate the VPC from the
  hosted zone. If you want to delete an existing association, use
  `DisassociateVPCFromHostedZone`.

  </important>
  """
  def delete_v_p_c_association_authorization(client, hosted_zone_id, input, options \\ []) do
    path = "/2013-04-01/hostedzone/#{URI.encode(hosted_zone_id)}/deauthorizevpcassociation"
    headers = []
    request(client, :post, path, headers, input, options, nil)
  end

  @doc """
  Disassociates an Amazon Virtual Private Cloud (Amazon VPC) from an Amazon
  Route 53 private hosted zone. Note the following:

  <ul> <li> You can't disassociate the last Amazon VPC from a private hosted
  zone.

  </li> <li> You can't convert a private hosted zone into a public hosted
  zone.

  </li> <li> You can submit a `DisassociateVPCFromHostedZone` request using
  either the account that created the hosted zone or the account that created
  the Amazon VPC.

  </li> <li> Some services, such as AWS Cloud Map and Amazon Elastic File
  System (Amazon EFS) automatically create hosted zones and associate VPCs
  with the hosted zones. A service can create a hosted zone using your
  account or using its own account. You can disassociate a VPC from a hosted
  zone only if the service created the hosted zone using your account.

  When you run
  [DisassociateVPCFromHostedZone](https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListHostedZonesByVPC.html),
  if the hosted zone has a value for `OwningAccount`, you can use
  `DisassociateVPCFromHostedZone`. If the hosted zone has a value for
  `OwningService`, you can't use `DisassociateVPCFromHostedZone`.

  </li> </ul>
  """
  def disassociate_v_p_c_from_hosted_zone(client, hosted_zone_id, input, options \\ []) do
    path = "/2013-04-01/hostedzone/#{URI.encode(hosted_zone_id)}/disassociatevpc"
    headers = []
    request(client, :post, path, headers, input, options, nil)
  end

  @doc """
  Gets the specified limit for the current account, for example, the maximum
  number of health checks that you can create using the account.

  For the default limit, see
  [Limits](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html)
  in the *Amazon Route 53 Developer Guide*. To request a higher limit, [open
  a
  case](https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&amp;limitType=service-code-route53).

  <note> You can also view account limits in AWS Trusted Advisor. Sign in to
  the AWS Management Console and open the Trusted Advisor console at
  [https://console.aws.amazon.com/trustedadvisor/](https://console.aws.amazon.com/trustedadvisor).
  Then choose **Service limits** in the navigation pane.

  </note>
  """
  def get_account_limit(client, type, options \\ []) do
    path = "/2013-04-01/accountlimit/#{URI.encode(type)}"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Returns the current status of a change batch request. The status is one of
  the following values:

  <ul> <li> `PENDING` indicates that the changes in this request have not
  propagated to all Amazon Route 53 DNS servers. This is the initial status
  of all change batch requests.

  </li> <li> `INSYNC` indicates that the changes have propagated to all Route
  53 DNS servers.

  </li> </ul>
  """
  def get_change(client, id, options \\ []) do
    path = "/2013-04-01/change/#{URI.encode(id)}"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  <important> `GetCheckerIpRanges` still works, but we recommend that you
  download ip-ranges.json, which includes IP address ranges for all AWS
  services. For more information, see [IP Address Ranges of Amazon Route 53
  Servers](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/route-53-ip-addresses.html)
  in the *Amazon Route 53 Developer Guide*.

  </important>
  """
  def get_checker_ip_ranges(client, options \\ []) do
    path = "/2013-04-01/checkeripranges"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Gets information about whether a specified geographic location is supported
  for Amazon Route 53 geolocation resource record sets.

  Use the following syntax to determine whether a continent is supported for
  geolocation:

  `GET /2013-04-01/geolocation?continentcode=*two-letter abbreviation for a
  continent* `

  Use the following syntax to determine whether a country is supported for
  geolocation:

  `GET /2013-04-01/geolocation?countrycode=*two-character country code* `

  Use the following syntax to determine whether a subdivision of a country is
  supported for geolocation:

  `GET /2013-04-01/geolocation?countrycode=*two-character country
  code*&amp;subdivisioncode=*subdivision code* `
  """
  def get_geo_location(client, options \\ []) do
    path = "/2013-04-01/geolocation"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Gets information about a specified health check.
  """
  def get_health_check(client, health_check_id, options \\ []) do
    path = "/2013-04-01/healthcheck/#{URI.encode(health_check_id)}"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Retrieves the number of health checks that are associated with the current
  AWS account.
  """
  def get_health_check_count(client, options \\ []) do
    path = "/2013-04-01/healthcheckcount"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Gets the reason that a specified health check failed most recently.
  """
  def get_health_check_last_failure_reason(client, health_check_id, options \\ []) do
    path = "/2013-04-01/healthcheck/#{URI.encode(health_check_id)}/lastfailurereason"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Gets status of a specified health check.
  """
  def get_health_check_status(client, health_check_id, options \\ []) do
    path = "/2013-04-01/healthcheck/#{URI.encode(health_check_id)}/status"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Gets information about a specified hosted zone including the four name
  servers assigned to the hosted zone.
  """
  def get_hosted_zone(client, id, options \\ []) do
    path = "/2013-04-01/hostedzone/#{URI.encode(id)}"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Retrieves the number of hosted zones that are associated with the current
  AWS account.
  """
  def get_hosted_zone_count(client, options \\ []) do
    path = "/2013-04-01/hostedzonecount"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Gets the specified limit for a specified hosted zone, for example, the
  maximum number of records that you can create in the hosted zone.

  For the default limit, see
  [Limits](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html)
  in the *Amazon Route 53 Developer Guide*. To request a higher limit, [open
  a
  case](https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&amp;limitType=service-code-route53).
  """
  def get_hosted_zone_limit(client, hosted_zone_id, type, options \\ []) do
    path = "/2013-04-01/hostedzonelimit/#{URI.encode(hosted_zone_id)}/#{URI.encode(type)}"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Gets information about a specified configuration for DNS query logging.

  For more information about DNS query logs, see
  [CreateQueryLoggingConfig](https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html)
  and [Logging DNS
  Queries](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html).
  """
  def get_query_logging_config(client, id, options \\ []) do
    path = "/2013-04-01/queryloggingconfig/#{URI.encode(id)}"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about a specified reusable delegation set, including
  the four name servers that are assigned to the delegation set.
  """
  def get_reusable_delegation_set(client, id, options \\ []) do
    path = "/2013-04-01/delegationset/#{URI.encode(id)}"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Gets the maximum number of hosted zones that you can associate with the
  specified reusable delegation set.

  For the default limit, see
  [Limits](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html)
  in the *Amazon Route 53 Developer Guide*. To request a higher limit, [open
  a
  case](https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&amp;limitType=service-code-route53).
  """
  def get_reusable_delegation_set_limit(client, delegation_set_id, type, options \\ []) do
    path = "/2013-04-01/reusabledelegationsetlimit/#{URI.encode(delegation_set_id)}/#{URI.encode(type)}"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Gets information about a specific traffic policy version.
  """
  def get_traffic_policy(client, id, version, options \\ []) do
    path = "/2013-04-01/trafficpolicy/#{URI.encode(id)}/#{URI.encode(version)}"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Gets information about a specified traffic policy instance.

  <note> After you submit a `CreateTrafficPolicyInstance` or an
  `UpdateTrafficPolicyInstance` request, there's a brief delay while Amazon
  Route 53 creates the resource record sets that are specified in the traffic
  policy definition. For more information, see the `State` response element.

  </note> <note> In the Route 53 console, traffic policy instances are known
  as policy records.

  </note>
  """
  def get_traffic_policy_instance(client, id, options \\ []) do
    path = "/2013-04-01/trafficpolicyinstance/#{URI.encode(id)}"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Gets the number of traffic policy instances that are associated with the
  current AWS account.
  """
  def get_traffic_policy_instance_count(client, options \\ []) do
    path = "/2013-04-01/trafficpolicyinstancecount"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Retrieves a list of supported geographic locations.

  Countries are listed first, and continents are listed last. If Amazon Route
  53 supports subdivisions for a country (for example, states or provinces),
  the subdivisions for that country are listed in alphabetical order
  immediately after the corresponding country.

  For a list of supported geolocation codes, see the
  [GeoLocation](https://docs.aws.amazon.com/Route53/latest/APIReference/API_GeoLocation.html)
  data type.
  """
  def list_geo_locations(client, options \\ []) do
    path = "/2013-04-01/geolocations"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Retrieve a list of the health checks that are associated with the current
  AWS account.
  """
  def list_health_checks(client, options \\ []) do
    path = "/2013-04-01/healthcheck"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Retrieves a list of the public and private hosted zones that are associated
  with the current AWS account. The response includes a `HostedZones` child
  element for each hosted zone.

  Amazon Route 53 returns a maximum of 100 items in each response. If you
  have a lot of hosted zones, you can use the `maxitems` parameter to list
  them in groups of up to 100.
  """
  def list_hosted_zones(client, options \\ []) do
    path = "/2013-04-01/hostedzone"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Retrieves a list of your hosted zones in lexicographic order. The response
  includes a `HostedZones` child element for each hosted zone created by the
  current AWS account.

  `ListHostedZonesByName` sorts hosted zones by name with the labels
  reversed. For example:

  `com.example.www.`

  Note the trailing dot, which can change the sort order in some
  circumstances.

  If the domain name includes escape characters or Punycode,
  `ListHostedZonesByName` alphabetizes the domain name using the escaped or
  Punycoded value, which is the format that Amazon Route 53 saves in its
  database. For example, to create a hosted zone for exämple.com, you specify
  ex\344mple.com for the domain name. `ListHostedZonesByName` alphabetizes it
  as:

  `com.ex\344mple.`

  The labels are reversed and alphabetized using the escaped value. For more
  information about valid domain name formats, including internationalized
  domain names, see [DNS Domain Name
  Format](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html)
  in the *Amazon Route 53 Developer Guide*.

  Route 53 returns up to 100 items in each response. If you have a lot of
  hosted zones, use the `MaxItems` parameter to list them in groups of up to
  100. The response includes values that help navigate from one group of
  `MaxItems` hosted zones to the next:

  <ul> <li> The `DNSName` and `HostedZoneId` elements in the response contain
  the values, if any, specified for the `dnsname` and `hostedzoneid`
  parameters in the request that produced the current response.

  </li> <li> The `MaxItems` element in the response contains the value, if
  any, that you specified for the `maxitems` parameter in the request that
  produced the current response.

  </li> <li> If the value of `IsTruncated` in the response is true, there are
  more hosted zones associated with the current AWS account.

  If `IsTruncated` is false, this response includes the last hosted zone that
  is associated with the current account. The `NextDNSName` element and
  `NextHostedZoneId` elements are omitted from the response.

  </li> <li> The `NextDNSName` and `NextHostedZoneId` elements in the
  response contain the domain name and the hosted zone ID of the next hosted
  zone that is associated with the current AWS account. If you want to list
  more hosted zones, make another call to `ListHostedZonesByName`, and
  specify the value of `NextDNSName` and `NextHostedZoneId` in the `dnsname`
  and `hostedzoneid` parameters, respectively.

  </li> </ul>
  """
  def list_hosted_zones_by_name(client, options \\ []) do
    path = "/2013-04-01/hostedzonesbyname"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Lists all the private hosted zones that a specified VPC is associated with,
  regardless of which AWS account or AWS service owns the hosted zones. The
  `HostedZoneOwner` structure in the response contains one of the following
  values:

  <ul> <li> An `OwningAccount` element, which contains the account number of
  either the current AWS account or another AWS account. Some services, such
  as AWS Cloud Map, create hosted zones using the current account.

  </li> <li> An `OwningService` element, which identifies the AWS service
  that created and owns the hosted zone. For example, if a hosted zone was
  created by Amazon Elastic File System (Amazon EFS), the value of `Owner` is
  `efs.amazonaws.com`.

  </li> </ul>
  """
  def list_hosted_zones_by_v_p_c(client, options \\ []) do
    path = "/2013-04-01/hostedzonesbyvpc"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Lists the configurations for DNS query logging that are associated with the
  current AWS account or the configuration that is associated with a
  specified hosted zone.

  For more information about DNS query logs, see
  [CreateQueryLoggingConfig](https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateQueryLoggingConfig.html).
  Additional information, including the format of DNS query logs, appears in
  [Logging DNS
  Queries](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html)
  in the *Amazon Route 53 Developer Guide*.
  """
  def list_query_logging_configs(client, options \\ []) do
    path = "/2013-04-01/queryloggingconfig"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Lists the resource record sets in a specified hosted zone.

  `ListResourceRecordSets` returns up to 100 resource record sets at a time
  in ASCII order, beginning at a position specified by the `name` and `type`
  elements.

  **Sort order**

  `ListResourceRecordSets` sorts results first by DNS name with the labels
  reversed, for example:

  `com.example.www.`

  Note the trailing dot, which can change the sort order when the record name
  contains characters that appear before `.` (decimal 46) in the ASCII table.
  These characters include the following: `! " # $ % &amp; ' ( ) * + , -`

  When multiple records have the same DNS name, `ListResourceRecordSets`
  sorts results by the record type.

  **Specifying where to start listing records**

  You can use the name and type elements to specify the resource record set
  that the list begins with:

  <dl> <dt>If you do not specify Name or Type</dt> <dd> The results begin
  with the first resource record set that the hosted zone contains.

  </dd> <dt>If you specify Name but not Type</dt> <dd> The results begin with
  the first resource record set in the list whose name is greater than or
  equal to `Name`.

  </dd> <dt>If you specify Type but not Name</dt> <dd> Amazon Route 53
  returns the `InvalidInput` error.

  </dd> <dt>If you specify both Name and Type</dt> <dd> The results begin
  with the first resource record set in the list whose name is greater than
  or equal to `Name`, and whose type is greater than or equal to `Type`.

  </dd> </dl> **Resource record sets that are PENDING**

  This action returns the most current version of the records. This includes
  records that are `PENDING`, and that are not yet available on all Route 53
  DNS servers.

  **Changing resource record sets**

  To ensure that you get an accurate listing of the resource record sets for
  a hosted zone at a point in time, do not submit a
  `ChangeResourceRecordSets` request while you're paging through the results
  of a `ListResourceRecordSets` request. If you do, some pages may display
  results without the latest changes while other pages display results with
  the latest changes.

  **Displaying the next page of results**

  If a `ListResourceRecordSets` command returns more than one page of
  results, the value of `IsTruncated` is `true`. To display the next page of
  results, get the values of `NextRecordName`, `NextRecordType`, and
  `NextRecordIdentifier` (if any) from the response. Then submit another
  `ListResourceRecordSets` request, and specify those values for
  `StartRecordName`, `StartRecordType`, and `StartRecordIdentifier`.
  """
  def list_resource_record_sets(client, hosted_zone_id, options \\ []) do
    path = "/2013-04-01/hostedzone/#{URI.encode(hosted_zone_id)}/rrset"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Retrieves a list of the reusable delegation sets that are associated with
  the current AWS account.
  """
  def list_reusable_delegation_sets(client, options \\ []) do
    path = "/2013-04-01/delegationset"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Lists tags for one health check or hosted zone.

  For information about using tags for cost allocation, see [Using Cost
  Allocation
  Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *AWS Billing and Cost Management User Guide*.
  """
  def list_tags_for_resource(client, resource_id, resource_type, options \\ []) do
    path = "/2013-04-01/tags/#{URI.encode(resource_type)}/#{URI.encode(resource_id)}"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Lists tags for up to 10 health checks or hosted zones.

  For information about using tags for cost allocation, see [Using Cost
  Allocation
  Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *AWS Billing and Cost Management User Guide*.
  """
  def list_tags_for_resources(client, resource_type, input, options \\ []) do
    path = "/2013-04-01/tags/#{URI.encode(resource_type)}"
    headers = []
    request(client, :post, path, headers, input, options, nil)
  end

  @doc """
  Gets information about the latest version for every traffic policy that is
  associated with the current AWS account. Policies are listed in the order
  that they were created in.
  """
  def list_traffic_policies(client, options \\ []) do
    path = "/2013-04-01/trafficpolicies"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Gets information about the traffic policy instances that you created by
  using the current AWS account.

  <note> After you submit an `UpdateTrafficPolicyInstance` request, there's a
  brief delay while Amazon Route 53 creates the resource record sets that are
  specified in the traffic policy definition. For more information, see the
  `State` response element.

  </note> Route 53 returns a maximum of 100 items in each response. If you
  have a lot of traffic policy instances, you can use the `MaxItems`
  parameter to list them in groups of up to 100.
  """
  def list_traffic_policy_instances(client, options \\ []) do
    path = "/2013-04-01/trafficpolicyinstances"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Gets information about the traffic policy instances that you created in a
  specified hosted zone.

  <note> After you submit a `CreateTrafficPolicyInstance` or an
  `UpdateTrafficPolicyInstance` request, there's a brief delay while Amazon
  Route 53 creates the resource record sets that are specified in the traffic
  policy definition. For more information, see the `State` response element.

  </note> Route 53 returns a maximum of 100 items in each response. If you
  have a lot of traffic policy instances, you can use the `MaxItems`
  parameter to list them in groups of up to 100.
  """
  def list_traffic_policy_instances_by_hosted_zone(client, options \\ []) do
    path = "/2013-04-01/trafficpolicyinstances/hostedzone"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Gets information about the traffic policy instances that you created by
  using a specify traffic policy version.

  <note> After you submit a `CreateTrafficPolicyInstance` or an
  `UpdateTrafficPolicyInstance` request, there's a brief delay while Amazon
  Route 53 creates the resource record sets that are specified in the traffic
  policy definition. For more information, see the `State` response element.

  </note> Route 53 returns a maximum of 100 items in each response. If you
  have a lot of traffic policy instances, you can use the `MaxItems`
  parameter to list them in groups of up to 100.
  """
  def list_traffic_policy_instances_by_policy(client, options \\ []) do
    path = "/2013-04-01/trafficpolicyinstances/trafficpolicy"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Gets information about all of the versions for a specified traffic policy.

  Traffic policy versions are listed in numerical order by `VersionNumber`.
  """
  def list_traffic_policy_versions(client, id, options \\ []) do
    path = "/2013-04-01/trafficpolicies/#{URI.encode(id)}/versions"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Gets a list of the VPCs that were created by other accounts and that can be
  associated with a specified hosted zone because you've submitted one or
  more `CreateVPCAssociationAuthorization` requests.

  The response includes a `VPCs` element with a `VPC` child element for each
  VPC that can be associated with the hosted zone.
  """
  def list_v_p_c_association_authorizations(client, hosted_zone_id, options \\ []) do
    path = "/2013-04-01/hostedzone/#{URI.encode(hosted_zone_id)}/authorizevpcassociation"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Gets the value that Amazon Route 53 returns in response to a DNS request
  for a specified record name and type. You can optionally specify the IP
  address of a DNS resolver, an EDNS0 client subnet IP address, and a subnet
  mask.
  """
  def test_d_n_s_answer(client, options \\ []) do
    path = "/2013-04-01/testdnsanswer"
    headers = []
    request(client, :get, path, headers, nil, options, nil)
  end

  @doc """
  Updates an existing health check. Note that some values can't be updated.

  For more information about updating health checks, see [Creating, Updating,
  and Deleting Health
  Checks](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html)
  in the *Amazon Route 53 Developer Guide*.
  """
  def update_health_check(client, health_check_id, input, options \\ []) do
    path = "/2013-04-01/healthcheck/#{URI.encode(health_check_id)}"
    headers = []
    request(client, :post, path, headers, input, options, nil)
  end

  @doc """
  Updates the comment for a specified hosted zone.
  """
  def update_hosted_zone_comment(client, id, input, options \\ []) do
    path = "/2013-04-01/hostedzone/#{URI.encode(id)}"
    headers = []
    request(client, :post, path, headers, input, options, nil)
  end

  @doc """
  Updates the comment for a specified traffic policy version.
  """
  def update_traffic_policy_comment(client, id, version, input, options \\ []) do
    path = "/2013-04-01/trafficpolicy/#{URI.encode(id)}/#{URI.encode(version)}"
    headers = []
    request(client, :post, path, headers, input, options, nil)
  end

  @doc """
  Updates the resource record sets in a specified hosted zone that were
  created based on the settings in a specified traffic policy version.

  When you update a traffic policy instance, Amazon Route 53 continues to
  respond to DNS queries for the root resource record set name (such as
  example.com) while it replaces one group of resource record sets with
  another. Route 53 performs the following operations:

  <ol> <li> Route 53 creates a new group of resource record sets based on the
  specified traffic policy. This is true regardless of how significant the
  differences are between the existing resource record sets and the new
  resource record sets.

  </li> <li> When all of the new resource record sets have been created,
  Route 53 starts to respond to DNS queries for the root resource record set
  name (such as example.com) by using the new resource record sets.

  </li> <li> Route 53 deletes the old group of resource record sets that are
  associated with the root resource record set name.

  </li> </ol>
  """
  def update_traffic_policy_instance(client, id, input, options \\ []) do
    path = "/2013-04-01/trafficpolicyinstance/#{URI.encode(id)}"
    headers = []
    request(client, :post, path, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), map(), list(), pos_integer()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, method, path, headers, input, options, success_status_code) do
    client = %{client | service: "route53",
                        region:  "us-east-1"}
    host = get_host("route53", client)
    url = get_url(host, path, client)

    headers = [
      {"Host", host},
      {"Content-Type", "text/xml"}
      | headers
    ]

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, response}

      {:ok, %HTTPoison.Response{status_code: status_code, body: body} = response}
      when status_code == 200 or status_code == 202 or status_code == 204 ->
        {:ok, AWS.Util.decode_xml(body), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = AWS.Util.decode_xml(body)
        reason = error["ErrorResponse"]["Error"]["Message"]
        {:error, reason}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: body} = response} ->
        {:ok, AWS.Util.decode_xml(body), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = AWS.Util.decode_xml(body)
        reason = error["ErrorResponse"]["Error"]["Message"]
        {:error, reason}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp get_host(endpoint_prefix, %{endpoint: endpoint}) do
    "#{endpoint_prefix}.#{endpoint}"
  end

  defp get_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp encode_payload(input) do
    if input != nil, do: AWS.Util.encode_xml(input), else: ""
  end
end
