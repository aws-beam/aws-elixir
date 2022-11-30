# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SecurityLake do
  @moduledoc """
  Amazon Security Lake is in preview release.

  Your use of the Amazon Security Lake preview is subject to Section 2 of the
  [Amazon Web Services Service Terms](http://aws.amazon.com/service-terms/)("Betas
  and Previews").

  Amazon Security Lake is a fully-managed security data lake service. You can use
  Security Lake to automatically centralize security data from cloud, on-premises,
  and custom sources into a data lake that's stored in your account. Security Lake
  helps you analyze security data, so you can get a more complete understanding of
  your security posture across the entire organization and improve the protection
  of your workloads, applications, and data.

  The data lake is backed by Amazon Simple Storage Service (Amazon S3) buckets,
  and you retain ownership over your data.

  Security Lake automates the collection of security-related log and event data
  from integrated Amazon Web Services. and third-party services and manages the
  lifecycle of data with customizable retention and replication settings. Security
  Lake also converts ingested data into Apache Parquet format and a standard
  open-source schema called the Open Cybersecurity Schema Framework (OCSF).

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
  Adds a natively-supported Amazon Web Services service as a Security Lake source.

  Enables source types for member accounts in required Regions, based on specified
  parameters. You can choose any source type in any Region for accounts that are
  either part of a trusted organization or standalone accounts. At least one of
  the three dimensions is a mandatory input to this API. However, any combination
  of the three dimensions can be supplied to this API.

  By default, dimension refers to the entire set. When you don't provide a
  dimension, Security Lake assumes that the missing dimension refers to the entire
  set. This is overridden when you supply any one of the inputs. For instance,
  when members is not specified, the API disables all Security Lake member
  accounts for sources. Similarly, when Regions are not specified, Security Lake
  is disabled for all the Regions where Security Lake is available as a service.

  You can use this API only to enable a natively-supported Amazon Web Services
  services as a source. Use `CreateCustomLogSource` to enable data collection from
  a custom source.
  """
  def create_aws_log_source(%Client{} = client, input, options \\ []) do
    url_path = "/v1/logsources/aws"
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
  Adds a third-party custom source in Amazon Security Lake, from the Region where
  you want to create a custom source.

  Security Lake can collect logs and events from third-party custom sources. After
  creating the appropriate API roles, use this API to add a custom source name in
  Security Lake. This operation creates a partition in the Security Lake S3 bucket
  as the target location for log files from the custom source, an associated Glue
  table, and an Glue crawler.
  """
  def create_custom_log_source(%Client{} = client, input, options \\ []) do
    url_path = "/v1/logsources/custom"
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

  You can enable Security Lake in Regions with customized settings in advance
  before enabling log collection in Regions. You can either use the `enableAll`
  parameter to specify all Regions or you can specify the Regions you want to
  enable Security Lake using the `Regions` parameter and configure these Regions
  using the `configurations` parameter. When the `CreateDataLake` API is called
  multiple times, if that Region is already enabled, it will update the Region if
  configuration for that Region is provided. If that Region is a new Region, it
  will be set up with the customized configurations if it is specified.

  When you enable Security Lake, it starts ingesting security data after the
  `CreateAwsLogSource` call. This includes ingesting security data from sources,
  storing data, and making data accessible to subscribers. Security Lake also
  enables all the existing settings and resources that it stores or maintains for
  your account in the current Region, including security log and event data. For
  more information, see the Amazon Security Lake User Guide.
  """
  def create_datalake(%Client{} = client, input, options \\ []) do
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
  Automatically enable Security Lake in the specified Regions to begin ingesting
  security data.

  When you choose to enable organization accounts automatically, then Security
  Lake begins to enable new accounts as member accounts as they are added to the
  organization. Security Lake does not enable existing organization accounts that
  are not yet enabled.
  """
  def create_datalake_auto_enable(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/autoenable"
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
  Designates the Security Lake administrator account for the organization.

  This API can only be called by the organization management account. The
  organization management account cannot be the delegated administrator account.
  """
  def create_datalake_delegated_admin(%Client{} = client, input, options \\ []) do
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
  Creates the specified notification subscription in Security Lake.

  Creates the specified subscription notifications in the specified organization.
  """
  def create_datalake_exceptions_subscription(%Client{} = client, input, options \\ []) do
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
  Creates a subscription permission for accounts that are already enabled in
  Security Lake.
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
  Creates the specified notification subscription in Security Lake.

  Creates the specified subscription notifications from the specified
  organization.
  """
  def create_subscription_notification_configuration(
        %Client{} = client,
        subscription_id,
        input,
        options \\ []
      ) do
    url_path = "/subscription-notifications/#{AWS.Util.encode_uri(subscription_id)}"
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
  Removes a natively-supported Amazon Web Services service as a Amazon Security
  Lake source.

  When you remove the source, Security Lake stops collecting data from that
  source, and subscribers can no longer consume new data from the source.
  Subscribers can still consume data that Amazon Security Lake collected from the
  source before disablement.

  You can choose any source type in any Region for accounts that are either part
  of a trusted organization or standalone accounts. At least one of the three
  dimensions is a mandatory input to this API. However, any combination of the
  three dimensions can be supplied to this API.

  By default, dimension refers to the entire set. This is overridden when you
  supply any one of the inputs. For instance, when members is not specified, the
  API disables all Security Lake member accounts for sources. Similarly, when
  Regions are not specified, Security Lake is disabled for all the Regions where
  Security Lake is available as a service.

  You can use this API to remove a natively-supported Amazon Web Services service
  as a source. Use `DeregisterCustomData` to remove a custom source.

  When you don't provide a dimension, Security Lake assumes that the missing
  dimension refers to the entire set. For example, if you don't provide specific
  accounts, the API applies to the entire set of accounts in your organization.
  """
  def delete_aws_log_source(%Client{} = client, input, options \\ []) do
    url_path = "/v1/logsources/aws/delete"
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
  Removes a custom log source from Security Lake.
  """
  def delete_custom_log_source(%Client{} = client, input, options \\ []) do
    url_path = "/v1/logsources/custom"
    headers = []

    {query_params, input} =
      [
        {"customSourceName", "customSourceName"}
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
  When you delete Amazon Security Lake from your account, Security Lake is
  disabled in all Regions.

  Also, this API automatically performs the off-boarding steps to off-board the
  account from Security Lake . This includes ingesting security data from sources,
  storing data, and making data accessible to subscribers. Security Lake also
  deletes all the existing settings and resources that it stores or maintains for
  your account in the current Region, including security log and event data.
  `DeleteDatalake` does not delete the S3 bucket which is owned by the Amazon Web
  Services account. For more information, see the Amazon Security Lake User Guide.
  """
  def delete_datalake(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake"
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
  Automatically delete Security Lake in the specified Regions to stop ingesting
  security data.

  When you delete Amazon Security Lake from your account, Security Lake is
  disabled in all Regions. Also, this API automatically performs the off-boarding
  steps to off-board the account from Security Lake . This includes ingesting
  security data from sources, storing data, and making data accessible to
  subscribers. Security Lake also deletes all the existing settings and resources
  that it stores or maintains for your account in the current Region, including
  security log and event data. For more information, see the Amazon Security Lake
  User Guide.
  """
  def delete_datalake_auto_enable(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/autoenable/delete"
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
  Deletes the Security Lake administrator account for the organization.

  This API can only be called by the organization management account. The
  organization management account cannot be the delegated administrator account.
  """
  def delete_datalake_delegated_admin(%Client{} = client, account, input, options \\ []) do
    url_path = "/v1/datalake/delegate/#{AWS.Util.encode_uri(account)}"
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
  Deletes the specified notification subscription in Security Lake.

  Deletes the specified subscription notifications in the specified organization.
  """
  def delete_datalake_exceptions_subscription(%Client{} = client, input, options \\ []) do
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
  Deletes the specified subscription permissions to Security Lake.

  Deletes the specified subscription permissions from the specified organization.
  """
  def delete_subscriber(%Client{} = client, input, options \\ []) do
    url_path = "/v1/subscribers"
    headers = []

    {query_params, input} =
      [
        {"id", "id"}
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
  Deletes the specified notification subscription in Security Lake.

  Deletes the specified subscription notifications from the specified
  organization.
  """
  def delete_subscription_notification_configuration(
        %Client{} = client,
        subscription_id,
        input,
        options \\ []
      ) do
    url_path = "/subscription-notifications/#{AWS.Util.encode_uri(subscription_id)}"
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
  Retrieve the Security Lake configuration object for the specified account ID.

  This API does not take input parameters.
  """
  def get_datalake(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the configuration that will be automatically set up for accounts added
  to the organization after the organization has on boarded to Amazon Security
  Lake.

  This API does not take input parameters.
  """
  def get_datalake_auto_enable(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/autoenable"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the expiration period and time-to-live (TTL) for which the exception
  message will remain.

  Exceptions are stored by default, for a 2 week period of time from when a record
  was created in Security Lake. This API does not take input parameters. This API
  does not take input parameters.
  """
  def get_datalake_exceptions_expiry(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/exceptions/expiry"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of exception notifications for the account in Amazon
  Security Lake.
  """
  def get_datalake_exceptions_subscription(%Client{} = client, options \\ []) do
    url_path = "/v1/datalake/exceptions/subscription"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve the Security Lake configuration object for the specified account ID.

  This API does not take input parameters.
  """
  def get_datalake_status(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/status"
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
  Retrieves subscription information for the specified subscription ID.
  """
  def get_subscriber(%Client{} = client, id, options \\ []) do
    url_path = "/v1/subscribers/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the Amazon Security Lake exceptions that you can use to find the source of
  problems and fix them.
  """
  def list_datalake_exceptions(%Client{} = client, input, options \\ []) do
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
  Lists the log sources in the current region.
  """
  def list_log_sources(%Client{} = client, input, options \\ []) do
    url_path = "/v1/logsources/list"
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
  List all subscribers for the specific Security Lake account ID.
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
  Amazon Security Lake allows you to specify where to store your security data and
  for how long.

  You can specify a rollup Region to consolidate data from multiple regions.

  You can update the properties of a Region or source. Input can either be
  directly specified to the API.
  """
  def update_datalake(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update the expiration period for the exception message to your preferred time,
  and control the time-to-live (TTL) for the exception message to remain.

  Exceptions are stored by default, for a 2 week period of time from when a record
  was created in Security Lake.
  """
  def update_datalake_exceptions_expiry(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/exceptions/expiry"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update the subscription notification for exception notification.
  """
  def update_datalake_exceptions_subscription(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datalake/exceptions/subscription"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update the subscription permission for the given Security Lake account ID.
  """
  def update_subscriber(%Client{} = client, id, input, options \\ []) do
    url_path = "/v1/subscribers/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Create a new subscription notification or add the existing subscription
  notification setting for the specified subscription ID.
  """
  def update_subscription_notification_configuration(
        %Client{} = client,
        subscription_id,
        input,
        options \\ []
      ) do
    url_path = "/subscription-notifications/#{AWS.Util.encode_uri(subscription_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
