# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoT do
  @moduledoc """
  AWS IoT

  AWS IoT provides secure, bi-directional communication between
  Internet-connected devices (such as sensors, actuators, embedded devices,
  or smart appliances) and the AWS cloud. You can discover your custom
  IoT-Data endpoint to communicate with, configure rules for data processing
  and integration with other services, organize resources associated with
  each device (Registry), configure logging, and create and manage policies
  and credentials to authenticate devices.

  The service endpoints that expose this API are listed in [AWS IoT Core
  Endpoints and
  Quotas](https://docs.aws.amazon.com/general/latest/gr/iot-core.html). You
  must use the endpoint for the region that has the resources you want to
  access.

  The service name used by [AWS Signature Version
  4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
  to sign the request is: *execute-api*.

  For more information about how AWS IoT works, see the [Developer
  Guide](https://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html).

  For information about how to use the credentials provider for AWS IoT, see
  [Authorizing Direct Calls to AWS
  Services](https://docs.aws.amazon.com/iot/latest/developerguide/authorizing-direct-aws.html).
  """

  @doc """
  Accepts a pending certificate transfer. The default state of the
  certificate is INACTIVE.

  To check for pending certificate transfers, call `ListCertificates` to
  enumerate your certificates.
  """
  def accept_certificate_transfer(client, certificate_id, input, options \\ []) do
    path_ = "/accept-certificate-transfer/#{URI.encode(certificate_id)}"
    headers = []
    {query_, input} =
      [
        {"setAsActive", "setAsActive"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds a thing to a billing group.
  """
  def add_thing_to_billing_group(client, input, options \\ []) do
    path_ = "/billing-groups/addThingToBillingGroup"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds a thing to a thing group.
  """
  def add_thing_to_thing_group(client, input, options \\ []) do
    path_ = "/thing-groups/addThingToThingGroup"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Associates a group with a continuous job. The following criteria must be
  met:

  <ul> <li> The job must have been created with the `targetSelection` field
  set to "CONTINUOUS".

  </li> <li> The job status must currently be "IN_PROGRESS".

  </li> <li> The total number of targets associated with a job must not
  exceed 100.

  </li> </ul>
  """
  def associate_targets_with_job(client, job_id, input, options \\ []) do
    path_ = "/jobs/#{URI.encode(job_id)}/targets"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Attaches a policy to the specified target.
  """
  def attach_policy(client, policy_name, input, options \\ []) do
    path_ = "/target-policies/#{URI.encode(policy_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Attaches the specified policy to the specified principal (certificate or
  other credential).

  **Note:** This API is deprecated. Please use `AttachPolicy` instead.
  """
  def attach_principal_policy(client, policy_name, input, options \\ []) do
    path_ = "/principal-policies/#{URI.encode(policy_name)}"
    {headers, input} =
      [
        {"principal", "x-amzn-iot-principal"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Associates a Device Defender security profile with a thing group or this
  account. Each thing group or account can have up to five security profiles
  associated with it.
  """
  def attach_security_profile(client, security_profile_name, input, options \\ []) do
    path_ = "/security-profiles/#{URI.encode(security_profile_name)}/targets"
    headers = []
    {query_, input} =
      [
        {"securityProfileTargetArn", "securityProfileTargetArn"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Attaches the specified principal to the specified thing. A principal can be
  X.509 certificates, IAM users, groups, and roles, Amazon Cognito identities
  or federated identities.
  """
  def attach_thing_principal(client, thing_name, input, options \\ []) do
    path_ = "/things/#{URI.encode(thing_name)}/principals"
    {headers, input} =
      [
        {"principal", "x-amzn-principal"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Cancels a mitigation action task that is in progress. If the task is not in
  progress, an InvalidRequestException occurs.
  """
  def cancel_audit_mitigation_actions_task(client, task_id, input, options \\ []) do
    path_ = "/audit/mitigationactions/tasks/#{URI.encode(task_id)}/cancel"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Cancels an audit that is in progress. The audit can be either scheduled or
  on-demand. If the audit is not in progress, an "InvalidRequestException"
  occurs.
  """
  def cancel_audit_task(client, task_id, input, options \\ []) do
    path_ = "/audit/tasks/#{URI.encode(task_id)}/cancel"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Cancels a pending transfer for the specified certificate.

  **Note** Only the transfer source account can use this operation to cancel
  a transfer. (Transfer destinations can use `RejectCertificateTransfer`
  instead.) After transfer, AWS IoT returns the certificate to the source
  account in the INACTIVE state. After the destination account has accepted
  the transfer, the transfer cannot be cancelled.

  After a certificate transfer is cancelled, the status of the certificate
  changes from PENDING_TRANSFER to INACTIVE.
  """
  def cancel_certificate_transfer(client, certificate_id, input, options \\ []) do
    path_ = "/cancel-certificate-transfer/#{URI.encode(certificate_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Cancels a job.
  """
  def cancel_job(client, job_id, input, options \\ []) do
    path_ = "/jobs/#{URI.encode(job_id)}/cancel"
    headers = []
    {query_, input} =
      [
        {"force", "force"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Cancels the execution of a job for a given thing.
  """
  def cancel_job_execution(client, job_id, thing_name, input, options \\ []) do
    path_ = "/things/#{URI.encode(thing_name)}/jobs/#{URI.encode(job_id)}/cancel"
    headers = []
    {query_, input} =
      [
        {"force", "force"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Clears the default authorizer.
  """
  def clear_default_authorizer(client, input, options \\ []) do
    path_ = "/default-authorizer"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Confirms a topic rule destination. When you create a rule requiring a
  destination, AWS IoT sends a confirmation message to the endpoint or base
  address you specify. The message includes a token which you pass back when
  calling `ConfirmTopicRuleDestination` to confirm that you own or have
  access to the endpoint.
  """
  def confirm_topic_rule_destination(client, confirmation_token, options \\ []) do
    path_ = "/confirmdestination/#{AWS.Util.encode_uri(confirmation_token, true)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Creates a Device Defender audit suppression.
  """
  def create_audit_suppression(client, input, options \\ []) do
    path_ = "/audit/suppressions/create"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates an authorizer.
  """
  def create_authorizer(client, authorizer_name, input, options \\ []) do
    path_ = "/authorizer/#{URI.encode(authorizer_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a billing group.
  """
  def create_billing_group(client, billing_group_name, input, options \\ []) do
    path_ = "/billing-groups/#{URI.encode(billing_group_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates an X.509 certificate using the specified certificate signing
  request.

  **Note:** The CSR must include a public key that is either an RSA key with
  a length of at least 2048 bits or an ECC key from NIST P-256 or NIST P-384
  curves.

  **Note:** Reusing the same certificate signing request (CSR) results in a
  distinct certificate.

  You can create multiple certificates in a batch by creating a directory,
  copying multiple .csr files into that directory, and then specifying that
  directory on the command line. The following commands show how to create a
  batch of certificates given a batch of CSRs.

  Assuming a set of CSRs are located inside of the directory
  my-csr-directory:

  On Linux and OS X, the command is:

  $ ls my-csr-directory/ | xargs -I {} aws iot create-certificate-from-csr
  --certificate-signing-request file://my-csr-directory/{}

  This command lists all of the CSRs in my-csr-directory and pipes each CSR
  file name to the aws iot create-certificate-from-csr AWS CLI command to
  create a certificate for the corresponding CSR.

  The aws iot create-certificate-from-csr part of the command can also be run
  in parallel to speed up the certificate creation process:

  $ ls my-csr-directory/ | xargs -P 10 -I {} aws iot
  create-certificate-from-csr --certificate-signing-request
  file://my-csr-directory/{}

  On Windows PowerShell, the command to create certificates for all CSRs in
  my-csr-directory is:

  &gt; ls -Name my-csr-directory | %{aws iot create-certificate-from-csr
  --certificate-signing-request file://my-csr-directory/$_}

  On a Windows command prompt, the command to create certificates for all
  CSRs in my-csr-directory is:

  &gt; forfiles /p my-csr-directory /c "cmd /c aws iot
  create-certificate-from-csr --certificate-signing-request file://@path"
  """
  def create_certificate_from_csr(client, input, options \\ []) do
    path_ = "/certificates"
    headers = []
    {query_, input} =
      [
        {"setAsActive", "setAsActive"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Create a dimension that you can use to limit the scope of a metric used in
  a security profile for AWS IoT Device Defender. For example, using a
  `TOPIC_FILTER` dimension, you can narrow down the scope of the metric only
  to MQTT topics whose name match the pattern specified in the dimension.
  """
  def create_dimension(client, name, input, options \\ []) do
    path_ = "/dimensions/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a domain configuration.

  <note> The domain configuration feature is in public preview and is subject
  to change.

  </note>
  """
  def create_domain_configuration(client, domain_configuration_name, input, options \\ []) do
    path_ = "/domainConfigurations/#{URI.encode(domain_configuration_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a dynamic thing group.
  """
  def create_dynamic_thing_group(client, thing_group_name, input, options \\ []) do
    path_ = "/dynamic-thing-groups/#{URI.encode(thing_group_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a job.
  """
  def create_job(client, job_id, input, options \\ []) do
    path_ = "/jobs/#{URI.encode(job_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a 2048-bit RSA key pair and issues an X.509 certificate using the
  issued public key. You can also call `CreateKeysAndCertificate` over MQTT
  from a device, for more information, see [Provisioning MQTT
  API](https://docs.aws.amazon.com/iot/latest/developerguide/provision-wo-cert.html#provision-mqtt-api).

  **Note** This is the only time AWS IoT issues the private key for this
  certificate, so it is important to keep it in a secure location.
  """
  def create_keys_and_certificate(client, input, options \\ []) do
    path_ = "/keys-and-certificate"
    headers = []
    {query_, input} =
      [
        {"setAsActive", "setAsActive"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Defines an action that can be applied to audit findings by using
  StartAuditMitigationActionsTask. Only certain types of mitigation actions
  can be applied to specific check names. For more information, see
  [Mitigation
  actions](https://docs.aws.amazon.com/iot/latest/developerguide/device-defender-mitigation-actions.html).
  Each mitigation action can apply only one type of change.
  """
  def create_mitigation_action(client, action_name, input, options \\ []) do
    path_ = "/mitigationactions/actions/#{URI.encode(action_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates an AWS IoT OTAUpdate on a target group of things or groups.
  """
  def create_o_t_a_update(client, ota_update_id, input, options \\ []) do
    path_ = "/otaUpdates/#{URI.encode(ota_update_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates an AWS IoT policy.

  The created policy is the default version for the policy. This operation
  creates a policy version with a version identifier of **1** and sets **1**
  as the policy's default version.
  """
  def create_policy(client, policy_name, input, options \\ []) do
    path_ = "/policies/#{URI.encode(policy_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new version of the specified AWS IoT policy. To update a policy,
  create a new policy version. A managed policy can have up to five versions.
  If the policy has five versions, you must use `DeletePolicyVersion` to
  delete an existing version before you create a new one.

  Optionally, you can set the new version as the policy's default version.
  The default version is the operative version (that is, the version that is
  in effect for the certificates to which the policy is attached).
  """
  def create_policy_version(client, policy_name, input, options \\ []) do
    path_ = "/policies/#{URI.encode(policy_name)}/version"
    headers = []
    {query_, input} =
      [
        {"setAsDefault", "setAsDefault"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a provisioning claim.
  """
  def create_provisioning_claim(client, template_name, input, options \\ []) do
    path_ = "/provisioning-templates/#{URI.encode(template_name)}/provisioning-claim"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a fleet provisioning template.
  """
  def create_provisioning_template(client, input, options \\ []) do
    path_ = "/provisioning-templates"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new version of a fleet provisioning template.
  """
  def create_provisioning_template_version(client, template_name, input, options \\ []) do
    path_ = "/provisioning-templates/#{URI.encode(template_name)}/versions"
    headers = []
    {query_, input} =
      [
        {"setAsDefault", "setAsDefault"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a role alias.
  """
  def create_role_alias(client, role_alias, input, options \\ []) do
    path_ = "/role-aliases/#{URI.encode(role_alias)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a scheduled audit that is run at a specified time interval.
  """
  def create_scheduled_audit(client, scheduled_audit_name, input, options \\ []) do
    path_ = "/audit/scheduledaudits/#{URI.encode(scheduled_audit_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a Device Defender security profile.
  """
  def create_security_profile(client, security_profile_name, input, options \\ []) do
    path_ = "/security-profiles/#{URI.encode(security_profile_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a stream for delivering one or more large files in chunks over
  MQTT. A stream transports data bytes in chunks or blocks packaged as MQTT
  messages from a source like S3. You can have one or more files associated
  with a stream.
  """
  def create_stream(client, stream_id, input, options \\ []) do
    path_ = "/streams/#{URI.encode(stream_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a thing record in the registry. If this call is made multiple times
  using the same thing name and configuration, the call will succeed. If this
  call is made with the same thing name but different configuration a
  `ResourceAlreadyExistsException` is thrown.

  <note> This is a control plane operation. See
  [Authorization](https://docs.aws.amazon.com/iot/latest/developerguide/iot-authorization.html)
  for information about authorizing control plane actions.

  </note>
  """
  def create_thing(client, thing_name, input, options \\ []) do
    path_ = "/things/#{URI.encode(thing_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Create a thing group.

  <note> This is a control plane operation. See
  [Authorization](https://docs.aws.amazon.com/iot/latest/developerguide/iot-authorization.html)
  for information about authorizing control plane actions.

  </note>
  """
  def create_thing_group(client, thing_group_name, input, options \\ []) do
    path_ = "/thing-groups/#{URI.encode(thing_group_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new thing type.
  """
  def create_thing_type(client, thing_type_name, input, options \\ []) do
    path_ = "/thing-types/#{URI.encode(thing_type_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a rule. Creating rules is an administrator-level action. Any user
  who has permission to create rules will be able to access data processed by
  the rule.
  """
  def create_topic_rule(client, rule_name, input, options \\ []) do
    path_ = "/rules/#{URI.encode(rule_name)}"
    {headers, input} =
      [
        {"tags", "x-amz-tagging"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a topic rule destination. The destination must be confirmed prior
  to use.
  """
  def create_topic_rule_destination(client, input, options \\ []) do
    path_ = "/destinations"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Restores the default settings for Device Defender audits for this account.
  Any configuration data you entered is deleted and all audit checks are
  reset to disabled.
  """
  def delete_account_audit_configuration(client, input, options \\ []) do
    path_ = "/audit/configuration"
    headers = []
    {query_, input} =
      [
        {"deleteScheduledAudits", "deleteScheduledAudits"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a Device Defender audit suppression.
  """
  def delete_audit_suppression(client, input, options \\ []) do
    path_ = "/audit/suppressions/delete"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes an authorizer.
  """
  def delete_authorizer(client, authorizer_name, input, options \\ []) do
    path_ = "/authorizer/#{URI.encode(authorizer_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the billing group.
  """
  def delete_billing_group(client, billing_group_name, input, options \\ []) do
    path_ = "/billing-groups/#{URI.encode(billing_group_name)}"
    headers = []
    {query_, input} =
      [
        {"expectedVersion", "expectedVersion"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a registered CA certificate.
  """
  def delete_c_a_certificate(client, certificate_id, input, options \\ []) do
    path_ = "/cacertificate/#{URI.encode(certificate_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the specified certificate.

  A certificate cannot be deleted if it has a policy or IoT thing attached to
  it or if its status is set to ACTIVE. To delete a certificate, first use
  the `DetachPrincipalPolicy` API to detach all policies. Next, use the
  `UpdateCertificate` API to set the certificate to the INACTIVE status.
  """
  def delete_certificate(client, certificate_id, input, options \\ []) do
    path_ = "/certificates/#{URI.encode(certificate_id)}"
    headers = []
    {query_, input} =
      [
        {"forceDelete", "forceDelete"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes the specified dimension from your AWS account.
  """
  def delete_dimension(client, name, input, options \\ []) do
    path_ = "/dimensions/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the specified domain configuration.

  <note> The domain configuration feature is in public preview and is subject
  to change.

  </note>
  """
  def delete_domain_configuration(client, domain_configuration_name, input, options \\ []) do
    path_ = "/domainConfigurations/#{URI.encode(domain_configuration_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a dynamic thing group.
  """
  def delete_dynamic_thing_group(client, thing_group_name, input, options \\ []) do
    path_ = "/dynamic-thing-groups/#{URI.encode(thing_group_name)}"
    headers = []
    {query_, input} =
      [
        {"expectedVersion", "expectedVersion"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a job and its related job executions.

  Deleting a job may take time, depending on the number of job executions
  created for the job and various other factors. While the job is being
  deleted, the status of the job will be shown as "DELETION_IN_PROGRESS".
  Attempting to delete or cancel a job whose status is already
  "DELETION_IN_PROGRESS" will result in an error.

  Only 10 jobs may have status "DELETION_IN_PROGRESS" at the same time, or a
  LimitExceededException will occur.
  """
  def delete_job(client, job_id, input, options \\ []) do
    path_ = "/jobs/#{URI.encode(job_id)}"
    headers = []
    {query_, input} =
      [
        {"force", "force"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a job execution.
  """
  def delete_job_execution(client, execution_number, job_id, thing_name, input, options \\ []) do
    path_ = "/things/#{URI.encode(thing_name)}/jobs/#{URI.encode(job_id)}/executionNumber/#{URI.encode(execution_number)}"
    headers = []
    {query_, input} =
      [
        {"force", "force"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a defined mitigation action from your AWS account.
  """
  def delete_mitigation_action(client, action_name, input, options \\ []) do
    path_ = "/mitigationactions/actions/#{URI.encode(action_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Delete an OTA update.
  """
  def delete_o_t_a_update(client, ota_update_id, input, options \\ []) do
    path_ = "/otaUpdates/#{URI.encode(ota_update_id)}"
    headers = []
    {query_, input} =
      [
        {"deleteStream", "deleteStream"},
        {"forceDeleteAWSJob", "forceDeleteAWSJob"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the specified policy.

  A policy cannot be deleted if it has non-default versions or it is attached
  to any certificate.

  To delete a policy, use the DeletePolicyVersion API to delete all
  non-default versions of the policy; use the DetachPrincipalPolicy API to
  detach the policy from any certificate; and then use the DeletePolicy API
  to delete the policy.

  When a policy is deleted using DeletePolicy, its default version is deleted
  with it.
  """
  def delete_policy(client, policy_name, input, options \\ []) do
    path_ = "/policies/#{URI.encode(policy_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the specified version of the specified policy. You cannot delete
  the default version of a policy using this API. To delete the default
  version of a policy, use `DeletePolicy`. To find out which version of a
  policy is marked as the default version, use ListPolicyVersions.
  """
  def delete_policy_version(client, policy_name, policy_version_id, input, options \\ []) do
    path_ = "/policies/#{URI.encode(policy_name)}/version/#{URI.encode(policy_version_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a fleet provisioning template.
  """
  def delete_provisioning_template(client, template_name, input, options \\ []) do
    path_ = "/provisioning-templates/#{URI.encode(template_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a fleet provisioning template version.
  """
  def delete_provisioning_template_version(client, template_name, version_id, input, options \\ []) do
    path_ = "/provisioning-templates/#{URI.encode(template_name)}/versions/#{URI.encode(version_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a CA certificate registration code.
  """
  def delete_registration_code(client, input, options \\ []) do
    path_ = "/registrationcode"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a role alias
  """
  def delete_role_alias(client, role_alias, input, options \\ []) do
    path_ = "/role-aliases/#{URI.encode(role_alias)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a scheduled audit.
  """
  def delete_scheduled_audit(client, scheduled_audit_name, input, options \\ []) do
    path_ = "/audit/scheduledaudits/#{URI.encode(scheduled_audit_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a Device Defender security profile.
  """
  def delete_security_profile(client, security_profile_name, input, options \\ []) do
    path_ = "/security-profiles/#{URI.encode(security_profile_name)}"
    headers = []
    {query_, input} =
      [
        {"expectedVersion", "expectedVersion"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a stream.
  """
  def delete_stream(client, stream_id, input, options \\ []) do
    path_ = "/streams/#{URI.encode(stream_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the specified thing. Returns successfully with no error if the
  deletion is successful or you specify a thing that doesn't exist.
  """
  def delete_thing(client, thing_name, input, options \\ []) do
    path_ = "/things/#{URI.encode(thing_name)}"
    headers = []
    {query_, input} =
      [
        {"expectedVersion", "expectedVersion"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a thing group.
  """
  def delete_thing_group(client, thing_group_name, input, options \\ []) do
    path_ = "/thing-groups/#{URI.encode(thing_group_name)}"
    headers = []
    {query_, input} =
      [
        {"expectedVersion", "expectedVersion"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the specified thing type. You cannot delete a thing type if it has
  things associated with it. To delete a thing type, first mark it as
  deprecated by calling `DeprecateThingType`, then remove any associated
  things by calling `UpdateThing` to change the thing type on any associated
  thing, and finally use `DeleteThingType` to delete the thing type.
  """
  def delete_thing_type(client, thing_type_name, input, options \\ []) do
    path_ = "/thing-types/#{URI.encode(thing_type_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the rule.
  """
  def delete_topic_rule(client, rule_name, input, options \\ []) do
    path_ = "/rules/#{URI.encode(rule_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a topic rule destination.
  """
  def delete_topic_rule_destination(client, arn, input, options \\ []) do
    path_ = "/destinations/#{AWS.Util.encode_uri(arn, true)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a logging level.
  """
  def delete_v2_logging_level(client, input, options \\ []) do
    path_ = "/v2LoggingLevel"
    headers = []
    {query_, input} =
      [
        {"targetName", "targetName"},
        {"targetType", "targetType"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deprecates a thing type. You can not associate new things with deprecated
  thing type.
  """
  def deprecate_thing_type(client, thing_type_name, input, options \\ []) do
    path_ = "/thing-types/#{URI.encode(thing_type_name)}/deprecate"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets information about the Device Defender audit settings for this account.
  Settings include how audit notifications are sent and which audit checks
  are enabled or disabled.
  """
  def describe_account_audit_configuration(client, options \\ []) do
    path_ = "/audit/configuration"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets information about a single audit finding. Properties include the
  reason for noncompliance, the severity of the issue, and when the audit
  that returned the finding was started.
  """
  def describe_audit_finding(client, finding_id, options \\ []) do
    path_ = "/audit/findings/#{URI.encode(finding_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets information about an audit mitigation task that is used to apply
  mitigation actions to a set of audit findings. Properties include the
  actions being applied, the audit checks to which they're being applied, the
  task status, and aggregated task statistics.
  """
  def describe_audit_mitigation_actions_task(client, task_id, options \\ []) do
    path_ = "/audit/mitigationactions/tasks/#{URI.encode(task_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets information about a Device Defender audit suppression.
  """
  def describe_audit_suppression(client, input, options \\ []) do
    path_ = "/audit/suppressions/describe"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets information about a Device Defender audit.
  """
  def describe_audit_task(client, task_id, options \\ []) do
    path_ = "/audit/tasks/#{URI.encode(task_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes an authorizer.
  """
  def describe_authorizer(client, authorizer_name, options \\ []) do
    path_ = "/authorizer/#{URI.encode(authorizer_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns information about a billing group.
  """
  def describe_billing_group(client, billing_group_name, options \\ []) do
    path_ = "/billing-groups/#{URI.encode(billing_group_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes a registered CA certificate.
  """
  def describe_c_a_certificate(client, certificate_id, options \\ []) do
    path_ = "/cacertificate/#{URI.encode(certificate_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets information about the specified certificate.
  """
  def describe_certificate(client, certificate_id, options \\ []) do
    path_ = "/certificates/#{URI.encode(certificate_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes the default authorizer.
  """
  def describe_default_authorizer(client, options \\ []) do
    path_ = "/default-authorizer"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Provides details about a dimension that is defined in your AWS account.
  """
  def describe_dimension(client, name, options \\ []) do
    path_ = "/dimensions/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets summary information about a domain configuration.

  <note> The domain configuration feature is in public preview and is subject
  to change.

  </note>
  """
  def describe_domain_configuration(client, domain_configuration_name, options \\ []) do
    path_ = "/domainConfigurations/#{URI.encode(domain_configuration_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a unique endpoint specific to the AWS account making the call.
  """
  def describe_endpoint(client, endpoint_type \\ nil, options \\ []) do
    path_ = "/endpoint"
    headers = []
    query_ = []
    query_ = if !is_nil(endpoint_type) do
      [{"endpointType", endpoint_type} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes event configurations.
  """
  def describe_event_configurations(client, options \\ []) do
    path_ = "/event-configurations"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes a search index.
  """
  def describe_index(client, index_name, options \\ []) do
    path_ = "/indices/#{URI.encode(index_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes a job.
  """
  def describe_job(client, job_id, options \\ []) do
    path_ = "/jobs/#{URI.encode(job_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes a job execution.
  """
  def describe_job_execution(client, job_id, thing_name, execution_number \\ nil, options \\ []) do
    path_ = "/things/#{URI.encode(thing_name)}/jobs/#{URI.encode(job_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(execution_number) do
      [{"executionNumber", execution_number} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets information about a mitigation action.
  """
  def describe_mitigation_action(client, action_name, options \\ []) do
    path_ = "/mitigationactions/actions/#{URI.encode(action_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns information about a fleet provisioning template.
  """
  def describe_provisioning_template(client, template_name, options \\ []) do
    path_ = "/provisioning-templates/#{URI.encode(template_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns information about a fleet provisioning template version.
  """
  def describe_provisioning_template_version(client, template_name, version_id, options \\ []) do
    path_ = "/provisioning-templates/#{URI.encode(template_name)}/versions/#{URI.encode(version_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes a role alias.
  """
  def describe_role_alias(client, role_alias, options \\ []) do
    path_ = "/role-aliases/#{URI.encode(role_alias)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets information about a scheduled audit.
  """
  def describe_scheduled_audit(client, scheduled_audit_name, options \\ []) do
    path_ = "/audit/scheduledaudits/#{URI.encode(scheduled_audit_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets information about a Device Defender security profile.
  """
  def describe_security_profile(client, security_profile_name, options \\ []) do
    path_ = "/security-profiles/#{URI.encode(security_profile_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets information about a stream.
  """
  def describe_stream(client, stream_id, options \\ []) do
    path_ = "/streams/#{URI.encode(stream_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets information about the specified thing.
  """
  def describe_thing(client, thing_name, options \\ []) do
    path_ = "/things/#{URI.encode(thing_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describe a thing group.
  """
  def describe_thing_group(client, thing_group_name, options \\ []) do
    path_ = "/thing-groups/#{URI.encode(thing_group_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes a bulk thing provisioning task.
  """
  def describe_thing_registration_task(client, task_id, options \\ []) do
    path_ = "/thing-registration-tasks/#{URI.encode(task_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets information about the specified thing type.
  """
  def describe_thing_type(client, thing_type_name, options \\ []) do
    path_ = "/thing-types/#{URI.encode(thing_type_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Detaches a policy from the specified target.
  """
  def detach_policy(client, policy_name, input, options \\ []) do
    path_ = "/target-policies/#{URI.encode(policy_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes the specified policy from the specified certificate.

  **Note:** This API is deprecated. Please use `DetachPolicy` instead.
  """
  def detach_principal_policy(client, policy_name, input, options \\ []) do
    path_ = "/principal-policies/#{URI.encode(policy_name)}"
    {headers, input} =
      [
        {"principal", "x-amzn-iot-principal"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Disassociates a Device Defender security profile from a thing group or from
  this account.
  """
  def detach_security_profile(client, security_profile_name, input, options \\ []) do
    path_ = "/security-profiles/#{URI.encode(security_profile_name)}/targets"
    headers = []
    {query_, input} =
      [
        {"securityProfileTargetArn", "securityProfileTargetArn"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Detaches the specified principal from the specified thing. A principal can
  be X.509 certificates, IAM users, groups, and roles, Amazon Cognito
  identities or federated identities.

  <note> This call is asynchronous. It might take several seconds for the
  detachment to propagate.

  </note>
  """
  def detach_thing_principal(client, thing_name, input, options \\ []) do
    path_ = "/things/#{URI.encode(thing_name)}/principals"
    {headers, input} =
      [
        {"principal", "x-amzn-principal"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Disables the rule.
  """
  def disable_topic_rule(client, rule_name, input, options \\ []) do
    path_ = "/rules/#{URI.encode(rule_name)}/disable"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Enables the rule.
  """
  def enable_topic_rule(client, rule_name, input, options \\ []) do
    path_ = "/rules/#{URI.encode(rule_name)}/enable"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns the approximate count of unique values that match the query.
  """
  def get_cardinality(client, input, options \\ []) do
    path_ = "/indices/cardinality"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets a list of the policies that have an effect on the authorization
  behavior of the specified device when it connects to the AWS IoT device
  gateway.
  """
  def get_effective_policies(client, input, options \\ []) do
    path_ = "/effective-policies"
    headers = []
    {query_, input} =
      [
        {"thingName", "thingName"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets the indexing configuration.
  """
  def get_indexing_configuration(client, options \\ []) do
    path_ = "/indexing/config"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets a job document.
  """
  def get_job_document(client, job_id, options \\ []) do
    path_ = "/jobs/#{URI.encode(job_id)}/job-document"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets the logging options.

  NOTE: use of this command is not recommended. Use `GetV2LoggingOptions`
  instead.
  """
  def get_logging_options(client, options \\ []) do
    path_ = "/loggingOptions"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets an OTA update.
  """
  def get_o_t_a_update(client, ota_update_id, options \\ []) do
    path_ = "/otaUpdates/#{URI.encode(ota_update_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Groups the aggregated values that match the query into percentile
  groupings. The default percentile groupings are: 1,5,25,50,75,95,99,
  although you can specify your own when you call `GetPercentiles`. This
  function returns a value for each percentile group specified (or the
  default percentile groupings). The percentile group "1" contains the
  aggregated field value that occurs in approximately one percent of the
  values that match the query. The percentile group "5" contains the
  aggregated field value that occurs in approximately five percent of the
  values that match the query, and so on. The result is an approximation, the
  more values that match the query, the more accurate the percentile values.
  """
  def get_percentiles(client, input, options \\ []) do
    path_ = "/indices/percentiles"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets information about the specified policy with the policy document of the
  default version.
  """
  def get_policy(client, policy_name, options \\ []) do
    path_ = "/policies/#{URI.encode(policy_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets information about the specified policy version.
  """
  def get_policy_version(client, policy_name, policy_version_id, options \\ []) do
    path_ = "/policies/#{URI.encode(policy_name)}/version/#{URI.encode(policy_version_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets a registration code used to register a CA certificate with AWS IoT.
  """
  def get_registration_code(client, options \\ []) do
    path_ = "/registrationcode"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the count, average, sum, minimum, maximum, sum of squares,
  variance, and standard deviation for the specified aggregated field. If the
  aggregation field is of type `String`, only the count statistic is
  returned.
  """
  def get_statistics(client, input, options \\ []) do
    path_ = "/indices/statistics"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets information about the rule.
  """
  def get_topic_rule(client, rule_name, options \\ []) do
    path_ = "/rules/#{URI.encode(rule_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets information about a topic rule destination.
  """
  def get_topic_rule_destination(client, arn, options \\ []) do
    path_ = "/destinations/#{AWS.Util.encode_uri(arn, true)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets the fine grained logging options.
  """
  def get_v2_logging_options(client, options \\ []) do
    path_ = "/v2LoggingOptions"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the active violations for a given Device Defender security profile.
  """
  def list_active_violations(client, max_results \\ nil, next_token \\ nil, security_profile_name \\ nil, thing_name \\ nil, options \\ []) do
    path_ = "/active-violations"
    headers = []
    query_ = []
    query_ = if !is_nil(thing_name) do
      [{"thingName", thing_name} | query_]
    else
      query_
    end
    query_ = if !is_nil(security_profile_name) do
      [{"securityProfileName", security_profile_name} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the policies attached to the specified thing group.
  """
  def list_attached_policies(client, target, input, options \\ []) do
    path_ = "/attached-policies/#{URI.encode(target)}"
    headers = []
    {query_, input} =
      [
        {"marker", "marker"},
        {"pageSize", "pageSize"},
        {"recursive", "recursive"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Lists the findings (results) of a Device Defender audit or of the audits
  performed during a specified time period. (Findings are retained for 90
  days.)
  """
  def list_audit_findings(client, input, options \\ []) do
    path_ = "/audit/findings"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets the status of audit mitigation action tasks that were executed.
  """
  def list_audit_mitigation_actions_executions(client, action_status \\ nil, finding_id, max_results \\ nil, next_token \\ nil, task_id, options \\ []) do
    path_ = "/audit/mitigationactions/executions"
    headers = []
    query_ = []
    query_ = if !is_nil(task_id) do
      [{"taskId", task_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(finding_id) do
      [{"findingId", finding_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(action_status) do
      [{"actionStatus", action_status} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets a list of audit mitigation action tasks that match the specified
  filters.
  """
  def list_audit_mitigation_actions_tasks(client, audit_task_id \\ nil, end_time, finding_id \\ nil, max_results \\ nil, next_token \\ nil, start_time, task_status \\ nil, options \\ []) do
    path_ = "/audit/mitigationactions/tasks"
    headers = []
    query_ = []
    query_ = if !is_nil(task_status) do
      [{"taskStatus", task_status} | query_]
    else
      query_
    end
    query_ = if !is_nil(start_time) do
      [{"startTime", start_time} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(finding_id) do
      [{"findingId", finding_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(end_time) do
      [{"endTime", end_time} | query_]
    else
      query_
    end
    query_ = if !is_nil(audit_task_id) do
      [{"auditTaskId", audit_task_id} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists your Device Defender audit listings.
  """
  def list_audit_suppressions(client, input, options \\ []) do
    path_ = "/audit/suppressions/list"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Lists the Device Defender audits that have been performed during a given
  time period.
  """
  def list_audit_tasks(client, end_time, max_results \\ nil, next_token \\ nil, start_time, task_status \\ nil, task_type \\ nil, options \\ []) do
    path_ = "/audit/tasks"
    headers = []
    query_ = []
    query_ = if !is_nil(task_type) do
      [{"taskType", task_type} | query_]
    else
      query_
    end
    query_ = if !is_nil(task_status) do
      [{"taskStatus", task_status} | query_]
    else
      query_
    end
    query_ = if !is_nil(start_time) do
      [{"startTime", start_time} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(end_time) do
      [{"endTime", end_time} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the authorizers registered in your account.
  """
  def list_authorizers(client, ascending_order \\ nil, marker \\ nil, page_size \\ nil, status \\ nil, options \\ []) do
    path_ = "/authorizers/"
    headers = []
    query_ = []
    query_ = if !is_nil(status) do
      [{"status", status} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"pageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(ascending_order) do
      [{"isAscendingOrder", ascending_order} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the billing groups you have created.
  """
  def list_billing_groups(client, max_results \\ nil, name_prefix_filter \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/billing-groups"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(name_prefix_filter) do
      [{"namePrefixFilter", name_prefix_filter} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the CA certificates registered for your AWS account.

  The results are paginated with a default page size of 25. You can use the
  returned marker to retrieve additional results.
  """
  def list_c_a_certificates(client, ascending_order \\ nil, marker \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/cacertificates"
    headers = []
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"pageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(ascending_order) do
      [{"isAscendingOrder", ascending_order} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the certificates registered in your AWS account.

  The results are paginated with a default page size of 25. You can use the
  returned marker to retrieve additional results.
  """
  def list_certificates(client, ascending_order \\ nil, marker \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/certificates"
    headers = []
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"pageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(ascending_order) do
      [{"isAscendingOrder", ascending_order} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  List the device certificates signed by the specified CA certificate.
  """
  def list_certificates_by_c_a(client, ca_certificate_id, ascending_order \\ nil, marker \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/certificates-by-ca/#{URI.encode(ca_certificate_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"pageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(ascending_order) do
      [{"isAscendingOrder", ascending_order} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  List the set of dimensions that are defined for your AWS account.
  """
  def list_dimensions(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/dimensions"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets a list of domain configurations for the user. This list is sorted
  alphabetically by domain configuration name.

  <note> The domain configuration feature is in public preview and is subject
  to change.

  </note>
  """
  def list_domain_configurations(client, marker \\ nil, page_size \\ nil, service_type \\ nil, options \\ []) do
    path_ = "/domainConfigurations"
    headers = []
    query_ = []
    query_ = if !is_nil(service_type) do
      [{"serviceType", service_type} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"pageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the search indices.
  """
  def list_indices(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/indices"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the job executions for a job.
  """
  def list_job_executions_for_job(client, job_id, max_results \\ nil, next_token \\ nil, status \\ nil, options \\ []) do
    path_ = "/jobs/#{URI.encode(job_id)}/things"
    headers = []
    query_ = []
    query_ = if !is_nil(status) do
      [{"status", status} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the job executions for the specified thing.
  """
  def list_job_executions_for_thing(client, thing_name, max_results \\ nil, next_token \\ nil, status \\ nil, options \\ []) do
    path_ = "/things/#{URI.encode(thing_name)}/jobs"
    headers = []
    query_ = []
    query_ = if !is_nil(status) do
      [{"status", status} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists jobs.
  """
  def list_jobs(client, max_results \\ nil, next_token \\ nil, status \\ nil, target_selection \\ nil, thing_group_id \\ nil, thing_group_name \\ nil, options \\ []) do
    path_ = "/jobs"
    headers = []
    query_ = []
    query_ = if !is_nil(thing_group_name) do
      [{"thingGroupName", thing_group_name} | query_]
    else
      query_
    end
    query_ = if !is_nil(thing_group_id) do
      [{"thingGroupId", thing_group_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(target_selection) do
      [{"targetSelection", target_selection} | query_]
    else
      query_
    end
    query_ = if !is_nil(status) do
      [{"status", status} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets a list of all mitigation actions that match the specified filter
  criteria.
  """
  def list_mitigation_actions(client, action_type \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/mitigationactions/actions"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(action_type) do
      [{"actionType", action_type} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists OTA updates.
  """
  def list_o_t_a_updates(client, max_results \\ nil, next_token \\ nil, ota_update_status \\ nil, options \\ []) do
    path_ = "/otaUpdates"
    headers = []
    query_ = []
    query_ = if !is_nil(ota_update_status) do
      [{"otaUpdateStatus", ota_update_status} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists certificates that are being transferred but not yet accepted.
  """
  def list_outgoing_certificates(client, ascending_order \\ nil, marker \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/certificates-out-going"
    headers = []
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"pageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(ascending_order) do
      [{"isAscendingOrder", ascending_order} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists your policies.
  """
  def list_policies(client, ascending_order \\ nil, marker \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/policies"
    headers = []
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"pageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(ascending_order) do
      [{"isAscendingOrder", ascending_order} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the principals associated with the specified policy.

  **Note:** This API is deprecated. Please use `ListTargetsForPolicy`
  instead.
  """
  def list_policy_principals(client, ascending_order \\ nil, marker \\ nil, page_size \\ nil, policy_name, options \\ []) do
    path_ = "/policy-principals"
    headers = []
    headers = if !is_nil(policy_name) do
      [{"x-amzn-iot-policy", policy_name} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"pageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(ascending_order) do
      [{"isAscendingOrder", ascending_order} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the versions of the specified policy and identifies the default
  version.
  """
  def list_policy_versions(client, policy_name, options \\ []) do
    path_ = "/policies/#{URI.encode(policy_name)}/version"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the policies attached to the specified principal. If you use an
  Cognito identity, the ID must be in [AmazonCognito Identity
  format](https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax).

  **Note:** This API is deprecated. Please use `ListAttachedPolicies`
  instead.
  """
  def list_principal_policies(client, ascending_order \\ nil, marker \\ nil, page_size \\ nil, principal, options \\ []) do
    path_ = "/principal-policies"
    headers = []
    headers = if !is_nil(principal) do
      [{"x-amzn-iot-principal", principal} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"pageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(ascending_order) do
      [{"isAscendingOrder", ascending_order} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the things associated with the specified principal. A principal can
  be X.509 certificates, IAM users, groups, and roles, Amazon Cognito
  identities or federated identities.
  """
  def list_principal_things(client, max_results \\ nil, next_token \\ nil, principal, options \\ []) do
    path_ = "/principals/things"
    headers = []
    headers = if !is_nil(principal) do
      [{"x-amzn-principal", principal} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  A list of fleet provisioning template versions.
  """
  def list_provisioning_template_versions(client, template_name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/provisioning-templates/#{URI.encode(template_name)}/versions"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the fleet provisioning templates in your AWS account.
  """
  def list_provisioning_templates(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/provisioning-templates"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the role aliases registered in your account.
  """
  def list_role_aliases(client, ascending_order \\ nil, marker \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/role-aliases"
    headers = []
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"pageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(ascending_order) do
      [{"isAscendingOrder", ascending_order} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all of your scheduled audits.
  """
  def list_scheduled_audits(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/audit/scheduledaudits"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the Device Defender security profiles you have created. You can use
  filters to list only those security profiles associated with a thing group
  or only those associated with your account.
  """
  def list_security_profiles(client, dimension_name \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/security-profiles"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(dimension_name) do
      [{"dimensionName", dimension_name} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the Device Defender security profiles attached to a target (thing
  group).
  """
  def list_security_profiles_for_target(client, max_results \\ nil, next_token \\ nil, recursive \\ nil, security_profile_target_arn, options \\ []) do
    path_ = "/security-profiles-for-target"
    headers = []
    query_ = []
    query_ = if !is_nil(security_profile_target_arn) do
      [{"securityProfileTargetArn", security_profile_target_arn} | query_]
    else
      query_
    end
    query_ = if !is_nil(recursive) do
      [{"recursive", recursive} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all of the streams in your AWS account.
  """
  def list_streams(client, ascending_order \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/streams"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(ascending_order) do
      [{"isAscendingOrder", ascending_order} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the tags (metadata) you have assigned to the resource.
  """
  def list_tags_for_resource(client, next_token \\ nil, resource_arn, options \\ []) do
    path_ = "/tags"
    headers = []
    query_ = []
    query_ = if !is_nil(resource_arn) do
      [{"resourceArn", resource_arn} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  List targets for the specified policy.
  """
  def list_targets_for_policy(client, policy_name, input, options \\ []) do
    path_ = "/policy-targets/#{URI.encode(policy_name)}"
    headers = []
    {query_, input} =
      [
        {"marker", "marker"},
        {"pageSize", "pageSize"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Lists the targets (thing groups) associated with a given Device Defender
  security profile.
  """
  def list_targets_for_security_profile(client, security_profile_name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/security-profiles/#{URI.encode(security_profile_name)}/targets"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  List the thing groups in your account.
  """
  def list_thing_groups(client, max_results \\ nil, name_prefix_filter \\ nil, next_token \\ nil, parent_group \\ nil, recursive \\ nil, options \\ []) do
    path_ = "/thing-groups"
    headers = []
    query_ = []
    query_ = if !is_nil(recursive) do
      [{"recursive", recursive} | query_]
    else
      query_
    end
    query_ = if !is_nil(parent_group) do
      [{"parentGroup", parent_group} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(name_prefix_filter) do
      [{"namePrefixFilter", name_prefix_filter} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  List the thing groups to which the specified thing belongs.
  """
  def list_thing_groups_for_thing(client, thing_name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/things/#{URI.encode(thing_name)}/thing-groups"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the principals associated with the specified thing. A principal can
  be X.509 certificates, IAM users, groups, and roles, Amazon Cognito
  identities or federated identities.
  """
  def list_thing_principals(client, thing_name, options \\ []) do
    path_ = "/things/#{URI.encode(thing_name)}/principals"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Information about the thing registration tasks.
  """
  def list_thing_registration_task_reports(client, task_id, max_results \\ nil, next_token \\ nil, report_type, options \\ []) do
    path_ = "/thing-registration-tasks/#{URI.encode(task_id)}/reports"
    headers = []
    query_ = []
    query_ = if !is_nil(report_type) do
      [{"reportType", report_type} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  List bulk thing provisioning tasks.
  """
  def list_thing_registration_tasks(client, max_results \\ nil, next_token \\ nil, status \\ nil, options \\ []) do
    path_ = "/thing-registration-tasks"
    headers = []
    query_ = []
    query_ = if !is_nil(status) do
      [{"status", status} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the existing thing types.
  """
  def list_thing_types(client, max_results \\ nil, next_token \\ nil, thing_type_name \\ nil, options \\ []) do
    path_ = "/thing-types"
    headers = []
    query_ = []
    query_ = if !is_nil(thing_type_name) do
      [{"thingTypeName", thing_type_name} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists your things. Use the **attributeName** and **attributeValue**
  parameters to filter your things. For example, calling `ListThings` with
  attributeName=Color and attributeValue=Red retrieves all things in the
  registry that contain an attribute **Color** with the value **Red**.

  <note> You will not be charged for calling this API if an `Access denied`
  error is returned. You will also not be charged if no attributes or
  pagination token was provided in request and no pagination token and no
  results were returned.

  </note>
  """
  def list_things(client, attribute_name \\ nil, attribute_value \\ nil, max_results \\ nil, next_token \\ nil, thing_type_name \\ nil, options \\ []) do
    path_ = "/things"
    headers = []
    query_ = []
    query_ = if !is_nil(thing_type_name) do
      [{"thingTypeName", thing_type_name} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(attribute_value) do
      [{"attributeValue", attribute_value} | query_]
    else
      query_
    end
    query_ = if !is_nil(attribute_name) do
      [{"attributeName", attribute_name} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the things you have added to the given billing group.
  """
  def list_things_in_billing_group(client, billing_group_name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/billing-groups/#{URI.encode(billing_group_name)}/things"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the things in the specified group.
  """
  def list_things_in_thing_group(client, thing_group_name, max_results \\ nil, next_token \\ nil, recursive \\ nil, options \\ []) do
    path_ = "/thing-groups/#{URI.encode(thing_group_name)}/things"
    headers = []
    query_ = []
    query_ = if !is_nil(recursive) do
      [{"recursive", recursive} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all the topic rule destinations in your AWS account.
  """
  def list_topic_rule_destinations(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/destinations"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the rules for the specific topic.
  """
  def list_topic_rules(client, max_results \\ nil, next_token \\ nil, rule_disabled \\ nil, topic \\ nil, options \\ []) do
    path_ = "/rules"
    headers = []
    query_ = []
    query_ = if !is_nil(topic) do
      [{"topic", topic} | query_]
    else
      query_
    end
    query_ = if !is_nil(rule_disabled) do
      [{"ruleDisabled", rule_disabled} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists logging levels.
  """
  def list_v2_logging_levels(client, max_results \\ nil, next_token \\ nil, target_type \\ nil, options \\ []) do
    path_ = "/v2LoggingLevel"
    headers = []
    query_ = []
    query_ = if !is_nil(target_type) do
      [{"targetType", target_type} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the Device Defender security profile violations discovered during the
  given time period. You can use filters to limit the results to those alerts
  issued for a particular security profile, behavior, or thing (device).
  """
  def list_violation_events(client, end_time, max_results \\ nil, next_token \\ nil, security_profile_name \\ nil, start_time, thing_name \\ nil, options \\ []) do
    path_ = "/violation-events"
    headers = []
    query_ = []
    query_ = if !is_nil(thing_name) do
      [{"thingName", thing_name} | query_]
    else
      query_
    end
    query_ = if !is_nil(start_time) do
      [{"startTime", start_time} | query_]
    else
      query_
    end
    query_ = if !is_nil(security_profile_name) do
      [{"securityProfileName", security_profile_name} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(end_time) do
      [{"endTime", end_time} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Registers a CA certificate with AWS IoT. This CA certificate can then be
  used to sign device certificates, which can be then registered with AWS
  IoT. You can register up to 10 CA certificates per AWS account that have
  the same subject field. This enables you to have up to 10 certificate
  authorities sign your device certificates. If you have more than one CA
  certificate registered, make sure you pass the CA certificate when you
  register your device certificates with the RegisterCertificate API.
  """
  def register_c_a_certificate(client, input, options \\ []) do
    path_ = "/cacertificate"
    headers = []
    {query_, input} =
      [
        {"allowAutoRegistration", "allowAutoRegistration"},
        {"setAsActive", "setAsActive"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Registers a device certificate with AWS IoT. If you have more than one CA
  certificate that has the same subject field, you must specify the CA
  certificate that was used to sign the device certificate being registered.
  """
  def register_certificate(client, input, options \\ []) do
    path_ = "/certificate/register"
    headers = []
    {query_, input} =
      [
        {"setAsActive", "setAsActive"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Register a certificate that does not have a certificate authority (CA).
  """
  def register_certificate_without_c_a(client, input, options \\ []) do
    path_ = "/certificate/register-no-ca"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Provisions a thing in the device registry. RegisterThing calls other AWS
  IoT control plane APIs. These calls might exceed your account level [ AWS
  IoT Throttling
  Limits](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_iot)
  and cause throttle errors. Please contact [AWS Customer
  Support](https://console.aws.amazon.com/support/home) to raise your
  throttling limits if necessary.
  """
  def register_thing(client, input, options \\ []) do
    path_ = "/things"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Rejects a pending certificate transfer. After AWS IoT rejects a certificate
  transfer, the certificate status changes from **PENDING_TRANSFER** to
  **INACTIVE**.

  To check for pending certificate transfers, call `ListCertificates` to
  enumerate your certificates.

  This operation can only be called by the transfer destination. After it is
  called, the certificate will be returned to the source's account in the
  INACTIVE state.
  """
  def reject_certificate_transfer(client, certificate_id, input, options \\ []) do
    path_ = "/reject-certificate-transfer/#{URI.encode(certificate_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes the given thing from the billing group.
  """
  def remove_thing_from_billing_group(client, input, options \\ []) do
    path_ = "/billing-groups/removeThingFromBillingGroup"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Remove the specified thing from the specified group.

  You must specify either a `thingGroupArn` or a `thingGroupName` to identify
  the thing group and either a `thingArn` or a `thingName` to identify the
  thing to remove from the thing group.
  """
  def remove_thing_from_thing_group(client, input, options \\ []) do
    path_ = "/thing-groups/removeThingFromThingGroup"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Replaces the rule. You must specify all parameters for the new rule.
  Creating rules is an administrator-level action. Any user who has
  permission to create rules will be able to access data processed by the
  rule.
  """
  def replace_topic_rule(client, rule_name, input, options \\ []) do
    path_ = "/rules/#{URI.encode(rule_name)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  The query search index.
  """
  def search_index(client, input, options \\ []) do
    path_ = "/indices/search"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Sets the default authorizer. This will be used if a websocket connection is
  made without specifying an authorizer.
  """
  def set_default_authorizer(client, input, options \\ []) do
    path_ = "/default-authorizer"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Sets the specified version of the specified policy as the policy's default
  (operative) version. This action affects all certificates to which the
  policy is attached. To list the principals the policy is attached to, use
  the ListPrincipalPolicy API.
  """
  def set_default_policy_version(client, policy_name, policy_version_id, input, options \\ []) do
    path_ = "/policies/#{URI.encode(policy_name)}/version/#{URI.encode(policy_version_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Sets the logging options.

  NOTE: use of this command is not recommended. Use `SetV2LoggingOptions`
  instead.
  """
  def set_logging_options(client, input, options \\ []) do
    path_ = "/loggingOptions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Sets the logging level.
  """
  def set_v2_logging_level(client, input, options \\ []) do
    path_ = "/v2LoggingLevel"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Sets the logging options for the V2 logging service.
  """
  def set_v2_logging_options(client, input, options \\ []) do
    path_ = "/v2LoggingOptions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Starts a task that applies a set of mitigation actions to the specified
  target.
  """
  def start_audit_mitigation_actions_task(client, task_id, input, options \\ []) do
    path_ = "/audit/mitigationactions/tasks/#{URI.encode(task_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Starts an on-demand Device Defender audit.
  """
  def start_on_demand_audit_task(client, input, options \\ []) do
    path_ = "/audit/tasks"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a bulk thing provisioning task.
  """
  def start_thing_registration_task(client, input, options \\ []) do
    path_ = "/thing-registration-tasks"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Cancels a bulk thing provisioning task.
  """
  def stop_thing_registration_task(client, task_id, input, options \\ []) do
    path_ = "/thing-registration-tasks/#{URI.encode(task_id)}/cancel"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds to or modifies the tags of the given resource. Tags are metadata which
  can be used to manage a resource.
  """
  def tag_resource(client, input, options \\ []) do
    path_ = "/tags"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Tests if a specified principal is authorized to perform an AWS IoT action
  on a specified resource. Use this to test and debug the authorization
  behavior of devices that connect to the AWS IoT device gateway.
  """
  def test_authorization(client, input, options \\ []) do
    path_ = "/test-authorization"
    headers = []
    {query_, input} =
      [
        {"clientId", "clientId"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Tests a custom authorization behavior by invoking a specified custom
  authorizer. Use this to test and debug the custom authorization behavior of
  devices that connect to the AWS IoT device gateway.
  """
  def test_invoke_authorizer(client, authorizer_name, input, options \\ []) do
    path_ = "/authorizer/#{URI.encode(authorizer_name)}/test"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Transfers the specified certificate to the specified AWS account.

  You can cancel the transfer until it is acknowledged by the recipient.

  No notification is sent to the transfer destination's account. It is up to
  the caller to notify the transfer target.

  The certificate being transferred must not be in the ACTIVE state. You can
  use the UpdateCertificate API to deactivate it.

  The certificate must not have any policies attached to it. You can use the
  DetachPrincipalPolicy API to detach them.
  """
  def transfer_certificate(client, certificate_id, input, options \\ []) do
    path_ = "/transfer-certificate/#{URI.encode(certificate_id)}"
    headers = []
    {query_, input} =
      [
        {"targetAwsAccount", "targetAwsAccount"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes the given tags (metadata) from the resource.
  """
  def untag_resource(client, input, options \\ []) do
    path_ = "/untag"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Configures or reconfigures the Device Defender audit settings for this
  account. Settings include how audit notifications are sent and which audit
  checks are enabled or disabled.
  """
  def update_account_audit_configuration(client, input, options \\ []) do
    path_ = "/audit/configuration"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a Device Defender audit suppression.
  """
  def update_audit_suppression(client, input, options \\ []) do
    path_ = "/audit/suppressions/update"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an authorizer.
  """
  def update_authorizer(client, authorizer_name, input, options \\ []) do
    path_ = "/authorizer/#{URI.encode(authorizer_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates information about the billing group.
  """
  def update_billing_group(client, billing_group_name, input, options \\ []) do
    path_ = "/billing-groups/#{URI.encode(billing_group_name)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a registered CA certificate.
  """
  def update_c_a_certificate(client, certificate_id, input, options \\ []) do
    path_ = "/cacertificate/#{URI.encode(certificate_id)}"
    headers = []
    {query_, input} =
      [
        {"newAutoRegistrationStatus", "newAutoRegistrationStatus"},
        {"newStatus", "newStatus"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the status of the specified certificate. This operation is
  idempotent.

  Certificates must be in the ACTIVE state to authenticate devices that use a
  certificate to connect to AWS IoT.

  Within a few minutes of updating a certificate from the ACTIVE state to any
  other state, AWS IoT disconnects all devices that used that certificate to
  connect. Devices cannot use a certificate that is not in the ACTIVE state
  to reconnect.
  """
  def update_certificate(client, certificate_id, input, options \\ []) do
    path_ = "/certificates/#{URI.encode(certificate_id)}"
    headers = []
    {query_, input} =
      [
        {"newStatus", "newStatus"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the definition for a dimension. You cannot change the type of a
  dimension after it is created (you can delete it and re-create it).
  """
  def update_dimension(client, name, input, options \\ []) do
    path_ = "/dimensions/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates values stored in the domain configuration. Domain configurations
  for default endpoints can't be updated.

  <note> The domain configuration feature is in public preview and is subject
  to change.

  </note>
  """
  def update_domain_configuration(client, domain_configuration_name, input, options \\ []) do
    path_ = "/domainConfigurations/#{URI.encode(domain_configuration_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a dynamic thing group.
  """
  def update_dynamic_thing_group(client, thing_group_name, input, options \\ []) do
    path_ = "/dynamic-thing-groups/#{URI.encode(thing_group_name)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the event configurations.
  """
  def update_event_configurations(client, input, options \\ []) do
    path_ = "/event-configurations"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the search configuration.
  """
  def update_indexing_configuration(client, input, options \\ []) do
    path_ = "/indexing/config"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates supported fields of the specified job.
  """
  def update_job(client, job_id, input, options \\ []) do
    path_ = "/jobs/#{URI.encode(job_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the definition for the specified mitigation action.
  """
  def update_mitigation_action(client, action_name, input, options \\ []) do
    path_ = "/mitigationactions/actions/#{URI.encode(action_name)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a fleet provisioning template.
  """
  def update_provisioning_template(client, template_name, input, options \\ []) do
    path_ = "/provisioning-templates/#{URI.encode(template_name)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a role alias.
  """
  def update_role_alias(client, role_alias, input, options \\ []) do
    path_ = "/role-aliases/#{URI.encode(role_alias)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a scheduled audit, including which checks are performed and how
  often the audit takes place.
  """
  def update_scheduled_audit(client, scheduled_audit_name, input, options \\ []) do
    path_ = "/audit/scheduledaudits/#{URI.encode(scheduled_audit_name)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a Device Defender security profile.
  """
  def update_security_profile(client, security_profile_name, input, options \\ []) do
    path_ = "/security-profiles/#{URI.encode(security_profile_name)}"
    headers = []
    {query_, input} =
      [
        {"expectedVersion", "expectedVersion"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an existing stream. The stream version will be incremented by one.
  """
  def update_stream(client, stream_id, input, options \\ []) do
    path_ = "/streams/#{URI.encode(stream_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the data for a thing.
  """
  def update_thing(client, thing_name, input, options \\ []) do
    path_ = "/things/#{URI.encode(thing_name)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Update a thing group.
  """
  def update_thing_group(client, thing_group_name, input, options \\ []) do
    path_ = "/thing-groups/#{URI.encode(thing_group_name)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the groups to which the thing belongs.
  """
  def update_thing_groups_for_thing(client, input, options \\ []) do
    path_ = "/thing-groups/updateThingGroupsForThing"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a topic rule destination. You use this to change the status,
  endpoint URL, or confirmation URL of the destination.
  """
  def update_topic_rule_destination(client, input, options \\ []) do
    path_ = "/destinations"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Validates a Device Defender security profile behaviors specification.
  """
  def validate_security_profile_behaviors(client, input, options \\ []) do
    path_ = "/security-profile-behaviors/validate"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, map()}
          | {:error, map(), map()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "execute-api"}
    host = build_host("iot", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body} = response} ->
        {:error, decode!(client, body), response}

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

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
