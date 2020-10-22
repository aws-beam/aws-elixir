# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ResourceGroupsTaggingAPI do
  @moduledoc """
  Resource Groups Tagging API

  This guide describes the API operations for the resource groups tagging.

  A tag is a label that you assign to an AWS resource. A tag consists of a
  key and a value, both of which you define. For example, if you have two
  Amazon EC2 instances, you might assign both a tag key of "Stack." But the
  value of "Stack" might be "Testing" for one and "Production" for the other.

  <important> Do not store personally identifiable information (PII) or other
  confidential or sensitive information in tags. We use tags to provide you
  with billing and administration services. Tags are not intended to be used
  for private or sensitive data.

  </important> Tagging can help you organize your resources and enables you
  to simplify resource management, access management and cost allocation.

  You can use the resource groups tagging API operations to complete the
  following tasks:

  <ul> <li> Tag and untag supported resources located in the specified Region
  for the AWS account.

  </li> <li> Use tag-based filters to search for resources located in the
  specified Region for the AWS account.

  </li> <li> List all existing tag keys in the specified Region for the AWS
  account.

  </li> <li> List all existing values for the specified key in the specified
  Region for the AWS account.

  </li> </ul> To use resource groups tagging API operations, you must add the
  following permissions to your IAM policy:

  <ul> <li> `tag:GetResources`

  </li> <li> `tag:TagResources`

  </li> <li> `tag:UntagResources`

  </li> <li> `tag:GetTagKeys`

  </li> <li> `tag:GetTagValues`

  </li> </ul> You'll also need permissions to access the resources of
  individual services so that you can tag and untag those resources.

  For more information on IAM policies, see [Managing IAM
  Policies](http://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage.html)
  in the *IAM User Guide*.

  * **Services that support the Resource Groups Tagging API** *

  You can use the Resource Groups Tagging API to tag resources for the
  following AWS services.

  <ul> <li> [Alexa for Business (a4b)](https://docs.aws.amazon.com/a4b)

  </li> <li> [API Gateway](https://docs.aws.amazon.com/apigateway)

  </li> <li> [Amazon AppStream](https://docs.aws.amazon.com/appstream2)

  </li> <li> [AWS AppSync](https://docs.aws.amazon.com/appsync)

  </li> <li> [AWS App Mesh](https://docs.aws.amazon.com/app-mesh)

  </li> <li> [Amazon Athena](https://docs.aws.amazon.com/athena)

  </li> <li> [Amazon
  Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide)

  </li> <li> [AWS Backup](https://docs.aws.amazon.com/aws-backup)

  </li> <li> [AWS Certificate Manager](https://docs.aws.amazon.com/acm)

  </li> <li> [AWS Certificate Manager Private
  CA](https://docs.aws.amazon.com/acm)

  </li> <li> [Amazon Cloud
  Directory](https://docs.aws.amazon.com/clouddirectory)

  </li> <li> [AWS Cloud Map](https://docs.aws.amazon.com/cloud-map)

  </li> <li> [AWS CloudFormation](https://docs.aws.amazon.com/cloudformation)

  </li> <li> [Amazon CloudFront](https://docs.aws.amazon.com/cloudfront)

  </li> <li> [AWS CloudHSM](https://docs.aws.amazon.com/cloudhsm)

  </li> <li> [AWS CloudTrail](https://docs.aws.amazon.com/cloudtrail)

  </li> <li> [Amazon CloudWatch (alarms
  only)](https://docs.aws.amazon.com/cloudwatch)

  </li> <li> [Amazon CloudWatch
  Events](https://docs.aws.amazon.com/cloudwatch/?id=docs_gateway#amazon-cloudwatch-events)

  </li> <li> [Amazon CloudWatch
  Logs](https://docs.aws.amazon.com/cloudwatch/?id=docs_gateway#amazon-cloudwatch-logs)

  </li> <li> [Amazon Cloudwatch
  Synthetics](https://docs.aws.amazon.com/cloudwatch)

  </li> <li> [AWS CodeBuild](https://docs.aws.amazon.com/codebuild)

  </li> <li> [AWS CodeCommit](https://docs.aws.amazon.com/codecommit)

  </li> <li> [AWS CodeGuru
  Profiler](https://docs.aws.amazon.com/codeguru/latest/profiler-ug/)

  </li> <li> [AWS CodePipeline](https://docs.aws.amazon.com/codepipeline)

  </li> <li> [AWS CodeStar](https://docs.aws.amazon.com/codestar)

  </li> <li> [AWS CodeStar
  Connections](https://docs.aws.amazon.com/codestar-connections/latest/APIReference/)

  </li> <li> [Amazon Cognito Identity](https://docs.aws.amazon.com/cognito)

  </li> <li> [Amazon Cognito User Pools](https://docs.aws.amazon.com/cognito)

  </li> <li> [Amazon Comprehend](https://docs.aws.amazon.com/comprehend)

  </li> <li> [AWS Config](https://docs.aws.amazon.com/config)

  </li> <li> [Amazon
  Connect](http://aws.amazon.com/connect/resources/?whats-new-cards#Documentation)

  </li> <li> [AWS Data Exchange](https://docs.aws.amazon.com/data-exchange)

  </li> <li> [AWS Data Pipeline](https://docs.aws.amazon.com/data-pipeline)

  </li> <li> [AWS Database Migration
  Service](https://docs.aws.amazon.com/dms)

  </li> <li> [AWS DataSync](https://docs.aws.amazon.com/datasync)

  </li> <li> [AWS Device Farm](https://docs.aws.amazon.com/devicefarm)

  </li> <li> [AWS Direct Connect](https://docs.aws.amazon.com/directconnect)

  </li> <li> [AWS Directory
  Service](https://docs.aws.amazon.com/directory-service)

  </li> <li> [Amazon DynamoDB](https://docs.aws.amazon.com/dynamodb)

  </li> <li> [Amazon EBS](https://docs.aws.amazon.com/ebs)

  </li> <li> [Amazon EC2](https://docs.aws.amazon.com/ec2)

  </li> <li> [EC2 Image Builder](https://docs.aws.amazon.com/imagebuilder)

  </li> <li> [Amazon ECR](https://docs.aws.amazon.com/ecr)

  </li> <li> [Amazon ECS](https://docs.aws.amazon.com/ecs)

  </li> <li> [Amazon EKS](https://docs.aws.amazon.com/eks)

  </li> <li> [AWS Elastic
  Beanstalk](https://docs.aws.amazon.com/elastic-beanstalk)

  </li> <li> [Amazon Elastic File System](https://docs.aws.amazon.com/efs)

  </li> <li> [Elastic Load
  Balancing](https://docs.aws.amazon.com/elasticloadbalancing)

  </li> <li> [Amazon Elastic
  Inference](https://docs.aws.amazon.com/elastic-inference)

  </li> <li> [Amazon ElastiCache](https://docs.aws.amazon.com/elasticache)

  </li> <li> [Amazon Elasticsearch
  Service](https://docs.aws.amazon.com/elasticsearch-service)

  </li> <li> [AWS Elemental MediaLive](https://docs.aws.amazon.com/medialive)

  </li> <li> [AWS Elemental
  MediaPackage](https://docs.aws.amazon.com/mediapackage)

  </li> <li> [AWS Elemental MediaPackage
  VoD](https://docs.aws.amazon.com/mediapackage)

  </li> <li> [AWS Elemental
  MediaTailor](https://docs.aws.amazon.com/mediatailor)

  </li> <li> [Amazon EMR](https://docs.aws.amazon.com/emr)

  </li> <li> [Amazon EventBridge
  Schema](https://docs.aws.amazon.com/eventbridge)

  </li> <li> [AWS Firewall
  Manager](https://docs.aws.amazon.com/firewall-manager)

  </li> <li> [Amazon Forecast](https://docs.aws.amazon.com/forecast)

  </li> <li> [Amazon Fraud
  Detector](https://docs.aws.amazon.com/frauddetector)

  </li> <li> [Amazon FSx](https://docs.aws.amazon.com/fsx)

  </li> <li> [Amazon S3
  Glacier](https://docs.aws.amazon.com/s3/?id=docs_gateway#amazon-s3-glacier)

  </li> <li> [AWS Global
  Accelerator](https://docs.aws.amazon.com/global-accelerator)

  </li> <li> [AWS Ground Station](https://docs.aws.amazon.com/ground-station)

  </li> <li> [AWS Glue](https://docs.aws.amazon.com/glue)

  </li> <li> [Amazon GuardDuty](https://docs.aws.amazon.com/guardduty)

  </li> <li> [Amazon Inspector](https://docs.aws.amazon.com/inspector)

  </li> <li> [Amazon Interactive Video
  Service](https://docs.aws.amazon.com/ivs)

  </li> <li> [AWS IoT Analytics](https://docs.aws.amazon.com/iotanalytics)

  </li> <li> [AWS IoT Core](https://docs.aws.amazon.com/iot)

  </li> <li> [AWS IoT Device
  Defender](https://docs.aws.amazon.com/iot-device-defender)

  </li> <li> [AWS IoT Device
  Management](https://docs.aws.amazon.com/iot-device-management)

  </li> <li> [AWS IoT Events](https://docs.aws.amazon.com/iotevents)

  </li> <li> [AWS IoT Greengrass](https://docs.aws.amazon.com/greengrass)

  </li> <li> [AWS IoT 1-Click](https://docs.aws.amazon.com/iot-1-click)

  </li> <li> [AWS IoT Sitewise](https://docs.aws.amazon.com/iot-sitewise)

  </li> <li> [AWS IoT Things Graph](https://docs.aws.amazon.com/thingsgraph)

  </li> <li> [Amazon Kendra](https://docs.aws.amazon.com/kendra)

  </li> <li> [AWS Key Management Service](https://docs.aws.amazon.com/kms)

  </li> <li> [Amazon Kinesis](https://docs.aws.amazon.com/kinesis)

  </li> <li> [Amazon Kinesis Data
  Analytics](https://docs.aws.amazon.com/kinesis/?id=docs_gateway#amazon-kinesis-data-analytics)

  </li> <li> [Amazon Kinesis Data
  Firehose](https://docs.aws.amazon.com/kinesis/?id=docs_gateway#amazon-kinesis-data-firehose)

  </li> <li> [AWS Lambda](https://docs.aws.amazon.com/lambda)

  </li> <li> [Amazon Lex](https://docs.aws.amazon.com/lex)

  </li> <li> [AWS License
  Manager](https://docs.aws.amazon.com/license-manager)

  </li> <li> [Amazon Lightsail](https://docs.aws.amazon.com/lightsail)

  </li> <li> [Amazon Macie](https://docs.aws.amazon.com/macie)

  </li> <li> [Amazon Machine
  Learning](https://docs.aws.amazon.com/machine-learning)

  </li> <li> [Amazon MQ](https://docs.aws.amazon.com/amazon-mq)

  </li> <li> [Amazon MSK](https://docs.aws.amazon.com/msk)

  </li> <li> [Amazon MSK](https://docs.aws.amazon.com/msk)

  </li> <li> [Amazon Neptune](https://docs.aws.amazon.com/neptune)

  </li> <li> [AWS Network
  Manager](https://docs.aws.amazon.com/vpc/latest/tgw/what-is-network-manager.html)

  </li> <li> [AWS OpsWorks](https://docs.aws.amazon.com/opsworks)

  </li> <li> [AWS OpsWorks CM](https://docs.aws.amazon.com/opsworks)

  </li> <li> [AWS Organizations](https://docs.aws.amazon.com/organizations)

  </li> <li> [Amazon Pinpoint](https://docs.aws.amazon.com/pinpoint)

  </li> <li> [Amazon Quantum Ledger Database
  (QLDB)](https://docs.aws.amazon.com/qldb)

  </li> <li> [Amazon RDS](https://docs.aws.amazon.com/rds)

  </li> <li> [Amazon Redshift](https://docs.aws.amazon.com/redshift)

  </li> <li> [AWS Resource Access Manager](https://docs.aws.amazon.com/ram)

  </li> <li> [AWS Resource Groups](https://docs.aws.amazon.com/ARG)

  </li> <li> [AWS RoboMaker](https://docs.aws.amazon.com/robomaker)

  </li> <li> [Amazon Route 53](https://docs.aws.amazon.com/route53)

  </li> <li> [Amazon Route 53 Resolver](https://docs.aws.amazon.com/route53)

  </li> <li> [Amazon S3 (buckets only)](https://docs.aws.amazon.com/s3)

  </li> <li> [Amazon SageMaker](https://docs.aws.amazon.com/sagemaker)

  </li> <li> [Savings Plans](https://docs.aws.amazon.com/savingsplans)

  </li> <li> [AWS Secrets
  Manager](https://docs.aws.amazon.com/secretsmanager)

  </li> <li> [AWS Security Hub](https://docs.aws.amazon.com/securityhub)

  </li> <li> [AWS Service
  Catalog](https://docs.aws.amazon.com/servicecatalog)

  </li> <li> [Amazon Simple Email Service
  (SES)](https://docs.aws.amazon.com/ses)

  </li> <li> [Amazon Simple Notification Service
  (SNS)](https://docs.aws.amazon.com/sns)

  </li> <li> [Amazon Simple Queue Service
  (SQS)](https://docs.aws.amazon.com/sqs)

  </li> <li> [Amazon Simple Workflow
  Service](https://docs.aws.amazon.com/swf)

  </li> <li> [AWS Step Functions](https://docs.aws.amazon.com/step-functions)

  </li> <li> [AWS Storage
  Gateway](https://docs.aws.amazon.com/storagegateway)

  </li> <li> [AWS Systems
  Manager](https://docs.aws.amazon.com/systems-manager)

  </li> <li> [AWS Transfer for SFTP](https://docs.aws.amazon.com/transfer)

  </li> <li> [Amazon VPC](https://docs.aws.amazon.com/vpc)

  </li> <li> [AWS WAF](https://docs.aws.amazon.com/waf)

  </li> <li> [AWS WAF Regional](https://docs.aws.amazon.com/waf)

  </li> <li> [Amazon WorkLink](https://docs.aws.amazon.com/worklink)

  </li> <li> [Amazon WorkSpaces](https://docs.aws.amazon.com/workspaces)

  </li> </ul>
  """

  @doc """
  Describes the status of the `StartReportCreation` operation.

  You can call this operation only from the organization's master account and
  from the us-east-1 Region.
  """
  def describe_report_creation(client, input, options \\ []) do
    request(client, "DescribeReportCreation", input, options)
  end

  @doc """
  Returns a table that shows counts of resources that are noncompliant with
  their tag policies.

  For more information on tag policies, see [Tag
  Policies](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)
  in the *AWS Organizations User Guide.*

  You can call this operation only from the organization's master account and
  from the us-east-1 Region.
  """
  def get_compliance_summary(client, input, options \\ []) do
    request(client, "GetComplianceSummary", input, options)
  end

  @doc """
  Returns all the tagged or previously tagged resources that are located in
  the specified Region for the AWS account.

  Depending on what information you want returned, you can also specify the
  following:

  <ul> <li> *Filters* that specify what tags and resource types you want
  returned. The response includes all tags that are associated with the
  requested resources.

  </li> <li> Information about compliance with the account's effective tag
  policy. For more information on tag policies, see [Tag
  Policies](http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)
  in the *AWS Organizations User Guide.*

  </li> </ul> <note> You can check the `PaginationToken` response parameter
  to determine if a query is complete. Queries occasionally return fewer
  results on a page than allowed. The `PaginationToken` response parameter
  value is `null` *only* when there are no more results to display.

  </note>
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
  Returns all tag values for the specified key in the specified Region for
  the AWS account.
  """
  def get_tag_values(client, input, options \\ []) do
    request(client, "GetTagValues", input, options)
  end

  @doc """
  Generates a report that lists all tagged resources in accounts across your
  organization and tells whether each resource is compliant with the
  effective tag policy. Compliance data is refreshed daily.

  The generated report is saved to the following location:

  `s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv`

  You can call this operation only from the organization's master account and
  from the us-east-1 Region.
  """
  def start_report_creation(client, input, options \\ []) do
    request(client, "StartReportCreation", input, options)
  end

  @doc """
  Applies one or more tags to the specified resources. Note the following:

  <ul> <li> Not all resources can have tags. For a list of services that
  support tagging, see [this
  list](http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/Welcome.html).

  </li> <li> Each resource can have up to 50 tags. For other limits, see [Tag
  Naming and Usage
  Conventions](http://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions)
  in the *AWS General Reference.*

  </li> <li> You can only tag resources that are located in the specified
  Region for the AWS account.

  </li> <li> To add tags to a resource, you need the necessary permissions
  for the service that the resource belongs to as well as permissions for
  adding tags. For more information, see [this
  list](http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/Welcome.html).

  </li> </ul> <important> Do not store personally identifiable information
  (PII) or other confidential or sensitive information in tags. We use tags
  to provide you with billing and administration services. Tags are not
  intended to be used for private or sensitive data.

  </important>
  """
  def tag_resources(client, input, options \\ []) do
    request(client, "TagResources", input, options)
  end

  @doc """
  Removes the specified tags from the specified resources. When you specify a
  tag key, the action removes both that key and its associated value. The
  operation succeeds even if you attempt to remove tags from a resource that
  were already removed. Note the following:

  <ul> <li> To remove tags from a resource, you need the necessary
  permissions for the service that the resource belongs to as well as
  permissions for removing tags. For more information, see [this
  list](http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/Welcome.html).

  </li> <li> You can only tag resources that are located in the specified
  Region for the AWS account.

  </li> </ul>
  """
  def untag_resources(client, input, options \\ []) do
    request(client, "UntagResources", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
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

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    AWS.HTTP.request(:post, url, payload, headers, options, 200)
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
end
