# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ResourceGroupsTaggingAPI do
  @moduledoc """
  Resource Groups Tagging API
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-01-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "tagging",
      global?: false,
      protocol: "json",
      service_id: "Resource Groups Tagging API",
      signature_version: "v4",
      signing_name: "tagging",
      target_prefix: "ResourceGroupsTaggingAPI_20170126"
    }
  end

  @doc """
  Describes the status of the `StartReportCreation` operation.

  You can call this operation only from the organization's management account and
  from the us-east-1 Region.
  """
  def describe_report_creation(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeReportCreation", input, options)
  end

  @doc """
  Returns a table that shows counts of resources that are noncompliant with their
  tag policies.

  For more information on tag policies, see [Tag Policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)
  in the *AWS Organizations User Guide.*

  You can call this operation only from the organization's management account and
  from the us-east-1 Region.

  This operation supports pagination, where the response can be sent in multiple
  pages. You should check the `PaginationToken` response parameter to determine if
  there are additional results available to return. Repeat the query, passing the
  `PaginationToken` response parameter value as an input to the next request until
  you recieve a `null` value. A null value for `PaginationToken` indicates that
  there are no more results waiting to be returned.
  """
  def get_compliance_summary(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetComplianceSummary", input, options)
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
  policy. For more information on tag policies, see [Tag Policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)
  in the *AWS Organizations User Guide.*

  This operation supports pagination, where the response can be sent in multiple
  pages. You should check the `PaginationToken` response parameter to determine if
  there are additional results available to return. Repeat the query, passing the
  `PaginationToken` response parameter value as an input to the next request until
  you recieve a `null` value. A null value for `PaginationToken` indicates that
  there are no more results waiting to be returned.
  """
  def get_resources(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetResources", input, options)
  end

  @doc """
  Returns all tag keys currently in use in the specified Region for the calling
  AWS account.

  This operation supports pagination, where the response can be sent in multiple
  pages. You should check the `PaginationToken` response parameter to determine if
  there are additional results available to return. Repeat the query, passing the
  `PaginationToken` response parameter value as an input to the next request until
  you recieve a `null` value. A null value for `PaginationToken` indicates that
  there are no more results waiting to be returned.
  """
  def get_tag_keys(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetTagKeys", input, options)
  end

  @doc """
  Returns all tag values for the specified key that are used in the specified AWS
  Region for the calling AWS account.

  This operation supports pagination, where the response can be sent in multiple
  pages. You should check the `PaginationToken` response parameter to determine if
  there are additional results available to return. Repeat the query, passing the
  `PaginationToken` response parameter value as an input to the next request until
  you recieve a `null` value. A null value for `PaginationToken` indicates that
  there are no more results waiting to be returned.
  """
  def get_tag_values(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetTagValues", input, options)
  end

  @doc """
  Generates a report that lists all tagged resources in the accounts across your
  organization and tells whether each resource is compliant with the effective tag
  policy.

  Compliance data is refreshed daily. The report is generated asynchronously.

  The generated report is saved to the following location:

  `s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv`

  You can call this operation only from the organization's management account and
  from the us-east-1 Region.
  """
  def start_report_creation(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartReportCreation", input, options)
  end

  @doc """
  Applies one or more tags to the specified resources.

  Note the following:

    * Not all resources can have tags. For a list of services with
  resources that support tagging using this operation, see [Services that support the Resource Groups Tagging
  API](https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html).

    * Each resource can have up to 50 tags. For other limits, see [Tag Naming and Usage
  Conventions](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions)
  in the *AWS General Reference.*

    * You can only tag resources that are located in the specified AWS
  Region for the AWS account.

    * To add tags to a resource, you need the necessary permissions for
  the service that the resource belongs to as well as permissions for adding tags.
  For more information, see the documentation for each service.

  Do not store personally identifiable information (PII) or other confidential or
  sensitive information in tags. We use tags to provide you with billing and
  administration services. Tags are not intended to be used for private or
  sensitive data.
  """
  def tag_resources(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResources", input, options)
  end

  @doc """
  Removes the specified tags from the specified resources.

  When you specify a tag key, the action removes both that key and its associated
  value. The operation succeeds even if you attempt to remove tags from a resource
  that were already removed. Note the following:

    * To remove tags from a resource, you need the necessary permissions
  for the service that the resource belongs to as well as permissions for removing
  tags. For more information, see the documentation for the service whose resource
  you want to untag.

    * You can only tag resources that are located in the specified AWS
  Region for the calling AWS account.
  """
  def untag_resources(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResources", input, options)
  end
end