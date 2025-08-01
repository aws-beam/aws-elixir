# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ConnectCampaigns do
  @moduledoc """
  Provide APIs to create and manage Amazon Connect Campaigns.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      answer_machine_detection_config() :: %{
        "awaitAnswerMachinePrompt" => [boolean()],
        "enableAnswerMachineDetection" => [boolean()]
      }

  """
  @type answer_machine_detection_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      describe_campaign_response() :: %{
        "campaign" => campaign()
      }

  """
  @type describe_campaign_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        "tags" => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      encryption_config() :: %{
        "enabled" => boolean(),
        "encryptionType" => String.t() | Atom.t(),
        "keyArn" => String.t() | Atom.t()
      }

  """
  @type encryption_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      campaign() :: %{
        "arn" => String.t() | Atom.t(),
        "connectInstanceId" => String.t() | Atom.t(),
        "dialerConfig" => list(),
        "id" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t(),
        "outboundCallConfig" => outbound_call_config(),
        "tags" => map()
      }

  """
  @type campaign() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      successful_request() :: %{
        "clientToken" => String.t() | Atom.t(),
        "id" => String.t() | Atom.t()
      }

  """
  @type successful_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_instance_onboarding_job_request() :: %{}

  """
  @type delete_instance_onboarding_job_request() :: %{}

  @typedoc """

  ## Example:

      delete_connect_instance_config_request() :: %{}

  """
  @type delete_connect_instance_config_request() :: %{}

  @typedoc """

  ## Example:

      get_campaign_state_batch_response() :: %{
        "failedRequests" => list(failed_campaign_state_response()),
        "successfulRequests" => list(successful_campaign_state_response())
      }

  """
  @type get_campaign_state_batch_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      instance_onboarding_job_status() :: %{
        "connectInstanceId" => String.t() | Atom.t(),
        "failureCode" => String.t() | Atom.t(),
        "status" => String.t() | Atom.t()
      }

  """
  @type instance_onboarding_job_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_campaigns_response() :: %{
        "campaignSummaryList" => list(campaign_summary()),
        "nextToken" => String.t() | Atom.t()
      }

  """
  @type list_campaigns_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_campaign_state_response() :: %{
        "state" => String.t() | Atom.t()
      }

  """
  @type get_campaign_state_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_campaign_request() :: %{}

  """
  @type delete_campaign_request() :: %{}

  @typedoc """

  ## Example:

      describe_campaign_request() :: %{}

  """
  @type describe_campaign_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        "tagKeys" => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      invalid_state_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "xAmzErrorType" => String.t() | Atom.t()
      }

  """
  @type invalid_state_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      instance_id_filter() :: %{
        "operator" => String.t() | Atom.t(),
        "value" => String.t() | Atom.t()
      }

  """
  @type instance_id_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      invalid_campaign_state_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "state" => String.t() | Atom.t(),
        "xAmzErrorType" => String.t() | Atom.t()
      }

  """
  @type invalid_campaign_state_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_campaigns_request() :: %{
        "filters" => campaign_filters(),
        "maxResults" => integer(),
        "nextToken" => String.t() | Atom.t()
      }

  """
  @type list_campaigns_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      dial_request() :: %{
        "attributes" => map(),
        "clientToken" => String.t() | Atom.t(),
        "expirationTime" => non_neg_integer(),
        "phoneNumber" => String.t() | Atom.t()
      }

  """
  @type dial_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_campaign_name_request() :: %{
        "name" => String.t() | Atom.t()
      }

  """
  @type update_campaign_name_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_instance_onboarding_job_response() :: %{
        "connectInstanceOnboardingJobStatus" => instance_onboarding_job_status()
      }

  """
  @type start_instance_onboarding_job_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "xAmzErrorType" => String.t() | Atom.t()
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "xAmzErrorType" => String.t() | Atom.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_campaign_state_request() :: %{}

  """
  @type get_campaign_state_request() :: %{}

  @typedoc """

  ## Example:

      agentless_dialer_config() :: %{
        "dialingCapacity" => float()
      }

  """
  @type agentless_dialer_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_dial_request_batch_response() :: %{
        "failedRequests" => list(failed_request()),
        "successfulRequests" => list(successful_request())
      }

  """
  @type put_dial_request_batch_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "xAmzErrorType" => String.t() | Atom.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resume_campaign_request() :: %{}

  """
  @type resume_campaign_request() :: %{}

  @typedoc """

  ## Example:

      get_connect_instance_config_request() :: %{}

  """
  @type get_connect_instance_config_request() :: %{}

  @typedoc """

  ## Example:

      get_campaign_state_batch_request() :: %{
        "campaignIds" => list(String.t() | Atom.t())
      }

  """
  @type get_campaign_state_batch_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_campaign_dialer_config_request() :: %{
        "dialerConfig" => list()
      }

  """
  @type update_campaign_dialer_config_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_dial_request_batch_request() :: %{
        "dialRequests" => list(dial_request())
      }

  """
  @type put_dial_request_batch_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "xAmzErrorType" => String.t() | Atom.t()
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      progressive_dialer_config() :: %{
        "bandwidthAllocation" => float(),
        "dialingCapacity" => float()
      }

  """
  @type progressive_dialer_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      stop_campaign_request() :: %{}

  """
  @type stop_campaign_request() :: %{}

  @typedoc """

  ## Example:

      pause_campaign_request() :: %{}

  """
  @type pause_campaign_request() :: %{}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "xAmzErrorType" => String.t() | Atom.t()
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_campaign_request() :: %{}

  """
  @type start_campaign_request() :: %{}

  @typedoc """

  ## Example:

      create_campaign_request() :: %{
        "connectInstanceId" => String.t() | Atom.t(),
        "dialerConfig" => list(),
        "name" => String.t() | Atom.t(),
        "outboundCallConfig" => outbound_call_config(),
        "tags" => map()
      }

  """
  @type create_campaign_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_instance_onboarding_job_status_response() :: %{
        "connectInstanceOnboardingJobStatus" => instance_onboarding_job_status()
      }

  """
  @type get_instance_onboarding_job_status_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "xAmzErrorType" => String.t() | Atom.t()
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      get_connect_instance_config_response() :: %{
        "connectInstanceConfig" => instance_config()
      }

  """
  @type get_connect_instance_config_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      instance_config() :: %{
        "connectInstanceId" => String.t() | Atom.t(),
        "encryptionConfig" => encryption_config(),
        "serviceLinkedRoleArn" => String.t() | Atom.t()
      }

  """
  @type instance_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "xAmzErrorType" => String.t() | Atom.t()
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      outbound_call_config() :: %{
        "answerMachineDetectionConfig" => answer_machine_detection_config(),
        "connectContactFlowId" => String.t() | Atom.t(),
        "connectQueueId" => String.t() | Atom.t(),
        "connectSourcePhoneNumber" => String.t() | Atom.t()
      }

  """
  @type outbound_call_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_campaign_outbound_call_config_request() :: %{
        "answerMachineDetectionConfig" => answer_machine_detection_config(),
        "connectContactFlowId" => String.t() | Atom.t(),
        "connectSourcePhoneNumber" => String.t() | Atom.t()
      }

  """
  @type update_campaign_outbound_call_config_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      failed_request() :: %{
        "clientToken" => String.t() | Atom.t(),
        "failureCode" => String.t() | Atom.t(),
        "id" => String.t() | Atom.t()
      }

  """
  @type failed_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      predictive_dialer_config() :: %{
        "bandwidthAllocation" => float(),
        "dialingCapacity" => float()
      }

  """
  @type predictive_dialer_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_campaign_response() :: %{
        "arn" => String.t() | Atom.t(),
        "id" => String.t() | Atom.t(),
        "tags" => map()
      }

  """
  @type create_campaign_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      successful_campaign_state_response() :: %{
        "campaignId" => String.t() | Atom.t(),
        "state" => String.t() | Atom.t()
      }

  """
  @type successful_campaign_state_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      campaign_summary() :: %{
        "arn" => String.t() | Atom.t(),
        "connectInstanceId" => String.t() | Atom.t(),
        "id" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t()
      }

  """
  @type campaign_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_instance_onboarding_job_status_request() :: %{}

  """
  @type get_instance_onboarding_job_status_request() :: %{}

  @typedoc """

  ## Example:

      failed_campaign_state_response() :: %{
        "campaignId" => String.t() | Atom.t(),
        "failureCode" => String.t() | Atom.t()
      }

  """
  @type failed_campaign_state_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_instance_onboarding_job_request() :: %{
        "encryptionConfig" => encryption_config()
      }

  """
  @type start_instance_onboarding_job_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      campaign_filters() :: %{
        "instanceIdFilter" => instance_id_filter()
      }

  """
  @type campaign_filters() :: %{String.t() | Atom.t() => any()}

  @type create_campaign_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_campaign_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_connect_instance_config_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type delete_instance_onboarding_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type describe_campaign_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_campaign_state_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_campaign_state_batch_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_connect_instance_config_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_instance_onboarding_job_status_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_campaigns_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type pause_campaign_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_campaign_state_exception()

  @type put_dial_request_batch_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_campaign_state_exception()

  @type resume_campaign_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_campaign_state_exception()

  @type start_campaign_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_campaign_state_exception()

  @type start_instance_onboarding_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_campaign_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_campaign_state_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_campaign_dialer_config_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_campaign_name_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_campaign_outbound_call_config_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2021-01-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "connect-campaigns",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ConnectCampaigns",
      signature_version: "v4",
      signing_name: "connect-campaigns",
      target_prefix: nil
    }
  end

  @doc """
  Creates a campaign for the specified Amazon Connect account.

  This API is idempotent.
  """
  @spec create_campaign(map(), create_campaign_request(), list()) ::
          {:ok, create_campaign_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_campaign_errors()}
  def create_campaign(%Client{} = client, input, options \\ []) do
    url_path = "/campaigns"
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
  Deletes a campaign from the specified Amazon Connect account.
  """
  @spec delete_campaign(map(), String.t() | Atom.t(), delete_campaign_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_campaign_errors()}
  def delete_campaign(%Client{} = client, id, input, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}"
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
  Deletes a connect instance config from the specified AWS account.
  """
  @spec delete_connect_instance_config(
          map(),
          String.t() | Atom.t(),
          delete_connect_instance_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_connect_instance_config_errors()}
  def delete_connect_instance_config(
        %Client{} = client,
        connect_instance_id,
        input,
        options \\ []
      ) do
    url_path = "/connect-instance/#{AWS.Util.encode_uri(connect_instance_id)}/config"
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
  Delete the Connect Campaigns onboarding job for the specified Amazon Connect
  instance.
  """
  @spec delete_instance_onboarding_job(
          map(),
          String.t() | Atom.t(),
          delete_instance_onboarding_job_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_instance_onboarding_job_errors()}
  def delete_instance_onboarding_job(
        %Client{} = client,
        connect_instance_id,
        input,
        options \\ []
      ) do
    url_path = "/connect-instance/#{AWS.Util.encode_uri(connect_instance_id)}/onboarding"
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
  Describes the specific campaign.
  """
  @spec describe_campaign(map(), String.t() | Atom.t(), list()) ::
          {:ok, describe_campaign_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_campaign_errors()}
  def describe_campaign(%Client{} = client, id, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get state of a campaign for the specified Amazon Connect account.
  """
  @spec get_campaign_state(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_campaign_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_campaign_state_errors()}
  def get_campaign_state(%Client{} = client, id, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}/state"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get state of campaigns for the specified Amazon Connect account.
  """
  @spec get_campaign_state_batch(map(), get_campaign_state_batch_request(), list()) ::
          {:ok, get_campaign_state_batch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_campaign_state_batch_errors()}
  def get_campaign_state_batch(%Client{} = client, input, options \\ []) do
    url_path = "/campaigns-state"
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
  Get the specific Connect instance config.
  """
  @spec get_connect_instance_config(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_connect_instance_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_connect_instance_config_errors()}
  def get_connect_instance_config(%Client{} = client, connect_instance_id, options \\ []) do
    url_path = "/connect-instance/#{AWS.Util.encode_uri(connect_instance_id)}/config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the specific instance onboarding job status.
  """
  @spec get_instance_onboarding_job_status(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_instance_onboarding_job_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_instance_onboarding_job_status_errors()}
  def get_instance_onboarding_job_status(%Client{} = client, connect_instance_id, options \\ []) do
    url_path = "/connect-instance/#{AWS.Util.encode_uri(connect_instance_id)}/onboarding"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides summary information about the campaigns under the specified Amazon
  Connect account.
  """
  @spec list_campaigns(map(), list_campaigns_request(), list()) ::
          {:ok, list_campaigns_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_campaigns_errors()}
  def list_campaigns(%Client{} = client, input, options \\ []) do
    url_path = "/campaigns-summary"
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
  List tags for a resource.
  """
  @spec list_tags_for_resource(map(), String.t() | Atom.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Pauses a campaign for the specified Amazon Connect account.
  """
  @spec pause_campaign(map(), String.t() | Atom.t(), pause_campaign_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, pause_campaign_errors()}
  def pause_campaign(%Client{} = client, id, input, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}/pause"
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
  Creates dials requests for the specified campaign Amazon Connect account.

  This API is idempotent.
  """
  @spec put_dial_request_batch(
          map(),
          String.t() | Atom.t(),
          put_dial_request_batch_request(),
          list()
        ) ::
          {:ok, put_dial_request_batch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_dial_request_batch_errors()}
  def put_dial_request_batch(%Client{} = client, id, input, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}/dial-requests"
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
  Stops a campaign for the specified Amazon Connect account.
  """
  @spec resume_campaign(map(), String.t() | Atom.t(), resume_campaign_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resume_campaign_errors()}
  def resume_campaign(%Client{} = client, id, input, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}/resume"
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
  Starts a campaign for the specified Amazon Connect account.
  """
  @spec start_campaign(map(), String.t() | Atom.t(), start_campaign_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_campaign_errors()}
  def start_campaign(%Client{} = client, id, input, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}/start"
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
  Onboard the specific Amazon Connect instance to Connect Campaigns.
  """
  @spec start_instance_onboarding_job(
          map(),
          String.t() | Atom.t(),
          start_instance_onboarding_job_request(),
          list()
        ) ::
          {:ok, start_instance_onboarding_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_instance_onboarding_job_errors()}
  def start_instance_onboarding_job(%Client{} = client, connect_instance_id, input, options \\ []) do
    url_path = "/connect-instance/#{AWS.Util.encode_uri(connect_instance_id)}/onboarding"
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
  Stops a campaign for the specified Amazon Connect account.
  """
  @spec stop_campaign(map(), String.t() | Atom.t(), stop_campaign_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_campaign_errors()}
  def stop_campaign(%Client{} = client, id, input, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}/stop"
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
  Tag a resource.
  """
  @spec tag_resource(map(), String.t() | Atom.t(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"
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
  Untag a resource.
  """
  @spec untag_resource(map(), String.t() | Atom.t(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"
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
  Updates the dialer config of a campaign.

  This API is idempotent.
  """
  @spec update_campaign_dialer_config(
          map(),
          String.t() | Atom.t(),
          update_campaign_dialer_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_campaign_dialer_config_errors()}
  def update_campaign_dialer_config(%Client{} = client, id, input, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}/dialer-config"
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
  Updates the name of a campaign.

  This API is idempotent.
  """
  @spec update_campaign_name(map(), String.t() | Atom.t(), update_campaign_name_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_campaign_name_errors()}
  def update_campaign_name(%Client{} = client, id, input, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}/name"
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
  Updates the outbound call config of a campaign.

  This API is idempotent.
  """
  @spec update_campaign_outbound_call_config(
          map(),
          String.t() | Atom.t(),
          update_campaign_outbound_call_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_campaign_outbound_call_config_errors()}
  def update_campaign_outbound_call_config(%Client{} = client, id, input, options \\ []) do
    url_path = "/campaigns/#{AWS.Util.encode_uri(id)}/outbound-call-config"
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
