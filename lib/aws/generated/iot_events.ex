# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTEvents do
  @moduledoc """
  AWS IoT Events monitors your equipment or device fleets for failures or changes
  in operation, and triggers actions when such events occur.

  You can use AWS IoT Events API operations to create, read, update, and delete
  inputs and detector models, and to list their versions.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-07-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "iotevents",
      global?: false,
      protocol: "rest-json",
      service_id: "IoT Events",
      signature_version: "v4",
      signing_name: "iotevents",
      target_prefix: nil
    }
  end

  @doc """
  Creates an alarm model to monitor an AWS IoT Events input attribute.

  You can use the alarm to get notified when the value is outside a specified
  range. For more information, see [Create an alarm model](https://docs.aws.amazon.com/iotevents/latest/developerguide/create-alarms.html)
  in the *AWS IoT Events Developer Guide*.
  """
  def create_alarm_model(%Client{} = client, input, options \\ []) do
    url_path = "/alarm-models"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a detector model.
  """
  def create_detector_model(%Client{} = client, input, options \\ []) do
    url_path = "/detector-models"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates an input.
  """
  def create_input(%Client{} = client, input, options \\ []) do
    url_path = "/inputs"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes an alarm model.

  Any alarm instances that were created based on this alarm model are also
  deleted. This action can't be undone.
  """
  def delete_alarm_model(%Client{} = client, alarm_model_name, input, options \\ []) do
    url_path = "/alarm-models/#{AWS.Util.encode_uri(alarm_model_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Deletes a detector model.

  Any active instances of the detector model are also deleted.
  """
  def delete_detector_model(%Client{} = client, detector_model_name, input, options \\ []) do
    url_path = "/detector-models/#{AWS.Util.encode_uri(detector_model_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Deletes an input.
  """
  def delete_input(%Client{} = client, input_name, input, options \\ []) do
    url_path = "/inputs/#{AWS.Util.encode_uri(input_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves information about an alarm model.

  If you don't specify a value for the `alarmModelVersion` parameter, the latest
  version is returned.
  """
  def describe_alarm_model(
        %Client{} = client,
        alarm_model_name,
        alarm_model_version \\ nil,
        options \\ []
      ) do
    url_path = "/alarm-models/#{AWS.Util.encode_uri(alarm_model_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(alarm_model_version) do
        [{"version", alarm_model_version} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Describes a detector model.

  If the `version` parameter is not specified, information about the latest
  version is returned.
  """
  def describe_detector_model(
        %Client{} = client,
        detector_model_name,
        detector_model_version \\ nil,
        options \\ []
      ) do
    url_path = "/detector-models/#{AWS.Util.encode_uri(detector_model_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(detector_model_version) do
        [{"version", detector_model_version} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Retrieves runtime information about a detector model analysis.

  After AWS IoT Events starts analyzing your detector model, you have up to 24
  hours to retrieve the analysis results.
  """
  def describe_detector_model_analysis(%Client{} = client, analysis_id, options \\ []) do
    url_path = "/analysis/detector-models/#{AWS.Util.encode_uri(analysis_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Describes an input.
  """
  def describe_input(%Client{} = client, input_name, options \\ []) do
    url_path = "/inputs/#{AWS.Util.encode_uri(input_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Retrieves the current settings of the AWS IoT Events logging options.
  """
  def describe_logging_options(%Client{} = client, options \\ []) do
    url_path = "/logging"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Retrieves one or more analysis results of the detector model.

  After AWS IoT Events starts analyzing your detector model, you have up to 24
  hours to retrieve the analysis results.
  """
  def get_detector_model_analysis_results(
        %Client{} = client,
        analysis_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/analysis/detector-models/#{AWS.Util.encode_uri(analysis_id)}/results"
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists all the versions of an alarm model.

  The operation returns only the metadata associated with each alarm model
  version.
  """
  def list_alarm_model_versions(
        %Client{} = client,
        alarm_model_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/alarm-models/#{AWS.Util.encode_uri(alarm_model_name)}/versions"
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the alarm models that you created.

  The operation returns only the metadata associated with each alarm model.
  """
  def list_alarm_models(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/alarm-models"
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists all the versions of a detector model.

  Only the metadata associated with each detector model version is returned.
  """
  def list_detector_model_versions(
        %Client{} = client,
        detector_model_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/detector-models/#{AWS.Util.encode_uri(detector_model_name)}/versions"
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the detector models you have created.

  Only the metadata associated with each detector model is returned.
  """
  def list_detector_models(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/detector-models"
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists one or more input routings.
  """
  def list_input_routings(%Client{} = client, input, options \\ []) do
    url_path = "/input-routings"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists the inputs you have created.
  """
  def list_inputs(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/inputs"
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the tags (metadata) you have assigned to the resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Sets or updates the AWS IoT Events logging options.

  If you update the value of any `loggingOptions` field, it takes up to one minute
  for the change to take effect. If you change the policy attached to the role you
  specified in the `roleArn` field (for example, to correct an invalid policy), it
  takes up to five minutes for that change to take effect.
  """
  def put_logging_options(%Client{} = client, input, options \\ []) do
    url_path = "/logging"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Performs an analysis of your detector model.

  For more information, see [Troubleshooting a detector model](https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-analyze-api.html)
  in the *AWS IoT Events Developer Guide*.
  """
  def start_detector_model_analysis(%Client{} = client, input, options \\ []) do
    url_path = "/analysis/detector-models/"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Adds to or modifies the tags of the given resource.

  Tags are metadata that can be used to manage a resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes the given tags (metadata) from the resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"},
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates an alarm model.

  Any alarms that were created based on the previous version are deleted and then
  created again as new data arrives.
  """
  def update_alarm_model(%Client{} = client, alarm_model_name, input, options \\ []) do
    url_path = "/alarm-models/#{AWS.Util.encode_uri(alarm_model_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a detector model.

  Detectors (instances) spawned by the previous version are deleted and then
  re-created as new inputs arrive.
  """
  def update_detector_model(%Client{} = client, detector_model_name, input, options \\ []) do
    url_path = "/detector-models/#{AWS.Util.encode_uri(detector_model_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates an input.
  """
  def update_input(%Client{} = client, input_name, input, options \\ []) do
    url_path = "/inputs/#{AWS.Util.encode_uri(input_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
