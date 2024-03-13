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

  @typedoc """

  ## Example:

      create_sink_input() :: %{
        optional("Tags") => map(),
        required("Name") => String.t()
      }

  """
  @type create_sink_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_link_output() :: %{
        "Arn" => [String.t()],
        "Id" => [String.t()],
        "Label" => [String.t()],
        "LabelTemplate" => [String.t()],
        "ResourceTypes" => list([String.t()]()),
        "SinkArn" => [String.t()],
        "Tags" => map()
      }

  """
  @type get_link_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_link_input() :: %{
        required("Identifier") => String.t()
      }

  """
  @type delete_link_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      missing_required_parameter_exception() :: %{
        "amznErrorType" => [String.t()],
        "message" => [String.t()]
      }

  """
  @type missing_required_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_sink_output() :: %{}

  """
  @type delete_sink_output() :: %{}

  @typedoc """

  ## Example:

      list_links_output() :: %{
        "Items" => list(list_links_item()()),
        "NextToken" => [String.t()]
      }

  """
  @type list_links_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_sink_policy_output() :: %{
        "Policy" => [String.t()],
        "SinkArn" => [String.t()],
        "SinkId" => [String.t()]
      }

  """
  @type put_sink_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_attached_links_output() :: %{
        "Items" => list(list_attached_links_item()()),
        "NextToken" => [String.t()]
      }

  """
  @type list_attached_links_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_sink_input() :: %{
        required("Identifier") => String.t()
      }

  """
  @type delete_sink_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sink_policy_input() :: %{
        required("SinkIdentifier") => String.t()
      }

  """
  @type get_sink_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sink_policy_output() :: %{
        "Policy" => [String.t()],
        "SinkArn" => [String.t()],
        "SinkId" => [String.t()]
      }

  """
  @type get_sink_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_attached_links_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("SinkIdentifier") => String.t()
      }

  """
  @type list_attached_links_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_link_input() :: %{
        optional("Tags") => map(),
        required("LabelTemplate") => String.t(),
        required("ResourceTypes") => list(list(any())()),
        required("SinkIdentifier") => String.t()
      }

  """
  @type create_link_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => [String.t()],
        "amznErrorType" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t()],
        "amznErrorType" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_attached_links_item() :: %{
        "Label" => [String.t()],
        "LinkArn" => [String.t()],
        "ResourceTypes" => list([String.t()]())
      }

  """
  @type list_attached_links_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_links_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_links_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => [String.t()],
        "amznErrorType" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_link_input() :: %{
        required("Identifier") => String.t(),
        required("ResourceTypes") => list(list(any())())
      }

  """
  @type update_link_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sink_output() :: %{
        "Arn" => [String.t()],
        "Id" => [String.t()],
        "Name" => [String.t()],
        "Tags" => map()
      }

  """
  @type create_sink_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sink_input() :: %{
        required("Identifier") => String.t()
      }

  """
  @type get_sink_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_link_output() :: %{
        "Arn" => [String.t()],
        "Id" => [String.t()],
        "Label" => [String.t()],
        "LabelTemplate" => [String.t()],
        "ResourceTypes" => list([String.t()]()),
        "SinkArn" => [String.t()],
        "Tags" => map()
      }

  """
  @type create_link_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      list_links_item() :: %{
        "Arn" => [String.t()],
        "Id" => [String.t()],
        "Label" => [String.t()],
        "ResourceTypes" => list([String.t()]()),
        "SinkArn" => [String.t()]
      }

  """
  @type list_links_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sinks_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_sinks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "amznErrorType" => [String.t()],
        "message" => [String.t()]
      }

  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sinks_output() :: %{
        "Items" => list(list_sinks_item()()),
        "NextToken" => [String.t()]
      }

  """
  @type list_sinks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

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

      get_link_input() :: %{
        required("Identifier") => String.t()
      }

  """
  @type get_link_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_link_output() :: %{}

  """
  @type delete_link_output() :: %{}

  @typedoc """

  ## Example:

      internal_service_fault() :: %{
        "Message" => [String.t()],
        "amznErrorType" => [String.t()]
      }

  """
  @type internal_service_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sinks_item() :: %{
        "Arn" => [String.t()],
        "Id" => [String.t()],
        "Name" => [String.t()]
      }

  """
  @type list_sinks_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sink_output() :: %{
        "Arn" => [String.t()],
        "Id" => [String.t()],
        "Name" => [String.t()],
        "Tags" => map()
      }

  """
  @type get_sink_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_link_output() :: %{
        "Arn" => [String.t()],
        "Id" => [String.t()],
        "Label" => [String.t()],
        "LabelTemplate" => String.t(),
        "ResourceTypes" => list([String.t()]()),
        "SinkArn" => [String.t()],
        "Tags" => map()
      }

  """
  @type update_link_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_tags_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_sink_policy_input() :: %{
        required("Policy") => String.t(),
        required("SinkIdentifier") => String.t()
      }

  """
  @type put_sink_policy_input() :: %{String.t() => any()}

  @type create_link_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | missing_required_parameter_exception()

  @type create_sink_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | missing_required_parameter_exception()

  @type delete_link_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | missing_required_parameter_exception()

  @type delete_sink_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | missing_required_parameter_exception()

  @type get_link_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | missing_required_parameter_exception()

  @type get_sink_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | missing_required_parameter_exception()

  @type get_sink_policy_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | missing_required_parameter_exception()

  @type list_attached_links_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | missing_required_parameter_exception()

  @type list_links_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()

  @type list_sinks_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type put_sink_policy_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | missing_required_parameter_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception() | validation_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type update_link_errors() ::
          internal_service_fault()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | missing_required_parameter_exception()

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
  @spec create_link(map(), create_link_input(), list()) ::
          {:ok, create_link_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_link_errors()}
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
  @spec create_sink(map(), create_sink_input(), list()) ::
          {:ok, create_sink_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_sink_errors()}
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
  @spec delete_link(map(), delete_link_input(), list()) ::
          {:ok, delete_link_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_link_errors()}
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
  @spec delete_sink(map(), delete_sink_input(), list()) ::
          {:ok, delete_sink_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_sink_errors()}
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
  @spec get_link(map(), get_link_input(), list()) ::
          {:ok, get_link_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_link_errors()}
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
  @spec get_sink(map(), get_sink_input(), list()) ::
          {:ok, get_sink_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sink_errors()}
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
  @spec get_sink_policy(map(), get_sink_policy_input(), list()) ::
          {:ok, get_sink_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sink_policy_errors()}
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
  @spec list_attached_links(map(), list_attached_links_input(), list()) ::
          {:ok, list_attached_links_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_attached_links_errors()}
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
  @spec list_links(map(), list_links_input(), list()) ::
          {:ok, list_links_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_links_errors()}
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
  @spec list_sinks(map(), list_sinks_input(), list()) ::
          {:ok, list_sinks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sinks_errors()}
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
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
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
  @spec put_sink_policy(map(), put_sink_policy_input(), list()) ::
          {:ok, put_sink_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_sink_policy_errors()}
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
  @spec tag_resource(map(), String.t(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
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
  @spec untag_resource(map(), String.t(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
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
  @spec update_link(map(), update_link_input(), list()) ::
          {:ok, update_link_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_link_errors()}
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
