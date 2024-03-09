# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.OAM do
  @moduledoc """
  Use Amazon CloudWatch Observability Access Manager to create and manage links
  between source accounts and
  monitoring accounts by using *CloudWatch cross-account observability*.

  With
  CloudWatch cross-account observability, you can monitor and troubleshoot
  applications that span
  multiple accounts within a Region. Seamlessly search, visualize, and analyze
  your metrics,
  logs, traces, and Application Insights applications in any of the linked
  accounts without account boundaries.

  Set up one or more Amazon Web Services accounts as *monitoring
  accounts* and link them with multiple *source accounts*. A
  monitoring account is a central Amazon Web Services account that can view and
  interact with
  observability data generated from source accounts. A source account is an
  individual Amazon Web Services account that generates observability data for the
  resources that reside in it.
  Source accounts share their observability data with the monitoring account. The
  shared
  observability data can include metrics in Amazon CloudWatch, logs in Amazon
  CloudWatch Logs, traces in X-Ray, and applications in Amazon CloudWatch
  Application Insights.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2022-06-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "oam",
      global?: false,
      protocol: "rest-json",
      service_id: "OAM",
      signature_version: "v4",
      signing_name: "oam",
      target_prefix: nil
    }
  end

  @doc """
  Creates a link between a source account and a sink that you have created in a
  monitoring account.

  Before you create a link, you must create a sink in the monitoring account and
  create a
  sink policy in that account. The sink policy must permit the source account to
  link to it. You
  can grant permission to source accounts by granting permission to an entire
  organization or to
  individual accounts.

  For more information, see
  [CreateSink](https://docs.aws.amazon.com/OAM/latest/APIReference/API_CreateSink.html) and
  [PutSinkPolicy](https://docs.aws.amazon.com/OAM/latest/APIReference/API_PutSinkPolicy.html).

  Each monitoring account can be linked to as many as 100,000 source accounts.

  Each source account can be linked to as many as five monitoring accounts.
  """
  def create_link(%Client{} = client, input, options \\ []) do
    url_path = "/CreateLink"
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
  Use this to create a *sink* in the current account, so that it can be
  used as a monitoring account in CloudWatch cross-account observability.

  A sink is a resource that
  represents an attachment point in a monitoring account. Source accounts can link
  to the sink
  to send observability data.

  After you create a sink, you must create a sink policy that allows source
  accounts to attach to it.
  For more information, see
  [PutSinkPolicy](https://docs.aws.amazon.com/OAM/latest/APIReference/API_PutSinkPolicy.html).

  Each account can contain one sink. If you delete a sink, you can then create a
  new one in that account.
  """
  def create_sink(%Client{} = client, input, options \\ []) do
    url_path = "/CreateSink"
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
  Deletes a link between a monitoring account sink and a source account.

  You must run this operation
  in the source account.
  """
  def delete_link(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteLink"
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
  Deletes a sink.

  You must delete all links to a sink before you can delete that sink.
  """
  def delete_sink(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteSink"
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
  Returns complete information about one link.

  To use this operation, provide the link ARN. To retrieve a list of link ARNs,
  use
  [ListLinks](https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListLinks.html).
  """
  def get_link(%Client{} = client, input, options \\ []) do
    url_path = "/GetLink"
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
  Returns complete information about one monitoring account sink.

  To use this operation, provide the sink ARN. To retrieve a list of sink ARNs,
  use
  [ListSinks](https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListSinks.html).
  """
  def get_sink(%Client{} = client, input, options \\ []) do
    url_path = "/GetSink"
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
  Returns the current sink policy attached to this sink.

  The sink policy specifies what
  accounts can attach to this sink as source accounts, and what types of data they
  can share.
  """
  def get_sink_policy(%Client{} = client, input, options \\ []) do
    url_path = "/GetSinkPolicy"
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
  Returns a list of source account links that are linked to this monitoring
  account sink.

  To use this operation, provide the sink ARN. To retrieve a list of sink ARNs,
  use
  [ListSinks](https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListSinks.html).   To find a list of links for one source account, use
  [ListLinks](https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListLinks.html).
  """
  def list_attached_links(%Client{} = client, input, options \\ []) do
    url_path = "/ListAttachedLinks"
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
  Use this operation in a source account to return a list of links to monitoring
  account sinks that
  this source account has.

  To find a list of links for one monitoring account sink, use
  [ListAttachedLinks](https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListAttachedLinks.html)
  from within the monitoring account.
  """
  def list_links(%Client{} = client, input, options \\ []) do
    url_path = "/ListLinks"
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
  Use this operation in a monitoring account to return the list of sinks created
  in that account.
  """
  def list_sinks(%Client{} = client, input, options \\ []) do
    url_path = "/ListSinks"
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
  Displays the tags associated with a resource.

  Both sinks and links support tagging.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates or updates the resource policy that grants permissions to source
  accounts to link to the monitoring account sink.

  When you create a sink policy, you can grant
  permissions to all accounts in an organization or to individual accounts.

  You can also use a sink policy to limit the types of data that is shared. The
  three types that
  you can allow or deny are:

    *

  **Metrics** - Specify with
  `AWS::CloudWatch::Metric`

    *

  **Log groups** - Specify with `AWS::Logs::LogGroup`

    *

  **Traces** - Specify with `AWS::XRay::Trace`

    *

  **Application Insights - Applications** - Specify with
  `AWS::ApplicationInsights::Application`

  See the examples in this section to see how to specify permitted source accounts
  and data types.
  """
  def put_sink_policy(%Client{} = client, input, options \\ []) do
    url_path = "/PutSinkPolicy"
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
  Assigns one or more tags (key-value pairs) to the specified resource.

  Both sinks and links can be tagged.

  Tags can help you organize and categorize your resources. You can also use them
  to scope user
  permissions by granting a user
  permission to access or change only resources with certain tag values.

  Tags don't have any semantic meaning to Amazon Web Services and are interpreted
  strictly as strings of characters.

  You can use the `TagResource` action with a resource that already has tags. If
  you specify a new tag key for the alarm,
  this tag is appended to the list of tags associated
  with the alarm. If you specify a tag key that is already associated with the
  alarm, the new tag value that you specify replaces
  the previous value for that tag.

  You can associate as many as 50 tags with a resource.

  Unlike tagging permissions in other Amazon Web Services services, to tag or
  untag links and
  sinks you must have the `oam:ResourceTag` permission. The
  `iam:ResourceTag` permission does not allow you to tag and untag links and
  sinks.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Removes one or more tags from the specified resource.

  Unlike tagging permissions in other Amazon Web Services services, to tag or
  untag links and
  sinks you must have the `oam:ResourceTag` permission. The
  `iam:TagResource` permission does not allow you to tag and untag links and
  sinks.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
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
  Use this operation to change what types of data are shared from a source account
  to its linked
  monitoring account sink.

  You can't change the sink or change the monitoring account with this operation.

  To update the list of tags associated with the sink, use
  [TagResource](https://docs.aws.amazon.com/OAM/latest/APIReference/API_TagResource.html).
  """
  def update_link(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateLink"
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
end
