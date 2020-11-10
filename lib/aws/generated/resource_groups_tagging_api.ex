# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ResourceGroupsTaggingAPI do
  @moduledoc """
  Resource Groups Tagging API

  This guide describes the API operations for the resource groups tagging.

  A tag is a label that you assign to an AWS resource. A tag consists of a key and
  a value, both of which you define. For example, if you have two Amazon EC2
  instances, you might assign both a tag key of "Stack." But the value of "Stack"
  might be "Testing" for one and "Production" for the other.

  Do not store personally identifiable information (PII) or other confidential or
  sensitive information in tags. We use tags to provide you with billing and
  administration services. Tags are not intended to be used for private or
  sensitive data.

  Tagging can help you organize your resources and enables you to simplify
  resource management, access management and cost allocation.

  You can use the resource groups tagging API operations to complete the following
  tasks:

    * Tag and untag supported resources located in the specified Region
  for the AWS account.

    * Use tag-based filters to search for resources located in the
  specified Region for the AWS account.

    * List all existing tag keys in the specified Region for the AWS
  account.

    * List all existing values for the specified key in the specified
  Region for the AWS account.

  To use resource groups tagging API operations, you must add the following
  permissions to your IAM policy:

    * `tag:GetResources`

    * `tag:TagResources`

    * `tag:UntagResources`

    * `tag:GetTagKeys`

    * `tag:GetTagValues`

  You'll also need permissions to access the resources of individual services so
  that you can tag and untag those resources.

  For more information on IAM policies, see [Managing IAM Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage.html)
  in the *IAM User Guide*.

  * **Services that support the Resource Groups Tagging API** *

  You can use the Resource Groups Tagging API to tag resources for the following
  AWS services.

    * [Alexa for Business (a4b)](https://docs.aws.amazon.com/a4b)     * [API Gateway](https://docs.aws.amazon.com/apigateway)

    * [Amazon AppStream](https://docs.aws.amazon.com/appstream2)     * [AWS AppSync](https://docs.aws.amazon.com/appsync)

    * [AWS App Mesh](https://docs.aws.amazon.com/app-mesh)     * [Amazon Athena](https://docs.aws.amazon.com/athena)

    * [Amazon Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide)

    * [AWS Backup](https://docs.aws.amazon.com/aws-backup)     * [AWS Certificate Manager](https://docs.aws.amazon.com/acm)

    * [AWS Certificate Manager Private CA](https://docs.aws.amazon.com/acm)

    * [Amazon Cloud Directory](https://docs.aws.amazon.com/clouddirectory)

    * [AWS Cloud Map](https://docs.aws.amazon.com/cloud-map)     * [AWS CloudFormation](https://docs.aws.amazon.com/cloudformation)

    * [Amazon CloudFront](https://docs.aws.amazon.com/cloudfront)     * [AWS CloudHSM](https://docs.aws.amazon.com/cloudhsm)

    * [AWS CloudTrail](https://docs.aws.amazon.com/cloudtrail)     * [Amazon CloudWatch (alarms
  only)](https://docs.aws.amazon.com/cloudwatch)

    * [Amazon CloudWatch Events](https://docs.aws.amazon.com/cloudwatch/?id=docs_gateway#amazon-cloudwatch-events)

    * [Amazon CloudWatch Logs](https://docs.aws.amazon.com/cloudwatch/?id=docs_gateway#amazon-cloudwatch-logs)

    * [Amazon Cloudwatch Synthetics](https://docs.aws.amazon.com/cloudwatch)

    * [AWS CodeBuild](https://docs.aws.amazon.com/codebuild)     * [AWS CodeCommit](https://docs.aws.amazon.com/codecommit)

    * [AWS CodeGuru Profiler](https://docs.aws.amazon.com/codeguru/latest/profiler-ug/)

    * [AWS CodePipeline](https://docs.aws.amazon.com/codepipeline)     * [AWS CodeStar](https://docs.aws.amazon.com/codestar)

    * [AWS CodeStar Connections](https://docs.aws.amazon.com/codestar-connections/latest/APIReference/)

    * [Amazon Cognito Identity](https://docs.aws.amazon.com/cognito)     * [Amazon Cognito User Pools](https://docs.aws.amazon.com/cognito)

    * [Amazon Comprehend](https://docs.aws.amazon.com/comprehend)     * [AWS Config](https://docs.aws.amazon.com/config)

    * [Amazon Connect](http://aws.amazon.com/connect/resources/?whats-new-cards#Documentation)

    * [AWS Data Exchange](https://docs.aws.amazon.com/data-exchange)     * [AWS Data Pipeline](https://docs.aws.amazon.com/data-pipeline)

    * [AWS Database Migration Service](https://docs.aws.amazon.com/dms)     * [AWS DataSync](https://docs.aws.amazon.com/datasync)

    * [AWS Device Farm](https://docs.aws.amazon.com/devicefarm)     * [AWS Direct Connect](https://docs.aws.amazon.com/directconnect)

    * [AWS Directory Service](https://docs.aws.amazon.com/directory-service)

    * [Amazon DynamoDB](https://docs.aws.amazon.com/dynamodb)     * [Amazon EBS](https://docs.aws.amazon.com/ebs)

    * [Amazon EC2](https://docs.aws.amazon.com/ec2)     * [EC2 Image Builder](https://docs.aws.amazon.com/imagebuilder)

    * [Amazon ECR](https://docs.aws.amazon.com/ecr)     * [Amazon ECS](https://docs.aws.amazon.com/ecs)

    * [Amazon EKS](https://docs.aws.amazon.com/eks)     * [AWS Elastic
  Beanstalk](https://docs.aws.amazon.com/elastic-beanstalk)

    * [Amazon Elastic File System](https://docs.aws.amazon.com/efs)     * [Elastic Load
  Balancing](https://docs.aws.amazon.com/elasticloadbalancing)

    * [Amazon Elastic Inference](https://docs.aws.amazon.com/elastic-inference)

    * [Amazon ElastiCache](https://docs.aws.amazon.com/elasticache)     * [Amazon Elasticsearch
  Service](https://docs.aws.amazon.com/elasticsearch-service)

    * [AWS Elemental MediaLive](https://docs.aws.amazon.com/medialive)     * [AWS Elemental
  MediaPackage](https://docs.aws.amazon.com/mediapackage)

    * [AWS Elemental MediaPackage VoD](https://docs.aws.amazon.com/mediapackage)

    * [AWS Elemental MediaTailor](https://docs.aws.amazon.com/mediatailor)

    * [Amazon EMR](https://docs.aws.amazon.com/emr)     * [Amazon EventBridge
  Schema](https://docs.aws.amazon.com/eventbridge)

    * [AWS Firewall Manager](https://docs.aws.amazon.com/firewall-manager)

    * [Amazon Forecast](https://docs.aws.amazon.com/forecast)     * [Amazon Fraud Detector](https://docs.aws.amazon.com/frauddetector)

    * [Amazon FSx](https://docs.aws.amazon.com/fsx)     * [Amazon S3
  Glacier](https://docs.aws.amazon.com/s3/?id=docs_gateway#amazon-s3-glacier)

    * [AWS Global Accelerator](https://docs.aws.amazon.com/global-accelerator)

    * [AWS Ground Station](https://docs.aws.amazon.com/ground-station)     * [AWS Glue](https://docs.aws.amazon.com/glue)

    * [Amazon GuardDuty](https://docs.aws.amazon.com/guardduty)     * [Amazon Inspector](https://docs.aws.amazon.com/inspector)

    * [Amazon Interactive Video Service](https://docs.aws.amazon.com/ivs)

    * [AWS IoT Analytics](https://docs.aws.amazon.com/iotanalytics)     * [AWS IoT Core](https://docs.aws.amazon.com/iot)

    * [AWS IoT Device Defender](https://docs.aws.amazon.com/iot-device-defender)

    * [AWS IoT Device Management](https://docs.aws.amazon.com/iot-device-management)

    * [AWS IoT Events](https://docs.aws.amazon.com/iotevents)     * [AWS IoT Greengrass](https://docs.aws.amazon.com/greengrass)

    * [AWS IoT 1-Click](https://docs.aws.amazon.com/iot-1-click)     * [AWS IoT Sitewise](https://docs.aws.amazon.com/iot-sitewise)

    * [AWS IoT Things Graph](https://docs.aws.amazon.com/thingsgraph)     * [Amazon Kendra](https://docs.aws.amazon.com/kendra)

    * [AWS Key Management Service](https://docs.aws.amazon.com/kms)     * [Amazon Kinesis](https://docs.aws.amazon.com/kinesis)

    * [Amazon Kinesis Data Analytics](https://docs.aws.amazon.com/kinesis/?id=docs_gateway#amazon-kinesis-data-analytics)

    * [Amazon Kinesis Data Firehose](https://docs.aws.amazon.com/kinesis/?id=docs_gateway#amazon-kinesis-data-firehose)

    * [AWS Lambda](https://docs.aws.amazon.com/lambda)     * [Amazon Lex](https://docs.aws.amazon.com/lex)

    * [AWS License Manager](https://docs.aws.amazon.com/license-manager)     * [Amazon Lightsail](https://docs.aws.amazon.com/lightsail)

    * [Amazon Macie](https://docs.aws.amazon.com/macie)     * [Amazon Machine
  Learning](https://docs.aws.amazon.com/machine-learning)

    * [Amazon MQ](https://docs.aws.amazon.com/amazon-mq)     * [Amazon MSK](https://docs.aws.amazon.com/msk)

    * [Amazon MSK](https://docs.aws.amazon.com/msk)     * [Amazon Neptune](https://docs.aws.amazon.com/neptune)

    * [AWS Network Manager](https://docs.aws.amazon.com/vpc/latest/tgw/what-is-network-manager.html)

    * [AWS OpsWorks](https://docs.aws.amazon.com/opsworks)     * [AWS OpsWorks CM](https://docs.aws.amazon.com/opsworks)

    * [AWS Organizations](https://docs.aws.amazon.com/organizations)     * [Amazon Pinpoint](https://docs.aws.amazon.com/pinpoint)

    * [Amazon Quantum Ledger Database (QLDB)](https://docs.aws.amazon.com/qldb)

    * [Amazon RDS](https://docs.aws.amazon.com/rds)     * [Amazon Redshift](https://docs.aws.amazon.com/redshift)

    * [AWS Resource Access Manager](https://docs.aws.amazon.com/ram)     * [AWS Resource Groups](https://docs.aws.amazon.com/ARG)

    * [AWS RoboMaker](https://docs.aws.amazon.com/robomaker)     * [Amazon Route 53](https://docs.aws.amazon.com/route53)

    * [Amazon Route 53 Resolver](https://docs.aws.amazon.com/route53)     * [Amazon S3 (buckets only)](https://docs.aws.amazon.com/s3)

    * [Amazon SageMaker](https://docs.aws.amazon.com/sagemaker)     * [Savings Plans](https://docs.aws.amazon.com/savingsplans)

    * [AWS Secrets Manager](https://docs.aws.amazon.com/secretsmanager)     * [AWS Security Hub](https://docs.aws.amazon.com/securityhub)

    * [AWS Service Catalog](https://docs.aws.amazon.com/servicecatalog)     * [Amazon Simple Email Service
  (SES)](https://docs.aws.amazon.com/ses)

    * [Amazon Simple Notification Service (SNS)](https://docs.aws.amazon.com/sns)

    * [Amazon Simple Queue Service (SQS)](https://docs.aws.amazon.com/sqs)

    * [Amazon Simple Workflow Service](https://docs.aws.amazon.com/swf)     * [AWS Step Functions](https://docs.aws.amazon.com/step-functions)

    * [AWS Storage Gateway](https://docs.aws.amazon.com/storagegateway)     * [AWS Systems Manager](https://docs.aws.amazon.com/systems-manager)

    * [AWS Transfer for SFTP](https://docs.aws.amazon.com/transfer)     * [Amazon VPC](https://docs.aws.amazon.com/vpc)

    * [AWS WAF](https://docs.aws.amazon.com/waf)     * [AWS WAF Regional](https://docs.aws.amazon.com/waf)

    * [Amazon WorkLink](https://docs.aws.amazon.com/worklink)     * [Amazon WorkSpaces](https://docs.aws.amazon.com/workspaces)
  """

  @doc """
  Describes the status of the `StartReportCreation` operation.

  You can call this operation only from the organization's master account and from
  the us-east-1 Region.
  """
  def describe_report_creation(client, input, options \\ []) do
    request(client, "DescribeReportCreation", input, options)
  end

  @doc """
  Returns a table that shows counts of resources that are noncompliant with their
  tag policies.

  For more information on tag policies, see [Tag Policies](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)
  in the *AWS Organizations User Guide.*

  You can call this operation only from the organization's master account and from
  the us-east-1 Region.
  """
  def get_compliance_summary(client, input, options \\ []) do
    request(client, "GetComplianceSummary", input, options)
  end

  @doc """
  Returns all the tagged or previously tagged resources that are located in the
  specified Region for the AWS account.

  Depending on what information you want returned, you can also specify the
  following:

    * *Filters* that specify what tags and resource types you want
  returned. The response includes all tags that are associated with the requested
  resources.

    * Information about compliance with the account's effective tag
  policy. For more information on tag policies, see [Tag Policies](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)
  in the *AWS Organizations User Guide.*

  You can check the `PaginationToken` response parameter to determine if a query
  is complete. Queries occasionally return fewer results on a page than allowed.
  The `PaginationToken` response parameter value is `null` *only* when there are
  no more results to display.
  """
  def get_resources(client, input, options \\ []) do
    request(client, "GetResources", input, options)
  end

  @doc """
  Returns all tag keys in the specified Region for the AWS account.
  """
  def get_tag_keys(client, input, options \\ []) do
    request(client, "GetTagKeys", input, options)
  end

  @doc """
  Returns all tag values for the specified key in the specified Region for the AWS
  account.
  """
  def get_tag_values(client, input, options \\ []) do
    request(client, "GetTagValues", input, options)
  end

  @doc """
  Generates a report that lists all tagged resources in accounts across your
  organization and tells whether each resource is compliant with the effective tag
  policy.

  Compliance data is refreshed daily.

  The generated report is saved to the following location:

  `s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv`

  You can call this operation only from the organization's master account and from
  the us-east-1 Region.
  """
  def start_report_creation(client, input, options \\ []) do
    request(client, "StartReportCreation", input, options)
  end

  @doc """
  Applies one or more tags to the specified resources.

  Note the following:

    * Not all resources can have tags. For a list of services that
  support tagging, see [this list](http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/Welcome.html).

    * Each resource can have up to 50 tags. For other limits, see [Tag Naming and Usage
  Conventions](http://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions)
  in the *AWS General Reference.*

    * You can only tag resources that are located in the specified
  Region for the AWS account.

    * To add tags to a resource, you need the necessary permissions for
  the service that the resource belongs to as well as permissions for adding tags.
  For more information, see [this list](http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/Welcome.html).

  Do not store personally identifiable information (PII) or other confidential or
  sensitive information in tags. We use tags to provide you with billing and
  administration services. Tags are not intended to be used for private or
  sensitive data.
  """
  def tag_resources(client, input, options \\ []) do
    request(client, "TagResources", input, options)
  end

  @doc """
  Removes the specified tags from the specified resources.

  When you specify a tag key, the action removes both that key and its associated
  value. The operation succeeds even if you attempt to remove tags from a resource
  that were already removed. Note the following:

    * To remove tags from a resource, you need the necessary permissions
  for the service that the resource belongs to as well as permissions for removing
  tags. For more information, see [this list](http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/Welcome.html).

    * You can only tag resources that are located in the specified
  Region for the AWS account.
  """
  def untag_resources(client, input, options \\ []) do
    request(client, "UntagResources", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "tagging"}
    host = build_host("tagging", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "ResourceGroupsTaggingAPI_20170126.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} -> error
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
