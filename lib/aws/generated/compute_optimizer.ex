# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ComputeOptimizer do
  @moduledoc """
  Compute Optimizer is a service that analyzes the configuration and utilization
  metrics of your Amazon Web Services compute resources, such as Amazon EC2
  instances, Amazon EC2 Auto Scaling groups, Lambda functions, and Amazon EBS
  volumes.

  It reports whether your resources are optimal, and generates optimization
  recommendations to reduce the cost and improve the performance of your
  workloads. Compute Optimizer also provides recent utilization metric data, in
  addition to projected utilization metric data for the recommendations, which you
  can use to evaluate which recommendation provides the best price-performance
  trade-off. The analysis of your usage patterns can help you decide when to move
  or resize your running resources, and still meet your performance and capacity
  requirements. For more information about Compute Optimizer, including the
  required permissions to use the service, see the [Compute Optimizer User Guide](https://docs.aws.amazon.com/compute-optimizer/latest/ug/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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
  Deletes a recommendation preference, such as enhanced infrastructure metrics.

  For more information, see [Activating enhanced infrastructure metrics](https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html)
  in the *Compute Optimizer User Guide*.
  """
  def delete_recommendation_preferences(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRecommendationPreferences", input, options)
  end

  @doc """
  Describes recommendation export jobs created in the last seven days.

  Use the `ExportAutoScalingGroupRecommendations` or
  `ExportEC2InstanceRecommendations` actions to request an export of your
  recommendations. Then use the `DescribeRecommendationExportJobs` action to view
  your export jobs.
  """
  def describe_recommendation_export_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRecommendationExportJobs", input, options)
  end

  @doc """
  Exports optimization recommendations for Auto Scaling groups.

  Recommendations are exported in a comma-separated values (.csv) file, and its
  metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing
  Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more
  information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
  in the *Compute Optimizer User Guide*.

  You can have only one Auto Scaling group export job in progress per Amazon Web
  Services Region.
  """
  def export_auto_scaling_group_recommendations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExportAutoScalingGroupRecommendations", input, options)
  end

  @doc """
  Exports optimization recommendations for Amazon EBS volumes.

  Recommendations are exported in a comma-separated values (.csv) file, and its
  metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing
  Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more
  information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
  in the *Compute Optimizer User Guide*.

  You can have only one Amazon EBS volume export job in progress per Amazon Web
  Services Region.
  """
  def export_ebs_volume_recommendations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExportEBSVolumeRecommendations", input, options)
  end

  @doc """
  Exports optimization recommendations for Amazon EC2 instances.

  Recommendations are exported in a comma-separated values (.csv) file, and its
  metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing
  Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more
  information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
  in the *Compute Optimizer User Guide*.

  You can have only one Amazon EC2 instance export job in progress per Amazon Web
  Services Region.
  """
  def export_ec2_instance_recommendations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExportEC2InstanceRecommendations", input, options)
  end

  @doc """
  Exports optimization recommendations for Lambda functions.

  Recommendations are exported in a comma-separated values (.csv) file, and its
  metadata in a JavaScript Object Notation (JSON) (.json) file, to an existing
  Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more
  information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
  in the *Compute Optimizer User Guide*.

  You can have only one Lambda function export job in progress per Amazon Web
  Services Region.
  """
  def export_lambda_function_recommendations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExportLambdaFunctionRecommendations", input, options)
  end

  @doc """
  Returns Auto Scaling group recommendations.

  Compute Optimizer generates recommendations for Amazon EC2 Auto Scaling groups
  that meet a specific set of requirements. For more information, see the
  [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
  in the *Compute Optimizer User Guide*.
  """
  def get_auto_scaling_group_recommendations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAutoScalingGroupRecommendations", input, options)
  end

  @doc """
  Returns Amazon Elastic Block Store (Amazon EBS) volume recommendations.

  Compute Optimizer generates recommendations for Amazon EBS volumes that meet a
  specific set of requirements. For more information, see the [Supported resources and
  requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
  in the *Compute Optimizer User Guide*.
  """
  def get_ebs_volume_recommendations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEBSVolumeRecommendations", input, options)
  end

  @doc """
  Returns Amazon EC2 instance recommendations.

  Compute Optimizer generates recommendations for Amazon Elastic Compute Cloud
  (Amazon EC2) instances that meet a specific set of requirements. For more
  information, see the [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
  in the *Compute Optimizer User Guide*.
  """
  def get_ec2_instance_recommendations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEC2InstanceRecommendations", input, options)
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
    meta = metadata()

    Request.request_post(client, meta, "GetEC2RecommendationProjectedMetrics", input, options)
  end

  @doc """
  Returns the recommendation preferences that are in effect for a given resource,
  such as enhanced infrastructure metrics.

  Considers all applicable preferences that you might have set at the resource,
  account, and organization level.

  When you create a recommendation preference, you can set its status to `Active`
  or `Inactive`. Use this action to view the recommendation preferences that are
  in effect, or `Active`.
  """
  def get_effective_recommendation_preferences(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEffectiveRecommendationPreferences", input, options)
  end

  @doc """
  Returns the enrollment (opt in) status of an account to the Compute Optimizer
  service.

  If the account is the management account of an organization, this action also
  confirms the enrollment status of member accounts of the organization. Use the
  `GetEnrollmentStatusesForOrganization` action to get detailed information about
  the enrollment status of member accounts of an organization.
  """
  def get_enrollment_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEnrollmentStatus", input, options)
  end

  @doc """
  Returns the Compute Optimizer enrollment (opt-in) status of organization member
  accounts, if your account is an organization management account.

  To get the enrollment status of standalone accounts, use the
  `GetEnrollmentStatus` action.
  """
  def get_enrollment_statuses_for_organization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEnrollmentStatusesForOrganization", input, options)
  end

  @doc """
  Returns Lambda function recommendations.

  Compute Optimizer generates recommendations for functions that meet a specific
  set of requirements. For more information, see the [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
  in the *Compute Optimizer User Guide*.
  """
  def get_lambda_function_recommendations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetLambdaFunctionRecommendations", input, options)
  end

  @doc """
  Returns existing recommendation preferences, such as enhanced infrastructure
  metrics.

  Use the `scope` parameter to specify which preferences to return. You can
  specify to return preferences for an organization, a specific account ID, or a
  specific EC2 instance or Auto Scaling group Amazon Resource Name (ARN).

  For more information, see [Activating enhanced infrastructure metrics](https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html)
  in the *Compute Optimizer User Guide*.
  """
  def get_recommendation_preferences(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRecommendationPreferences", input, options)
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
    meta = metadata()

    Request.request_post(client, meta, "GetRecommendationSummaries", input, options)
  end

  @doc """
  Creates a new recommendation preference or updates an existing recommendation
  preference, such as enhanced infrastructure metrics.

  For more information, see [Activating enhanced infrastructure metrics](https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html)
  in the *Compute Optimizer User Guide*.
  """
  def put_recommendation_preferences(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutRecommendationPreferences", input, options)
  end

  @doc """
  Updates the enrollment (opt in and opt out) status of an account to the Compute
  Optimizer service.

  If the account is a management account of an organization, this action can also
  be used to enroll member accounts of the organization.

  You must have the appropriate permissions to opt in to Compute Optimizer, to
  view its recommendations, and to opt out. For more information, see [Controlling access with Amazon Web Services Identity and Access
  Management](https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html)
  in the *Compute Optimizer User Guide*.

  When you opt in, Compute Optimizer automatically creates a service-linked role
  in your account to access its data. For more information, see [Using Service-Linked Roles for Compute
  Optimizer](https://docs.aws.amazon.com/compute-optimizer/latest/ug/using-service-linked-roles.html)
  in the *Compute Optimizer User Guide*.
  """
  def update_enrollment_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEnrollmentStatus", input, options)
  end
end
