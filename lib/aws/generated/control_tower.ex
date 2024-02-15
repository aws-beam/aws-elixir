# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ControlTower do
  @moduledoc """
  These interfaces allow you to apply the Amazon Web Services library of
  pre-defined *controls* to your organizational units, programmatically.

  In Amazon Web Services Control Tower, the terms "control" and "guardrail" are
  synonyms.

  To call these APIs, you'll need to know:

    * the `controlIdentifier` for the control--or guardrail--you are
  targeting.

    * the ARN associated with the target organizational unit (OU), which
  we call the `targetIdentifier`.

    * the ARN associated with a resource that you wish to tag or untag.

  ## To get the `controlIdentifier` for your Amazon Web Services Control Tower
  control:

  The `controlIdentifier` is an ARN that is specified for each control. You can
  view the `controlIdentifier` in the console on the **Control details** page, as
  well as in the documentation.

  The `controlIdentifier` is unique in each Amazon Web Services Region for each
  control. You can find the `controlIdentifier` for each Region and control in the
  [Tables of control metadata](https://docs.aws.amazon.com/controltower/latest/userguide/control-metadata-tables.html)
  in the *Amazon Web Services Control Tower User Guide.*

  A quick-reference list of control identifers for the Amazon Web Services Control
  Tower legacy *Strongly recommended* and *Elective* controls is given in
  [Resource identifiers for APIs and controls](https://docs.aws.amazon.com/controltower/latest/userguide/control-identifiers.html.html)
  in the [Controls reference guide section](https://docs.aws.amazon.com/controltower/latest/userguide/control-identifiers.html)
  of the *Amazon Web Services Control Tower User Guide*. Remember that *Mandatory*
  controls cannot be added or removed.

  **ARN format:** `arn:aws:controltower:{REGION}::control/{CONTROL_NAME}`

  ## Example:

  `arn:aws:controltower:us-west-2::control/AWS-GR_AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED`

  ## To get the `targetIdentifier`:

  The `targetIdentifier` is the ARN for an OU.

  In the Amazon Web Services Organizations console, you can find the ARN for the
  OU on the **Organizational unit details** page associated with that OU.

  ## OU ARN format:

  `arn:${Partition}:organizations::${MasterAccountId}:ou/o-${OrganizationId}/ou-${OrganizationalUnitId}`

  ## Details and examples

    * [Control API input and output examples with CLI](https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html)

    * [Enable controls with CloudFormation](https://docs.aws.amazon.com/controltower/latest/userguide/enable-controls.html)

    * [Control metadata tables](https://docs.aws.amazon.com/controltower/latest/userguide/control-metadata-tables.html)

    * [List of identifiers for legacy controls](https://docs.aws.amazon.com/controltower/latest/userguide/control-identifiers.html)

    * [Controls reference guide](https://docs.aws.amazon.com/controltower/latest/userguide/controls.html)

    * [Controls library groupings](https://docs.aws.amazon.com/controltower/latest/userguide/controls-reference.html)

    * [Creating Amazon Web Services Control Tower resources with Amazon Web Services
  CloudFormation](https://docs.aws.amazon.com/controltower/latest/userguide/creating-resources-with-cloudformation.html)

  To view the open source resource repository on GitHub, see
  [aws-cloudformation/aws-cloudformation-resource-providers-controltower](https://github.com/aws-cloudformation/aws-cloudformation-resource-providers-controltower)  ## Recording API Requests

  Amazon Web Services Control Tower supports Amazon Web Services CloudTrail, a
  service that records Amazon Web Services API calls for your Amazon Web Services
  account and delivers log files to an Amazon S3 bucket. By using information
  collected by CloudTrail, you can determine which requests the Amazon Web
  Services Control Tower service received, who made the request and when, and so
  on. For more about Amazon Web Services Control Tower and its support for
  CloudTrail, see [Logging Amazon Web Services Control Tower Actions with Amazon
  Web Services
  CloudTrail](https://docs.aws.amazon.com/controltower/latest/userguide/logging-using-cloudtrail.html)
  in the Amazon Web Services Control Tower User Guide. To learn more about
  CloudTrail, including how to turn it on and find your log files, see the Amazon
  Web Services CloudTrail User Guide.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "controltower",
      global?: false,
      protocol: "rest-json",
      service_id: "ControlTower",
      signature_version: "v4",
      signing_name: "controltower",
      target_prefix: nil
    }
  end

  @doc """
  Decommissions a landing zone.

  This API call starts an asynchronous operation that deletes Amazon Web Services
  Control Tower resources deployed in accounts managed by Amazon Web Services
  Control Tower.
  """
  def delete_landing_zone(%Client{} = client, input, options \\ []) do
    url_path = "/delete-landingzone"
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
  Disable an `EnabledBaseline` resource on the specified Target.

  This API starts an asynchronous operation to remove all resources deployed as
  part of the baseline enablement. The resource will vary depending on the enabled
  baseline.
  """
  def disable_baseline(%Client{} = client, input, options \\ []) do
    url_path = "/disable-baseline"
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
  This API call turns off a control.

  It starts an asynchronous operation that deletes AWS resources on the specified
  organizational unit and the accounts it contains. The resources will vary
  according to the control that you specify. For usage examples, see [ *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html).
  """
  def disable_control(%Client{} = client, input, options \\ []) do
    url_path = "/disable-control"
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
  Enable (apply) a `Baseline` to a Target.

  This API starts an asynchronous operation to deploy resources specified by the
  `Baseline` to the specified Target.
  """
  def enable_baseline(%Client{} = client, input, options \\ []) do
    url_path = "/enable-baseline"
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
  This API call activates a control.

  It starts an asynchronous operation that creates Amazon Web Services resources
  on the specified organizational unit and the accounts it contains. The resources
  created will vary according to the control that you specify. For usage examples,
  see [ *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html).
  """
  def enable_control(%Client{} = client, input, options \\ []) do
    url_path = "/enable-control"
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
  Retrieve details about an existing `Baseline` resource by specifying its
  identifier.
  """
  def get_baseline(%Client{} = client, input, options \\ []) do
    url_path = "/get-baseline"
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
  Returns the details of an asynchronous baseline operation, as initiated by any
  of these APIs: `EnableBaseline`, `DisableBaseline`, `UpdateEnabledBaseline`,
  `ResetEnabledBaseline`.

  A status message is displayed in case of operation failure.
  """
  def get_baseline_operation(%Client{} = client, input, options \\ []) do
    url_path = "/get-baseline-operation"
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
  Returns the status of a particular `EnableControl` or `DisableControl`
  operation.

  Displays a message in case of error. Details for an operation are available for
  90 days. For usage examples, see [ *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html).
  """
  def get_control_operation(%Client{} = client, input, options \\ []) do
    url_path = "/get-control-operation"
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
  Retrieve details of an `EnabledBaseline` resource by specifying its identifier.
  """
  def get_enabled_baseline(%Client{} = client, input, options \\ []) do
    url_path = "/get-enabled-baseline"
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
  Retrieves details about an enabled control.

  For usage examples, see [ *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html).
  """
  def get_enabled_control(%Client{} = client, input, options \\ []) do
    url_path = "/get-enabled-control"
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
  Returns the status of the specified landing zone operation.

  Details for an operation are available for 60 days.
  """
  def get_landing_zone_operation(%Client{} = client, input, options \\ []) do
    url_path = "/get-landingzone-operation"
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
  Returns a summary list of all available baselines.
  """
  def list_baselines(%Client{} = client, input, options \\ []) do
    url_path = "/list-baselines"
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
  Returns a list of summaries describing `EnabledBaseline` resources.

  You can filter the list by the corresponding `Baseline` or `Target` of the
  `EnabledBaseline` resources.
  """
  def list_enabled_baselines(%Client{} = client, input, options \\ []) do
    url_path = "/list-enabled-baselines"
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
  Lists the controls enabled by Amazon Web Services Control Tower on the specified
  organizational unit and the accounts it contains.

  For usage examples, see [ *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html).
  """
  def list_enabled_controls(%Client{} = client, input, options \\ []) do
    url_path = "/list-enabled-controls"
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
  Returns the landing zone ARN for the landing zone deployed in your managed
  account.

  This API also creates an ARN for existing accounts that do not yet have a
  landing zone ARN.

  Returns one landing zone ARN.
  """
  def list_landing_zones(%Client{} = client, input, options \\ []) do
    url_path = "/list-landingzones"
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
  Returns a list of tags associated with the resource.

  For usage examples, see [ *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html).
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Re-enables an `EnabledBaseline` resource.

  For example, this API can re-apply the existing `Baseline` after a new member
  account is moved to the target OU.
  """
  def reset_enabled_baseline(%Client{} = client, input, options \\ []) do
    url_path = "/reset-enabled-baseline"
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
  This API call resets a landing zone.

  It starts an asynchronous operation that resets the landing zone to the
  parameters specified in its original configuration.
  """
  def reset_landing_zone(%Client{} = client, input, options \\ []) do
    url_path = "/reset-landingzone"
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
  Applies tags to a resource.

  For usage examples, see [ *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html).
  """
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
  Removes tags from a resource.

  For usage examples, see [ *the Amazon Web Services Control Tower User Guide*
  ](https://docs.aws.amazon.com/controltower/latest/userguide/control-api-examples-short.html).
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates an `EnabledBaseline` resource's applied parameters or version.
  """
  def update_enabled_baseline(%Client{} = client, input, options \\ []) do
    url_path = "/update-enabled-baseline"
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
