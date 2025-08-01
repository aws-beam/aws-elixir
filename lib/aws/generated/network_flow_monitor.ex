# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.NetworkFlowMonitor do
  @moduledoc """
  Network Flow Monitor is a feature of Amazon CloudWatch Network Monitoring that
  provides visibility into the performance of
  network flows for your Amazon Web Services workloads, between instances in
  subnets, as well as to and
  from Amazon Web Services.

  Lightweight agents that you install on the instances capture performance metrics
  for your network flows, such as packet loss and latency, and send them to the
  Network Flow Monitor backend. Then, you can
  view and analyze metrics from the top contributors for each metric type, to help
  troubleshoot issues.

  In addition, when you create a monitor, Network Flow Monitor provides a network
  health indicator (NHI)
  that informs you whether there were Amazon Web Services network issues for one
  or more of the network flows
  tracked by a monitor, during a time period that you choose. By using this value,
  you can independently determine
  if the Amazon Web Services network is impacting your workload during a specific
  time frame, to help you focus
  troubleshooting efforts.

  To learn more about Network Flow Monitor, see the
  [Network Flow Monitor User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-NetworkFlowMonitor.html)
  in the Amazon CloudWatch User Guide.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      monitor_local_resource() :: %{
        "identifier" => [String.t() | Atom.t()],
        "type" => list(any())
      }

  """
  @type monitor_local_resource() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_monitors_input() :: %{
        optional("maxResults") => integer(),
        optional("monitorStatus") => list(any()),
        optional("nextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_monitors_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_scopes_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_scopes_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_query_workload_insights_top_contributors_data_output() :: %{
        "queryId" => [String.t() | Atom.t()]
      }

  """
  @type start_query_workload_insights_top_contributors_data_output() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      get_query_status_monitor_top_contributors_input() :: %{}

  """
  @type get_query_status_monitor_top_contributors_input() :: %{}

  @typedoc """

  ## Example:

      stop_query_workload_insights_top_contributors_output() :: %{}

  """
  @type stop_query_workload_insights_top_contributors_output() :: %{}

  @typedoc """

  ## Example:

      get_monitor_output() :: %{
        "createdAt" => non_neg_integer(),
        "localResources" => list(monitor_local_resource()),
        "modifiedAt" => non_neg_integer(),
        "monitorArn" => String.t() | Atom.t(),
        "monitorName" => String.t() | Atom.t(),
        "monitorStatus" => list(any()),
        "remoteResources" => list(monitor_remote_resource()),
        "tags" => map()
      }

  """
  @type get_monitor_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_monitors_output() :: %{
        "monitors" => list(monitor_summary()),
        "nextToken" => [String.t() | Atom.t()]
      }

  """
  @type list_monitors_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_query_results_workload_insights_top_contributors_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | Atom.t()]
      }

  """
  @type get_query_results_workload_insights_top_contributors_input() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      start_query_workload_insights_top_contributors_input() :: %{
        optional("limit") => integer(),
        required("destinationCategory") => list(any()),
        required("endTime") => [non_neg_integer()],
        required("metricName") => list(any()),
        required("startTime") => [non_neg_integer()]
      }

  """
  @type start_query_workload_insights_top_contributors_input() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      workload_insights_top_contributors_row() :: %{
        "accountId" => String.t() | Atom.t(),
        "localAz" => String.t() | Atom.t(),
        "localRegion" => String.t() | Atom.t(),
        "localSubnetArn" => String.t() | Atom.t(),
        "localSubnetId" => String.t() | Atom.t(),
        "localVpcArn" => String.t() | Atom.t(),
        "localVpcId" => String.t() | Atom.t(),
        "remoteIdentifier" => [String.t() | Atom.t()],
        "value" => [float()]
      }

  """
  @type workload_insights_top_contributors_row() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      monitor_remote_resource() :: %{
        "identifier" => [String.t() | Atom.t()],
        "type" => list(any())
      }

  """
  @type monitor_remote_resource() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      stop_query_monitor_top_contributors_input() :: %{}

  """
  @type stop_query_monitor_top_contributors_input() :: %{}

  @typedoc """

  ## Example:

      get_query_results_workload_insights_top_contributors_data_output() :: %{
        "datapoints" => list(workload_insights_top_contributors_data_point()),
        "nextToken" => [String.t() | Atom.t()],
        "unit" => list(any())
      }

  """
  @type get_query_results_workload_insights_top_contributors_data_output() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      delete_monitor_output() :: %{}

  """
  @type delete_monitor_output() :: %{}

  @typedoc """

  ## Example:

      start_query_monitor_top_contributors_output() :: %{
        "queryId" => [String.t() | Atom.t()]
      }

  """
  @type start_query_monitor_top_contributors_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      target_identifier() :: %{
        "targetId" => list(),
        "targetType" => list(any())
      }

  """
  @type target_identifier() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      target_resource() :: %{
        "region" => String.t() | Atom.t(),
        "targetIdentifier" => target_identifier()
      }

  """
  @type target_resource() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_query_results_workload_insights_top_contributors_data_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | Atom.t()]
      }

  """
  @type get_query_results_workload_insights_top_contributors_data_input() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      workload_insights_top_contributors_data_point() :: %{
        "label" => [String.t() | Atom.t()],
        "timestamps" => list([non_neg_integer()]()),
        "values" => list([float()]())
      }

  """
  @type workload_insights_top_contributors_data_point() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_monitor_input() :: %{}

  """
  @type delete_monitor_input() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      stop_query_workload_insights_top_contributors_input() :: %{}

  """
  @type stop_query_workload_insights_top_contributors_input() :: %{}

  @typedoc """

  ## Example:

      update_scope_input() :: %{
        optional("resourcesToAdd") => list(target_resource()),
        optional("resourcesToDelete") => list(target_resource())
      }

  """
  @type update_scope_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_scope_output() :: %{
        "scopeArn" => String.t() | Atom.t(),
        "scopeId" => String.t() | Atom.t(),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type create_scope_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      traversed_component() :: %{
        "componentArn" => String.t() | Atom.t(),
        "componentId" => String.t() | Atom.t(),
        "componentType" => String.t() | Atom.t(),
        "serviceName" => [String.t() | Atom.t()]
      }

  """
  @type traversed_component() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_query_status_workload_insights_top_contributors_data_input() :: %{}

  """
  @type get_query_status_workload_insights_top_contributors_data_input() :: %{}

  @typedoc """

  ## Example:

      get_monitor_input() :: %{}

  """
  @type get_monitor_input() :: %{}

  @typedoc """

  ## Example:

      start_query_workload_insights_top_contributors_output() :: %{
        "queryId" => [String.t() | Atom.t()]
      }

  """
  @type start_query_workload_insights_top_contributors_output() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      get_query_status_monitor_top_contributors_output() :: %{
        "status" => list(any())
      }

  """
  @type get_query_status_monitor_top_contributors_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_query_status_workload_insights_top_contributors_input() :: %{}

  """
  @type get_query_status_workload_insights_top_contributors_input() :: %{}

  @typedoc """

  ## Example:

      get_query_status_workload_insights_top_contributors_output() :: %{
        "status" => list(any())
      }

  """
  @type get_query_status_workload_insights_top_contributors_output() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      get_query_status_workload_insights_top_contributors_data_output() :: %{
        "status" => list(any())
      }

  """
  @type get_query_status_workload_insights_top_contributors_data_output() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      get_query_results_workload_insights_top_contributors_output() :: %{
        "nextToken" => [String.t() | Atom.t()],
        "topContributors" => list(workload_insights_top_contributors_row())
      }

  """
  @type get_query_results_workload_insights_top_contributors_output() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_query_results_monitor_top_contributors_output() :: %{
        "nextToken" => [String.t() | Atom.t()],
        "topContributors" => list(monitor_top_contributors_row()),
        "unit" => list(any())
      }

  """
  @type get_query_results_monitor_top_contributors_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_monitor_input() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("localResourcesToAdd") => list(monitor_local_resource()),
        optional("localResourcesToRemove") => list(monitor_local_resource()),
        optional("remoteResourcesToAdd") => list(monitor_remote_resource()),
        optional("remoteResourcesToRemove") => list(monitor_remote_resource())
      }

  """
  @type update_monitor_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_query_monitor_top_contributors_input() :: %{
        optional("limit") => integer(),
        required("destinationCategory") => list(any()),
        required("endTime") => [non_neg_integer()],
        required("metricName") => list(any()),
        required("startTime") => [non_neg_integer()]
      }

  """
  @type start_query_monitor_top_contributors_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_scope_input() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("tags") => map(),
        required("targets") => list(target_resource())
      }

  """
  @type create_scope_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_scope_output() :: %{
        "scopeArn" => String.t() | Atom.t(),
        "scopeId" => String.t() | Atom.t(),
        "status" => list(any()),
        "tags" => map(),
        "targets" => list(target_resource())
      }

  """
  @type get_scope_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

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
        "message" => [String.t() | Atom.t()]
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_scope_output() :: %{}

  """
  @type delete_scope_output() :: %{}

  @typedoc """

  ## Example:

      stop_query_workload_insights_top_contributors_data_output() :: %{}

  """
  @type stop_query_workload_insights_top_contributors_data_output() :: %{}

  @typedoc """

  ## Example:

      kubernetes_metadata() :: %{
        "localPodName" => [String.t() | Atom.t()],
        "localPodNamespace" => [String.t() | Atom.t()],
        "localServiceName" => [String.t() | Atom.t()],
        "remotePodName" => [String.t() | Atom.t()],
        "remotePodNamespace" => [String.t() | Atom.t()],
        "remoteServiceName" => [String.t() | Atom.t()]
      }

  """
  @type kubernetes_metadata() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_query_workload_insights_top_contributors_data_input() :: %{
        required("destinationCategory") => list(any()),
        required("endTime") => [non_neg_integer()],
        required("metricName") => list(any()),
        required("startTime") => [non_neg_integer()]
      }

  """
  @type start_query_workload_insights_top_contributors_data_input() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      update_scope_output() :: %{
        "scopeArn" => String.t() | Atom.t(),
        "scopeId" => String.t() | Atom.t(),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type update_scope_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_monitor_output() :: %{
        "createdAt" => non_neg_integer(),
        "localResources" => list(monitor_local_resource()),
        "modifiedAt" => non_neg_integer(),
        "monitorArn" => String.t() | Atom.t(),
        "monitorName" => String.t() | Atom.t(),
        "monitorStatus" => list(any()),
        "remoteResources" => list(monitor_remote_resource()),
        "tags" => map()
      }

  """
  @type create_monitor_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_query_results_monitor_top_contributors_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | Atom.t()]
      }

  """
  @type get_query_results_monitor_top_contributors_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      stop_query_monitor_top_contributors_output() :: %{}

  """
  @type stop_query_monitor_top_contributors_output() :: %{}

  @typedoc """

  ## Example:

      list_scopes_output() :: %{
        "nextToken" => [String.t() | Atom.t()],
        "scopes" => list(scope_summary())
      }

  """
  @type list_scopes_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_scope_input() :: %{}

  """
  @type get_scope_input() :: %{}

  @typedoc """

  ## Example:

      monitor_top_contributors_row() :: %{
        "destinationCategory" => list(any()),
        "dnatIp" => [String.t() | Atom.t()],
        "kubernetesMetadata" => kubernetes_metadata(),
        "localAz" => String.t() | Atom.t(),
        "localInstanceArn" => String.t() | Atom.t(),
        "localInstanceId" => String.t() | Atom.t(),
        "localIp" => [String.t() | Atom.t()],
        "localRegion" => String.t() | Atom.t(),
        "localSubnetArn" => String.t() | Atom.t(),
        "localSubnetId" => String.t() | Atom.t(),
        "localVpcArn" => String.t() | Atom.t(),
        "localVpcId" => String.t() | Atom.t(),
        "remoteAz" => String.t() | Atom.t(),
        "remoteInstanceArn" => String.t() | Atom.t(),
        "remoteInstanceId" => String.t() | Atom.t(),
        "remoteIp" => [String.t() | Atom.t()],
        "remoteRegion" => String.t() | Atom.t(),
        "remoteSubnetArn" => String.t() | Atom.t(),
        "remoteSubnetId" => String.t() | Atom.t(),
        "remoteVpcArn" => String.t() | Atom.t(),
        "remoteVpcId" => String.t() | Atom.t(),
        "snatIp" => [String.t() | Atom.t()],
        "targetPort" => [integer()],
        "traversedConstructs" => list(traversed_component()),
        "value" => [float()]
      }

  """
  @type monitor_top_contributors_row() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      scope_summary() :: %{
        "scopeArn" => String.t() | Atom.t(),
        "scopeId" => String.t() | Atom.t(),
        "status" => list(any())
      }

  """
  @type scope_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      monitor_summary() :: %{
        "monitorArn" => String.t() | Atom.t(),
        "monitorName" => String.t() | Atom.t(),
        "monitorStatus" => list(any())
      }

  """
  @type monitor_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      stop_query_workload_insights_top_contributors_data_input() :: %{}

  """
  @type stop_query_workload_insights_top_contributors_data_input() :: %{}

  @typedoc """

  ## Example:

      update_monitor_output() :: %{
        "createdAt" => non_neg_integer(),
        "localResources" => list(monitor_local_resource()),
        "modifiedAt" => non_neg_integer(),
        "monitorArn" => String.t() | Atom.t(),
        "monitorName" => String.t() | Atom.t(),
        "monitorStatus" => list(any()),
        "remoteResources" => list(monitor_remote_resource()),
        "tags" => map()
      }

  """
  @type update_monitor_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_monitor_input() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("remoteResources") => list(monitor_remote_resource()),
        optional("tags") => map(),
        required("localResources") => list(monitor_local_resource()),
        required("monitorName") => String.t() | Atom.t(),
        required("scopeArn") => String.t() | Atom.t()
      }

  """
  @type create_monitor_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_scope_input() :: %{}

  """
  @type delete_scope_input() :: %{}

  @type create_monitor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_scope_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_monitor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_scope_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_monitor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_query_results_monitor_top_contributors_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_query_results_workload_insights_top_contributors_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_query_results_workload_insights_top_contributors_data_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_query_status_monitor_top_contributors_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type get_query_status_workload_insights_top_contributors_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type get_query_status_workload_insights_top_contributors_data_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type get_scope_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type list_monitors_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_scopes_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_query_monitor_top_contributors_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type start_query_workload_insights_top_contributors_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type start_query_workload_insights_top_contributors_data_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type stop_query_monitor_top_contributors_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type stop_query_workload_insights_top_contributors_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type stop_query_workload_insights_top_contributors_data_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_monitor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_scope_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2023-04-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "networkflowmonitor",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "NetworkFlowMonitor",
      signature_version: "v4",
      signing_name: "networkflowmonitor",
      target_prefix: nil
    }
  end

  @doc """
  Create a monitor for specific network flows between local and remote resources,
  so that you can monitor
  network performance for one or several of your workloads.

  For each monitor, Network Flow Monitor publishes detailed
  end-to-end performance metrics and a network health indicators (NHI) that
  informs you whether there were
  Amazon Web Services network issues for one or more of the network flows tracked
  by a monitor, during a time period that you choose.
  """
  @spec create_monitor(map(), create_monitor_input(), list()) ::
          {:ok, create_monitor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_monitor_errors()}
  def create_monitor(%Client{} = client, input, options \\ []) do
    url_path = "/monitors"
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
  Create a scope of resources that you want to be available for Network Flow
  Monitor to generate metrics for,
  when you have active agents on those resources sending metrics reports to the
  Network Flow Monitor backend.

  This call returns a scope ID to identify the scope.

  When you create a scope, you enable permissions for Network Flow Monitor. The
  scope is set to the
  resources for the Amazon Web Services that enables the feature.
  """
  @spec create_scope(map(), create_scope_input(), list()) ::
          {:ok, create_scope_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_scope_errors()}
  def create_scope(%Client{} = client, input, options \\ []) do
    url_path = "/scopes"
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
  Deletes a monitor in Network Flow Monitor.
  """
  @spec delete_monitor(map(), String.t() | Atom.t(), delete_monitor_input(), list()) ::
          {:ok, delete_monitor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_monitor_errors()}
  def delete_monitor(%Client{} = client, monitor_name, input, options \\ []) do
    url_path = "/monitors/#{AWS.Util.encode_uri(monitor_name)}"
    headers = []
    custom_headers = []
    query_params = []

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
  Deletes a scope that has been defined.
  """
  @spec delete_scope(map(), String.t() | Atom.t(), delete_scope_input(), list()) ::
          {:ok, delete_scope_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_scope_errors()}
  def delete_scope(%Client{} = client, scope_id, input, options \\ []) do
    url_path = "/scopes/#{AWS.Util.encode_uri(scope_id)}"
    headers = []
    custom_headers = []
    query_params = []

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
  Gets information about a monitor in Network Flow Monitor based on a monitor
  name.

  The information returned includes
  the Amazon Resource Name (ARN), create time, modified time, resources included
  in the monitor, and status information.
  """
  @spec get_monitor(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_monitor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_monitor_errors()}
  def get_monitor(%Client{} = client, monitor_name, options \\ []) do
    url_path = "/monitors/#{AWS.Util.encode_uri(monitor_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Return the data for a query with the Network Flow Monitor query interface.

  You specify the query that you want to return results for by providing a query
  ID
  and a monitor name. This query returns the top contributors for a specific
  monitor.

  Create a query ID for this call by calling the corresponding API call to start
  the query,
  `StartQueryMonitorTopContributors`. Use the scope ID that was returned
  for your account by `CreateScope`.

  Top contributors in Network Flow Monitor are network flows with the highest
  values for a specific
  metric type. Top contributors can be across all workload insights, for a given
  scope, or for
  a specific monitor. Use the applicable call for the top contributors that you
  want to be
  returned.
  """
  @spec get_query_results_monitor_top_contributors(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, get_query_results_monitor_top_contributors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_query_results_monitor_top_contributors_errors()}
  def get_query_results_monitor_top_contributors(
        %Client{} = client,
        monitor_name,
        query_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/monitors/#{AWS.Util.encode_uri(monitor_name)}/topContributorsQueries/#{AWS.Util.encode_uri(query_id)}/results"

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
  Return the data for a query with the Network Flow Monitor query interface.

  You specify the query that you want to return results for by providing a query
  ID
  and a monitor name.

  This query returns the top contributors for a scope for workload insights.
  Workload
  insights provide a high level view of network flow performance data collected by
  agents.
  To return the data for the top contributors, see
  `GetQueryResultsWorkloadInsightsTopContributorsData`.

  Create a query ID for this call by calling the corresponding API call to start
  the query,
  `StartQueryWorkloadInsightsTopContributors`. Use the scope ID that was returned
  for your account by `CreateScope`.

  Top contributors in Network Flow Monitor are network flows with the highest
  values for a specific
  metric type. Top contributors can be across all workload insights, for a given
  scope, or for
  a specific monitor. Use the applicable call for the top contributors that you
  want to be
  returned.
  """
  @spec get_query_results_workload_insights_top_contributors(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, get_query_results_workload_insights_top_contributors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_query_results_workload_insights_top_contributors_errors()}
  def get_query_results_workload_insights_top_contributors(
        %Client{} = client,
        query_id,
        scope_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/workloadInsights/#{AWS.Util.encode_uri(scope_id)}/topContributorsQueries/#{AWS.Util.encode_uri(query_id)}/results"

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
  Return the data for a query with the Network Flow Monitor query interface.

  Specify the query that you want to return results for by providing a query ID
  and a scope ID.

  This query returns the data for top contributors for workload insights for a
  specific scope.
  Workload insights provide a high level view of network flow performance data
  collected by agents
  for a scope. To return just the top contributors, see
  `GetQueryResultsWorkloadInsightsTopContributors`.

  Create a query ID for this call by calling the corresponding API call to start
  the query,
  `StartQueryWorkloadInsightsTopContributorsData`. Use the scope ID that was
  returned
  for your account by `CreateScope`.

  Top contributors in Network Flow Monitor are network flows with the highest
  values for a specific
  metric type. Top contributors can be across all workload insights, for a given
  scope, or for
  a specific monitor. Use the applicable call for the top contributors that you
  want to be
  returned.

  The top contributor network flows overall are for a specific metric type, for
  example, the
  number of retransmissions.
  """
  @spec get_query_results_workload_insights_top_contributors_data(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, get_query_results_workload_insights_top_contributors_data_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_query_results_workload_insights_top_contributors_data_errors()}
  def get_query_results_workload_insights_top_contributors_data(
        %Client{} = client,
        query_id,
        scope_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/workloadInsights/#{AWS.Util.encode_uri(scope_id)}/topContributorsDataQueries/#{AWS.Util.encode_uri(query_id)}/results"

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
  Returns the current status of a query for the Network Flow Monitor query
  interface, for a specified query ID and monitor.

  This call returns the query status for the top contributors for a monitor.

  When you create a query, use this call to check the status of the query to make
  sure that it has
  has `SUCCEEDED` before you review the results. Use the same query ID that you
  used for
  the corresponding API call to start (create) the query,
  `StartQueryMonitorTopContributors`.

  When you run a query, use this call to check the status of the query to make
  sure that the query
  has `SUCCEEDED` before you review the results.
  """
  @spec get_query_status_monitor_top_contributors(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          list()
        ) ::
          {:ok, get_query_status_monitor_top_contributors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_query_status_monitor_top_contributors_errors()}
  def get_query_status_monitor_top_contributors(
        %Client{} = client,
        monitor_name,
        query_id,
        options \\ []
      ) do
    url_path =
      "/monitors/#{AWS.Util.encode_uri(monitor_name)}/topContributorsQueries/#{AWS.Util.encode_uri(query_id)}/status"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Return the data for a query with the Network Flow Monitor query interface.

  Specify the query that you want to return results for by providing a query ID
  and a monitor name. This query returns the top contributors for workload
  insights.

  When you start a query, use this call to check the status of the query to make
  sure that it has
  has `SUCCEEDED` before you review the results. Use the same query ID that you
  used for
  the corresponding API call to start the query,
  `StartQueryWorkloadInsightsTopContributors`.

  Top contributors in Network Flow Monitor are network flows with the highest
  values for a specific
  metric type. Top contributors can be across all workload insights, for a given
  scope, or for
  a specific monitor. Use the applicable call for the top contributors that you
  want to be
  returned.
  """
  @spec get_query_status_workload_insights_top_contributors(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          list()
        ) ::
          {:ok, get_query_status_workload_insights_top_contributors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_query_status_workload_insights_top_contributors_errors()}
  def get_query_status_workload_insights_top_contributors(
        %Client{} = client,
        query_id,
        scope_id,
        options \\ []
      ) do
    url_path =
      "/workloadInsights/#{AWS.Util.encode_uri(scope_id)}/topContributorsQueries/#{AWS.Util.encode_uri(query_id)}/status"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the current status of a query for the Network Flow Monitor query
  interface, for a specified query ID and monitor.

  This call returns the query status for the top contributors data for workload
  insights.

  When you start a query, use this call to check the status of the query to make
  sure that it has
  has `SUCCEEDED` before you review the results. Use the same query ID that you
  used for
  the corresponding API call to start the query,
  `StartQueryWorkloadInsightsTopContributorsData`.

  Top contributors in Network Flow Monitor are network flows with the highest
  values for a specific
  metric type. Top contributors can be across all workload insights, for a given
  scope, or for
  a specific monitor. Use the applicable call for the top contributors that you
  want to be
  returned.

  The top contributor network flows overall are for a specific metric type, for
  example, the
  number of retransmissions.
  """
  @spec get_query_status_workload_insights_top_contributors_data(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          list()
        ) ::
          {:ok, get_query_status_workload_insights_top_contributors_data_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_query_status_workload_insights_top_contributors_data_errors()}
  def get_query_status_workload_insights_top_contributors_data(
        %Client{} = client,
        query_id,
        scope_id,
        options \\ []
      ) do
    url_path =
      "/workloadInsights/#{AWS.Util.encode_uri(scope_id)}/topContributorsDataQueries/#{AWS.Util.encode_uri(query_id)}/status"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a scope, including the name, status, tags, and target
  details.

  The scope in Network Flow Monitor is an account.
  """
  @spec get_scope(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_scope_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_scope_errors()}
  def get_scope(%Client{} = client, scope_id, options \\ []) do
    url_path = "/scopes/#{AWS.Util.encode_uri(scope_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all monitors in an account.

  Optionally, you can list only monitors that have a specific status, by
  using the `STATUS` parameter.
  """
  @spec list_monitors(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_monitors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_monitors_errors()}
  def list_monitors(
        %Client{} = client,
        max_results \\ nil,
        monitor_status \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/monitors"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(monitor_status) do
        [{"monitorStatus", monitor_status} | query_params]
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
  List all the scopes for an account.
  """
  @spec list_scopes(map(), String.t() | Atom.t() | nil, String.t() | Atom.t() | nil, list()) ::
          {:ok, list_scopes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_scopes_errors()}
  def list_scopes(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/scopes"
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
  Returns all the tags for a resource.
  """
  @spec list_tags_for_resource(map(), String.t() | Atom.t(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Create a query that you can use with the Network Flow Monitor query interface to
  return the top
  contributors for a monitor.

  Specify the monitor that you want to create the query for.

  The call returns a query ID that you can use with
  [
  GetQueryResultsMonitorTopContributors](https://docs.aws.amazon.com/networkflowmonitor/2.0/APIReference/API_GetQueryResultsMonitorTopContributors.html)

  to run the query and return the top contributors for a specific monitor.

  Top contributors in Network Flow Monitor are network flows with the highest
  values for a specific
  metric type. Top contributors can be across all workload insights, for a given
  scope, or for
  a specific monitor. Use the applicable APIs for the top contributors that you
  want to be
  returned.
  """
  @spec start_query_monitor_top_contributors(
          map(),
          String.t() | Atom.t(),
          start_query_monitor_top_contributors_input(),
          list()
        ) ::
          {:ok, start_query_monitor_top_contributors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_query_monitor_top_contributors_errors()}
  def start_query_monitor_top_contributors(%Client{} = client, monitor_name, input, options \\ []) do
    url_path = "/monitors/#{AWS.Util.encode_uri(monitor_name)}/topContributorsQueries"
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
  Create a query with the Network Flow Monitor query interface that you can run to
  return workload insights top contributors.

  Specify the scope that you want to create a query for.

  The call returns a query ID that you can use with
  [
  GetQueryResultsWorkloadInsightsTopContributors](https://docs.aws.amazon.com/networkflowmonitor/2.0/APIReference/API_GetQueryResultsWorkloadInsightsTopContributors.html)

  to run the query and return the top contributors for the workload insights for a
  scope.

  Top contributors in Network Flow Monitor are network flows with the highest
  values for a specific
  metric type. Top contributors can be across all workload insights, for a given
  scope, or for
  a specific monitor. Use the applicable APIs for the top contributors that you
  want to be
  returned.
  """
  @spec start_query_workload_insights_top_contributors(
          map(),
          String.t() | Atom.t(),
          start_query_workload_insights_top_contributors_input(),
          list()
        ) ::
          {:ok, start_query_workload_insights_top_contributors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_query_workload_insights_top_contributors_errors()}
  def start_query_workload_insights_top_contributors(
        %Client{} = client,
        scope_id,
        input,
        options \\ []
      ) do
    url_path = "/workloadInsights/#{AWS.Util.encode_uri(scope_id)}/topContributorsQueries"
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
  Create a query with the Network Flow Monitor query interface that you can run to
  return data for
  workload insights top contributors.

  Specify the scope that you want to create a query for.

  The call returns a query ID that you can use with
  [
  GetQueryResultsWorkloadInsightsTopContributorsData](https://docs.aws.amazon.com/networkflowmonitor/2.0/APIReference/API_GetQueryResultsWorkloadInsightsTopContributorsData.html)

  to run the query and return the data for the top contributors for the workload
  insights for a scope.

  Top contributors in Network Flow Monitor are network flows with the highest
  values for a specific
  metric type. Top contributors can be across all workload insights, for a given
  scope, or for
  a specific monitor. Use the applicable call for the top contributors that you
  want to be
  returned.
  """
  @spec start_query_workload_insights_top_contributors_data(
          map(),
          String.t() | Atom.t(),
          start_query_workload_insights_top_contributors_data_input(),
          list()
        ) ::
          {:ok, start_query_workload_insights_top_contributors_data_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_query_workload_insights_top_contributors_data_errors()}
  def start_query_workload_insights_top_contributors_data(
        %Client{} = client,
        scope_id,
        input,
        options \\ []
      ) do
    url_path = "/workloadInsights/#{AWS.Util.encode_uri(scope_id)}/topContributorsDataQueries"
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
  Stop a top contributors query for a monitor.

  Specify the query that you want to stop by providing a query ID
  and a monitor name.

  Top contributors in Network Flow Monitor are network flows with the highest
  values for a specific
  metric type. Top contributors can be across all workload insights, for a given
  scope, or for
  a specific monitor. Use the applicable call for the top contributors that you
  want to be
  returned.
  """
  @spec stop_query_monitor_top_contributors(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          stop_query_monitor_top_contributors_input(),
          list()
        ) ::
          {:ok, stop_query_monitor_top_contributors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_query_monitor_top_contributors_errors()}
  def stop_query_monitor_top_contributors(
        %Client{} = client,
        monitor_name,
        query_id,
        input,
        options \\ []
      ) do
    url_path =
      "/monitors/#{AWS.Util.encode_uri(monitor_name)}/topContributorsQueries/#{AWS.Util.encode_uri(query_id)}"

    headers = []
    custom_headers = []
    query_params = []

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
  Stop a top contributors query for workload insights.

  Specify the query that you want to stop by providing a query ID
  and a scope ID.

  Top contributors in Network Flow Monitor are network flows with the highest
  values for a specific
  metric type. Top contributors can be across all workload insights, for a given
  scope, or for
  a specific monitor. Use the applicable call for the top contributors that you
  want to be
  returned.
  """
  @spec stop_query_workload_insights_top_contributors(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          stop_query_workload_insights_top_contributors_input(),
          list()
        ) ::
          {:ok, stop_query_workload_insights_top_contributors_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_query_workload_insights_top_contributors_errors()}
  def stop_query_workload_insights_top_contributors(
        %Client{} = client,
        query_id,
        scope_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workloadInsights/#{AWS.Util.encode_uri(scope_id)}/topContributorsQueries/#{AWS.Util.encode_uri(query_id)}"

    headers = []
    custom_headers = []
    query_params = []

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
  Stop a top contributors data query for workload insights.

  Specify the query that you want to stop by providing a query ID
  and a scope ID.

  Top contributors in Network Flow Monitor are network flows with the highest
  values for a specific
  metric type. Top contributors can be across all workload insights, for a given
  scope, or for
  a specific monitor. Use the applicable call for the top contributors that you
  want to be
  returned.
  """
  @spec stop_query_workload_insights_top_contributors_data(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          stop_query_workload_insights_top_contributors_data_input(),
          list()
        ) ::
          {:ok, stop_query_workload_insights_top_contributors_data_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_query_workload_insights_top_contributors_data_errors()}
  def stop_query_workload_insights_top_contributors_data(
        %Client{} = client,
        query_id,
        scope_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workloadInsights/#{AWS.Util.encode_uri(scope_id)}/topContributorsDataQueries/#{AWS.Util.encode_uri(query_id)}"

    headers = []
    custom_headers = []
    query_params = []

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
  Adds a tag to a resource.
  """
  @spec tag_resource(map(), String.t() | Atom.t(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes a tag from a resource.
  """
  @spec untag_resource(map(), String.t() | Atom.t(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Update a monitor to add or remove local or remote resources.
  """
  @spec update_monitor(map(), String.t() | Atom.t(), update_monitor_input(), list()) ::
          {:ok, update_monitor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_monitor_errors()}
  def update_monitor(%Client{} = client, monitor_name, input, options \\ []) do
    url_path = "/monitors/#{AWS.Util.encode_uri(monitor_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update a scope to add or remove resources that you want to be available for
  Network Flow Monitor to generate metrics for,
  when you have active agents on those resources sending metrics reports to the
  Network Flow Monitor backend.
  """
  @spec update_scope(map(), String.t() | Atom.t(), update_scope_input(), list()) ::
          {:ok, update_scope_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_scope_errors()}
  def update_scope(%Client{} = client, scope_id, input, options \\ []) do
    url_path = "/scopes/#{AWS.Util.encode_uri(scope_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
