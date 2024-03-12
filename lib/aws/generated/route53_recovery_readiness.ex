# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53RecoveryReadiness do
  @moduledoc """
  Recovery readiness
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  readiness_check_summary() :: %{
    "Readiness" => list(any()),
    "ReadinessCheckName" => String.t()
  }
  """
  @type readiness_check_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("Tags") => map()
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_resource_set_request() :: %{
    optional("Tags") => map(),
    required("ResourceSetName") => String.t(),
    required("ResourceSetType") => String.t(),
    required("Resources") => list(resource()())
  }
  """
  @type create_resource_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_recovery_group_response() :: %{
    "Cells" => list(String.t()()),
    "RecoveryGroupArn" => String.t(),
    "RecoveryGroupName" => String.t(),
    "Tags" => map()
  }
  """
  @type get_recovery_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_cell_response() :: %{
    "CellArn" => String.t(),
    "CellName" => String.t(),
    "Cells" => list(String.t()()),
    "ParentReadinessScopes" => list(String.t()()),
    "Tags" => map()
  }
  """
  @type create_cell_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_cell_request() :: %{

  }
  """
  @type delete_cell_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_recovery_group_request() :: %{

  }
  """
  @type get_recovery_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_readiness_checks_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_readiness_checks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  dns_target_resource() :: %{
    "DomainName" => String.t(),
    "HostedZoneArn" => String.t(),
    "RecordSetId" => String.t(),
    "RecordType" => String.t(),
    "TargetResource" => target_resource()
  }
  """
  @type dns_target_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  r53_resource_record() :: %{
    "DomainName" => String.t(),
    "RecordSetId" => String.t()
  }
  """
  @type r53_resource_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_cells_response() :: %{
    "Cells" => list(cell_output()()),
    "NextToken" => String.t()
  }
  """
  @type list_cells_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_resource_set_request() :: %{

  }
  """
  @type delete_resource_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_cross_account_authorization_response() :: %{
    "CrossAccountAuthorization" => String.t()
  }
  """
  @type create_cross_account_authorization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recovery_group_output() :: %{
    "Cells" => list(String.t()()),
    "RecoveryGroupArn" => String.t(),
    "RecoveryGroupName" => String.t(),
    "Tags" => map()
  }
  """
  @type recovery_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_resource_sets_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_resource_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_set_output() :: %{
    "ResourceSetArn" => String.t(),
    "ResourceSetName" => String.t(),
    "ResourceSetType" => String.t(),
    "Resources" => list(resource()()),
    "Tags" => map()
  }
  """
  @type resource_set_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_cross_account_authorization_request() :: %{
    required("CrossAccountAuthorization") => String.t()
  }
  """
  @type create_cross_account_authorization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_recovery_group_readiness_summary_response() :: %{
    "NextToken" => String.t(),
    "Readiness" => list(any()),
    "ReadinessChecks" => list(readiness_check_summary()())
  }
  """
  @type get_recovery_group_readiness_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("TagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_recovery_group_response() :: %{
    "Cells" => list(String.t()()),
    "RecoveryGroupArn" => String.t(),
    "RecoveryGroupName" => String.t(),
    "Tags" => map()
  }
  """
  @type update_recovery_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_rules_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("ResourceType") => String.t()
  }
  """
  @type list_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_cell_request() :: %{

  }
  """
  @type get_cell_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_readiness_check_response() :: %{
    "ReadinessCheckArn" => String.t(),
    "ReadinessCheckName" => String.t(),
    "ResourceSet" => String.t(),
    "Tags" => map()
  }
  """
  @type update_readiness_check_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  target_resource() :: %{
    "NLBResource" => n_lb_resource(),
    "R53Resource" => r53_resource_record()
  }
  """
  @type target_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_recovery_group_readiness_summary_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type get_recovery_group_readiness_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_cell_readiness_summary_response() :: %{
    "NextToken" => String.t(),
    "Readiness" => list(any()),
    "ReadinessChecks" => list(readiness_check_summary()())
  }
  """
  @type get_cell_readiness_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_cells_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_cells_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resources_response() :: %{
    "Tags" => map()
  }
  """
  @type list_tags_for_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_cross_account_authorization_request() :: %{

  }
  """
  @type delete_cross_account_authorization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_readiness_checks_response() :: %{
    "NextToken" => String.t(),
    "ReadinessChecks" => list(readiness_check_output()())
  }
  """
  @type list_readiness_checks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_readiness_check_request() :: %{
    optional("Tags") => map(),
    required("ReadinessCheckName") => String.t(),
    required("ResourceSetName") => String.t()
  }
  """
  @type create_readiness_check_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "Message" => String.t()
  }
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_readiness_check_request() :: %{
    required("ResourceSetName") => String.t()
  }
  """
  @type update_readiness_check_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_readiness_check_status_response() :: %{
    "Messages" => list(message()()),
    "NextToken" => String.t(),
    "Readiness" => list(any()),
    "Resources" => list(resource_result()())
  }
  """
  @type get_readiness_check_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_recovery_group_request() :: %{
    required("Cells") => list(String.t()())
  }
  """
  @type update_recovery_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recommendation() :: %{
    "RecommendationText" => String.t()
  }
  """
  @type recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_architecture_recommendations_response() :: %{
    "LastAuditTimestamp" => non_neg_integer(),
    "NextToken" => String.t(),
    "Recommendations" => list(recommendation()())
  }
  """
  @type get_architecture_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_readiness_check_status_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type get_readiness_check_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_readiness_check_response() :: %{
    "ReadinessCheckArn" => String.t(),
    "ReadinessCheckName" => String.t(),
    "ResourceSet" => String.t(),
    "Tags" => map()
  }
  """
  @type create_readiness_check_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_cross_account_authorizations_response() :: %{
    "CrossAccountAuthorizations" => list(String.t()()),
    "NextToken" => String.t()
  }
  """
  @type list_cross_account_authorizations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_resource_set_request() :: %{

  }
  """
  @type get_resource_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_cell_response() :: %{
    "CellArn" => String.t(),
    "CellName" => String.t(),
    "Cells" => list(String.t()()),
    "ParentReadinessScopes" => list(String.t()()),
    "Tags" => map()
  }
  """
  @type update_cell_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_readiness_check_response() :: %{
    "ReadinessCheckArn" => String.t(),
    "ReadinessCheckName" => String.t(),
    "ResourceSet" => String.t(),
    "Tags" => map()
  }
  """
  @type get_readiness_check_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_resource_set_response() :: %{
    "ResourceSetArn" => String.t(),
    "ResourceSetName" => String.t(),
    "ResourceSetType" => String.t(),
    "Resources" => list(resource()()),
    "Tags" => map()
  }
  """
  @type create_resource_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  readiness_check_output() :: %{
    "ReadinessCheckArn" => String.t(),
    "ReadinessCheckName" => String.t(),
    "ResourceSet" => String.t(),
    "Tags" => map()
  }
  """
  @type readiness_check_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_recovery_groups_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_recovery_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_architecture_recommendations_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type get_architecture_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_resource_set_response() :: %{
    "ResourceSetArn" => String.t(),
    "ResourceSetName" => String.t(),
    "ResourceSetType" => String.t(),
    "Resources" => list(resource()()),
    "Tags" => map()
  }
  """
  @type get_resource_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_resource_sets_response() :: %{
    "NextToken" => String.t(),
    "ResourceSets" => list(resource_set_output()())
  }
  """
  @type list_resource_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_server_exception() :: %{
    "Message" => String.t()
  }
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_cross_account_authorization_response() :: %{

  }
  """
  @type delete_cross_account_authorization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_cell_readiness_summary_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type get_cell_readiness_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_readiness_check_resource_status_response() :: %{
    "NextToken" => String.t(),
    "Readiness" => list(any()),
    "Rules" => list(rule_result()())
  }
  """
  @type get_readiness_check_resource_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_cell_response() :: %{
    "CellArn" => String.t(),
    "CellName" => String.t(),
    "Cells" => list(String.t()()),
    "ParentReadinessScopes" => list(String.t()()),
    "Tags" => map()
  }
  """
  @type get_cell_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_denied_exception() :: %{
    "Message" => String.t()
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_rules_response() :: %{
    "NextToken" => String.t(),
    "Rules" => list(list_rules_output()())
  }
  """
  @type list_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_resource_set_request() :: %{
    required("ResourceSetType") => String.t(),
    required("Resources") => list(resource()())
  }
  """
  @type update_resource_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_recovery_group_response() :: %{
    "Cells" => list(String.t()()),
    "RecoveryGroupArn" => String.t(),
    "RecoveryGroupName" => String.t(),
    "Tags" => map()
  }
  """
  @type create_recovery_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  rule_result() :: %{
    "LastCheckedTimestamp" => non_neg_integer(),
    "Messages" => list(message()()),
    "Readiness" => list(any()),
    "RuleId" => String.t()
  }
  """
  @type rule_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resources_request() :: %{

  }
  """
  @type list_tags_for_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_readiness_check_resource_status_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type get_readiness_check_resource_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_rules_output() :: %{
    "ResourceType" => String.t(),
    "RuleDescription" => String.t(),
    "RuleId" => String.t()
  }
  """
  @type list_rules_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception() :: %{
    "Message" => String.t()
  }
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_readiness_check_request() :: %{

  }
  """
  @type delete_readiness_check_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  n_lb_resource() :: %{
    "Arn" => String.t()
  }
  """
  @type n_lb_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  throttling_exception() :: %{
    "Message" => String.t()
  }
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cell_output() :: %{
    "CellArn" => String.t(),
    "CellName" => String.t(),
    "Cells" => list(String.t()()),
    "ParentReadinessScopes" => list(String.t()()),
    "Tags" => map()
  }
  """
  @type cell_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_recovery_group_request() :: %{
    optional("Cells") => list(String.t()()),
    optional("Tags") => map(),
    required("RecoveryGroupName") => String.t()
  }
  """
  @type create_recovery_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_cell_request() :: %{
    optional("Cells") => list(String.t()()),
    optional("Tags") => map(),
    required("CellName") => String.t()
  }
  """
  @type create_cell_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_cell_request() :: %{
    required("Cells") => list(String.t()())
  }
  """
  @type update_cell_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_cross_account_authorizations_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_cross_account_authorizations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_result() :: %{
    "ComponentId" => String.t(),
    "LastCheckedTimestamp" => non_neg_integer(),
    "Readiness" => list(any()),
    "ResourceArn" => String.t()
  }
  """
  @type resource_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_resource_set_response() :: %{
    "ResourceSetArn" => String.t(),
    "ResourceSetName" => String.t(),
    "ResourceSetType" => String.t(),
    "Resources" => list(resource()()),
    "Tags" => map()
  }
  """
  @type update_resource_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_readiness_check_request() :: %{

  }
  """
  @type get_readiness_check_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_recovery_group_request() :: %{

  }
  """
  @type delete_recovery_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_recovery_groups_response() :: %{
    "NextToken" => String.t(),
    "RecoveryGroups" => list(recovery_group_output()())
  }
  """
  @type list_recovery_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  message() :: %{
    "MessageText" => String.t()
  }
  """
  @type message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource() :: %{
    "ComponentId" => String.t(),
    "DnsTargetResource" => dns_target_resource(),
    "ReadinessScopes" => list(String.t()()),
    "ResourceArn" => String.t()
  }
  """
  @type resource() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2019-12-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "route53-recovery-readiness",
      global?: false,
      protocol: "rest-json",
      service_id: "Route53 Recovery Readiness",
      signature_version: "v4",
      signing_name: "route53-recovery-readiness",
      target_prefix: nil
    }
  end

  @doc """
  Creates a cell in an account.
  """
  @spec create_cell(map(), create_cell_request(), list()) ::
          {:ok, create_cell_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_cell(%Client{} = client, input, options \\ []) do
    url_path = "/cells"
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
  Creates a cross-account readiness authorization.

  This lets you authorize another account to work with Route 53 Application
  Recovery Controller, for example, to check the readiness status of resources in
  a separate account.
  """
  @spec create_cross_account_authorization(
          map(),
          create_cross_account_authorization_request(),
          list()
        ) ::
          {:ok, create_cross_account_authorization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_cross_account_authorization(%Client{} = client, input, options \\ []) do
    url_path = "/crossaccountauthorizations"
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
  Creates a readiness check in an account.

  A readiness check monitors a resource set in your application, such as a set of
  Amazon Aurora instances, that Application Recovery Controller is auditing
  recovery readiness for. The audits run once every minute on every resource
  that's associated with a readiness check.
  """
  @spec create_readiness_check(map(), create_readiness_check_request(), list()) ::
          {:ok, create_readiness_check_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_readiness_check(%Client{} = client, input, options \\ []) do
    url_path = "/readinesschecks"
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
  Creates a recovery group in an account.

  A recovery group corresponds to an application and includes a list of the cells
  that make up the application.
  """
  @spec create_recovery_group(map(), create_recovery_group_request(), list()) ::
          {:ok, create_recovery_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_recovery_group(%Client{} = client, input, options \\ []) do
    url_path = "/recoverygroups"
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
  Creates a resource set.

  A resource set is a set of resources of one type that span multiple cells. You
  can associate a resource set with a readiness check to monitor the resources for
  failover readiness.
  """
  @spec create_resource_set(map(), create_resource_set_request(), list()) ::
          {:ok, create_resource_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_resource_set(%Client{} = client, input, options \\ []) do
    url_path = "/resourcesets"
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
  Delete a cell.

  When successful, the response code is 204, with no response body.
  """
  @spec delete_cell(map(), String.t(), delete_cell_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_cell(%Client{} = client, cell_name, input, options \\ []) do
    url_path = "/cells/#{AWS.Util.encode_uri(cell_name)}"
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
      204
    )
  end

  @doc """
  Deletes cross account readiness authorization.
  """
  @spec delete_cross_account_authorization(
          map(),
          String.t(),
          delete_cross_account_authorization_request(),
          list()
        ) ::
          {:ok, delete_cross_account_authorization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_cross_account_authorization(
        %Client{} = client,
        cross_account_authorization,
        input,
        options \\ []
      ) do
    url_path = "/crossaccountauthorizations/#{AWS.Util.encode_uri(cross_account_authorization)}"
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
  Deletes a readiness check.
  """
  @spec delete_readiness_check(map(), String.t(), delete_readiness_check_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_readiness_check(%Client{} = client, readiness_check_name, input, options \\ []) do
    url_path = "/readinesschecks/#{AWS.Util.encode_uri(readiness_check_name)}"
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
      204
    )
  end

  @doc """
  Deletes a recovery group.
  """
  @spec delete_recovery_group(map(), String.t(), delete_recovery_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_recovery_group(%Client{} = client, recovery_group_name, input, options \\ []) do
    url_path = "/recoverygroups/#{AWS.Util.encode_uri(recovery_group_name)}"
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
      204
    )
  end

  @doc """
  Deletes a resource set.
  """
  @spec delete_resource_set(map(), String.t(), delete_resource_set_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_resource_set(%Client{} = client, resource_set_name, input, options \\ []) do
    url_path = "/resourcesets/#{AWS.Util.encode_uri(resource_set_name)}"
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
      204
    )
  end

  @doc """
  Gets recommendations about architecture designs for improving resiliency for an
  application, based on a recovery group.
  """
  @spec get_architecture_recommendations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_architecture_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_architecture_recommendations(
        %Client{} = client,
        recovery_group_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/recoverygroups/#{AWS.Util.encode_uri(recovery_group_name)}/architectureRecommendations"

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
  Gets information about a cell including cell name, cell Amazon Resource Name
  (ARN), ARNs of nested cells for this cell, and a list of those cell ARNs with
  their associated recovery group ARNs.
  """
  @spec get_cell(map(), String.t(), list()) ::
          {:ok, get_cell_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_cell(%Client{} = client, cell_name, options \\ []) do
    url_path = "/cells/#{AWS.Util.encode_uri(cell_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets readiness for a cell.

  Aggregates the readiness of all the resources that are associated with the cell
  into a single value.
  """
  @spec get_cell_readiness_summary(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_cell_readiness_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_cell_readiness_summary(
        %Client{} = client,
        cell_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/cellreadiness/#{AWS.Util.encode_uri(cell_name)}"
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
  Gets details about a readiness check.
  """
  @spec get_readiness_check(map(), String.t(), list()) ::
          {:ok, get_readiness_check_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_readiness_check(%Client{} = client, readiness_check_name, options \\ []) do
    url_path = "/readinesschecks/#{AWS.Util.encode_uri(readiness_check_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets individual readiness status for a readiness check.

  To see the overall readiness status for a recovery group, that considers the
  readiness status for all the readiness checks in the recovery group, use
  GetRecoveryGroupReadinessSummary.
  """
  @spec get_readiness_check_resource_status(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_readiness_check_resource_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_readiness_check_resource_status(
        %Client{} = client,
        readiness_check_name,
        resource_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/readinesschecks/#{AWS.Util.encode_uri(readiness_check_name)}/resource/#{AWS.Util.encode_uri(resource_identifier)}/status"

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
  Gets the readiness status for an individual readiness check.

  To see the overall readiness status for a recovery group, that considers the
  readiness status for all the readiness checks in a recovery group, use
  GetRecoveryGroupReadinessSummary.
  """
  @spec get_readiness_check_status(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_readiness_check_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_readiness_check_status(
        %Client{} = client,
        readiness_check_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/readinesschecks/#{AWS.Util.encode_uri(readiness_check_name)}/status"
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
  Gets details about a recovery group, including a list of the cells that are
  included in it.
  """
  @spec get_recovery_group(map(), String.t(), list()) ::
          {:ok, get_recovery_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_recovery_group(%Client{} = client, recovery_group_name, options \\ []) do
    url_path = "/recoverygroups/#{AWS.Util.encode_uri(recovery_group_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays a summary of information about a recovery group's readiness status.

  Includes the readiness checks for resources in the recovery group and the
  readiness status of each one.
  """
  @spec get_recovery_group_readiness_summary(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_recovery_group_readiness_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_recovery_group_readiness_summary(
        %Client{} = client,
        recovery_group_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/recoverygroupreadiness/#{AWS.Util.encode_uri(recovery_group_name)}"
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
  Displays the details about a resource set, including a list of the resources in
  the set.
  """
  @spec get_resource_set(map(), String.t(), list()) ::
          {:ok, get_resource_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_resource_set(%Client{} = client, resource_set_name, options \\ []) do
    url_path = "/resourcesets/#{AWS.Util.encode_uri(resource_set_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the cells for an account.
  """
  @spec list_cells(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_cells_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_cells(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/cells"
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
  Lists the cross-account readiness authorizations that are in place for an
  account.
  """
  @spec list_cross_account_authorizations(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_cross_account_authorizations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_cross_account_authorizations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/crossaccountauthorizations"
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
  Lists the readiness checks for an account.
  """
  @spec list_readiness_checks(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_readiness_checks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_readiness_checks(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/readinesschecks"
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
  Lists the recovery groups in an account.
  """
  @spec list_recovery_groups(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_recovery_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_recovery_groups(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/recoverygroups"
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
  Lists the resource sets in an account.
  """
  @spec list_resource_sets(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_resource_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_resource_sets(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/resourcesets"
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
  Lists all readiness rules, or lists the readiness rules for a specific resource
  type.
  """
  @spec list_rules(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_rules(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        resource_type \\ nil,
        options \\ []
      ) do
    url_path = "/rules"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

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
  Lists the tags for a resource.
  """
  @spec list_tags_for_resources(map(), String.t(), list()) ::
          {:ok, list_tags_for_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def list_tags_for_resources(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds a tag to a resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes a tag from a resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
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
      204
    )
  end

  @doc """
  Updates a cell to replace the list of nested cells with a new list of nested
  cells.
  """
  @spec update_cell(map(), String.t(), update_cell_request(), list()) ::
          {:ok, update_cell_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_cell(%Client{} = client, cell_name, input, options \\ []) do
    url_path = "/cells/#{AWS.Util.encode_uri(cell_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a readiness check.
  """
  @spec update_readiness_check(map(), String.t(), update_readiness_check_request(), list()) ::
          {:ok, update_readiness_check_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_readiness_check(%Client{} = client, readiness_check_name, input, options \\ []) do
    url_path = "/readinesschecks/#{AWS.Util.encode_uri(readiness_check_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a recovery group.
  """
  @spec update_recovery_group(map(), String.t(), update_recovery_group_request(), list()) ::
          {:ok, update_recovery_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_recovery_group(%Client{} = client, recovery_group_name, input, options \\ []) do
    url_path = "/recoverygroups/#{AWS.Util.encode_uri(recovery_group_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a resource set.
  """
  @spec update_resource_set(map(), String.t(), update_resource_set_request(), list()) ::
          {:ok, update_resource_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_resource_set(%Client{} = client, resource_set_name, input, options \\ []) do
    url_path = "/resourcesets/#{AWS.Util.encode_uri(resource_set_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
