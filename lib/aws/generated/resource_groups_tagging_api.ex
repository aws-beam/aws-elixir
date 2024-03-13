# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ResourceGroupsTaggingAPI do
  @moduledoc """
  Resource Groups Tagging API
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      compliance_details() :: %{
        "ComplianceStatus" => boolean(),
        "KeysWithNoncompliantValues" => list(String.t()()),
        "NoncompliantKeys" => list(String.t()())
      }
      
  """
  @type compliance_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      constraint_violation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type constraint_violation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_report_creation_input() :: %{}
      
  """
  @type describe_report_creation_input() :: %{}

  @typedoc """

  ## Example:
      
      describe_report_creation_output() :: %{
        "ErrorMessage" => String.t(),
        "S3Location" => String.t(),
        "StartDate" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type describe_report_creation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failure_info() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t(),
        "StatusCode" => integer()
      }
      
  """
  @type failure_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_summary_input() :: %{
        optional("GroupBy") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("PaginationToken") => String.t(),
        optional("RegionFilters") => list(String.t()()),
        optional("ResourceTypeFilters") => list(String.t()()),
        optional("TagKeyFilters") => list(String.t()()),
        optional("TargetIdFilters") => list(String.t()())
      }
      
  """
  @type get_compliance_summary_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compliance_summary_output() :: %{
        "PaginationToken" => String.t(),
        "SummaryList" => list(summary()())
      }
      
  """
  @type get_compliance_summary_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resources_input() :: %{
        optional("ExcludeCompliantResources") => boolean(),
        optional("IncludeComplianceDetails") => boolean(),
        optional("PaginationToken") => String.t(),
        optional("ResourceARNList") => list(String.t()()),
        optional("ResourceTypeFilters") => list(String.t()()),
        optional("ResourcesPerPage") => integer(),
        optional("TagFilters") => list(tag_filter()()),
        optional("TagsPerPage") => integer()
      }
      
  """
  @type get_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resources_output() :: %{
        "PaginationToken" => String.t(),
        "ResourceTagMappingList" => list(resource_tag_mapping()())
      }
      
  """
  @type get_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_tag_keys_input() :: %{
        optional("PaginationToken") => String.t()
      }
      
  """
  @type get_tag_keys_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_tag_keys_output() :: %{
        "PaginationToken" => String.t(),
        "TagKeys" => list(String.t()())
      }
      
  """
  @type get_tag_keys_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_tag_values_input() :: %{
        optional("PaginationToken") => String.t(),
        required("Key") => String.t()
      }
      
  """
  @type get_tag_values_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_tag_values_output() :: %{
        "PaginationToken" => String.t(),
        "TagValues" => list(String.t()())
      }
      
  """
  @type get_tag_values_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pagination_token_expired_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type pagination_token_expired_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_tag_mapping() :: %{
        "ComplianceDetails" => compliance_details(),
        "ResourceARN" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type resource_tag_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_report_creation_input() :: %{
        required("S3Bucket") => String.t()
      }
      
  """
  @type start_report_creation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_report_creation_output() :: %{}
      
  """
  @type start_report_creation_output() :: %{}

  @typedoc """

  ## Example:
      
      summary() :: %{
        "LastUpdated" => String.t(),
        "NonCompliantResources" => float(),
        "Region" => String.t(),
        "ResourceType" => String.t(),
        "TargetId" => String.t(),
        "TargetIdType" => list(any())
      }
      
  """
  @type summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_filter() :: %{
        "Key" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type tag_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resources_input() :: %{
        required("ResourceARNList") => list(String.t()()),
        required("Tags") => map()
      }
      
  """
  @type tag_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resources_output() :: %{
        "FailedResourcesMap" => map()
      }
      
  """
  @type tag_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttled_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type throttled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resources_input() :: %{
        required("ResourceARNList") => list(String.t()()),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resources_output() :: %{
        "FailedResourcesMap" => map()
      }
      
  """
  @type untag_resources_output() :: %{String.t() => any()}

  @type describe_report_creation_errors() ::
          throttled_exception()
          | invalid_parameter_exception()
          | internal_service_exception()
          | constraint_violation_exception()

  @type get_compliance_summary_errors() ::
          throttled_exception()
          | invalid_parameter_exception()
          | internal_service_exception()
          | constraint_violation_exception()

  @type get_resources_errors() ::
          throttled_exception()
          | pagination_token_expired_exception()
          | invalid_parameter_exception()
          | internal_service_exception()

  @type get_tag_keys_errors() ::
          throttled_exception()
          | pagination_token_expired_exception()
          | invalid_parameter_exception()
          | internal_service_exception()

  @type get_tag_values_errors() ::
          throttled_exception()
          | pagination_token_expired_exception()
          | invalid_parameter_exception()
          | internal_service_exception()

  @type start_report_creation_errors() ::
          throttled_exception()
          | invalid_parameter_exception()
          | internal_service_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()

  @type tag_resources_errors() ::
          throttled_exception() | invalid_parameter_exception() | internal_service_exception()

  @type untag_resources_errors() ::
          throttled_exception() | invalid_parameter_exception() | internal_service_exception()

  def metadata do
    %{
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

  You can call this operation only from the organization's
  management account and from the us-east-1 Region.
  """
  @spec describe_report_creation(map(), describe_report_creation_input(), list()) ::
          {:ok, describe_report_creation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_report_creation_errors()}
  def describe_report_creation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeReportCreation", input, options)
  end

  @doc """
  Returns a table that shows counts of resources that are noncompliant with their
  tag
  policies.

  For more information on tag policies, see [Tag Policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)
  in
  the *Organizations User Guide.*

  You can call this operation only from the organization's
  management account and from the us-east-1 Region.

  This operation supports pagination, where the response can be sent in
  multiple pages. You should check the `PaginationToken` response parameter to
  determine
  if there are additional results available to return. Repeat the query, passing
  the
  `PaginationToken` response parameter value as an input to the next request until
  you
  recieve a `null` value. A null value for `PaginationToken` indicates that
  there are no more results waiting to be returned.
  """
  @spec get_compliance_summary(map(), get_compliance_summary_input(), list()) ::
          {:ok, get_compliance_summary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_compliance_summary_errors()}
  def get_compliance_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetComplianceSummary", input, options)
  end

  @doc """
  Returns all the tagged or previously tagged resources that are located in the
  specified Amazon Web Services Region for the account.

  Depending on what information you want returned, you can also specify the
  following:

    *

  *Filters* that specify what tags and resource types you
  want returned. The response includes all tags that are associated with the
  requested resources.

    *
  Information about compliance with the account's effective tag policy. For more
  information on tag policies, see [Tag Policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)
  in the *Organizations User Guide.*

  This operation supports pagination, where the response can be sent in
  multiple pages. You should check the `PaginationToken` response parameter to
  determine
  if there are additional results available to return. Repeat the query, passing
  the
  `PaginationToken` response parameter value as an input to the next request until
  you
  recieve a `null` value. A null value for `PaginationToken` indicates that
  there are no more results waiting to be returned.
  """
  @spec get_resources(map(), get_resources_input(), list()) ::
          {:ok, get_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resources_errors()}
  def get_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResources", input, options)
  end

  @doc """
  Returns all tag keys currently in use in the specified Amazon Web Services
  Region for the calling
  account.

  This operation supports pagination, where the response can be sent in
  multiple pages. You should check the `PaginationToken` response parameter to
  determine
  if there are additional results available to return. Repeat the query, passing
  the
  `PaginationToken` response parameter value as an input to the next request until
  you
  recieve a `null` value. A null value for `PaginationToken` indicates that
  there are no more results waiting to be returned.
  """
  @spec get_tag_keys(map(), get_tag_keys_input(), list()) ::
          {:ok, get_tag_keys_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_tag_keys_errors()}
  def get_tag_keys(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTagKeys", input, options)
  end

  @doc """
  Returns all tag values for the specified key that are used in the specified
  Amazon Web Services
  Region for the calling account.

  This operation supports pagination, where the response can be sent in
  multiple pages. You should check the `PaginationToken` response parameter to
  determine
  if there are additional results available to return. Repeat the query, passing
  the
  `PaginationToken` response parameter value as an input to the next request until
  you
  recieve a `null` value. A null value for `PaginationToken` indicates that
  there are no more results waiting to be returned.
  """
  @spec get_tag_values(map(), get_tag_values_input(), list()) ::
          {:ok, get_tag_values_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_tag_values_errors()}
  def get_tag_values(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTagValues", input, options)
  end

  @doc """
  Generates a report that lists all tagged resources in the accounts across your
  organization and tells whether each resource is compliant with the effective tag
  policy.

  Compliance data is refreshed daily. The report is generated asynchronously.

  The generated report is saved to the following location:

  `s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv`

  You can call this operation only from the organization's
  management account and from the us-east-1 Region.
  """
  @spec start_report_creation(map(), start_report_creation_input(), list()) ::
          {:ok, start_report_creation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_report_creation_errors()}
  def start_report_creation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartReportCreation", input, options)
  end

  @doc """
  Applies one or more tags to the specified resources.

  Note the following:

    *
  Not all resources can have tags. For a list of services with resources that
  support tagging using this operation, see [Services that support the Resource Groups Tagging
  API](https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html).
  If the resource doesn't yet support
  this operation, the resource's service might support tagging using its own API
  operations. For more information, refer to the documentation for that
  service.

    *
  Each resource can have up to 50 tags. For other limits, see [Tag Naming and Usage
  Conventions](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions)
  in the *Amazon Web Services General
  Reference.*

    *
  You can only tag resources that are located in the specified Amazon Web Services
  Region for
  the Amazon Web Services account.

    *
  To add tags to a resource, you need the necessary permissions for the service
  that the resource belongs to as well as permissions for adding tags. For more
  information, see the documentation for each service.

  Do not store personally identifiable information (PII) or other confidential or
  sensitive information in tags. We use tags to provide you with billing and
  administration services. Tags are not intended to be used for private or
  sensitive
  data.

  ## Minimum permissions

  In addition to the `tag:TagResources` permission required by this
  operation, you must also have the tagging permission defined by the service that
  created
  the resource. For example, to tag an Amazon EC2 instance using the
  `TagResources`
  operation, you must have both of the following permissions:

    *

  `tag:TagResource`

    *

  `ec2:CreateTags`
  """
  @spec tag_resources(map(), tag_resources_input(), list()) ::
          {:ok, tag_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resources_errors()}
  def tag_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResources", input, options)
  end

  @doc """
  Removes the specified tags from the specified resources.

  When you specify a tag key,
  the action removes both that key and its associated value. The operation
  succeeds even
  if you attempt to remove tags from a resource that were already removed. Note
  the
  following:

    *
  To remove tags from a resource, you need the necessary permissions for the
  service that the resource belongs to as well as permissions for removing tags.
  For more information, see the documentation for the service whose resource you
  want to untag.

    *
  You can only tag resources that are located in the specified Amazon Web Services
  Region for
  the calling Amazon Web Services account.

  ## Minimum permissions

  In addition to the `tag:UntagResources` permission required by this
  operation, you must also have the remove tags permission defined by the service
  that
  created the resource. For example, to remove the tags from an Amazon EC2
  instance using the
  `UntagResources` operation, you must have both of the following
  permissions:

    *

  `tag:UntagResource`

    *

  `ec2:DeleteTags`
  """
  @spec untag_resources(map(), untag_resources_input(), list()) ::
          {:ok, untag_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resources_errors()}
  def untag_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResources", input, options)
  end
end
