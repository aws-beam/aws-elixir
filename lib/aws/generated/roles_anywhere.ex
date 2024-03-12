# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RolesAnywhere do
  @moduledoc """
  Identity and Access Management Roles Anywhere provides a secure way for your
  workloads such as
  servers, containers, and applications that run outside of Amazon Web Services to
  obtain
  temporary Amazon Web Services credentials.

  Your workloads can use the same IAM policies and roles you have for native
  Amazon Web Services applications to access Amazon Web Services resources. Using
  IAM Roles Anywhere eliminates the need to
  manage long-term credentials for workloads running outside of Amazon Web
  Services.

  To use IAM Roles Anywhere, your workloads must use X.509 certificates
  issued by their certificate authority (CA). You register the CA with IAM
  Roles Anywhere as a trust anchor to establish trust between your public key
  infrastructure
  (PKI) and IAM Roles Anywhere. If you don't manage your own PKI system, you
  can use Private Certificate Authority to create a CA and then use that to
  establish trust with
  IAM Roles Anywhere.

  This guide describes the IAM Roles Anywhere operations that you can call
  programmatically. For more information about IAM Roles Anywhere, see the
  [IAM Roles Anywhere User Guide](https://docs.aws.amazon.com/rolesanywhere/latest/userguide/introduction.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  subject_detail() :: %{
    "createdAt" => [non_neg_integer()],
    "credentials" => list(credential_summary()()),
    "enabled" => [boolean()],
    "instanceProperties" => list(instance_property()()),
    "lastSeenAt" => [non_neg_integer()],
    "subjectArn" => [String.t()],
    "subjectId" => String.t(),
    "updatedAt" => [non_neg_integer()],
    "x509Subject" => [String.t()]
  }
  """
  @type subject_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  credential_summary() :: %{
    "enabled" => [boolean()],
    "failed" => [boolean()],
    "issuer" => [String.t()],
    "seenAt" => [non_neg_integer()],
    "serialNumber" => [String.t()],
    "x509CertificateData" => [String.t()]
  }
  """
  @type credential_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("resourceArn") => String.t(),
    required("tags") => list(tag()())
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  profile_detail_response() :: %{
    optional("profile") => profile_detail()
  }
  """
  @type profile_detail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_notification_settings_request() :: %{
    required("notificationSettings") => list(notification_setting()()),
    required("trustAnchorId") => String.t()
  }
  """
  @type put_notification_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_response() :: %{

  }
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  scalar_profile_request() :: %{

  }
  """
  @type scalar_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  scalar_crl_request() :: %{

  }
  """
  @type scalar_crl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  notification_setting_key() :: %{
    "channel" => String.t(),
    "event" => String.t()
  }
  """
  @type notification_setting_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  subject_summary() :: %{
    "createdAt" => [non_neg_integer()],
    "enabled" => [boolean()],
    "lastSeenAt" => [non_neg_integer()],
    "subjectArn" => [String.t()],
    "subjectId" => String.t(),
    "updatedAt" => [non_neg_integer()],
    "x509Subject" => [String.t()]
  }
  """
  @type subject_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  subject_detail_response() :: %{
    optional("subject") => subject_detail()
  }
  """
  @type subject_detail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("resourceArn") => String.t(),
    required("tagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_crl_request() :: %{
    optional("crlData") => [binary()],
    optional("name") => String.t()
  }
  """
  @type update_crl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_subjects_response() :: %{
    optional("nextToken") => [String.t()],
    optional("subjects") => list(subject_summary()())
  }
  """
  @type list_subjects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_crls_response() :: %{
    optional("crls") => list(crl_detail()()),
    optional("nextToken") => [String.t()]
  }
  """
  @type list_crls_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  crl_detail() :: %{
    "createdAt" => [non_neg_integer()],
    "crlArn" => [String.t()],
    "crlData" => [binary()],
    "crlId" => String.t(),
    "enabled" => [boolean()],
    "name" => [String.t()],
    "trustAnchorArn" => [String.t()],
    "updatedAt" => [non_neg_integer()]
  }
  """
  @type crl_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_trust_anchor_request() :: %{
    optional("name") => String.t(),
    optional("source") => source()
  }
  """
  @type update_trust_anchor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_profile_request() :: %{
    optional("durationSeconds") => [integer()],
    optional("enabled") => [boolean()],
    optional("managedPolicyArns") => list([String.t()]()),
    optional("requireInstanceProperties") => [boolean()],
    optional("sessionPolicy") => [String.t()],
    optional("tags") => list(tag()()),
    required("name") => String.t(),
    required("roleArns") => list(String.t()())
  }
  """
  @type create_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  trust_anchor_detail() :: %{
    "createdAt" => [non_neg_integer()],
    "enabled" => [boolean()],
    "name" => String.t(),
    "notificationSettings" => list(notification_setting_detail()()),
    "source" => source(),
    "trustAnchorArn" => [String.t()],
    "trustAnchorId" => String.t(),
    "updatedAt" => [non_neg_integer()]
  }
  """
  @type trust_anchor_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_profile_request() :: %{
    optional("durationSeconds") => [integer()],
    optional("managedPolicyArns") => list([String.t()]()),
    optional("name") => String.t(),
    optional("roleArns") => list(String.t()()),
    optional("sessionPolicy") => [String.t()]
  }
  """
  @type update_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag() :: %{
    "key" => String.t(),
    "value" => String.t()
  }
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    optional("tags") => list(tag()())
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  profile_detail() :: %{
    "createdAt" => [non_neg_integer()],
    "createdBy" => [String.t()],
    "durationSeconds" => [integer()],
    "enabled" => [boolean()],
    "managedPolicyArns" => list([String.t()]()),
    "name" => String.t(),
    "profileArn" => String.t(),
    "profileId" => String.t(),
    "requireInstanceProperties" => [boolean()],
    "roleArns" => list(String.t()()),
    "sessionPolicy" => [String.t()],
    "updatedAt" => [non_neg_integer()]
  }
  """
  @type profile_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  scalar_subject_request() :: %{

  }
  """
  @type scalar_subject_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  source() :: %{
    "sourceData" => list(),
    "sourceType" => String.t()
  }
  """
  @type source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  instance_property() :: %{
    "failed" => [boolean()],
    "properties" => map(),
    "seenAt" => [non_neg_integer()]
  }
  """
  @type instance_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_denied_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_profiles_response() :: %{
    optional("nextToken") => [String.t()],
    optional("profiles") => list(profile_detail()())
  }
  """
  @type list_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_notification_settings_response() :: %{
    "trustAnchor" => trust_anchor_detail()
  }
  """
  @type put_notification_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{
    required("resourceArn") => String.t()
  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  reset_notification_settings_response() :: %{
    "trustAnchor" => trust_anchor_detail()
  }
  """
  @type reset_notification_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  trust_anchor_detail_response() :: %{
    required("trustAnchor") => trust_anchor_detail()
  }
  """
  @type trust_anchor_detail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  import_crl_request() :: %{
    optional("enabled") => [boolean()],
    optional("tags") => list(tag()()),
    required("crlData") => [binary()],
    required("name") => String.t(),
    required("trustAnchorArn") => String.t()
  }
  """
  @type import_crl_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_request() :: %{
    optional("nextToken") => [String.t()],
    optional("pageSize") => [integer()]
  }
  """
  @type list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  scalar_trust_anchor_request() :: %{

  }
  """
  @type scalar_trust_anchor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_trust_anchors_response() :: %{
    optional("nextToken") => [String.t()],
    optional("trustAnchors") => list(trust_anchor_detail()())
  }
  """
  @type list_trust_anchors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  notification_setting() :: %{
    "channel" => String.t(),
    "enabled" => [boolean()],
    "event" => String.t(),
    "threshold" => [integer()]
  }
  """
  @type notification_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  reset_notification_settings_request() :: %{
    required("notificationSettingKeys") => list(notification_setting_key()()),
    required("trustAnchorId") => String.t()
  }
  """
  @type reset_notification_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_trust_anchor_request() :: %{
    optional("enabled") => [boolean()],
    optional("notificationSettings") => list(notification_setting()()),
    optional("tags") => list(tag()()),
    required("name") => String.t(),
    required("source") => source()
  }
  """
  @type create_trust_anchor_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  crl_detail_response() :: %{
    required("crl") => crl_detail()
  }
  """
  @type crl_detail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  too_many_tags_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  notification_setting_detail() :: %{
    "channel" => String.t(),
    "configuredBy" => [String.t()],
    "enabled" => [boolean()],
    "event" => String.t(),
    "threshold" => [integer()]
  }
  """
  @type notification_setting_detail() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "rolesanywhere",
      global?: false,
      protocol: "rest-json",
      service_id: "RolesAnywhere",
      signature_version: "v4",
      signing_name: "rolesanywhere",
      target_prefix: nil
    }
  end

  @doc """
  Creates a *profile*, a list of the roles that Roles Anywhere service is trusted
  to assume.

  You use profiles to intersect permissions with IAM managed policies.

  ## Required permissions: 
  `rolesanywhere:CreateProfile`.
  """
  @spec create_profile(map(), create_profile_request(), list()) ::
          {:ok, profile_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, validation_exception()}
  def create_profile(%Client{} = client, input, options \\ []) do
    url_path = "/profiles"
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
      201
    )
  end

  @doc """
  Creates a trust anchor to establish trust between IAM Roles Anywhere and
  your certificate authority (CA).

  You can define a trust anchor as a reference to an Private Certificate Authority
  (Private CA) or by uploading a CA certificate. Your Amazon Web Services
  workloads can authenticate with the trust anchor using certificates issued by
  the CA in exchange for temporary Amazon Web Services credentials.

  ## Required permissions: 
  `rolesanywhere:CreateTrustAnchor`.
  """
  @spec create_trust_anchor(map(), create_trust_anchor_request(), list()) ::
          {:ok, trust_anchor_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, validation_exception()}
  def create_trust_anchor(%Client{} = client, input, options \\ []) do
    url_path = "/trustanchors"
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
      201
    )
  end

  @doc """
  Deletes a certificate revocation list (CRL).

  ## Required permissions: 
  `rolesanywhere:DeleteCrl`.
  """
  @spec delete_crl(map(), String.t(), scalar_crl_request(), list()) ::
          {:ok, crl_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
  def delete_crl(%Client{} = client, crl_id, input, options \\ []) do
    url_path = "/crl/#{AWS.Util.encode_uri(crl_id)}"
    headers = []
    query_params = []

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
      200
    )
  end

  @doc """
  Deletes a profile.

  ## Required permissions: 
  `rolesanywhere:DeleteProfile`.
  """
  @spec delete_profile(map(), String.t(), scalar_profile_request(), list()) ::
          {:ok, profile_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
  def delete_profile(%Client{} = client, profile_id, input, options \\ []) do
    url_path = "/profile/#{AWS.Util.encode_uri(profile_id)}"
    headers = []
    query_params = []

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
      200
    )
  end

  @doc """
  Deletes a trust anchor.

  ## Required permissions: 
  `rolesanywhere:DeleteTrustAnchor`.
  """
  @spec delete_trust_anchor(map(), String.t(), scalar_trust_anchor_request(), list()) ::
          {:ok, trust_anchor_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
  def delete_trust_anchor(%Client{} = client, trust_anchor_id, input, options \\ []) do
    url_path = "/trustanchor/#{AWS.Util.encode_uri(trust_anchor_id)}"
    headers = []
    query_params = []

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
      200
    )
  end

  @doc """
  Disables a certificate revocation list (CRL).

  ## Required permissions: 
  `rolesanywhere:DisableCrl`.
  """
  @spec disable_crl(map(), String.t(), scalar_crl_request(), list()) ::
          {:ok, crl_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
  def disable_crl(%Client{} = client, crl_id, input, options \\ []) do
    url_path = "/crl/#{AWS.Util.encode_uri(crl_id)}/disable"
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
  Disables a profile.

  When disabled, temporary credential requests with this profile fail.

  ## Required permissions: 
  `rolesanywhere:DisableProfile`.
  """
  @spec disable_profile(map(), String.t(), scalar_profile_request(), list()) ::
          {:ok, profile_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
  def disable_profile(%Client{} = client, profile_id, input, options \\ []) do
    url_path = "/profile/#{AWS.Util.encode_uri(profile_id)}/disable"
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
  Disables a trust anchor.

  When disabled, temporary credential requests specifying this trust anchor are
  unauthorized.

  ## Required permissions: 
  `rolesanywhere:DisableTrustAnchor`.
  """
  @spec disable_trust_anchor(map(), String.t(), scalar_trust_anchor_request(), list()) ::
          {:ok, trust_anchor_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
  def disable_trust_anchor(%Client{} = client, trust_anchor_id, input, options \\ []) do
    url_path = "/trustanchor/#{AWS.Util.encode_uri(trust_anchor_id)}/disable"
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
  Enables a certificate revocation list (CRL).

  When enabled, certificates stored in the CRL are unauthorized to receive session
  credentials.

  ## Required permissions: 
  `rolesanywhere:EnableCrl`.
  """
  @spec enable_crl(map(), String.t(), scalar_crl_request(), list()) ::
          {:ok, crl_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
  def enable_crl(%Client{} = client, crl_id, input, options \\ []) do
    url_path = "/crl/#{AWS.Util.encode_uri(crl_id)}/enable"
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
  Enables temporary credential requests for a profile.

  ## Required permissions: 
  `rolesanywhere:EnableProfile`.
  """
  @spec enable_profile(map(), String.t(), scalar_profile_request(), list()) ::
          {:ok, profile_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
  def enable_profile(%Client{} = client, profile_id, input, options \\ []) do
    url_path = "/profile/#{AWS.Util.encode_uri(profile_id)}/enable"
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
  Enables a trust anchor.

  When enabled, certificates in the trust anchor chain are authorized for trust
  validation.

  ## Required permissions: 
  `rolesanywhere:EnableTrustAnchor`.
  """
  @spec enable_trust_anchor(map(), String.t(), scalar_trust_anchor_request(), list()) ::
          {:ok, trust_anchor_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
  def enable_trust_anchor(%Client{} = client, trust_anchor_id, input, options \\ []) do
    url_path = "/trustanchor/#{AWS.Util.encode_uri(trust_anchor_id)}/enable"
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
  Gets a certificate revocation list (CRL).

  ## Required permissions: 
  `rolesanywhere:GetCrl`.
  """
  @spec get_crl(map(), String.t(), list()) ::
          {:ok, crl_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
  def get_crl(%Client{} = client, crl_id, options \\ []) do
    url_path = "/crl/#{AWS.Util.encode_uri(crl_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a profile.

  ## Required permissions: 
  `rolesanywhere:GetProfile`.
  """
  @spec get_profile(map(), String.t(), list()) ::
          {:ok, profile_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
  def get_profile(%Client{} = client, profile_id, options \\ []) do
    url_path = "/profile/#{AWS.Util.encode_uri(profile_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a *subject*, which associates a certificate identity with
  authentication attempts.

  The subject stores auditing information such as the status
  of the last authentication attempt, the certificate data used in the attempt,
  and the
  last time the associated identity attempted authentication.

  ## Required permissions: 
  `rolesanywhere:GetSubject`.
  """
  @spec get_subject(map(), String.t(), list()) ::
          {:ok, subject_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
  def get_subject(%Client{} = client, subject_id, options \\ []) do
    url_path = "/subject/#{AWS.Util.encode_uri(subject_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a trust anchor.

  ## Required permissions: 
  `rolesanywhere:GetTrustAnchor`.
  """
  @spec get_trust_anchor(map(), String.t(), list()) ::
          {:ok, trust_anchor_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def get_trust_anchor(%Client{} = client, trust_anchor_id, options \\ []) do
    url_path = "/trustanchor/#{AWS.Util.encode_uri(trust_anchor_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Imports the certificate revocation list (CRL).

  A CRL is a list of certificates that have
  been revoked by the issuing certificate Authority (CA). IAM Roles Anywhere
  validates against the CRL before issuing credentials.

  ## Required permissions: 
  `rolesanywhere:ImportCrl`.
  """
  @spec import_crl(map(), import_crl_request(), list()) ::
          {:ok, crl_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, validation_exception()}
  def import_crl(%Client{} = client, input, options \\ []) do
    url_path = "/crls"
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
      201
    )
  end

  @doc """
  Lists all certificate revocation lists (CRL) in the authenticated account and
  Amazon Web Services Region.

  ## Required permissions: 
  `rolesanywhere:ListCrls`.
  """
  @spec list_crls(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_crls_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, validation_exception()}
  def list_crls(%Client{} = client, next_token \\ nil, page_size \\ nil, options \\ []) do
    url_path = "/crls"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all profiles in the authenticated account and Amazon Web Services Region.

  ## Required permissions: 
  `rolesanywhere:ListProfiles`.
  """
  @spec list_profiles(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, validation_exception()}
  def list_profiles(%Client{} = client, next_token \\ nil, page_size \\ nil, options \\ []) do
    url_path = "/profiles"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the subjects in the authenticated account and Amazon Web Services Region.

  ## Required permissions: 
  `rolesanywhere:ListSubjects`.
  """
  @spec list_subjects(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_subjects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, validation_exception()}
  def list_subjects(%Client{} = client, next_token \\ nil, page_size \\ nil, options \\ []) do
    url_path = "/subjects"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags attached to the resource.

  ## Required permissions: 
  `rolesanywhere:ListTagsForResource`.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/ListTagsForResource"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the trust anchors in the authenticated account and Amazon Web Services
  Region.

  ## Required permissions: 
  `rolesanywhere:ListTrustAnchors`.
  """
  @spec list_trust_anchors(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_trust_anchors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, validation_exception()}
  def list_trust_anchors(%Client{} = client, next_token \\ nil, page_size \\ nil, options \\ []) do
    url_path = "/trustanchors"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Attaches a list of *notification settings* to a trust anchor.

  A notification setting includes information such as event name, threshold,
  status of
  the notification setting, and the channel to notify.

  ## Required permissions: 
  `rolesanywhere:PutNotificationSettings`.
  """
  @spec put_notification_settings(map(), put_notification_settings_request(), list()) ::
          {:ok, put_notification_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def put_notification_settings(%Client{} = client, input, options \\ []) do
    url_path = "/put-notifications-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Resets the *custom notification setting* to IAM Roles Anywhere default setting.

  ## Required permissions: 
  `rolesanywhere:ResetNotificationSettings`.
  """
  @spec reset_notification_settings(map(), reset_notification_settings_request(), list()) ::
          {:ok, reset_notification_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def reset_notification_settings(%Client{} = client, input, options \\ []) do
    url_path = "/reset-notifications-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Attaches tags to a resource.

  ## Required permissions: 
  `rolesanywhere:TagResource`.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_tags_exception()}
          | {:error, validation_exception()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/TagResource"
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
      201
    )
  end

  @doc """
  Removes tags from the resource.

  ## Required permissions: 
  `rolesanywhere:UntagResource`.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/UntagResource"
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
  Updates the certificate revocation list (CRL).

  A CRL is a list of certificates that have
  been revoked by the issuing certificate authority (CA). IAM Roles Anywhere
  validates against the CRL before issuing credentials.

  ## Required permissions: 
  `rolesanywhere:UpdateCrl`.
  """
  @spec update_crl(map(), String.t(), update_crl_request(), list()) ::
          {:ok, crl_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def update_crl(%Client{} = client, crl_id, input, options \\ []) do
    url_path = "/crl/#{AWS.Util.encode_uri(crl_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a *profile*, a list of the roles that IAM
  Roles Anywhere service is trusted to assume.

  You use profiles to intersect permissions with
  IAM managed policies.

  ## Required permissions: 
  `rolesanywhere:UpdateProfile`.
  """
  @spec update_profile(map(), String.t(), update_profile_request(), list()) ::
          {:ok, profile_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def update_profile(%Client{} = client, profile_id, input, options \\ []) do
    url_path = "/profile/#{AWS.Util.encode_uri(profile_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a trust anchor.

  You establish trust between IAM Roles Anywhere
  and your certificate authority (CA) by configuring a trust anchor. You can
  define a trust
  anchor as a reference to an Private Certificate Authority (Private CA) or by
  uploading a
  CA certificate. Your Amazon Web Services workloads can authenticate with the
  trust anchor
  using certificates issued by the CA in exchange for temporary Amazon Web
  Services
  credentials.

  ## Required permissions: 
  `rolesanywhere:UpdateTrustAnchor`.
  """
  @spec update_trust_anchor(map(), String.t(), update_trust_anchor_request(), list()) ::
          {:ok, trust_anchor_detail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def update_trust_anchor(%Client{} = client, trust_anchor_id, input, options \\ []) do
    url_path = "/trustanchor/#{AWS.Util.encode_uri(trust_anchor_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
