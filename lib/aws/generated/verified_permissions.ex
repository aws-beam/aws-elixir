# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.VerifiedPermissions do
  @moduledoc """
  Amazon Verified Permissions is a permissions management service from Amazon Web
  Services.

  You can use Verified Permissions to manage permissions for your application, and
  authorize user access based on those permissions. Using Verified Permissions,
  application developers can grant access based on information about the users,
  resources, and requested actions. You can also evaluate additional information
  like group membership, attributes of the resources, and session context, such as
  time of request and IP addresses. Verified Permissions manages these permissions
  by letting you create and store authorization policies for your applications,
  such as consumer-facing web sites and enterprise business systems.

  Verified Permissions uses Cedar as the policy language to express your
  permission requirements. Cedar supports both role-based access control (RBAC)
  and attribute-based access control (ABAC) authorization models.

  For more information about configuring, administering, and using Amazon Verified
  Permissions in your applications, see the [Amazon Verified Permissions User Guide](https://docs.aws.amazon.com/verifiedpermissions/latest/userguide/).

  For more information about the Cedar policy language, see the [Cedar Policy Language Guide](docs.cedarpolicy.com).

  When you write Cedar policies that reference principals, resources and actions,
  you can define the unique identifiers used for each of those elements. We
  strongly recommend that you follow these best practices:

     ## Use values like universally unique identifiers (UUIDs) for all
  principal and resource identifiers.

  For example, if user `jane` leaves the company, and you later let someone else
  use the name `jane`, then that new user automatically gets access to everything
  granted by policies that still reference `User::"jane"`. Cedar can’t distinguish
  between the new user and the old. This applies to both principal and resource
  identifiers. Always use identifiers that are guaranteed unique and never reused
  to ensure that you don’t unintentionally grant access because of the presence of
  an old identifier in a policy.

  Where you use a UUID for an entity, we recommend that you follow it with the //
  comment specifier and the ‘friendly’ name of your entity. This helps to make
  your policies easier to understand. For example: principal ==
  User::"a1b2c3d4-e5f6-a1b2-c3d4-EXAMPLE11111", // alice

     ## Do not include personally identifying, confidential, or sensitive
  information as part of the unique identifier for your principals or resources.
  These identifiers are included in log entries shared in CloudTrail trails.

  Several operations return structures that appear similar, but have different
  purposes. As new functionality is added to the product, the structure used in a
  parameter of one operation might need to change in a way that wouldn't make
  sense for the same parameter in a different operation. To help you understand
  the purpose of each, the following naming convention is used for the structures:

    * Parameter type structures that end in `Detail` are used in `Get`
  operations.

    * Parameter type structures that end in `Item` are used in `List`
  operations.

    * Parameter type structures that use neither suffix are used in the
  mutating (create and update) operations.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2021-12-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "verifiedpermissions",
      global?: false,
      protocol: "json",
      service_id: "VerifiedPermissions",
      signature_version: "v4",
      signing_name: "verifiedpermissions",
      target_prefix: "VerifiedPermissions"
    }
  end

  @doc """
  Creates a reference to an Amazon Cognito user pool as an external identity
  provider (IdP).

  After you create an identity source, you can use the identities provided by the
  IdP as proxies for the principal in authorization queries that use the
  [IsAuthorizedWithToken](https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html)
  operation. These identities take the form of tokens that contain claims about
  the user, such as IDs, attributes and group memberships. Amazon Cognito provides
  both identity tokens and access tokens, and Verified Permissions can use either
  or both. Any combination of identity and access tokens results in the same Cedar
  principal. Verified Permissions automatically translates the information about
  the identities into the standard Cedar attributes that can be evaluated by your
  policies. Because the Amazon Cognito identity and access tokens can contain
  different information, the tokens you choose to use determine which principal
  attributes are available to access when evaluating Cedar policies.

  If you delete a Amazon Cognito user pool or user, tokens from that deleted pool
  or that deleted user continue to be usable until they expire.

  To reference a user from this identity source in your Cedar policies, use the
  following syntax.

  *IdentityType::"<CognitoUserPoolIdentifier>|<CognitoClientId>*

  Where `IdentityType` is the string that you provide to the `PrincipalEntityType`
  parameter for this operation. The `CognitoUserPoolId` and `CognitoClientId` are
  defined by the Amazon Cognito user pool.
  """
  def create_identity_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateIdentitySource", input, options)
  end

  @doc """
  Creates a Cedar policy and saves it in the specified policy store.

  You can create either a static policy or a policy linked to a policy template.

    * To create a static policy, provide the Cedar policy text in the
  `StaticPolicy` section of the `PolicyDefinition`.

    * To create a policy that is dynamically linked to a policy
  template, specify the policy template ID and the principal and resource to
  associate with this policy in the `templateLinked` section of the
  `PolicyDefinition`. If the policy template is ever updated, any policies linked
  to the policy template automatically use the updated template.

  Creating a policy causes it to be validated against the schema in the policy
  store. If the policy doesn't pass validation, the operation fails and the policy
  isn't stored.
  """
  def create_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePolicy", input, options)
  end

  @doc """
  Creates a policy store.

  A policy store is a container for policy resources.

  Although [Cedar supports multiple namespaces](https://docs.cedarpolicy.com/schema.html#namespace), Verified
  Permissions currently supports only one namespace per policy store.
  """
  def create_policy_store(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePolicyStore", input, options)
  end

  @doc """
  Creates a policy template.

  A template can use placeholders for the principal and resource. A template must
  be instantiated into a policy by associating it with specific principals and
  resources to use for the placeholders. That instantiated policy can then be
  considered in authorization decisions. The instantiated policy works identically
  to any other policy, except that it is dynamically linked to the template. If
  the template changes, then any policies that are linked to that template are
  immediately updated as well.
  """
  def create_policy_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePolicyTemplate", input, options)
  end

  @doc """
  Deletes an identity source that references an identity provider (IdP) such as
  Amazon Cognito.

  After you delete the identity source, you can no longer use tokens for
  identities from that identity source to represent principals in authorization
  queries made using
  [IsAuthorizedWithToken](https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html).
  operations.
  """
  def delete_identity_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIdentitySource", input, options)
  end

  @doc """
  Deletes the specified policy from the policy store.

  This operation is idempotent; if you specify a policy that doesn't exist, the
  request response returns a successful `HTTP 200` status code.
  """
  def delete_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePolicy", input, options)
  end

  @doc """
  Deletes the specified policy store.

  This operation is idempotent. If you specify a policy store that does not exist,
  the request response will still return a successful HTTP 200 status code.
  """
  def delete_policy_store(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePolicyStore", input, options)
  end

  @doc """
  Deletes the specified policy template from the policy store.

  This operation also deletes any policies that were created from the specified
  policy template. Those policies are immediately removed from all future API
  responses, and are asynchronously deleted from the policy store.
  """
  def delete_policy_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePolicyTemplate", input, options)
  end

  @doc """
  Retrieves the details about the specified identity source.
  """
  def get_identity_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetIdentitySource", input, options)
  end

  @doc """
  Retrieves information about the specified policy.
  """
  def get_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPolicy", input, options)
  end

  @doc """
  Retrieves details about a policy store.
  """
  def get_policy_store(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPolicyStore", input, options)
  end

  @doc """
  Retrieve the details for the specified policy template in the specified policy
  store.
  """
  def get_policy_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPolicyTemplate", input, options)
  end

  @doc """
  Retrieve the details for the specified schema in the specified policy store.
  """
  def get_schema(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSchema", input, options)
  end

  @doc """
  Makes an authorization decision about a service request described in the
  parameters.

  The information in the parameters can also define additional context that
  Verified Permissions can include in the evaluation. The request is evaluated
  against all matching policies in the specified policy store. The result of the
  decision is either `Allow` or `Deny`, along with a list of the policies that
  resulted in the decision.
  """
  def is_authorized(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "IsAuthorized", input, options)
  end

  @doc """
  Makes an authorization decision about a service request described in the
  parameters.

  The principal in this request comes from an external identity source. The
  information in the parameters can also define additional context that Verified
  Permissions can include in the evaluation. The request is evaluated against all
  matching policies in the specified policy store. The result of the decision is
  either `Allow` or `Deny`, along with a list of the policies that resulted in the
  decision.

  If you delete a Amazon Cognito user pool or user, tokens from that deleted pool
  or that deleted user continue to be usable until they expire.
  """
  def is_authorized_with_token(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "IsAuthorizedWithToken", input, options)
  end

  @doc """
  Returns a paginated list of all of the identity sources defined in the specified
  policy store.
  """
  def list_identity_sources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListIdentitySources", input, options)
  end

  @doc """
  Returns a paginated list of all policies stored in the specified policy store.
  """
  def list_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPolicies", input, options)
  end

  @doc """
  Returns a paginated list of all policy stores in the calling Amazon Web Services
  account.
  """
  def list_policy_stores(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPolicyStores", input, options)
  end

  @doc """
  Returns a paginated list of all policy templates in the specified policy store.
  """
  def list_policy_templates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPolicyTemplates", input, options)
  end

  @doc """
  Creates or updates the policy schema in the specified policy store.

  The schema is used to validate any Cedar policies and policy templates submitted
  to the policy store. Any changes to the schema validate only policies and
  templates submitted after the schema change. Existing policies and templates are
  not re-evaluated against the changed schema. If you later update a policy, then
  it is evaluated against the new schema at that time.
  """
  def put_schema(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutSchema", input, options)
  end

  @doc """
  Updates the specified identity source to use a new identity provider (IdP)
  source, or to change the mapping of identities from the IdP to a different
  principal entity type.
  """
  def update_identity_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateIdentitySource", input, options)
  end

  @doc """
  Modifies a Cedar static policy in the specified policy store.

  You can change only certain elements of the
  [UpdatePolicyDefinition](https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyInput.html#amazonverifiedpermissions-UpdatePolicy-request-UpdatePolicyDefinition) parameter. You can directly update only static policies. To change a
  template-linked policy, you must update the template instead, using
  [UpdatePolicyTemplate](https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyTemplate.html).

  If policy validation is enabled in the policy store, then updating a static
  policy causes Verified Permissions to validate the policy against the schema in
  the policy store. If the updated static policy doesn't pass validation, the
  operation fails and the update isn't stored.
  """
  def update_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePolicy", input, options)
  end

  @doc """
  Modifies the validation setting for a policy store.
  """
  def update_policy_store(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePolicyStore", input, options)
  end

  @doc """
  Updates the specified policy template.

  You can update only the description and the some elements of the
  [policyBody](https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyTemplate.html#amazonverifiedpermissions-UpdatePolicyTemplate-request-policyBody).

  Changes you make to the policy template content are immediately reflected in
  authorization decisions that involve all template-linked policies instantiated
  from this template.
  """
  def update_policy_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePolicyTemplate", input, options)
  end
end
