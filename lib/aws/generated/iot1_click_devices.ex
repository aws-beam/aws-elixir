# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoT1ClickDevices do
  @moduledoc """
  Describes all of the AWS IoT 1-Click device-related API operations for the
  service.

  Also provides sample requests, responses, and errors for the supported web
  services
  protocols.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_devices_request() :: %{
        optional("DeviceType") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_description() :: %{
        optional("Arn") => String.t(),
        optional("Attributes") => map(),
        optional("DeviceId") => String.t(),
        optional("Enabled") => boolean(),
        optional("RemainingLife") => float(),
        optional("Tags") => map(),
        optional("Type") => String.t()
      }

  """
  @type device_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_device_state_request() :: %{
        optional("Enabled") => boolean()
      }

  """
  @type update_device_state_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unclaim_device_request() :: %{}

  """
  @type unclaim_device_request() :: %{}

  @typedoc """

  ## Example:

      finalize_device_claim_request() :: %{
        optional("Tags") => map()
      }

  """
  @type finalize_device_claim_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_device_state_response() :: %{}

  """
  @type update_device_state_response() :: %{}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      claim_devices_by_claim_code_request() :: %{}

  """
  @type claim_devices_by_claim_code_request() :: %{}

  @typedoc """

  ## Example:

      list_device_events_response() :: %{
        "Events" => list(device_event()()),
        "NextToken" => String.t()
      }

  """
  @type list_device_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      initiate_device_claim_response() :: %{
        "State" => String.t()
      }

  """
  @type initiate_device_claim_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_device_events_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("FromTimeStamp") => non_neg_integer(),
        required("ToTimeStamp") => non_neg_integer()
      }

  """
  @type list_device_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_device_methods_request() :: %{}

  """
  @type get_device_methods_request() :: %{}

  @typedoc """

  ## Example:

      initiate_device_claim_request() :: %{}

  """
  @type initiate_device_claim_request() :: %{}

  @typedoc """

  ## Example:

      describe_device_request() :: %{}

  """
  @type describe_device_request() :: %{}

  @typedoc """

  ## Example:

      finalize_device_claim_response() :: %{
        "State" => String.t()
      }

  """
  @type finalize_device_claim_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attributes() :: %{}

  """
  @type attributes() :: %{}

  @typedoc """

  ## Example:

      get_device_methods_response() :: %{
        "DeviceMethods" => list(device_method()())
      }

  """
  @type get_device_methods_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_devices_response() :: %{
        "Devices" => list(device_description()()),
        "NextToken" => String.t()
      }

  """
  @type list_devices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_device_method_request() :: %{
        optional("DeviceMethod") => device_method(),
        optional("DeviceMethodParameters") => String.t()
      }

  """
  @type invoke_device_method_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      claim_devices_by_claim_code_response() :: %{
        "ClaimCode" => String.t(),
        "Total" => integer()
      }

  """
  @type claim_devices_by_claim_code_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_event() :: %{
        optional("Device") => device(),
        optional("StdEvent") => String.t()
      }

  """
  @type device_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      unclaim_device_response() :: %{
        "State" => String.t()
      }

  """
  @type unclaim_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device() :: %{
        optional("Attributes") => attributes(),
        optional("DeviceId") => String.t(),
        optional("Type") => String.t()
      }

  """
  @type device() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_device_method_response() :: %{
        "DeviceMethodResponse" => String.t()
      }

  """
  @type invoke_device_method_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      precondition_failed_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type precondition_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      range_not_satisfiable_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type range_not_satisfiable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_conflict_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }

  """
  @type resource_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_method() :: %{
        optional("DeviceType") => String.t(),
        optional("MethodName") => String.t()
      }

  """
  @type device_method() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_device_response() :: %{
        "DeviceDescription" => device_description()
      }

  """
  @type describe_device_response() :: %{String.t() => any()}

  @type claim_devices_by_claim_code_errors() ::
          invalid_request_exception() | forbidden_exception() | internal_failure_exception()

  @type describe_device_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type finalize_device_claim_errors() ::
          resource_conflict_exception()
          | precondition_failed_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type get_device_methods_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type initiate_device_claim_errors() ::
          resource_conflict_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type invoke_device_method_errors() ::
          resource_conflict_exception()
          | range_not_satisfiable_exception()
          | precondition_failed_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_device_events_errors() ::
          range_not_satisfiable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_devices_errors() ::
          range_not_satisfiable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_tags_for_resource_errors() ::
          resource_not_found_exception() | internal_failure_exception()

  @type tag_resource_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type unclaim_device_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type untag_resource_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_device_state_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  def metadata do
    %{
      api_version: "2018-05-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "devices.iot1click",
      global?: false,
      protocol: "rest-json",
      service_id: "IoT 1Click Devices Service",
      signature_version: "v4",
      signing_name: "iot1click",
      target_prefix: nil
    }
  end

  @doc """
  Adds device(s) to your account (i.e., claim one or more devices) if and only if
  you
  received a claim code with the device(s).
  """
  @spec claim_devices_by_claim_code(
          map(),
          String.t(),
          claim_devices_by_claim_code_request(),
          list()
        ) ::
          {:ok, claim_devices_by_claim_code_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, claim_devices_by_claim_code_errors()}
  def claim_devices_by_claim_code(%Client{} = client, claim_code, input, options \\ []) do
    url_path = "/claims/#{AWS.Util.encode_uri(claim_code)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Given a device ID, returns a DescribeDeviceResponse object describing the
  details of the device.
  """
  @spec describe_device(map(), String.t(), list()) ::
          {:ok, describe_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_device_errors()}
  def describe_device(%Client{} = client, device_id, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Given a device ID, finalizes the claim request for the associated device.

  Claiming a device consists of initiating a claim, then publishing a device
  event,
  and finalizing the claim. For a device of type button, a device event can
  be published by simply clicking the device.
  """
  @spec finalize_device_claim(map(), String.t(), finalize_device_claim_request(), list()) ::
          {:ok, finalize_device_claim_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, finalize_device_claim_errors()}
  def finalize_device_claim(%Client{} = client, device_id, input, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}/finalize-claim"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Given a device ID, returns the invokable methods associated with the device.
  """
  @spec get_device_methods(map(), String.t(), list()) ::
          {:ok, get_device_methods_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_methods_errors()}
  def get_device_methods(%Client{} = client, device_id, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}/methods"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Given a device ID, initiates a claim request for the associated device.

  Claiming a device consists of initiating a claim, then publishing a device
  event,
  and finalizing the claim. For a device of type button, a device event can
  be published by simply clicking the device.
  """
  @spec initiate_device_claim(map(), String.t(), initiate_device_claim_request(), list()) ::
          {:ok, initiate_device_claim_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, initiate_device_claim_errors()}
  def initiate_device_claim(%Client{} = client, device_id, input, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}/initiate-claim"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Given a device ID, issues a request to invoke a named device method (with
  possible
  parameters).

  See the "Example POST" code snippet below.
  """
  @spec invoke_device_method(map(), String.t(), invoke_device_method_request(), list()) ::
          {:ok, invoke_device_method_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_device_method_errors()}
  def invoke_device_method(%Client{} = client, device_id, input, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}/methods"
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
  Using a device ID, returns a DeviceEventsResponse object containing an
  array of events for the device.
  """
  @spec list_device_events(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_device_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_device_events_errors()}
  def list_device_events(
        %Client{} = client,
        device_id,
        from_time_stamp,
        max_results \\ nil,
        next_token \\ nil,
        to_time_stamp,
        options \\ []
      ) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}/events"
    headers = []
    query_params = []

    query_params =
      if !is_nil(to_time_stamp) do
        [{"toTimeStamp", to_time_stamp} | query_params]
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

    query_params =
      if !is_nil(from_time_stamp) do
        [{"fromTimeStamp", from_time_stamp} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the 1-Click compatible devices associated with your AWS account.
  """
  @spec list_devices(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_devices_errors()}
  def list_devices(
        %Client{} = client,
        device_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/devices"
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

    query_params =
      if !is_nil(device_type) do
        [{"deviceType", device_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags associated with the specified resource ARN.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
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
  Adds or updates the tags associated with the resource ARN.

  See [AWS IoT 1-Click Service Limits](https://docs.aws.amazon.com/iot-1-click/latest/developerguide/1click-appendix.html#1click-limits)
  for the maximum number of tags allowed per
  resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
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
      204
    )
  end

  @doc """
  Disassociates a device from your AWS account using its device ID.
  """
  @spec unclaim_device(map(), String.t(), unclaim_device_request(), list()) ::
          {:ok, unclaim_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, unclaim_device_errors()}
  def unclaim_device(%Client{} = client, device_id, input, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}/unclaim"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Using tag keys, deletes the tags (key/value pairs) associated with the specified
  resource ARN.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
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
      204
    )
  end

  @doc """
  Using a Boolean value (true or false), this operation
  enables or disables the device given a device ID.
  """
  @spec update_device_state(map(), String.t(), update_device_state_request(), list()) ::
          {:ok, update_device_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_device_state_errors()}
  def update_device_state(%Client{} = client, device_id, input, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}/state"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
