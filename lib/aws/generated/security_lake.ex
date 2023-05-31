# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SecurityLake do
  @moduledoc """
  Amazon Security Lake is a fully managed security data lake service.

  You can use Security Lake to automatically centralize security data from cloud,
  on-premises, and custom sources into a data lake that's stored in your Amazon
  Web Services account. Amazon Web Services Organizations is an account management
  service that lets you consolidate multiple Amazon Web Services accounts into an
  organization that you create and centrally manage. With Organizations, you can
  create member accounts and invite existing accounts to join your organization.
  Security Lake helps you analyze security data for a more complete understanding
  of your security posture across the entire organization. It can also help you
  improve the protection of your workloads, applications, and data.

  The data lake is backed by Amazon Simple Storage Service (Amazon S3) buckets,
  and you retain ownership over your data.

  Amazon Security Lake integrates with CloudTrail, a service that provides a
  record of actions taken by a user, role, or an Amazon Web Services service. In
  Security Lake, CloudTrail captures API calls for Security Lake as events. The
  calls captured include calls from the Security Lake console and code calls to
  the Security Lake API operations. If you create a trail, you can enable
  continuous delivery of CloudTrail events to an Amazon S3 bucket, including
  events for Security Lake. If you don't configure a trail, you can still view the
  most recent events in the CloudTrail console in Event history. Using the
  information collected by CloudTrail you can determine the request that was made
  to Security Lake, the IP address from which the request was made, who made the
  request, when it was made, and additional details. To learn more about Security
  Lake information in CloudTrail, see the [Amazon Security Lake User Guide](https://docs.aws.amazon.com/security-lake/latest/userguide/securitylake-cloudtrail.html).

  Security Lake automates the collection of security-related log and event data
  from integrated Amazon Web Services and third-party services. It also helps you
  manage the lifecycle of data with customizable retention and replication
  settings. Security Lake converts ingested data into Apache Parquet format and a
  standard open-source schema called the Open Cybersecurity Schema Framework
  (OCSF).

  Other Amazon Web Services and third-party services can subscribe to the data
  that's stored in Security Lake for incident response and security data
  analytics.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "securitylake",
      global?: false,
      protocol: "rest-json",
      service_id: "SecurityLake",
      signature_version: "v4",
      signing_name: "securitylake",
      target_prefix: nil
    }
  end

  @doc """
  Adds a natively supported Amazon Web Service as an Amazon Security Lake source.

  Enables source types for member accounts in required Amazon Web Services
  Regions, based on the parameters you specify. You can choose any source type in
  any Region for either accounts that are part of a trusted organization or
  standalone accounts. Once you add an Amazon Web Service as a source, Security
  Lake starts collecting logs and events from it,

  You can use this API only to enable natively supported Amazon Web Services as a
  source. Use `CreateCustomLogSource` to enable data collection from a custom
  source.
  """
  def create_aws_log_source(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/logsources/aws"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds a third-party custom source in Amazon Security Lake, from the Amazon Web
  Services Region where you want to create a custom source.

  Security Lake can collect logs and events from third-party custom sources. After
  creating the appropriate IAM role to invoke Glue crawler, use this API to add a
  custom source name in Security Lake. This operation creates a partition in the
  Amazon S3 bucket for Security Lake as the target location for log files from the
  custom source. In addition, this operation also creates an associated Glue table
  and an Glue crawler.
  """
  def create_custom_log_source(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/logsources/custom"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Initializes an Amazon Security Lake instance with the provided (or default)
  configuration.

  You can enable Security Lake in Amazon Web Services Regions with customized
  settings before enabling log collection in Regions. By default, the
  `CreateDataLake` Security Lake in all Regions. To specify particular Regions,
  configure these Regions using the `configurations` parameter. If you have
  already enabled Security Lake in a Region when you call this command, the
  command will update the Region if you provide new configuration parameters. If
  you have not already enabled Security Lake in the Region when you call this API,
  it will set up the data lake in the Region with the specified configurations.

  When you enable Security Lake, it starts ingesting security data after the
  `CreateAwsLogSource` call. This includes ingesting security data from sources,
  storing data, and making data accessible to subscribers. Security Lake also
  enables all the existing settings and resources that it stores or maintains for
  your Amazon Web Services account in the current Region, including security log
  and event data. For more information, see the [Amazon Security Lake User Guide](https://docs.aws.amazon.com/security-lake/latest/userguide/what-is-security-lake.html).
  """
  def create_data_lake(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates the specified notification subscription in Amazon Security Lake for the
  organization you specify.
  """
  def create_data_lake_exception_subscription(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/exceptions/subscription"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Automatically enables Amazon Security Lake for new member accounts in your
  organization.

  Security Lake is not automatically enabled for any existing member accounts in
  your organization.
  """
  def create_data_lake_organization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/organization/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a subscription permission for accounts that are already enabled in
  Amazon Security Lake.

  You can create a subscriber with access to data in the current Amazon Web
  Services Region.
  """
  def create_subscriber(%Client{} = client, input, options \\ []) do
    url_path = "/v1/subscribers"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Notifies the subscriber when new data is written to the data lake for the
  sources that the subscriber consumes in Security Lake.

  You can create only one subscriber notification per subscriber.
  """
  def create_subscriber_notification(%Client{} = client, subscriber_id, input, options \\ []) do
    url_path = "/v1/subscribers/#{AWS.Util.encode_uri(subscriber_id)}/notification"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes a natively supported Amazon Web Service as an Amazon Security Lake
  source.

  You can remove a source for one or more Regions. When you remove the source,
  Security Lake stops collecting data from that source in the specified Regions
  and accounts, and subscribers can no longer consume new data from the source.
  However, subscribers can still consume data that Security Lake collected from
  the source before removal.

  You can choose any source type in any Amazon Web Services Region for either
  accounts that are part of a trusted organization or standalone accounts.
  """
  def delete_aws_log_source(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/logsources/aws/delete"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes a custom log source from Amazon Security Lake, to stop sending data from
  the custom source to Security Lake.
  """
  def delete_custom_log_source(%Client{} = client, source_name, input, options \\ []) do
    url_path = "/v1/datalake/logsources/custom/#{AWS.Util.encode_uri(source_name)}"
    headers = []

    {query_params, input} =
      [
        {"sourceVersion", "sourceVersion"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  When you disable Amazon Security Lake from your account, Security Lake is
  disabled in all Amazon Web Services Regions and it stops collecting data from
  your sources.

  Also, this API automatically takes steps to remove the account from Security
  Lake. However, Security Lake retains all of your existing settings and the
  resources that it created in your Amazon Web Services account in the current
  Amazon Web Services Region.

  The `DeleteDataLake` operation does not delete the data that is stored in your
  Amazon S3 bucket, which is owned by your Amazon Web Services account. For more
  information, see the [Amazon Security Lake User Guide](https://docs.aws.amazon.com/security-lake/latest/userguide/disable-security-lake.html).
  """
  def delete_data_lake(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/delete"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the specified notification subscription in Amazon Security Lake for the
  organization you specify.
  """
  def delete_data_lake_exception_subscription(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/exceptions/subscription"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes automatic the enablement of configuration settings for new member
  accounts (but retains the settings for the delegated administrator) from Amazon
  Security Lake.

  You must run this API using the credentials of the delegated administrator. When
  you run this API, new member accounts that are added after the organization
  enables Security Lake won't contribute to the data lake.
  """
  def delete_data_lake_organization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/organization/configuration/delete"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the subscription permission and all notification settings for accounts
  that are already enabled in Amazon Security Lake.

  When you run `DeleteSubscriber`, the subscriber will no longer consume data from
  Security Lake and the subscriber is removed. This operation deletes the
  subscriber and removes access to data in the current Amazon Web Services Region.
  """
  def delete_subscriber(%Client{} = client, subscriber_id, input, options \\ []) do
    url_path = "/v1/subscribers/#{AWS.Util.encode_uri(subscriber_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the specified notification subscription in Amazon Security Lake for the
  organization you specify.
  """
  def delete_subscriber_notification(%Client{} = client, subscriber_id, input, options \\ []) do
    url_path = "/v1/subscribers/#{AWS.Util.encode_uri(subscriber_id)}/notification"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the Amazon Security Lake delegated administrator account for the
  organization.

  This API can only be called by the organization management account. The
  organization management account cannot be the delegated administrator account.
  """
  def deregister_data_lake_delegated_administrator(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/delegate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves the details of exception notifications for the account in Amazon
  Security Lake.
  """
  def get_data_lake_exception_subscription(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/exceptions/subscription"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the configuration that will be automatically set up for accounts added
  to the organization after the organization has onboarded to Amazon Security
  Lake.

  This API does not take input parameters.
  """
  def get_data_lake_organization_configuration(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/organization/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a snapshot of the current Region, including whether Amazon Security
  Lake is enabled for those accounts and which sources Security Lake is collecting
  data from.
  """
  def get_data_lake_sources(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/sources"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves the subscription information for the specified subscription ID.

  You can get information about a specific subscriber.
  """
  def get_subscriber(%Client{} = client, subscriber_id, options \\ []) do
    url_path = "/v1/subscribers/#{AWS.Util.encode_uri(subscriber_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Amazon Security Lake exceptions that you can use to find the source of
  problems and fix them.
  """
  def list_data_lake_exceptions(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/exceptions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves the Amazon Security Lake configuration object for the specified Amazon
  Web Services account ID.

  You can use the `ListDataLakes` API to know whether Security Lake is enabled for
  any region.
  """
  def list_data_lakes(%Client{} = client, regions \\ nil, options \\ []) do
    url_path = "/v1/datalakes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(regions) do
        [{"regions", regions} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the log sources in the current Amazon Web Services Region.
  """
  def list_log_sources(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/logsources/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  List all subscribers for the specific Amazon Security Lake account ID.

  You can retrieve a list of subscriptions associated with a specific organization
  or Amazon Web Services account.
  """
  def list_subscribers(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v1/subscribers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Designates the Amazon Security Lake delegated administrator account for the
  organization.

  This API can only be called by the organization management account. The
  organization management account cannot be the delegated administrator account.
  """
  def register_data_lake_delegated_administrator(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/delegate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Specifies where to store your security data and for how long.

  You can add a rollup Region to consolidate data from multiple Amazon Web
  Services Regions.
  """
  def update_data_lake(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the specified notification subscription in Amazon Security Lake for the
  organization you specify.
  """
  def update_data_lake_exception_subscription(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/exceptions/subscription"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing subscription for the given Amazon Security Lake account ID.

  You can update a subscriber by changing the sources that the subscriber consumes
  data from.
  """
  def update_subscriber(%Client{} = client, subscriber_id, input, options \\ []) do
    url_path = "/v1/subscribers/#{AWS.Util.encode_uri(subscriber_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing notification method for the subscription (SQS or HTTPs
  endpoint) or switches the notification subscription endpoint for a subscriber.
  """
  def update_subscriber_notification(%Client{} = client, subscriber_id, input, options \\ []) do
    url_path = "/v1/subscribers/#{AWS.Util.encode_uri(subscriber_id)}/notification"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
