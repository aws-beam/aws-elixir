# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RolesAnywhere do
  @moduledoc """
  Identity and Access Management Roles Anywhere provides a secure way for your
  workloads such as servers, containers, and applications that run outside of
  Amazon Web Services to obtain temporary Amazon Web Services credentials.

  Your workloads can use the same IAM policies and roles you have for native
  Amazon Web Services applications to access Amazon Web Services resources. Using
  IAM Roles Anywhere eliminates the need to manage long-term credentials for
  workloads running outside of Amazon Web Services.

  To use IAM Roles Anywhere, your workloads must use X.509 certificates issued by
  their certificate authority (CA). You register the CA with IAM Roles Anywhere as
  a trust anchor to establish trust between your public key infrastructure (PKI)
  and IAM Roles Anywhere. If you don't manage your own PKI system, you can use
  Private Certificate Authority to create a CA and then use that to establish
  trust with IAM Roles Anywhere.

  This guide describes the IAM Roles Anywhere operations that you can call
  programmatically. For more information about IAM Roles Anywhere, see the [IAM Roles Anywhere User
  Guide](https://docs.aws.amazon.com/rolesanywhere/latest/userguide/introduction.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
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

  **Required permissions: ** `rolesanywhere:CreateProfile`.
  """
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
  Creates a trust anchor to establish trust between IAM Roles Anywhere and your
  certificate authority (CA).

  You can define a trust anchor as a reference to an Private Certificate Authority
  (Private CA) or by uploading a CA certificate. Your Amazon Web Services
  workloads can authenticate with the trust anchor using certificates issued by
  the CA in exchange for temporary Amazon Web Services credentials.

  **Required permissions: ** `rolesanywhere:CreateTrustAnchor`.
  """
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

  **Required permissions: ** `rolesanywhere:DeleteCrl`.
  """
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

  **Required permissions: ** `rolesanywhere:DeleteProfile`.
  """
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

  **Required permissions: ** `rolesanywhere:DeleteTrustAnchor`.
  """
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

  **Required permissions: ** `rolesanywhere:DisableCrl`.
  """
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

  **Required permissions: ** `rolesanywhere:DisableProfile`.
  """
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

  **Required permissions: ** `rolesanywhere:DisableTrustAnchor`.
  """
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

  **Required permissions: ** `rolesanywhere:EnableCrl`.
  """
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

  **Required permissions: ** `rolesanywhere:EnableProfile`.
  """
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

  **Required permissions: ** `rolesanywhere:EnableTrustAnchor`.
  """
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

  **Required permissions: ** `rolesanywhere:GetCrl`.
  """
  def get_crl(%Client{} = client, crl_id, options \\ []) do
    url_path = "/crl/#{AWS.Util.encode_uri(crl_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a profile.

  **Required permissions: ** `rolesanywhere:GetProfile`.
  """
  def get_profile(%Client{} = client, profile_id, options \\ []) do
    url_path = "/profile/#{AWS.Util.encode_uri(profile_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a *subject*, which associates a certificate identity with authentication
  attempts.

  The subject stores auditing information such as the status of the last
  authentication attempt, the certificate data used in the attempt, and the last
  time the associated identity attempted authentication.

  **Required permissions: ** `rolesanywhere:GetSubject`.
  """
  def get_subject(%Client{} = client, subject_id, options \\ []) do
    url_path = "/subject/#{AWS.Util.encode_uri(subject_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a trust anchor.

  **Required permissions: ** `rolesanywhere:GetTrustAnchor`.
  """
  def get_trust_anchor(%Client{} = client, trust_anchor_id, options \\ []) do
    url_path = "/trustanchor/#{AWS.Util.encode_uri(trust_anchor_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Imports the certificate revocation list (CRL).

  A CRL is a list of certificates that have been revoked by the issuing
  certificate Authority (CA). IAM Roles Anywhere validates against the CRL before
  issuing credentials.

  **Required permissions: ** `rolesanywhere:ImportCrl`.
  """
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

  **Required permissions: ** `rolesanywhere:ListCrls`.
  """
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

  **Required permissions: ** `rolesanywhere:ListProfiles`.
  """
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

  **Required permissions: ** `rolesanywhere:ListSubjects`.
  """
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

  **Required permissions: ** `rolesanywhere:ListTagsForResource`.
  """
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

  **Required permissions: ** `rolesanywhere:ListTrustAnchors`.
  """
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
  status of the notification setting, and the channel to notify.

  **Required permissions: ** `rolesanywhere:PutNotificationSettings`.
  """
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

  **Required permissions: ** `rolesanywhere:ResetNotificationSettings`.
  """
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

  **Required permissions: ** `rolesanywhere:TagResource`.
  """
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

  **Required permissions: ** `rolesanywhere:UntagResource`.
  """
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

  A CRL is a list of certificates that have been revoked by the issuing
  certificate authority (CA). IAM Roles Anywhere validates against the CRL before
  issuing credentials.

  **Required permissions: ** `rolesanywhere:UpdateCrl`.
  """
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
  Updates a *profile*, a list of the roles that IAM Roles Anywhere service is
  trusted to assume.

  You use profiles to intersect permissions with IAM managed policies.

  **Required permissions: ** `rolesanywhere:UpdateProfile`.
  """
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

  You establish trust between IAM Roles Anywhere and your certificate authority
  (CA) by configuring a trust anchor. You can define a trust anchor as a reference
  to an Private Certificate Authority (Private CA) or by uploading a CA
  certificate. Your Amazon Web Services workloads can authenticate with the trust
  anchor using certificates issued by the CA in exchange for temporary Amazon Web
  Services credentials.

  **Required permissions: ** `rolesanywhere:UpdateTrustAnchor`.
  """
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
