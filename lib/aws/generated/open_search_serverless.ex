# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.OpenSearchServerless do
  @moduledoc """
  Use the Amazon OpenSearch Serverless API to create, configure, and manage
  OpenSearch Serverless collections and
  security policies.

  OpenSearch Serverless is an on-demand, pre-provisioned serverless configuration
  for
  Amazon OpenSearch Service. OpenSearch Serverless removes the operational
  complexities of provisioning,
  configuring, and tuning your OpenSearch clusters. It enables you to easily
  search and
  analyze petabytes of data without having to worry about the underlying
  infrastructure
  and data management.

  To learn more about OpenSearch Serverless, see [What is Amazon OpenSearch
  Serverless?](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-overview.html)
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2021-11-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "aoss",
      global?: false,
      protocol: "json",
      service_id: "OpenSearchServerless",
      signature_version: "v4",
      signing_name: "aoss",
      target_prefix: "OpenSearchServerless"
    }
  end

  @doc """
  Returns attributes for one or more collections, including the collection
  endpoint and
  the OpenSearch Dashboards endpoint.

  For more information, see [Creating and managing Amazon OpenSearch Serverless
  collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html).
  """
  def batch_get_collection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetCollection", input, options)
  end

  @doc """
  Returns a list of successful and failed retrievals for the OpenSearch Serverless
  indexes.

  For more information, see [Viewing data lifecycle policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-list).
  """
  def batch_get_effective_lifecycle_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetEffectiveLifecyclePolicy", input, options)
  end

  @doc """
  Returns one or more configured OpenSearch Serverless lifecycle policies.

  For more information, see [Viewing data lifecycle policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-list).
  """
  def batch_get_lifecycle_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetLifecyclePolicy", input, options)
  end

  @doc """
  Returns attributes for one or more VPC endpoints associated with the current
  account.

  For more information, see
  [Access Amazon OpenSearch Serverless using an interface endpoint](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).
  """
  def batch_get_vpc_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetVpcEndpoint", input, options)
  end

  @doc """
  Creates a data access policy for OpenSearch Serverless.

  Access policies limit access to collections
  and the resources within them, and allow a user to access that data irrespective
  of the
  access mechanism or network source. For more information, see [Data access control for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html).
  """
  def create_access_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAccessPolicy", input, options)
  end

  @doc """
  Creates a new OpenSearch Serverless collection.

  For more information, see [Creating and managing Amazon OpenSearch Serverless
  collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html).
  """
  def create_collection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCollection", input, options)
  end

  @doc """
  Creates a lifecyle policy to be applied to OpenSearch Serverless indexes.

  Lifecycle policies define
  the number of days or hours to retain the data on an OpenSearch Serverless
  index. For more information, see [Creating data lifecycle policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-create).
  """
  def create_lifecycle_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLifecyclePolicy", input, options)
  end

  @doc """
  Specifies a security configuration for OpenSearch Serverless.

  For more information, see
  [SAML authentication for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).
  """
  def create_security_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSecurityConfig", input, options)
  end

  @doc """
  Creates a security policy to be used by one or more OpenSearch Serverless
  collections.

  Security
  policies provide access to a collection and its OpenSearch Dashboards endpoint
  from
  public networks or specific VPC endpoints. They also allow you to secure a
  collection
  with a KMS encryption key. For more information, see [Network access for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html)
  and [Encryption at rest for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html).
  """
  def create_security_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSecurityPolicy", input, options)
  end

  @doc """
  Creates an OpenSearch Serverless-managed interface VPC endpoint.

  For more information, see [Access Amazon OpenSearch Serverless using an interface
  endpoint](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).
  """
  def create_vpc_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVpcEndpoint", input, options)
  end

  @doc """
  Deletes an OpenSearch Serverless access policy.

  For more information, see [Data access control for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html).
  """
  def delete_access_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAccessPolicy", input, options)
  end

  @doc """
  Deletes an OpenSearch Serverless collection.

  For more information, see [Creating and managing Amazon OpenSearch Serverless
  collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html).
  """
  def delete_collection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCollection", input, options)
  end

  @doc """
  Deletes an OpenSearch Serverless lifecycle policy.

  For more information, see [Deleting data lifecycle policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-delete).
  """
  def delete_lifecycle_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLifecyclePolicy", input, options)
  end

  @doc """
  Deletes a security configuration for OpenSearch Serverless.

  For more information, see
  [SAML authentication for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).
  """
  def delete_security_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSecurityConfig", input, options)
  end

  @doc """
  Deletes an OpenSearch Serverless security policy.
  """
  def delete_security_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSecurityPolicy", input, options)
  end

  @doc """
  Deletes an OpenSearch Serverless-managed interface endpoint.

  For more information, see
  [Access Amazon OpenSearch Serverless using an interface endpoint](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).
  """
  def delete_vpc_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVpcEndpoint", input, options)
  end

  @doc """
  Returns an OpenSearch Serverless access policy.

  For more information, see [Data access control for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html).
  """
  def get_access_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAccessPolicy", input, options)
  end

  @doc """
  Returns account-level settings related to OpenSearch Serverless.
  """
  def get_account_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAccountSettings", input, options)
  end

  @doc """
  Returns statistical information about your OpenSearch Serverless access
  policies, security
  configurations, and security policies.
  """
  def get_policies_stats(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPoliciesStats", input, options)
  end

  @doc """
  Returns information about an OpenSearch Serverless security configuration.

  For more information, see
  [SAML authentication for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).
  """
  def get_security_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSecurityConfig", input, options)
  end

  @doc """
  Returns information about a configured OpenSearch Serverless security policy.

  For more information, see [Network access for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html)
  and [Encryption at rest for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html).
  """
  def get_security_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSecurityPolicy", input, options)
  end

  @doc """
  Returns information about a list of OpenSearch Serverless access policies.
  """
  def list_access_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAccessPolicies", input, options)
  end

  @doc """
  Lists all OpenSearch Serverless collections.

  For more information, see [Creating and managing Amazon OpenSearch Serverless
  collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html).

  Make sure to include an empty request body {} if you don't include any
  collection
  filters in the request.
  """
  def list_collections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCollections", input, options)
  end

  @doc """
  Returns a list of OpenSearch Serverless lifecycle policies.

  For more information, see [Viewing data lifecycle policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-list).
  """
  def list_lifecycle_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLifecyclePolicies", input, options)
  end

  @doc """
  Returns information about configured OpenSearch Serverless security
  configurations.

  For more information, see
  [SAML authentication for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).
  """
  def list_security_configs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSecurityConfigs", input, options)
  end

  @doc """
  Returns information about configured OpenSearch Serverless security policies.
  """
  def list_security_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSecurityPolicies", input, options)
  end

  @doc """
  Returns the tags for an OpenSearch Serverless resource.

  For more information, see [Tagging Amazon OpenSearch Serverless collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html).
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Returns the OpenSearch Serverless-managed interface VPC endpoints associated
  with the current
  account.

  For more information, see
  [Access Amazon OpenSearch Serverless using an interface endpoint](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).
  """
  def list_vpc_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListVpcEndpoints", input, options)
  end

  @doc """
  Associates tags with an OpenSearch Serverless resource.

  For more information, see [Tagging Amazon OpenSearch Serverless collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html).
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes a tag or set of tags from an OpenSearch Serverless resource.

  For more information, see [Tagging Amazon OpenSearch Serverless collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html).
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an OpenSearch Serverless access policy.

  For more information, see [Data access control for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html).
  """
  def update_access_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAccessPolicy", input, options)
  end

  @doc """
  Update the OpenSearch Serverless settings for the current Amazon Web Services
  account.

  For more
  information, see [Managing capacity limits for Amazon OpenSearch Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-scaling.html).
  """
  def update_account_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAccountSettings", input, options)
  end

  @doc """
  Updates an OpenSearch Serverless collection.
  """
  def update_collection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCollection", input, options)
  end

  @doc """
  Updates an OpenSearch Serverless access policy.

  For more information, see [Updating data lifecycle policies](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-update).
  """
  def update_lifecycle_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLifecyclePolicy", input, options)
  end

  @doc """
  Updates a security configuration for OpenSearch Serverless.

  For more information, see
  [SAML authentication for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).
  """
  def update_security_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSecurityConfig", input, options)
  end

  @doc """
  Updates an OpenSearch Serverless security policy.

  For more information, see [Network access for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html)
  and [Encryption at rest for Amazon OpenSearch
  Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html).
  """
  def update_security_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSecurityPolicy", input, options)
  end

  @doc """
  Updates an OpenSearch Serverless-managed interface endpoint.

  For more information, see
  [Access Amazon OpenSearch Serverless using an interface endpoint](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).
  """
  def update_vpc_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateVpcEndpoint", input, options)
  end
end
