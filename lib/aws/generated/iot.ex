# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoT do
  @moduledoc """
  AWS IoT

  AWS IoT provides secure, bi-directional communication between Internet-connected
  devices (such as sensors, actuators, embedded devices, or smart appliances) and
  the AWS cloud.

  You can discover your custom IoT-Data endpoint to communicate with, configure
  rules for data processing and integration with other services, organize
  resources associated with each device (Registry), configure logging, and create
  and manage policies and credentials to authenticate devices.

  The service endpoints that expose this API are listed in [AWS IoT Core Endpoints and Quotas](https://docs.aws.amazon.com/general/latest/gr/iot-core.html). You
  must use the endpoint for the region that has the resources you want to access.

  The service name used by [AWS Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html) to
  sign the request is: *execute-api*.

  For more information about how AWS IoT works, see the [Developer Guide](https://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html).

  For information about how to use the credentials provider for AWS IoT, see
  [Authorizing Direct Calls to AWS Services](https://docs.aws.amazon.com/iot/latest/developerguide/authorizing-direct-aws.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2015-05-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "iot",
      global?: false,
      protocol: "rest-json",
      service_id: "IoT",
      signature_version: "v4",
      signing_name: "execute-api",
      target_prefix: nil
    }
  end

  @doc """
  Accepts a pending certificate transfer.

  The default state of the certificate is INACTIVE.

  To check for pending certificate transfers, call `ListCertificates` to enumerate
  your certificates.
  """
  def accept_certificate_transfer(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/accept-certificate-transfer/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []

    {query_params, input} =
      [
        {"setAsActive", "setAsActive"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Adds a thing to a billing group.
  """
  def add_thing_to_billing_group(%Client{} = client, input, options \\ []) do
    url_path = "/billing-groups/addThingToBillingGroup"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Adds a thing to a thing group.
  """
  def add_thing_to_thing_group(%Client{} = client, input, options \\ []) do
    url_path = "/thing-groups/addThingToThingGroup"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Associates a group with a continuous job.

  The following criteria must be met:

    * The job must have been created with the `targetSelection` field
  set to "CONTINUOUS".

    * The job status must currently be "IN_PROGRESS".

    * The total number of targets associated with a job must not exceed
  100.
  """
  def associate_targets_with_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}/targets"
    headers = []

    {query_params, input} =
      [
        {"namespaceId", "namespaceId"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Attaches a policy to the specified target.
  """
  def attach_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/target-policies/#{AWS.Util.encode_uri(policy_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Attaches the specified policy to the specified principal (certificate or other
  credential).

  **Note:** This API is deprecated. Please use `AttachPolicy` instead.
  """
  def attach_principal_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/principal-policies/#{AWS.Util.encode_uri(policy_name)}"

    {headers, input} =
      [
        {"principal", "x-amzn-iot-principal"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Associates a Device Defender security profile with a thing group or this
  account.

  Each thing group or account can have up to five security profiles associated
  with it.
  """
  def attach_security_profile(%Client{} = client, security_profile_name, input, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}/targets"
    headers = []

    {query_params, input} =
      [
        {"securityProfileTargetArn", "securityProfileTargetArn"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Attaches the specified principal to the specified thing.

  A principal can be X.509 certificates, IAM users, groups, and roles, Amazon
  Cognito identities or federated identities.
  """
  def attach_thing_principal(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/principals"

    {headers, input} =
      [
        {"principal", "x-amzn-principal"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Cancels a mitigation action task that is in progress.

  If the task is not in progress, an InvalidRequestException occurs.
  """
  def cancel_audit_mitigation_actions_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/audit/mitigationactions/tasks/#{AWS.Util.encode_uri(task_id)}/cancel"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Cancels an audit that is in progress.

  The audit can be either scheduled or on demand. If the audit isn't in progress,
  an "InvalidRequestException" occurs.
  """
  def cancel_audit_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/audit/tasks/#{AWS.Util.encode_uri(task_id)}/cancel"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Cancels a pending transfer for the specified certificate.

  **Note** Only the transfer source account can use this operation to cancel a
  transfer. (Transfer destinations can use `RejectCertificateTransfer` instead.)
  After transfer, AWS IoT returns the certificate to the source account in the
  INACTIVE state. After the destination account has accepted the transfer, the
  transfer cannot be cancelled.

  After a certificate transfer is cancelled, the status of the certificate changes
  from PENDING_TRANSFER to INACTIVE.
  """
  def cancel_certificate_transfer(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/cancel-certificate-transfer/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Cancels a Device Defender ML Detect mitigation action.
  """
  def cancel_detect_mitigation_actions_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/detect/mitigationactions/tasks/#{AWS.Util.encode_uri(task_id)}/cancel"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Cancels a job.
  """
  def cancel_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}/cancel"
    headers = []

    {query_params, input} =
      [
        {"force", "force"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Cancels the execution of a job for a given thing.
  """
  def cancel_job_execution(%Client{} = client, job_id, thing_name, input, options \\ []) do
    url_path =
      "/things/#{AWS.Util.encode_uri(thing_name)}/jobs/#{AWS.Util.encode_uri(job_id)}/cancel"

    headers = []

    {query_params, input} =
      [
        {"force", "force"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Clears the default authorizer.
  """
  def clear_default_authorizer(%Client{} = client, input, options \\ []) do
    url_path = "/default-authorizer"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Confirms a topic rule destination.

  When you create a rule requiring a destination, AWS IoT sends a confirmation
  message to the endpoint or base address you specify. The message includes a
  token which you pass back when calling `ConfirmTopicRuleDestination` to confirm
  that you own or have access to the endpoint.
  """
  def confirm_topic_rule_destination(%Client{} = client, confirmation_token, options \\ []) do
    url_path = "/confirmdestination/#{AWS.Util.encode_multi_segment_uri(confirmation_token)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Creates a Device Defender audit suppression.
  """
  def create_audit_suppression(%Client{} = client, input, options \\ []) do
    url_path = "/audit/suppressions/create"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates an authorizer.
  """
  def create_authorizer(%Client{} = client, authorizer_name, input, options \\ []) do
    url_path = "/authorizer/#{AWS.Util.encode_uri(authorizer_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a billing group.
  """
  def create_billing_group(%Client{} = client, billing_group_name, input, options \\ []) do
    url_path = "/billing-groups/#{AWS.Util.encode_uri(billing_group_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates an X.509 certificate using the specified certificate signing request.

  **Note:** The CSR must include a public key that is either an RSA key with a
  length of at least 2048 bits or an ECC key from NIST P-256 or NIST P-384 curves.

  **Note:** Reusing the same certificate signing request (CSR) results in a
  distinct certificate.

  You can create multiple certificates in a batch by creating a directory, copying
  multiple .csr files into that directory, and then specifying that directory on
  the command line. The following commands show how to create a batch of
  certificates given a batch of CSRs.

  Assuming a set of CSRs are located inside of the directory my-csr-directory:

  On Linux and OS X, the command is:

  $ ls my-csr-directory/ | xargs -I {} aws iot create-certificate-from-csr
  --certificate-signing-request file://my-csr-directory/{}

  This command lists all of the CSRs in my-csr-directory and pipes each CSR file
  name to the aws iot create-certificate-from-csr AWS CLI command to create a
  certificate for the corresponding CSR.

  The aws iot create-certificate-from-csr part of the command can also be run in
  parallel to speed up the certificate creation process:

  $ ls my-csr-directory/ | xargs -P 10 -I {} aws iot create-certificate-from-csr
  --certificate-signing-request file://my-csr-directory/{}

  On Windows PowerShell, the command to create certificates for all CSRs in
  my-csr-directory is:

  > ls -Name my-csr-directory | %{aws iot create-certificate-from-csr
  --certificate-signing-request file://my-csr-directory/$_}

  On a Windows command prompt, the command to create certificates for all CSRs in
  my-csr-directory is:

  > forfiles /p my-csr-directory /c "cmd /c aws iot create-certificate-from-csr
  --certificate-signing-request file://@path"
  """
  def create_certificate_from_csr(%Client{} = client, input, options \\ []) do
    url_path = "/certificates"
    headers = []

    {query_params, input} =
      [
        {"setAsActive", "setAsActive"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Use this API to define a Custom Metric published by your devices to Device
  Defender.
  """
  def create_custom_metric(%Client{} = client, metric_name, input, options \\ []) do
    url_path = "/custom-metric/#{AWS.Util.encode_uri(metric_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Create a dimension that you can use to limit the scope of a metric used in a
  security profile for AWS IoT Device Defender.

  For example, using a `TOPIC_FILTER` dimension, you can narrow down the scope of
  the metric only to MQTT topics whose name match the pattern specified in the
  dimension.
  """
  def create_dimension(%Client{} = client, name, input, options \\ []) do
    url_path = "/dimensions/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a domain configuration.
  """
  def create_domain_configuration(
        %Client{} = client,
        domain_configuration_name,
        input,
        options \\ []
      ) do
    url_path = "/domainConfigurations/#{AWS.Util.encode_uri(domain_configuration_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a dynamic thing group.
  """
  def create_dynamic_thing_group(%Client{} = client, thing_group_name, input, options \\ []) do
    url_path = "/dynamic-thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a job.
  """
  def create_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a job template.
  """
  def create_job_template(%Client{} = client, job_template_id, input, options \\ []) do
    url_path = "/job-templates/#{AWS.Util.encode_uri(job_template_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a 2048-bit RSA key pair and issues an X.509 certificate using the issued
  public key.

  You can also call `CreateKeysAndCertificate` over MQTT from a device, for more
  information, see [Provisioning MQTT API](https://docs.aws.amazon.com/iot/latest/developerguide/provision-wo-cert.html#provision-mqtt-api).

  **Note** This is the only time AWS IoT issues the private key for this
  certificate, so it is important to keep it in a secure location.
  """
  def create_keys_and_certificate(%Client{} = client, input, options \\ []) do
    url_path = "/keys-and-certificate"
    headers = []

    {query_params, input} =
      [
        {"setAsActive", "setAsActive"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Defines an action that can be applied to audit findings by using
  StartAuditMitigationActionsTask.

  Only certain types of mitigation actions can be applied to specific check names.
  For more information, see [Mitigation actions](https://docs.aws.amazon.com/iot/latest/developerguide/device-defender-mitigation-actions.html).
  Each mitigation action can apply only one type of change.
  """
  def create_mitigation_action(%Client{} = client, action_name, input, options \\ []) do
    url_path = "/mitigationactions/actions/#{AWS.Util.encode_uri(action_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates an AWS IoT OTAUpdate on a target group of things or groups.
  """
  def create_ota_update(%Client{} = client, ota_update_id, input, options \\ []) do
    url_path = "/otaUpdates/#{AWS.Util.encode_uri(ota_update_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates an AWS IoT policy.

  The created policy is the default version for the policy. This operation creates
  a policy version with a version identifier of **1** and sets **1** as the
  policy's default version.
  """
  def create_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a new version of the specified AWS IoT policy.

  To update a policy, create a new policy version. A managed policy can have up to
  five versions. If the policy has five versions, you must use
  `DeletePolicyVersion` to delete an existing version before you create a new one.

  Optionally, you can set the new version as the policy's default version. The
  default version is the operative version (that is, the version that is in effect
  for the certificates to which the policy is attached).
  """
  def create_policy_version(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_name)}/version"
    headers = []

    {query_params, input} =
      [
        {"setAsDefault", "setAsDefault"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a provisioning claim.
  """
  def create_provisioning_claim(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}/provisioning-claim"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a fleet provisioning template.
  """
  def create_provisioning_template(%Client{} = client, input, options \\ []) do
    url_path = "/provisioning-templates"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a new version of a fleet provisioning template.
  """
  def create_provisioning_template_version(
        %Client{} = client,
        template_name,
        input,
        options \\ []
      ) do
    url_path = "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}/versions"
    headers = []

    {query_params, input} =
      [
        {"setAsDefault", "setAsDefault"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a role alias.
  """
  def create_role_alias(%Client{} = client, role_alias, input, options \\ []) do
    url_path = "/role-aliases/#{AWS.Util.encode_uri(role_alias)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a scheduled audit that is run at a specified time interval.
  """
  def create_scheduled_audit(%Client{} = client, scheduled_audit_name, input, options \\ []) do
    url_path = "/audit/scheduledaudits/#{AWS.Util.encode_uri(scheduled_audit_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a Device Defender security profile.
  """
  def create_security_profile(%Client{} = client, security_profile_name, input, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a stream for delivering one or more large files in chunks over MQTT.

  A stream transports data bytes in chunks or blocks packaged as MQTT messages
  from a source like S3. You can have one or more files associated with a stream.
  """
  def create_stream(%Client{} = client, stream_id, input, options \\ []) do
    url_path = "/streams/#{AWS.Util.encode_uri(stream_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a thing record in the registry.

  If this call is made multiple times using the same thing name and configuration,
  the call will succeed. If this call is made with the same thing name but
  different configuration a `ResourceAlreadyExistsException` is thrown.

  This is a control plane operation. See
  [Authorization](https://docs.aws.amazon.com/iot/latest/developerguide/iot-authorization.html)
  for information about authorizing control plane actions.
  """
  def create_thing(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Create a thing group.

  This is a control plane operation. See
  [Authorization](https://docs.aws.amazon.com/iot/latest/developerguide/iot-authorization.html)
  for information about authorizing control plane actions.
  """
  def create_thing_group(%Client{} = client, thing_group_name, input, options \\ []) do
    url_path = "/thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a new thing type.
  """
  def create_thing_type(%Client{} = client, thing_type_name, input, options \\ []) do
    url_path = "/thing-types/#{AWS.Util.encode_uri(thing_type_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a rule.

  Creating rules is an administrator-level action. Any user who has permission to
  create rules will be able to access data processed by the rule.
  """
  def create_topic_rule(%Client{} = client, rule_name, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_name)}"

    {headers, input} =
      [
        {"tags", "x-amz-tagging"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a topic rule destination.

  The destination must be confirmed prior to use.
  """
  def create_topic_rule_destination(%Client{} = client, input, options \\ []) do
    url_path = "/destinations"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Restores the default settings for Device Defender audits for this account.

  Any configuration data you entered is deleted and all audit checks are reset to
  disabled.
  """
  def delete_account_audit_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/audit/configuration"
    headers = []

    {query_params, input} =
      [
        {"deleteScheduledAudits", "deleteScheduledAudits"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a Device Defender audit suppression.
  """
  def delete_audit_suppression(%Client{} = client, input, options \\ []) do
    url_path = "/audit/suppressions/delete"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes an authorizer.
  """
  def delete_authorizer(%Client{} = client, authorizer_name, input, options \\ []) do
    url_path = "/authorizer/#{AWS.Util.encode_uri(authorizer_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the billing group.
  """
  def delete_billing_group(%Client{} = client, billing_group_name, input, options \\ []) do
    url_path = "/billing-groups/#{AWS.Util.encode_uri(billing_group_name)}"
    headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a registered CA certificate.
  """
  def delete_ca_certificate(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/cacertificate/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the specified certificate.

  A certificate cannot be deleted if it has a policy or IoT thing attached to it
  or if its status is set to ACTIVE. To delete a certificate, first use the
  `DetachPrincipalPolicy` API to detach all policies. Next, use the
  `UpdateCertificate` API to set the certificate to the INACTIVE status.
  """
  def delete_certificate(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/certificates/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []

    {query_params, input} =
      [
        {"forceDelete", "forceDelete"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Before you can delete a custom metric, you must first remove the custom metric
  from all security profiles it's a part of.

  The security profile associated with the custom metric can be found using the
  [ListSecurityProfiles](https://docs.aws.amazon.com/iot/latest/apireference/API_ListSecurityProfiles.html)
  API with `metricName` set to your custom metric name.

  Deletes a Device Defender detect custom metric.
  """
  def delete_custom_metric(%Client{} = client, metric_name, input, options \\ []) do
    url_path = "/custom-metric/#{AWS.Util.encode_uri(metric_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes the specified dimension from your AWS account.
  """
  def delete_dimension(%Client{} = client, name, input, options \\ []) do
    url_path = "/dimensions/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the specified domain configuration.
  """
  def delete_domain_configuration(
        %Client{} = client,
        domain_configuration_name,
        input,
        options \\ []
      ) do
    url_path = "/domainConfigurations/#{AWS.Util.encode_uri(domain_configuration_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a dynamic thing group.
  """
  def delete_dynamic_thing_group(%Client{} = client, thing_group_name, input, options \\ []) do
    url_path = "/dynamic-thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
    headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a job and its related job executions.

  Deleting a job may take time, depending on the number of job executions created
  for the job and various other factors. While the job is being deleted, the
  status of the job will be shown as "DELETION_IN_PROGRESS". Attempting to delete
  or cancel a job whose status is already "DELETION_IN_PROGRESS" will result in an
  error.

  Only 10 jobs may have status "DELETION_IN_PROGRESS" at the same time, or a
  LimitExceededException will occur.
  """
  def delete_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []

    {query_params, input} =
      [
        {"force", "force"},
        {"namespaceId", "namespaceId"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a job execution.
  """
  def delete_job_execution(
        %Client{} = client,
        execution_number,
        job_id,
        thing_name,
        input,
        options \\ []
      ) do
    url_path =
      "/things/#{AWS.Util.encode_uri(thing_name)}/jobs/#{AWS.Util.encode_uri(job_id)}/executionNumber/#{AWS.Util.encode_uri(execution_number)}"

    headers = []

    {query_params, input} =
      [
        {"force", "force"},
        {"namespaceId", "namespaceId"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the specified job template.
  """
  def delete_job_template(%Client{} = client, job_template_id, input, options \\ []) do
    url_path = "/job-templates/#{AWS.Util.encode_uri(job_template_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a defined mitigation action from your AWS account.
  """
  def delete_mitigation_action(%Client{} = client, action_name, input, options \\ []) do
    url_path = "/mitigationactions/actions/#{AWS.Util.encode_uri(action_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Delete an OTA update.
  """
  def delete_ota_update(%Client{} = client, ota_update_id, input, options \\ []) do
    url_path = "/otaUpdates/#{AWS.Util.encode_uri(ota_update_id)}"
    headers = []

    {query_params, input} =
      [
        {"deleteStream", "deleteStream"},
        {"forceDeleteAWSJob", "forceDeleteAWSJob"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the specified policy.

  A policy cannot be deleted if it has non-default versions or it is attached to
  any certificate.

  To delete a policy, use the DeletePolicyVersion API to delete all non-default
  versions of the policy; use the DetachPrincipalPolicy API to detach the policy
  from any certificate; and then use the DeletePolicy API to delete the policy.

  When a policy is deleted using DeletePolicy, its default version is deleted with
  it.
  """
  def delete_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the specified version of the specified policy.

  You cannot delete the default version of a policy using this API. To delete the
  default version of a policy, use `DeletePolicy`. To find out which version of a
  policy is marked as the default version, use ListPolicyVersions.
  """
  def delete_policy_version(
        %Client{} = client,
        policy_name,
        policy_version_id,
        input,
        options \\ []
      ) do
    url_path =
      "/policies/#{AWS.Util.encode_uri(policy_name)}/version/#{AWS.Util.encode_uri(policy_version_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a fleet provisioning template.
  """
  def delete_provisioning_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a fleet provisioning template version.
  """
  def delete_provisioning_template_version(
        %Client{} = client,
        template_name,
        version_id,
        input,
        options \\ []
      ) do
    url_path =
      "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}/versions/#{AWS.Util.encode_uri(version_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a CA certificate registration code.
  """
  def delete_registration_code(%Client{} = client, input, options \\ []) do
    url_path = "/registrationcode"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a role alias
  """
  def delete_role_alias(%Client{} = client, role_alias, input, options \\ []) do
    url_path = "/role-aliases/#{AWS.Util.encode_uri(role_alias)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a scheduled audit.
  """
  def delete_scheduled_audit(%Client{} = client, scheduled_audit_name, input, options \\ []) do
    url_path = "/audit/scheduledaudits/#{AWS.Util.encode_uri(scheduled_audit_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a Device Defender security profile.
  """
  def delete_security_profile(%Client{} = client, security_profile_name, input, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}"
    headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a stream.
  """
  def delete_stream(%Client{} = client, stream_id, input, options \\ []) do
    url_path = "/streams/#{AWS.Util.encode_uri(stream_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the specified thing.

  Returns successfully with no error if the deletion is successful or you specify
  a thing that doesn't exist.
  """
  def delete_thing(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}"
    headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a thing group.
  """
  def delete_thing_group(%Client{} = client, thing_group_name, input, options \\ []) do
    url_path = "/thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
    headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the specified thing type.

  You cannot delete a thing type if it has things associated with it. To delete a
  thing type, first mark it as deprecated by calling `DeprecateThingType`, then
  remove any associated things by calling `UpdateThing` to change the thing type
  on any associated thing, and finally use `DeleteThingType` to delete the thing
  type.
  """
  def delete_thing_type(%Client{} = client, thing_type_name, input, options \\ []) do
    url_path = "/thing-types/#{AWS.Util.encode_uri(thing_type_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the rule.
  """
  def delete_topic_rule(%Client{} = client, rule_name, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a topic rule destination.
  """
  def delete_topic_rule_destination(%Client{} = client, arn, input, options \\ []) do
    url_path = "/destinations/#{AWS.Util.encode_multi_segment_uri(arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a logging level.
  """
  def delete_v2_logging_level(%Client{} = client, input, options \\ []) do
    url_path = "/v2LoggingLevel"
    headers = []

    {query_params, input} =
      [
        {"targetName", "targetName"},
        {"targetType", "targetType"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deprecates a thing type.

  You can not associate new things with deprecated thing type.
  """
  def deprecate_thing_type(%Client{} = client, thing_type_name, input, options \\ []) do
    url_path = "/thing-types/#{AWS.Util.encode_uri(thing_type_name)}/deprecate"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Gets information about the Device Defender audit settings for this account.

  Settings include how audit notifications are sent and which audit checks are
  enabled or disabled.
  """
  def describe_account_audit_configuration(%Client{} = client, options \\ []) do
    url_path = "/audit/configuration"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets information about a single audit finding.

  Properties include the reason for noncompliance, the severity of the issue, and
  the start time when the audit that returned the finding.
  """
  def describe_audit_finding(%Client{} = client, finding_id, options \\ []) do
    url_path = "/audit/findings/#{AWS.Util.encode_uri(finding_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets information about an audit mitigation task that is used to apply mitigation
  actions to a set of audit findings.

  Properties include the actions being applied, the audit checks to which they're
  being applied, the task status, and aggregated task statistics.
  """
  def describe_audit_mitigation_actions_task(%Client{} = client, task_id, options \\ []) do
    url_path = "/audit/mitigationactions/tasks/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets information about a Device Defender audit suppression.
  """
  def describe_audit_suppression(%Client{} = client, input, options \\ []) do
    url_path = "/audit/suppressions/describe"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Gets information about a Device Defender audit.
  """
  def describe_audit_task(%Client{} = client, task_id, options \\ []) do
    url_path = "/audit/tasks/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Describes an authorizer.
  """
  def describe_authorizer(%Client{} = client, authorizer_name, options \\ []) do
    url_path = "/authorizer/#{AWS.Util.encode_uri(authorizer_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns information about a billing group.
  """
  def describe_billing_group(%Client{} = client, billing_group_name, options \\ []) do
    url_path = "/billing-groups/#{AWS.Util.encode_uri(billing_group_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Describes a registered CA certificate.
  """
  def describe_ca_certificate(%Client{} = client, certificate_id, options \\ []) do
    url_path = "/cacertificate/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets information about the specified certificate.
  """
  def describe_certificate(%Client{} = client, certificate_id, options \\ []) do
    url_path = "/certificates/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets information about a Device Defender detect custom metric.
  """
  def describe_custom_metric(%Client{} = client, metric_name, options \\ []) do
    url_path = "/custom-metric/#{AWS.Util.encode_uri(metric_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Describes the default authorizer.
  """
  def describe_default_authorizer(%Client{} = client, options \\ []) do
    url_path = "/default-authorizer"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets information about a Device Defender ML Detect mitigation action.
  """
  def describe_detect_mitigation_actions_task(%Client{} = client, task_id, options \\ []) do
    url_path = "/detect/mitigationactions/tasks/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Provides details about a dimension that is defined in your AWS account.
  """
  def describe_dimension(%Client{} = client, name, options \\ []) do
    url_path = "/dimensions/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets summary information about a domain configuration.
  """
  def describe_domain_configuration(%Client{} = client, domain_configuration_name, options \\ []) do
    url_path = "/domainConfigurations/#{AWS.Util.encode_uri(domain_configuration_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns a unique endpoint specific to the AWS account making the call.
  """
  def describe_endpoint(%Client{} = client, endpoint_type \\ nil, options \\ []) do
    url_path = "/endpoint"
    headers = []
    query_params = []

    query_params =
      if !is_nil(endpoint_type) do
        [{"endpointType", endpoint_type} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Describes event configurations.
  """
  def describe_event_configurations(%Client{} = client, options \\ []) do
    url_path = "/event-configurations"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Describes a search index.
  """
  def describe_index(%Client{} = client, index_name, options \\ []) do
    url_path = "/indices/#{AWS.Util.encode_uri(index_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Describes a job.
  """
  def describe_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Describes a job execution.
  """
  def describe_job_execution(
        %Client{} = client,
        job_id,
        thing_name,
        execution_number \\ nil,
        options \\ []
      ) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(execution_number) do
        [{"executionNumber", execution_number} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns information about a job template.
  """
  def describe_job_template(%Client{} = client, job_template_id, options \\ []) do
    url_path = "/job-templates/#{AWS.Util.encode_uri(job_template_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets information about a mitigation action.
  """
  def describe_mitigation_action(%Client{} = client, action_name, options \\ []) do
    url_path = "/mitigationactions/actions/#{AWS.Util.encode_uri(action_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns information about a fleet provisioning template.
  """
  def describe_provisioning_template(%Client{} = client, template_name, options \\ []) do
    url_path = "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns information about a fleet provisioning template version.
  """
  def describe_provisioning_template_version(
        %Client{} = client,
        template_name,
        version_id,
        options \\ []
      ) do
    url_path =
      "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}/versions/#{AWS.Util.encode_uri(version_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Describes a role alias.
  """
  def describe_role_alias(%Client{} = client, role_alias, options \\ []) do
    url_path = "/role-aliases/#{AWS.Util.encode_uri(role_alias)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets information about a scheduled audit.
  """
  def describe_scheduled_audit(%Client{} = client, scheduled_audit_name, options \\ []) do
    url_path = "/audit/scheduledaudits/#{AWS.Util.encode_uri(scheduled_audit_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets information about a Device Defender security profile.
  """
  def describe_security_profile(%Client{} = client, security_profile_name, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets information about a stream.
  """
  def describe_stream(%Client{} = client, stream_id, options \\ []) do
    url_path = "/streams/#{AWS.Util.encode_uri(stream_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets information about the specified thing.
  """
  def describe_thing(%Client{} = client, thing_name, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Describe a thing group.
  """
  def describe_thing_group(%Client{} = client, thing_group_name, options \\ []) do
    url_path = "/thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Describes a bulk thing provisioning task.
  """
  def describe_thing_registration_task(%Client{} = client, task_id, options \\ []) do
    url_path = "/thing-registration-tasks/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets information about the specified thing type.
  """
  def describe_thing_type(%Client{} = client, thing_type_name, options \\ []) do
    url_path = "/thing-types/#{AWS.Util.encode_uri(thing_type_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Detaches a policy from the specified target.
  """
  def detach_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/target-policies/#{AWS.Util.encode_uri(policy_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes the specified policy from the specified certificate.

  **Note:** This API is deprecated. Please use `DetachPolicy` instead.
  """
  def detach_principal_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/principal-policies/#{AWS.Util.encode_uri(policy_name)}"

    {headers, input} =
      [
        {"principal", "x-amzn-iot-principal"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Disassociates a Device Defender security profile from a thing group or from this
  account.
  """
  def detach_security_profile(%Client{} = client, security_profile_name, input, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}/targets"
    headers = []

    {query_params, input} =
      [
        {"securityProfileTargetArn", "securityProfileTargetArn"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Detaches the specified principal from the specified thing.

  A principal can be X.509 certificates, IAM users, groups, and roles, Amazon
  Cognito identities or federated identities.

  This call is asynchronous. It might take several seconds for the detachment to
  propagate.
  """
  def detach_thing_principal(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/principals"

    {headers, input} =
      [
        {"principal", "x-amzn-principal"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Disables the rule.
  """
  def disable_topic_rule(%Client{} = client, rule_name, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_name)}/disable"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Enables the rule.
  """
  def enable_topic_rule(%Client{} = client, rule_name, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_name)}/enable"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns a Device Defender's ML Detect Security Profile training model's status.
  """
  def get_behavior_model_training_summaries(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        security_profile_name \\ nil,
        options \\ []
      ) do
    url_path = "/behavior-model-training/summaries"
    headers = []
    query_params = []

    query_params =
      if !is_nil(security_profile_name) do
        [{"securityProfileName", security_profile_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns the approximate count of unique values that match the query.
  """
  def get_cardinality(%Client{} = client, input, options \\ []) do
    url_path = "/indices/cardinality"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Gets a list of the policies that have an effect on the authorization behavior of
  the specified device when it connects to the AWS IoT device gateway.
  """
  def get_effective_policies(%Client{} = client, input, options \\ []) do
    url_path = "/effective-policies"
    headers = []

    {query_params, input} =
      [
        {"thingName", "thingName"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Gets the indexing configuration.
  """
  def get_indexing_configuration(%Client{} = client, options \\ []) do
    url_path = "/indexing/config"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a job document.
  """
  def get_job_document(%Client{} = client, job_id, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}/job-document"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets the logging options.

  NOTE: use of this command is not recommended. Use `GetV2LoggingOptions` instead.
  """
  def get_logging_options(%Client{} = client, options \\ []) do
    url_path = "/loggingOptions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets an OTA update.
  """
  def get_ota_update(%Client{} = client, ota_update_id, options \\ []) do
    url_path = "/otaUpdates/#{AWS.Util.encode_uri(ota_update_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Groups the aggregated values that match the query into percentile groupings.

  The default percentile groupings are: 1,5,25,50,75,95,99, although you can
  specify your own when you call `GetPercentiles`. This function returns a value
  for each percentile group specified (or the default percentile groupings). The
  percentile group "1" contains the aggregated field value that occurs in
  approximately one percent of the values that match the query. The percentile
  group "5" contains the aggregated field value that occurs in approximately five
  percent of the values that match the query, and so on. The result is an
  approximation, the more values that match the query, the more accurate the
  percentile values.
  """
  def get_percentiles(%Client{} = client, input, options \\ []) do
    url_path = "/indices/percentiles"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Gets information about the specified policy with the policy document of the
  default version.
  """
  def get_policy(%Client{} = client, policy_name, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets information about the specified policy version.
  """
  def get_policy_version(%Client{} = client, policy_name, policy_version_id, options \\ []) do
    url_path =
      "/policies/#{AWS.Util.encode_uri(policy_name)}/version/#{AWS.Util.encode_uri(policy_version_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a registration code used to register a CA certificate with AWS IoT.
  """
  def get_registration_code(%Client{} = client, options \\ []) do
    url_path = "/registrationcode"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns the count, average, sum, minimum, maximum, sum of squares, variance, and
  standard deviation for the specified aggregated field.

  If the aggregation field is of type `String`, only the count statistic is
  returned.
  """
  def get_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/indices/statistics"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Gets information about the rule.
  """
  def get_topic_rule(%Client{} = client, rule_name, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets information about a topic rule destination.
  """
  def get_topic_rule_destination(%Client{} = client, arn, options \\ []) do
    url_path = "/destinations/#{AWS.Util.encode_multi_segment_uri(arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets the fine grained logging options.
  """
  def get_v2_logging_options(%Client{} = client, options \\ []) do
    url_path = "/v2LoggingOptions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the active violations for a given Device Defender security profile.
  """
  def list_active_violations(
        %Client{} = client,
        behavior_criteria_type \\ nil,
        list_suppressed_alerts \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        security_profile_name \\ nil,
        thing_name \\ nil,
        options \\ []
      ) do
    url_path = "/active-violations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(thing_name) do
        [{"thingName", thing_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(security_profile_name) do
        [{"securityProfileName", security_profile_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(list_suppressed_alerts) do
        [{"listSuppressedAlerts", list_suppressed_alerts} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(behavior_criteria_type) do
        [{"behaviorCriteriaType", behavior_criteria_type} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the policies attached to the specified thing group.
  """
  def list_attached_policies(%Client{} = client, target, input, options \\ []) do
    url_path = "/attached-policies/#{AWS.Util.encode_uri(target)}"
    headers = []

    {query_params, input} =
      [
        {"marker", "marker"},
        {"pageSize", "pageSize"},
        {"recursive", "recursive"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists the findings (results) of a Device Defender audit or of the audits
  performed during a specified time period.

  (Findings are retained for 90 days.)
  """
  def list_audit_findings(%Client{} = client, input, options \\ []) do
    url_path = "/audit/findings"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Gets the status of audit mitigation action tasks that were executed.
  """
  def list_audit_mitigation_actions_executions(
        %Client{} = client,
        action_status \\ nil,
        finding_id,
        max_results \\ nil,
        next_token \\ nil,
        task_id,
        options \\ []
      ) do
    url_path = "/audit/mitigationactions/executions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(task_id) do
        [{"taskId", task_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(finding_id) do
        [{"findingId", finding_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(action_status) do
        [{"actionStatus", action_status} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a list of audit mitigation action tasks that match the specified filters.
  """
  def list_audit_mitigation_actions_tasks(
        %Client{} = client,
        audit_task_id \\ nil,
        end_time,
        finding_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        start_time,
        task_status \\ nil,
        options \\ []
      ) do
    url_path = "/audit/mitigationactions/tasks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(task_status) do
        [{"taskStatus", task_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(finding_id) do
        [{"findingId", finding_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(audit_task_id) do
        [{"auditTaskId", audit_task_id} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists your Device Defender audit listings.
  """
  def list_audit_suppressions(%Client{} = client, input, options \\ []) do
    url_path = "/audit/suppressions/list"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists the Device Defender audits that have been performed during a given time
  period.
  """
  def list_audit_tasks(
        %Client{} = client,
        end_time,
        max_results \\ nil,
        next_token \\ nil,
        start_time,
        task_status \\ nil,
        task_type \\ nil,
        options \\ []
      ) do
    url_path = "/audit/tasks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(task_type) do
        [{"taskType", task_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(task_status) do
        [{"taskStatus", task_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the authorizers registered in your account.
  """
  def list_authorizers(
        %Client{} = client,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/authorizers/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the billing groups you have created.
  """
  def list_billing_groups(
        %Client{} = client,
        max_results \\ nil,
        name_prefix_filter \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/billing-groups"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_prefix_filter) do
        [{"namePrefixFilter", name_prefix_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the CA certificates registered for your AWS account.

  The results are paginated with a default page size of 25. You can use the
  returned marker to retrieve additional results.
  """
  def list_ca_certificates(
        %Client{} = client,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path = "/cacertificates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the certificates registered in your AWS account.

  The results are paginated with a default page size of 25. You can use the
  returned marker to retrieve additional results.
  """
  def list_certificates(
        %Client{} = client,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path = "/certificates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  List the device certificates signed by the specified CA certificate.
  """
  def list_certificates_by_ca(
        %Client{} = client,
        ca_certificate_id,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path = "/certificates-by-ca/#{AWS.Util.encode_uri(ca_certificate_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists your Device Defender detect custom metrics.
  """
  def list_custom_metrics(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/custom-metrics"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists mitigation actions executions for a Device Defender ML Detect Security
  Profile.
  """
  def list_detect_mitigation_actions_executions(
        %Client{} = client,
        end_time \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        start_time \\ nil,
        task_id \\ nil,
        thing_name \\ nil,
        violation_id \\ nil,
        options \\ []
      ) do
    url_path = "/detect/mitigationactions/executions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(violation_id) do
        [{"violationId", violation_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(thing_name) do
        [{"thingName", thing_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(task_id) do
        [{"taskId", task_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  List of Device Defender ML Detect mitigation actions tasks.
  """
  def list_detect_mitigation_actions_tasks(
        %Client{} = client,
        end_time,
        max_results \\ nil,
        next_token \\ nil,
        start_time,
        options \\ []
      ) do
    url_path = "/detect/mitigationactions/tasks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  List the set of dimensions that are defined for your AWS account.
  """
  def list_dimensions(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/dimensions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a list of domain configurations for the user.

  This list is sorted alphabetically by domain configuration name.
  """
  def list_domain_configurations(
        %Client{} = client,
        marker \\ nil,
        page_size \\ nil,
        service_type \\ nil,
        options \\ []
      ) do
    url_path = "/domainConfigurations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(service_type) do
        [{"serviceType", service_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the search indices.
  """
  def list_indices(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/indices"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the job executions for a job.
  """
  def list_job_executions_for_job(
        %Client{} = client,
        job_id,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}/things"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the job executions for the specified thing.
  """
  def list_job_executions_for_thing(
        %Client{} = client,
        thing_name,
        max_results \\ nil,
        namespace_id \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(namespace_id) do
        [{"namespaceId", namespace_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns a list of job templates.
  """
  def list_job_templates(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/job-templates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists jobs.
  """
  def list_jobs(
        %Client{} = client,
        max_results \\ nil,
        namespace_id \\ nil,
        next_token \\ nil,
        status \\ nil,
        target_selection \\ nil,
        thing_group_id \\ nil,
        thing_group_name \\ nil,
        options \\ []
      ) do
    url_path = "/jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(thing_group_name) do
        [{"thingGroupName", thing_group_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(thing_group_id) do
        [{"thingGroupId", thing_group_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(target_selection) do
        [{"targetSelection", target_selection} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(namespace_id) do
        [{"namespaceId", namespace_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a list of all mitigation actions that match the specified filter criteria.
  """
  def list_mitigation_actions(
        %Client{} = client,
        action_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/mitigationactions/actions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(action_type) do
        [{"actionType", action_type} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists OTA updates.
  """
  def list_ota_updates(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        ota_update_status \\ nil,
        options \\ []
      ) do
    url_path = "/otaUpdates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(ota_update_status) do
        [{"otaUpdateStatus", ota_update_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists certificates that are being transferred but not yet accepted.
  """
  def list_outgoing_certificates(
        %Client{} = client,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path = "/certificates-out-going"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists your policies.
  """
  def list_policies(
        %Client{} = client,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path = "/policies"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the principals associated with the specified policy.

  **Note:** This API is deprecated. Please use `ListTargetsForPolicy` instead.
  """
  def list_policy_principals(
        %Client{} = client,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        policy_name,
        options \\ []
      ) do
    url_path = "/policy-principals"
    headers = []

    headers =
      if !is_nil(policy_name) do
        [{"x-amzn-iot-policy", policy_name} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the versions of the specified policy and identifies the default version.
  """
  def list_policy_versions(%Client{} = client, policy_name, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_name)}/version"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the policies attached to the specified principal.

  If you use an Cognito identity, the ID must be in [AmazonCognito Identity format](https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax).

  **Note:** This API is deprecated. Please use `ListAttachedPolicies` instead.
  """
  def list_principal_policies(
        %Client{} = client,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        principal,
        options \\ []
      ) do
    url_path = "/principal-policies"
    headers = []

    headers =
      if !is_nil(principal) do
        [{"x-amzn-iot-principal", principal} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the things associated with the specified principal.

  A principal can be X.509 certificates, IAM users, groups, and roles, Amazon
  Cognito identities or federated identities.
  """
  def list_principal_things(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        principal,
        options \\ []
      ) do
    url_path = "/principals/things"
    headers = []

    headers =
      if !is_nil(principal) do
        [{"x-amzn-principal", principal} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  A list of fleet provisioning template versions.
  """
  def list_provisioning_template_versions(
        %Client{} = client,
        template_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the fleet provisioning templates in your AWS account.
  """
  def list_provisioning_templates(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/provisioning-templates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the role aliases registered in your account.
  """
  def list_role_aliases(
        %Client{} = client,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path = "/role-aliases"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"pageSize", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists all of your scheduled audits.
  """
  def list_scheduled_audits(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/audit/scheduledaudits"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the Device Defender security profiles you've created.

  You can filter security profiles by dimension or custom metric.

  `dimensionName` and `metricName` cannot be used in the same request.
  """
  def list_security_profiles(
        %Client{} = client,
        dimension_name \\ nil,
        max_results \\ nil,
        metric_name \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/security-profiles"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(metric_name) do
        [{"metricName", metric_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(dimension_name) do
        [{"dimensionName", dimension_name} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the Device Defender security profiles attached to a target (thing group).
  """
  def list_security_profiles_for_target(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        recursive \\ nil,
        security_profile_target_arn,
        options \\ []
      ) do
    url_path = "/security-profiles-for-target"
    headers = []
    query_params = []

    query_params =
      if !is_nil(security_profile_target_arn) do
        [{"securityProfileTargetArn", security_profile_target_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(recursive) do
        [{"recursive", recursive} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists all of the streams in your AWS account.
  """
  def list_streams(
        %Client{} = client,
        ascending_order \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/streams"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the tags (metadata) you have assigned to the resource.
  """
  def list_tags_for_resource(%Client{} = client, next_token \\ nil, resource_arn, options \\ []) do
    url_path = "/tags"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  List targets for the specified policy.
  """
  def list_targets_for_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/policy-targets/#{AWS.Util.encode_uri(policy_name)}"
    headers = []

    {query_params, input} =
      [
        {"marker", "marker"},
        {"pageSize", "pageSize"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists the targets (thing groups) associated with a given Device Defender
  security profile.
  """
  def list_targets_for_security_profile(
        %Client{} = client,
        security_profile_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}/targets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  List the thing groups in your account.
  """
  def list_thing_groups(
        %Client{} = client,
        max_results \\ nil,
        name_prefix_filter \\ nil,
        next_token \\ nil,
        parent_group \\ nil,
        recursive \\ nil,
        options \\ []
      ) do
    url_path = "/thing-groups"
    headers = []
    query_params = []

    query_params =
      if !is_nil(recursive) do
        [{"recursive", recursive} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(parent_group) do
        [{"parentGroup", parent_group} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_prefix_filter) do
        [{"namePrefixFilter", name_prefix_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  List the thing groups to which the specified thing belongs.
  """
  def list_thing_groups_for_thing(
        %Client{} = client,
        thing_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/thing-groups"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the principals associated with the specified thing.

  A principal can be X.509 certificates, IAM users, groups, and roles, Amazon
  Cognito identities or federated identities.
  """
  def list_thing_principals(
        %Client{} = client,
        thing_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/principals"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Information about the thing registration tasks.
  """
  def list_thing_registration_task_reports(
        %Client{} = client,
        task_id,
        max_results \\ nil,
        next_token \\ nil,
        report_type,
        options \\ []
      ) do
    url_path = "/thing-registration-tasks/#{AWS.Util.encode_uri(task_id)}/reports"
    headers = []
    query_params = []

    query_params =
      if !is_nil(report_type) do
        [{"reportType", report_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  List bulk thing provisioning tasks.
  """
  def list_thing_registration_tasks(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/thing-registration-tasks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the existing thing types.
  """
  def list_thing_types(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        thing_type_name \\ nil,
        options \\ []
      ) do
    url_path = "/thing-types"
    headers = []
    query_params = []

    query_params =
      if !is_nil(thing_type_name) do
        [{"thingTypeName", thing_type_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists your things.

  Use the **attributeName** and **attributeValue** parameters to filter your
  things. For example, calling `ListThings` with attributeName=Color and
  attributeValue=Red retrieves all things in the registry that contain an
  attribute **Color** with the value **Red**.

  You will not be charged for calling this API if an `Access denied` error is
  returned. You will also not be charged if no attributes or pagination token was
  provided in request and no pagination token and no results were returned.
  """
  def list_things(
        %Client{} = client,
        attribute_name \\ nil,
        attribute_value \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        thing_type_name \\ nil,
        use_prefix_attribute_value \\ nil,
        options \\ []
      ) do
    url_path = "/things"
    headers = []
    query_params = []

    query_params =
      if !is_nil(use_prefix_attribute_value) do
        [{"usePrefixAttributeValue", use_prefix_attribute_value} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(thing_type_name) do
        [{"thingTypeName", thing_type_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(attribute_value) do
        [{"attributeValue", attribute_value} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(attribute_name) do
        [{"attributeName", attribute_name} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the things you have added to the given billing group.
  """
  def list_things_in_billing_group(
        %Client{} = client,
        billing_group_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/billing-groups/#{AWS.Util.encode_uri(billing_group_name)}/things"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the things in the specified group.
  """
  def list_things_in_thing_group(
        %Client{} = client,
        thing_group_name,
        max_results \\ nil,
        next_token \\ nil,
        recursive \\ nil,
        options \\ []
      ) do
    url_path = "/thing-groups/#{AWS.Util.encode_uri(thing_group_name)}/things"
    headers = []
    query_params = []

    query_params =
      if !is_nil(recursive) do
        [{"recursive", recursive} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists all the topic rule destinations in your AWS account.
  """
  def list_topic_rule_destinations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/destinations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the rules for the specific topic.
  """
  def list_topic_rules(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        rule_disabled \\ nil,
        topic \\ nil,
        options \\ []
      ) do
    url_path = "/rules"
    headers = []
    query_params = []

    query_params =
      if !is_nil(topic) do
        [{"topic", topic} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(rule_disabled) do
        [{"ruleDisabled", rule_disabled} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists logging levels.
  """
  def list_v2_logging_levels(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        target_type \\ nil,
        options \\ []
      ) do
    url_path = "/v2LoggingLevel"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target_type) do
        [{"targetType", target_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the Device Defender security profile violations discovered during the
  given time period.

  You can use filters to limit the results to those alerts issued for a particular
  security profile, behavior, or thing (device).
  """
  def list_violation_events(
        %Client{} = client,
        behavior_criteria_type \\ nil,
        end_time,
        list_suppressed_alerts \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        security_profile_name \\ nil,
        start_time,
        thing_name \\ nil,
        options \\ []
      ) do
    url_path = "/violation-events"
    headers = []
    query_params = []

    query_params =
      if !is_nil(thing_name) do
        [{"thingName", thing_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(security_profile_name) do
        [{"securityProfileName", security_profile_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(list_suppressed_alerts) do
        [{"listSuppressedAlerts", list_suppressed_alerts} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(behavior_criteria_type) do
        [{"behaviorCriteriaType", behavior_criteria_type} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Registers a CA certificate with AWS IoT.

  This CA certificate can then be used to sign device certificates, which can be
  then registered with AWS IoT. You can register up to 10 CA certificates per AWS
  account that have the same subject field. This enables you to have up to 10
  certificate authorities sign your device certificates. If you have more than one
  CA certificate registered, make sure you pass the CA certificate when you
  register your device certificates with the RegisterCertificate API.
  """
  def register_ca_certificate(%Client{} = client, input, options \\ []) do
    url_path = "/cacertificate"
    headers = []

    {query_params, input} =
      [
        {"allowAutoRegistration", "allowAutoRegistration"},
        {"setAsActive", "setAsActive"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Registers a device certificate with AWS IoT.

  If you have more than one CA certificate that has the same subject field, you
  must specify the CA certificate that was used to sign the device certificate
  being registered.
  """
  def register_certificate(%Client{} = client, input, options \\ []) do
    url_path = "/certificate/register"
    headers = []

    {query_params, input} =
      [
        {"setAsActive", "setAsActive"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Register a certificate that does not have a certificate authority (CA).
  """
  def register_certificate_without_ca(%Client{} = client, input, options \\ []) do
    url_path = "/certificate/register-no-ca"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Provisions a thing in the device registry.

  RegisterThing calls other AWS IoT control plane APIs. These calls might exceed
  your account level [ AWS IoT Throttling Limits](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_iot)
  and cause throttle errors. Please contact [AWS Customer Support](https://console.aws.amazon.com/support/home) to raise your throttling
  limits if necessary.
  """
  def register_thing(%Client{} = client, input, options \\ []) do
    url_path = "/things"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Rejects a pending certificate transfer.

  After AWS IoT rejects a certificate transfer, the certificate status changes
  from **PENDING_TRANSFER** to **INACTIVE**.

  To check for pending certificate transfers, call `ListCertificates` to enumerate
  your certificates.

  This operation can only be called by the transfer destination. After it is
  called, the certificate will be returned to the source's account in the INACTIVE
  state.
  """
  def reject_certificate_transfer(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/reject-certificate-transfer/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes the given thing from the billing group.
  """
  def remove_thing_from_billing_group(%Client{} = client, input, options \\ []) do
    url_path = "/billing-groups/removeThingFromBillingGroup"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Remove the specified thing from the specified group.

  You must specify either a `thingGroupArn` or a `thingGroupName` to identify the
  thing group and either a `thingArn` or a `thingName` to identify the thing to
  remove from the thing group.
  """
  def remove_thing_from_thing_group(%Client{} = client, input, options \\ []) do
    url_path = "/thing-groups/removeThingFromThingGroup"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Replaces the rule.

  You must specify all parameters for the new rule. Creating rules is an
  administrator-level action. Any user who has permission to create rules will be
  able to access data processed by the rule.
  """
  def replace_topic_rule(%Client{} = client, rule_name, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  The query search index.
  """
  def search_index(%Client{} = client, input, options \\ []) do
    url_path = "/indices/search"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Sets the default authorizer.

  This will be used if a websocket connection is made without specifying an
  authorizer.
  """
  def set_default_authorizer(%Client{} = client, input, options \\ []) do
    url_path = "/default-authorizer"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Sets the specified version of the specified policy as the policy's default
  (operative) version.

  This action affects all certificates to which the policy is attached. To list
  the principals the policy is attached to, use the ListPrincipalPolicy API.
  """
  def set_default_policy_version(
        %Client{} = client,
        policy_name,
        policy_version_id,
        input,
        options \\ []
      ) do
    url_path =
      "/policies/#{AWS.Util.encode_uri(policy_name)}/version/#{AWS.Util.encode_uri(policy_version_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Sets the logging options.

  NOTE: use of this command is not recommended. Use `SetV2LoggingOptions` instead.
  """
  def set_logging_options(%Client{} = client, input, options \\ []) do
    url_path = "/loggingOptions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Sets the logging level.
  """
  def set_v2_logging_level(%Client{} = client, input, options \\ []) do
    url_path = "/v2LoggingLevel"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Sets the logging options for the V2 logging service.
  """
  def set_v2_logging_options(%Client{} = client, input, options \\ []) do
    url_path = "/v2LoggingOptions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Starts a task that applies a set of mitigation actions to the specified target.
  """
  def start_audit_mitigation_actions_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/audit/mitigationactions/tasks/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Starts a Device Defender ML Detect mitigation actions task.
  """
  def start_detect_mitigation_actions_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/detect/mitigationactions/tasks/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Starts an on-demand Device Defender audit.
  """
  def start_on_demand_audit_task(%Client{} = client, input, options \\ []) do
    url_path = "/audit/tasks"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a bulk thing provisioning task.
  """
  def start_thing_registration_task(%Client{} = client, input, options \\ []) do
    url_path = "/thing-registration-tasks"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Cancels a bulk thing provisioning task.
  """
  def stop_thing_registration_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/thing-registration-tasks/#{AWS.Util.encode_uri(task_id)}/cancel"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Adds to or modifies the tags of the given resource.

  Tags are metadata which can be used to manage a resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Tests if a specified principal is authorized to perform an AWS IoT action on a
  specified resource.

  Use this to test and debug the authorization behavior of devices that connect to
  the AWS IoT device gateway.
  """
  def test_authorization(%Client{} = client, input, options \\ []) do
    url_path = "/test-authorization"
    headers = []

    {query_params, input} =
      [
        {"clientId", "clientId"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Tests a custom authorization behavior by invoking a specified custom authorizer.

  Use this to test and debug the custom authorization behavior of devices that
  connect to the AWS IoT device gateway.
  """
  def test_invoke_authorizer(%Client{} = client, authorizer_name, input, options \\ []) do
    url_path = "/authorizer/#{AWS.Util.encode_uri(authorizer_name)}/test"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Transfers the specified certificate to the specified AWS account.

  You can cancel the transfer until it is acknowledged by the recipient.

  No notification is sent to the transfer destination's account. It is up to the
  caller to notify the transfer target.

  The certificate being transferred must not be in the ACTIVE state. You can use
  the UpdateCertificate API to deactivate it.

  The certificate must not have any policies attached to it. You can use the
  DetachPrincipalPolicy API to detach them.
  """
  def transfer_certificate(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/transfer-certificate/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []

    {query_params, input} =
      [
        {"targetAwsAccount", "targetAwsAccount"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes the given tags (metadata) from the resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/untag"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Configures or reconfigures the Device Defender audit settings for this account.

  Settings include how audit notifications are sent and which audit checks are
  enabled or disabled.
  """
  def update_account_audit_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/audit/configuration"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a Device Defender audit suppression.
  """
  def update_audit_suppression(%Client{} = client, input, options \\ []) do
    url_path = "/audit/suppressions/update"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates an authorizer.
  """
  def update_authorizer(%Client{} = client, authorizer_name, input, options \\ []) do
    url_path = "/authorizer/#{AWS.Util.encode_uri(authorizer_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates information about the billing group.
  """
  def update_billing_group(%Client{} = client, billing_group_name, input, options \\ []) do
    url_path = "/billing-groups/#{AWS.Util.encode_uri(billing_group_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a registered CA certificate.
  """
  def update_ca_certificate(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/cacertificate/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []

    {query_params, input} =
      [
        {"newAutoRegistrationStatus", "newAutoRegistrationStatus"},
        {"newStatus", "newStatus"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the status of the specified certificate.

  This operation is idempotent.

  Certificates must be in the ACTIVE state to authenticate devices that use a
  certificate to connect to AWS IoT.

  Within a few minutes of updating a certificate from the ACTIVE state to any
  other state, AWS IoT disconnects all devices that used that certificate to
  connect. Devices cannot use a certificate that is not in the ACTIVE state to
  reconnect.
  """
  def update_certificate(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/certificates/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []

    {query_params, input} =
      [
        {"newStatus", "newStatus"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a Device Defender detect custom metric.
  """
  def update_custom_metric(%Client{} = client, metric_name, input, options \\ []) do
    url_path = "/custom-metric/#{AWS.Util.encode_uri(metric_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the definition for a dimension.

  You cannot change the type of a dimension after it is created (you can delete it
  and recreate it).
  """
  def update_dimension(%Client{} = client, name, input, options \\ []) do
    url_path = "/dimensions/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates values stored in the domain configuration.

  Domain configurations for default endpoints can't be updated.
  """
  def update_domain_configuration(
        %Client{} = client,
        domain_configuration_name,
        input,
        options \\ []
      ) do
    url_path = "/domainConfigurations/#{AWS.Util.encode_uri(domain_configuration_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a dynamic thing group.
  """
  def update_dynamic_thing_group(%Client{} = client, thing_group_name, input, options \\ []) do
    url_path = "/dynamic-thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the event configurations.
  """
  def update_event_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/event-configurations"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the search configuration.
  """
  def update_indexing_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/indexing/config"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates supported fields of the specified job.
  """
  def update_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []

    {query_params, input} =
      [
        {"namespaceId", "namespaceId"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the definition for the specified mitigation action.
  """
  def update_mitigation_action(%Client{} = client, action_name, input, options \\ []) do
    url_path = "/mitigationactions/actions/#{AWS.Util.encode_uri(action_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a fleet provisioning template.
  """
  def update_provisioning_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a role alias.
  """
  def update_role_alias(%Client{} = client, role_alias, input, options \\ []) do
    url_path = "/role-aliases/#{AWS.Util.encode_uri(role_alias)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a scheduled audit, including which checks are performed and how often
  the audit takes place.
  """
  def update_scheduled_audit(%Client{} = client, scheduled_audit_name, input, options \\ []) do
    url_path = "/audit/scheduledaudits/#{AWS.Util.encode_uri(scheduled_audit_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a Device Defender security profile.
  """
  def update_security_profile(%Client{} = client, security_profile_name, input, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}"
    headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates an existing stream.

  The stream version will be incremented by one.
  """
  def update_stream(%Client{} = client, stream_id, input, options \\ []) do
    url_path = "/streams/#{AWS.Util.encode_uri(stream_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the data for a thing.
  """
  def update_thing(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Update a thing group.
  """
  def update_thing_group(%Client{} = client, thing_group_name, input, options \\ []) do
    url_path = "/thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the groups to which the thing belongs.
  """
  def update_thing_groups_for_thing(%Client{} = client, input, options \\ []) do
    url_path = "/thing-groups/updateThingGroupsForThing"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a topic rule destination.

  You use this to change the status, endpoint URL, or confirmation URL of the
  destination.
  """
  def update_topic_rule_destination(%Client{} = client, input, options \\ []) do
    url_path = "/destinations"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Validates a Device Defender security profile behaviors specification.
  """
  def validate_security_profile_behaviors(%Client{} = client, input, options \\ []) do
    url_path = "/security-profile-behaviors/validate"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
