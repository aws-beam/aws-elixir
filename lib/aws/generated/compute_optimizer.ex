# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ComputeOptimizer do
  @moduledoc """
  AWS Compute Optimizer is a service that analyzes the configuration and
  utilization metrics of your AWS compute resources, such as EC2 instances, Auto
  Scaling groups, AWS Lambda functions, and Amazon EBS volumes.

  It reports whether your resources are optimal, and generates optimization
  recommendations to reduce the cost and improve the performance of your
  workloads. Compute Optimizer also provides recent utilization metric data, as
  well as projected utilization metric data for the recommendations, which you can
  use to evaluate which recommendation provides the best price-performance
  trade-off. The analysis of your usage patterns can help you decide when to move
  or resize your running resources, and still meet your performance and capacity
  requirements. For more information about Compute Optimizer, including the
  required permissions to use the service, see the [AWS Compute Optimizer User Guide](https://docs.aws.amazon.com/compute-optimizer/latest/ug/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2019-11-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "compute-optimizer",
      global?: false,
      protocol: "json",
      service_id: "Compute Optimizer",
      signature_version: "v4",
      signing_name: "compute-optimizer",
      target_prefix: "ComputeOptimizerService"
    }
  end

  @doc """
  Describes recommendation export jobs created in the last seven days.

  Use the `ExportAutoScalingGroupRecommendations` or
  `ExportEC2InstanceRecommendations` actions to request an export of your
  recommendations. Then use the `DescribeRecommendationExportJobs` action to view
  your export jobs.
  """
  def describe_recommendation_export_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeRecommendationExportJobs", input, options)
  end

  @doc """
  Exports optimization recommendations for Auto Scaling groups.

  Recommendations are exported in a comma-separated values (.csv) file, and its
  metadata in a JavaScript Object Notation (.json) file, to an existing Amazon
  Simple Storage Service (Amazon S3) bucket that you specify. For more
  information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
  in the *Compute Optimizer User Guide*.

  You can have only one Auto Scaling group export job in progress per AWS Region.
  """
  def export_auto_scaling_group_recommendations(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ExportAutoScalingGroupRecommendations",
      input,
      options
    )
  end

  @doc """
  Exports optimization recommendations for Amazon EC2 instances.

  Recommendations are exported in a comma-separated values (.csv) file, and its
  metadata in a JavaScript Object Notation (.json) file, to an existing Amazon
  Simple Storage Service (Amazon S3) bucket that you specify. For more
  information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
  in the *Compute Optimizer User Guide*.

  You can have only one Amazon EC2 instance export job in progress per AWS Region.
  """
  def export_ec2_instance_recommendations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ExportEC2InstanceRecommendations", input, options)
  end

  @doc """
  Returns Auto Scaling group recommendations.

  AWS Compute Optimizer generates recommendations for Amazon EC2 Auto Scaling
  groups that meet a specific set of requirements. For more information, see the
  [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
  in the *AWS Compute Optimizer User Guide*.
  """
  def get_auto_scaling_group_recommendations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAutoScalingGroupRecommendations", input, options)
  end

  @doc """
  Returns Amazon Elastic Block Store (Amazon EBS) volume recommendations.

  AWS Compute Optimizer generates recommendations for Amazon EBS volumes that meet
  a specific set of requirements. For more information, see the [Supported resources and
  requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
  in the *AWS Compute Optimizer User Guide*.
  """
  def get_ebs_volume_recommendations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetEBSVolumeRecommendations", input, options)
  end

  @doc """
  Returns Amazon EC2 instance recommendations.

  AWS Compute Optimizer generates recommendations for Amazon Elastic Compute Cloud
  (Amazon EC2) instances that meet a specific set of requirements. For more
  information, see the [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
  in the *AWS Compute Optimizer User Guide*.
  """
  def get_ec2_instance_recommendations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetEC2InstanceRecommendations", input, options)
  end

  @doc """
  Returns the projected utilization metrics of Amazon EC2 instance
  recommendations.

  The `Cpu` and `Memory` metrics are the only projected utilization metrics
  returned when you run this action. Additionally, the `Memory` metric is returned
  only for resources that have the unified CloudWatch agent installed on them. For
  more information, see [Enabling Memory Utilization with the CloudWatch Agent](https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent).
  """
  def get_ec2_recommendation_projected_metrics(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "GetEC2RecommendationProjectedMetrics",
      input,
      options
    )
  end

  @doc """
  Returns the enrollment (opt in) status of an account to the AWS Compute
  Optimizer service.

  If the account is the management account of an organization, this action also
  confirms the enrollment status of member accounts within the organization.
  """
  def get_enrollment_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetEnrollmentStatus", input, options)
  end

  @doc """
  Returns AWS Lambda function recommendations.

  AWS Compute Optimizer generates recommendations for functions that meet a
  specific set of requirements. For more information, see the [Supported resources and
  requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
  in the *AWS Compute Optimizer User Guide*.
  """
  def get_lambda_function_recommendations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetLambdaFunctionRecommendations", input, options)
  end

  @doc """
  Returns the optimization findings for an account.

  It returns the number of:

    * Amazon EC2 instances in an account that are `Underprovisioned`,
  `Overprovisioned`, or `Optimized`.

    * Auto Scaling groups in an account that are `NotOptimized`, or
  `Optimized`.

    * Amazon EBS volumes in an account that are `NotOptimized`, or
  `Optimized`.

    * Lambda functions in an account that are `NotOptimized`, or
  `Optimized`.
  """
  def get_recommendation_summaries(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetRecommendationSummaries", input, options)
  end

  @doc """
  Updates the enrollment (opt in and opt out) status of an account to the AWS
  Compute Optimizer service.

  If the account is a management account of an organization, this action can also
  be used to enroll member accounts within the organization.

  You must have the appropriate permissions to opt in to Compute Optimizer, to
  view its recommendations, and to opt out. For more information, see [Controlling access with AWS Identity and Access
  Management](https://docs.aws.amazon.com/compute-optimizer/ug/security-iam.html)
  in the *Compute Optimizer User Guide*.

  When you opt in, Compute Optimizer automatically creates a Service-Linked Role
  in your account to access its data. For more information, see [Using Service-Linked Roles for AWS Compute
  Optimizer](https://docs.aws.amazon.com/compute-optimizer/ug/using-service-linked-roles.html)
  in the *Compute Optimizer User Guide*.
  """
  def update_enrollment_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateEnrollmentStatus", input, options)
  end
end