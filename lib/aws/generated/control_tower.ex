# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ControlTower do
  @moduledoc """
  These interfaces allow you to apply the AWS library of pre-defined *controls* to
  your organizational units, programmatically.

  In this context, controls are the same as AWS Control Tower guardrails.

  To call these APIs, you'll need to know:

    * the `ControlARN` for the control--that is, the guardrail--you are
  targeting,

    * and the ARN associated with the target organizational unit (OU).

  ## To get the `ControlARN` for your AWS Control Tower guardrail:

  The `ControlARN` contains the control name which is specified in each guardrail.
  For a list of control names for *Strongly recommended* and *Elective*
  guardrails, see [Resource identifiers for APIs and guardrails](https://docs.aws.amazon.com/controltower/latest/userguide/control-identifiers.html.html)
  in the [Automating tasks section](https://docs.aws.amazon.com/controltower/latest/userguide/automating-tasks.html)
  of the AWS Control Tower User Guide. Remember that *Mandatory* guardrails cannot
  be added or removed.

  **ARN format:** `arn:aws:controltower:{REGION}::control/{CONTROL_NAME}`

  ## Example:

  `arn:aws:controltower:us-west-2::control/AWS-GR_AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED`

  ## To get the ARN for an OU:

  In the AWS Organizations console, you can find the ARN for the OU on the
  **Organizational unit details** page associated with that OU.

  ## OU ARN format:

  `arn:${Partition}:organizations::${MasterAccountId}:ou/o-${OrganizationId}/ou-${OrganizationalUnitId}`

  ## Details and examples

    * [List of resource identifiers for APIs and guardrails](https://docs.aws.amazon.com/controltower/latest/userguide/control-identifiers.html)

    * [Guardrail API examples (CLI)](https://docs.aws.amazon.com/controltower/latest/userguide/guardrail-api-examples-short.html)

    * [Enable controls with AWS CloudFormation](https://docs.aws.amazon.com/controltower/latest/userguide/enable-controls.html)

    * [Creating AWS Control Tower resources with AWS CloudFormation](https://docs.aws.amazon.com/controltower/latest/userguide/creating-resources-with-cloudformation.html)

  To view the open source resource repository on GitHub, see
  [aws-cloudformation/aws-cloudformation-resource-providers-controltower](https://github.com/aws-cloudformation/aws-cloudformation-resource-providers-controltower)  ## Recording API Requests

  AWS Control Tower supports AWS CloudTrail, a service that records AWS API calls
  for your AWS account and delivers log files to an Amazon S3 bucket. By using
  information collected by CloudTrail, you can determine which requests the AWS
  Control Tower service received, who made the request and when, and so on. For
  more about AWS Control Tower and its support for CloudTrail, see [Logging AWS
  Control Tower Actions with AWS
  CloudTrail](https://docs.aws.amazon.com/controltower/latest/userguide/logging-using-cloudtrail.html)
  in the AWS Control Tower User Guide. To learn more about CloudTrail, including
  how to turn it on and find your log files, see the AWS CloudTrail User Guide.
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
  This API call turns off a control.

  It starts an asynchronous operation that deletes AWS resources on the specified
  organizational unit and the accounts it contains. The resources will vary
  according to the control that you specify.
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
  This API call activates a control.

  It starts an asynchronous operation that creates AWS resources on the specified
  organizational unit and the accounts it contains. The resources created will
  vary according to the control that you specify.
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
  Returns the status of a particular `EnableControl` or `DisableControl`
  operation.

  Displays a message in case of error. Details for an operation are available for
  90 days.
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
  Lists the controls enabled by AWS Control Tower on the specified organizational
  unit and the accounts it contains.
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
end
