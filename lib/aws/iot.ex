# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

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
    url = "/accept-certificate-transfer/#{URI.encode(certificate_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Adds a thing to a billing group.
  """
  def add_thing_to_billing_group(client, input, options \\ []) do
    url = "/billing-groups/addThingToBillingGroup"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Adds a thing to a thing group.
  """
  def add_thing_to_thing_group(client, input, options \\ []) do
    url = "/thing-groups/addThingToThingGroup"
    headers = []
    request(client, :put, url, headers, input, options, nil)
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
    url = "/jobs/#{URI.encode(job_id)}/targets"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Attaches a policy to the specified target.
  """
  def attach_policy(client, policy_name, input, options \\ []) do
    url = "/target-policies/#{URI.encode(policy_name)}"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Attaches the specified policy to the specified principal (certificate or
  other credential).

  **Note:** This API is deprecated. Please use `AttachPolicy` instead.
  """
  def attach_principal_policy(client, policy_name, input, options \\ []) do
    url = "/principal-policies/#{URI.encode(policy_name)}"

    {headers, input} =
      [
        {"principal", "x-amzn-iot-principal"},
      ]
      |> AWS.Request.build_headers(input)
    
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Associates a Device Defender security profile with a thing group or this
  account. Each thing group or account can have up to five security profiles
  associated with it.
  """
  def attach_security_profile(client, security_profile_name, input, options \\ []) do
    url = "/security-profiles/#{URI.encode(security_profile_name)}/targets"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Attaches the specified principal to the specified thing. A principal can be
  X.509 certificates, IAM users, groups, and roles, Amazon Cognito identities
  or federated identities.
  """
  def attach_thing_principal(client, thing_name, input, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}/principals"

    {headers, input} =
      [
        {"principal", "x-amzn-principal"},
      ]
      |> AWS.Request.build_headers(input)
    
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Cancels a mitigation action task that is in progress. If the task is not in
  progress, an InvalidRequestException occurs.
  """
  def cancel_audit_mitigation_actions_task(client, task_id, input, options \\ []) do
    url = "/audit/mitigationactions/tasks/#{URI.encode(task_id)}/cancel"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Cancels an audit that is in progress. The audit can be either scheduled or
  on-demand. If the audit is not in progress, an "InvalidRequestException"
  occurs.
  """
  def cancel_audit_task(client, task_id, input, options \\ []) do
    url = "/audit/tasks/#{URI.encode(task_id)}/cancel"
    headers = []
    request(client, :put, url, headers, input, options, nil)
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
    url = "/cancel-certificate-transfer/#{URI.encode(certificate_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Cancels a job.
  """
  def cancel_job(client, job_id, input, options \\ []) do
    url = "/jobs/#{URI.encode(job_id)}/cancel"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Cancels the execution of a job for a given thing.
  """
  def cancel_job_execution(client, job_id, thing_name, input, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}/jobs/#{URI.encode(job_id)}/cancel"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Clears the default authorizer.
  """
  def clear_default_authorizer(client, input, options \\ []) do
    url = "/default-authorizer"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Creates an authorizer.
  """
  def create_authorizer(client, authorizer_name, input, options \\ []) do
    url = "/authorizer/#{URI.encode(authorizer_name)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates a billing group.
  """
  def create_billing_group(client, billing_group_name, input, options \\ []) do
    url = "/billing-groups/#{URI.encode(billing_group_name)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
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
    url = "/certificates"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates a dynamic thing group.
  """
  def create_dynamic_thing_group(client, thing_group_name, input, options \\ []) do
    url = "/dynamic-thing-groups/#{URI.encode(thing_group_name)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates a job.
  """
  def create_job(client, job_id, input, options \\ []) do
    url = "/jobs/#{URI.encode(job_id)}"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Creates a 2048-bit RSA key pair and issues an X.509 certificate using the
  issued public key.

  **Note** This is the only time AWS IoT issues the private key for this
  certificate, so it is important to keep it in a secure location.
  """
  def create_keys_and_certificate(client, input, options \\ []) do
    url = "/keys-and-certificate"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Defines an action that can be applied to audit findings by using
  StartAuditMitigationActionsTask. Each mitigation action can apply only one
  type of change.
  """
  def create_mitigation_action(client, action_name, input, options \\ []) do
    url = "/mitigationactions/actions/#{URI.encode(action_name)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates an AWS IoT OTAUpdate on a target group of things or groups.
  """
  def create_o_t_a_update(client, ota_update_id, input, options \\ []) do
    url = "/otaUpdates/#{URI.encode(ota_update_id)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates an AWS IoT policy.

  The created policy is the default version for the policy. This operation
  creates a policy version with a version identifier of **1** and sets **1**
  as the policy's default version.
  """
  def create_policy(client, policy_name, input, options \\ []) do
    url = "/policies/#{URI.encode(policy_name)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
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
    url = "/policies/#{URI.encode(policy_name)}/version"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates a role alias.
  """
  def create_role_alias(client, role_alias, input, options \\ []) do
    url = "/role-aliases/#{URI.encode(role_alias)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates a scheduled audit that is run at a specified time interval.
  """
  def create_scheduled_audit(client, scheduled_audit_name, input, options \\ []) do
    url = "/audit/scheduledaudits/#{URI.encode(scheduled_audit_name)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates a Device Defender security profile.
  """
  def create_security_profile(client, security_profile_name, input, options \\ []) do
    url = "/security-profiles/#{URI.encode(security_profile_name)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates a stream for delivering one or more large files in chunks over
  MQTT. A stream transports data bytes in chunks or blocks packaged as MQTT
  messages from a source like S3. You can have one or more files associated
  with a stream. The total size of a file associated with the stream cannot
  exceed more than 2 MB. The stream will be created with version 0. If a
  stream is created with the same streamID as a stream that existed and was
  deleted within last 90 days, we will resurrect that old stream by
  incrementing the version by 1.
  """
  def create_stream(client, stream_id, input, options \\ []) do
    url = "/streams/#{URI.encode(stream_id)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates a thing record in the registry. If this call is made multiple times
  using the same thing name and configuration, the call will succeed. If this
  call is made with the same thing name but different configuration a
  `ResourceAlreadyExistsException` is thrown.

  <note> This is a control plane operation. See
  [Authorization](https://docs.aws.amazon.com/iot/latest/developerguide/authorization.html)
  for information about authorizing control plane actions.

  </note>
  """
  def create_thing(client, thing_name, input, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Create a thing group.

  <note> This is a control plane operation. See
  [Authorization](https://docs.aws.amazon.com/iot/latest/developerguide/authorization.html)
  for information about authorizing control plane actions.

  </note>
  """
  def create_thing_group(client, thing_group_name, input, options \\ []) do
    url = "/thing-groups/#{URI.encode(thing_group_name)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates a new thing type.
  """
  def create_thing_type(client, thing_type_name, input, options \\ []) do
    url = "/thing-types/#{URI.encode(thing_type_name)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates a rule. Creating rules is an administrator-level action. Any user
  who has permission to create rules will be able to access data processed by
  the rule.
  """
  def create_topic_rule(client, rule_name, input, options \\ []) do
    url = "/rules/#{URI.encode(rule_name)}"

    {headers, input} =
      [
        {"tags", "x-amz-tagging"},
      ]
      |> AWS.Request.build_headers(input)
    
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Restores the default settings for Device Defender audits for this account.
  Any configuration data you entered is deleted and all audit checks are
  reset to disabled.
  """
  def delete_account_audit_configuration(client, input, options \\ []) do
    url = "/audit/configuration"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes an authorizer.
  """
  def delete_authorizer(client, authorizer_name, input, options \\ []) do
    url = "/authorizer/#{URI.encode(authorizer_name)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes the billing group.
  """
  def delete_billing_group(client, billing_group_name, input, options \\ []) do
    url = "/billing-groups/#{URI.encode(billing_group_name)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes a registered CA certificate.
  """
  def delete_c_a_certificate(client, certificate_id, input, options \\ []) do
    url = "/cacertificate/#{URI.encode(certificate_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes the specified certificate.

  A certificate cannot be deleted if it has a policy or IoT thing attached to
  it or if its status is set to ACTIVE. To delete a certificate, first use
  the `DetachPrincipalPolicy` API to detach all policies. Next, use the
  `UpdateCertificate` API to set the certificate to the INACTIVE status.
  """
  def delete_certificate(client, certificate_id, input, options \\ []) do
    url = "/certificates/#{URI.encode(certificate_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes a dynamic thing group.
  """
  def delete_dynamic_thing_group(client, thing_group_name, input, options \\ []) do
    url = "/dynamic-thing-groups/#{URI.encode(thing_group_name)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
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
    url = "/jobs/#{URI.encode(job_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes a job execution.
  """
  def delete_job_execution(client, execution_number, job_id, thing_name, input, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}/jobs/#{URI.encode(job_id)}/executionNumber/#{URI.encode(execution_number)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes a defined mitigation action from your AWS account.
  """
  def delete_mitigation_action(client, action_name, input, options \\ []) do
    url = "/mitigationactions/actions/#{URI.encode(action_name)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Delete an OTA update.
  """
  def delete_o_t_a_update(client, ota_update_id, input, options \\ []) do
    url = "/otaUpdates/#{URI.encode(ota_update_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
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
    url = "/policies/#{URI.encode(policy_name)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes the specified version of the specified policy. You cannot delete
  the default version of a policy using this API. To delete the default
  version of a policy, use `DeletePolicy`. To find out which version of a
  policy is marked as the default version, use ListPolicyVersions.
  """
  def delete_policy_version(client, policy_name, policy_version_id, input, options \\ []) do
    url = "/policies/#{URI.encode(policy_name)}/version/#{URI.encode(policy_version_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes a CA certificate registration code.
  """
  def delete_registration_code(client, input, options \\ []) do
    url = "/registrationcode"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes a role alias
  """
  def delete_role_alias(client, role_alias, input, options \\ []) do
    url = "/role-aliases/#{URI.encode(role_alias)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes a scheduled audit.
  """
  def delete_scheduled_audit(client, scheduled_audit_name, input, options \\ []) do
    url = "/audit/scheduledaudits/#{URI.encode(scheduled_audit_name)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes a Device Defender security profile.
  """
  def delete_security_profile(client, security_profile_name, input, options \\ []) do
    url = "/security-profiles/#{URI.encode(security_profile_name)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes a stream.
  """
  def delete_stream(client, stream_id, input, options \\ []) do
    url = "/streams/#{URI.encode(stream_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes the specified thing. Returns successfully with no error if the
  deletion is successful or you specify a thing that doesn't exist.
  """
  def delete_thing(client, thing_name, input, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes a thing group.
  """
  def delete_thing_group(client, thing_group_name, input, options \\ []) do
    url = "/thing-groups/#{URI.encode(thing_group_name)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes the specified thing type. You cannot delete a thing type if it has
  things associated with it. To delete a thing type, first mark it as
  deprecated by calling `DeprecateThingType`, then remove any associated
  things by calling `UpdateThing` to change the thing type on any associated
  thing, and finally use `DeleteThingType` to delete the thing type.
  """
  def delete_thing_type(client, thing_type_name, input, options \\ []) do
    url = "/thing-types/#{URI.encode(thing_type_name)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes the rule.
  """
  def delete_topic_rule(client, rule_name, input, options \\ []) do
    url = "/rules/#{URI.encode(rule_name)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes a logging level.
  """
  def delete_v2_logging_level(client, input, options \\ []) do
    url = "/v2LoggingLevel"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deprecates a thing type. You can not associate new things with deprecated
  thing type.
  """
  def deprecate_thing_type(client, thing_type_name, input, options \\ []) do
    url = "/thing-types/#{URI.encode(thing_type_name)}/deprecate"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Gets information about the Device Defender audit settings for this account.
  Settings include how audit notifications are sent and which audit checks
  are enabled or disabled.
  """
  def describe_account_audit_configuration(client, options \\ []) do
    url = "/audit/configuration"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about a single audit finding. Properties include the
  reason for noncompliance, the severity of the issue, and when the audit
  that returned the finding was started.
  """
  def describe_audit_finding(client, finding_id, options \\ []) do
    url = "/audit/findings/#{URI.encode(finding_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about an audit mitigation task that is used to apply
  mitigation actions to a set of audit findings. Properties include the
  actions being applied, the audit checks to which they're being applied, the
  task status, and aggregated task statistics.
  """
  def describe_audit_mitigation_actions_task(client, task_id, options \\ []) do
    url = "/audit/mitigationactions/tasks/#{URI.encode(task_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about a Device Defender audit.
  """
  def describe_audit_task(client, task_id, options \\ []) do
    url = "/audit/tasks/#{URI.encode(task_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Describes an authorizer.
  """
  def describe_authorizer(client, authorizer_name, options \\ []) do
    url = "/authorizer/#{URI.encode(authorizer_name)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Returns information about a billing group.
  """
  def describe_billing_group(client, billing_group_name, options \\ []) do
    url = "/billing-groups/#{URI.encode(billing_group_name)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Describes a registered CA certificate.
  """
  def describe_c_a_certificate(client, certificate_id, options \\ []) do
    url = "/cacertificate/#{URI.encode(certificate_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about the specified certificate.
  """
  def describe_certificate(client, certificate_id, options \\ []) do
    url = "/certificates/#{URI.encode(certificate_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Describes the default authorizer.
  """
  def describe_default_authorizer(client, options \\ []) do
    url = "/default-authorizer"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Returns a unique endpoint specific to the AWS account making the call.
  """
  def describe_endpoint(client, options \\ []) do
    url = "/endpoint"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Describes event configurations.
  """
  def describe_event_configurations(client, options \\ []) do
    url = "/event-configurations"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Describes a search index.
  """
  def describe_index(client, index_name, options \\ []) do
    url = "/indices/#{URI.encode(index_name)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Describes a job.
  """
  def describe_job(client, job_id, options \\ []) do
    url = "/jobs/#{URI.encode(job_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Describes a job execution.
  """
  def describe_job_execution(client, job_id, thing_name, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}/jobs/#{URI.encode(job_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about a mitigation action.
  """
  def describe_mitigation_action(client, action_name, options \\ []) do
    url = "/mitigationactions/actions/#{URI.encode(action_name)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Describes a role alias.
  """
  def describe_role_alias(client, role_alias, options \\ []) do
    url = "/role-aliases/#{URI.encode(role_alias)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about a scheduled audit.
  """
  def describe_scheduled_audit(client, scheduled_audit_name, options \\ []) do
    url = "/audit/scheduledaudits/#{URI.encode(scheduled_audit_name)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about a Device Defender security profile.
  """
  def describe_security_profile(client, security_profile_name, options \\ []) do
    url = "/security-profiles/#{URI.encode(security_profile_name)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about a stream.
  """
  def describe_stream(client, stream_id, options \\ []) do
    url = "/streams/#{URI.encode(stream_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about the specified thing.
  """
  def describe_thing(client, thing_name, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Describe a thing group.
  """
  def describe_thing_group(client, thing_group_name, options \\ []) do
    url = "/thing-groups/#{URI.encode(thing_group_name)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Describes a bulk thing provisioning task.
  """
  def describe_thing_registration_task(client, task_id, options \\ []) do
    url = "/thing-registration-tasks/#{URI.encode(task_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about the specified thing type.
  """
  def describe_thing_type(client, thing_type_name, options \\ []) do
    url = "/thing-types/#{URI.encode(thing_type_name)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Detaches a policy from the specified target.
  """
  def detach_policy(client, policy_name, input, options \\ []) do
    url = "/target-policies/#{URI.encode(policy_name)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Removes the specified policy from the specified certificate.

  **Note:** This API is deprecated. Please use `DetachPolicy` instead.
  """
  def detach_principal_policy(client, policy_name, input, options \\ []) do
    url = "/principal-policies/#{URI.encode(policy_name)}"

    {headers, input} =
      [
        {"principal", "x-amzn-iot-principal"},
      ]
      |> AWS.Request.build_headers(input)
    
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Disassociates a Device Defender security profile from a thing group or from
  this account.
  """
  def detach_security_profile(client, security_profile_name, input, options \\ []) do
    url = "/security-profiles/#{URI.encode(security_profile_name)}/targets"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
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
    url = "/things/#{URI.encode(thing_name)}/principals"

    {headers, input} =
      [
        {"principal", "x-amzn-principal"},
      ]
      |> AWS.Request.build_headers(input)
    
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Disables the rule.
  """
  def disable_topic_rule(client, rule_name, input, options \\ []) do
    url = "/rules/#{URI.encode(rule_name)}/disable"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Enables the rule.
  """
  def enable_topic_rule(client, rule_name, input, options \\ []) do
    url = "/rules/#{URI.encode(rule_name)}/enable"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Gets a list of the policies that have an effect on the authorization
  behavior of the specified device when it connects to the AWS IoT device
  gateway.
  """
  def get_effective_policies(client, input, options \\ []) do
    url = "/effective-policies"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Gets the search configuration.
  """
  def get_indexing_configuration(client, options \\ []) do
    url = "/indexing/config"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets a job document.
  """
  def get_job_document(client, job_id, options \\ []) do
    url = "/jobs/#{URI.encode(job_id)}/job-document"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets the logging options.

  NOTE: use of this command is not recommended. Use `GetV2LoggingOptions`
  instead.
  """
  def get_logging_options(client, options \\ []) do
    url = "/loggingOptions"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets an OTA update.
  """
  def get_o_t_a_update(client, ota_update_id, options \\ []) do
    url = "/otaUpdates/#{URI.encode(ota_update_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about the specified policy with the policy document of the
  default version.
  """
  def get_policy(client, policy_name, options \\ []) do
    url = "/policies/#{URI.encode(policy_name)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about the specified policy version.
  """
  def get_policy_version(client, policy_name, policy_version_id, options \\ []) do
    url = "/policies/#{URI.encode(policy_name)}/version/#{URI.encode(policy_version_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets a registration code used to register a CA certificate with AWS IoT.
  """
  def get_registration_code(client, options \\ []) do
    url = "/registrationcode"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets statistics about things that match the specified query.
  """
  def get_statistics(client, input, options \\ []) do
    url = "/indices/statistics"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Gets information about the rule.
  """
  def get_topic_rule(client, rule_name, options \\ []) do
    url = "/rules/#{URI.encode(rule_name)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets the fine grained logging options.
  """
  def get_v2_logging_options(client, options \\ []) do
    url = "/v2LoggingOptions"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the active violations for a given Device Defender security profile.
  """
  def list_active_violations(client, options \\ []) do
    url = "/active-violations"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the policies attached to the specified thing group.
  """
  def list_attached_policies(client, target, input, options \\ []) do
    url = "/attached-policies/#{URI.encode(target)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Lists the findings (results) of a Device Defender audit or of the audits
  performed during a specified time period. (Findings are retained for 180
  days.)
  """
  def list_audit_findings(client, input, options \\ []) do
    url = "/audit/findings"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Gets the status of audit mitigation action tasks that were executed.
  """
  def list_audit_mitigation_actions_executions(client, options \\ []) do
    url = "/audit/mitigationactions/executions"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets a list of audit mitigation action tasks that match the specified
  filters.
  """
  def list_audit_mitigation_actions_tasks(client, options \\ []) do
    url = "/audit/mitigationactions/tasks"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the Device Defender audits that have been performed during a given
  time period.
  """
  def list_audit_tasks(client, options \\ []) do
    url = "/audit/tasks"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the authorizers registered in your account.
  """
  def list_authorizers(client, options \\ []) do
    url = "/authorizers"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the billing groups you have created.
  """
  def list_billing_groups(client, options \\ []) do
    url = "/billing-groups"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the CA certificates registered for your AWS account.

  The results are paginated with a default page size of 25. You can use the
  returned marker to retrieve additional results.
  """
  def list_c_a_certificates(client, options \\ []) do
    url = "/cacertificates"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the certificates registered in your AWS account.

  The results are paginated with a default page size of 25. You can use the
  returned marker to retrieve additional results.
  """
  def list_certificates(client, options \\ []) do
    url = "/certificates"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  List the device certificates signed by the specified CA certificate.
  """
  def list_certificates_by_c_a(client, ca_certificate_id, options \\ []) do
    url = "/certificates-by-ca/#{URI.encode(ca_certificate_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the search indices.
  """
  def list_indices(client, options \\ []) do
    url = "/indices"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the job executions for a job.
  """
  def list_job_executions_for_job(client, job_id, options \\ []) do
    url = "/jobs/#{URI.encode(job_id)}/things"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the job executions for the specified thing.
  """
  def list_job_executions_for_thing(client, thing_name, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}/jobs"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists jobs.
  """
  def list_jobs(client, options \\ []) do
    url = "/jobs"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets a list of all mitigation actions that match the specified filter
  criteria.
  """
  def list_mitigation_actions(client, options \\ []) do
    url = "/mitigationactions/actions"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists OTA updates.
  """
  def list_o_t_a_updates(client, options \\ []) do
    url = "/otaUpdates"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists certificates that are being transferred but not yet accepted.
  """
  def list_outgoing_certificates(client, options \\ []) do
    url = "/certificates-out-going"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists your policies.
  """
  def list_policies(client, options \\ []) do
    url = "/policies"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the principals associated with the specified policy.

  **Note:** This API is deprecated. Please use `ListTargetsForPolicy`
  instead.
  """
  def list_policy_principals(client, policy_name \\ nil, options \\ []) do
    url = "/policy-principals"
    headers = []
    headers = if !is_nil(policy_name) do
      [{"x-amzn-iot-policy", policy_name} | headers]
    else
      headers
    end
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the versions of the specified policy and identifies the default
  version.
  """
  def list_policy_versions(client, policy_name, options \\ []) do
    url = "/policies/#{URI.encode(policy_name)}/version"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the policies attached to the specified principal. If you use an
  Cognito identity, the ID must be in [AmazonCognito Identity
  format](https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax).

  **Note:** This API is deprecated. Please use `ListAttachedPolicies`
  instead.
  """
  def list_principal_policies(client, principal \\ nil, options \\ []) do
    url = "/principal-policies"
    headers = []
    headers = if !is_nil(principal) do
      [{"x-amzn-iot-principal", principal} | headers]
    else
      headers
    end
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the things associated with the specified principal. A principal can
  be X.509 certificates, IAM users, groups, and roles, Amazon Cognito
  identities or federated identities.
  """
  def list_principal_things(client, principal \\ nil, options \\ []) do
    url = "/principals/things"
    headers = []
    headers = if !is_nil(principal) do
      [{"x-amzn-principal", principal} | headers]
    else
      headers
    end
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the role aliases registered in your account.
  """
  def list_role_aliases(client, options \\ []) do
    url = "/role-aliases"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists all of your scheduled audits.
  """
  def list_scheduled_audits(client, options \\ []) do
    url = "/audit/scheduledaudits"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the Device Defender security profiles you have created. You can use
  filters to list only those security profiles associated with a thing group
  or only those associated with your account.
  """
  def list_security_profiles(client, options \\ []) do
    url = "/security-profiles"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the Device Defender security profiles attached to a target (thing
  group).
  """
  def list_security_profiles_for_target(client, options \\ []) do
    url = "/security-profiles-for-target"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists all of the streams in your AWS account.
  """
  def list_streams(client, options \\ []) do
    url = "/streams"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the tags (metadata) you have assigned to the resource.
  """
  def list_tags_for_resource(client, options \\ []) do
    url = "/tags"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  List targets for the specified policy.
  """
  def list_targets_for_policy(client, policy_name, input, options \\ []) do
    url = "/policy-targets/#{URI.encode(policy_name)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Lists the targets (thing groups) associated with a given Device Defender
  security profile.
  """
  def list_targets_for_security_profile(client, security_profile_name, options \\ []) do
    url = "/security-profiles/#{URI.encode(security_profile_name)}/targets"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  List the thing groups in your account.
  """
  def list_thing_groups(client, options \\ []) do
    url = "/thing-groups"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  List the thing groups to which the specified thing belongs.
  """
  def list_thing_groups_for_thing(client, thing_name, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}/thing-groups"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the principals associated with the specified thing. A principal can
  be X.509 certificates, IAM users, groups, and roles, Amazon Cognito
  identities or federated identities.
  """
  def list_thing_principals(client, thing_name, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}/principals"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Information about the thing registration tasks.
  """
  def list_thing_registration_task_reports(client, task_id, options \\ []) do
    url = "/thing-registration-tasks/#{URI.encode(task_id)}/reports"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  List bulk thing provisioning tasks.
  """
  def list_thing_registration_tasks(client, options \\ []) do
    url = "/thing-registration-tasks"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the existing thing types.
  """
  def list_thing_types(client, options \\ []) do
    url = "/thing-types"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists your things. Use the **attributeName** and **attributeValue**
  parameters to filter your things. For example, calling `ListThings` with
  attributeName=Color and attributeValue=Red retrieves all things in the
  registry that contain an attribute **Color** with the value **Red**.
  """
  def list_things(client, options \\ []) do
    url = "/things"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the things you have added to the given billing group.
  """
  def list_things_in_billing_group(client, billing_group_name, options \\ []) do
    url = "/billing-groups/#{URI.encode(billing_group_name)}/things"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the things in the specified group.
  """
  def list_things_in_thing_group(client, thing_group_name, options \\ []) do
    url = "/thing-groups/#{URI.encode(thing_group_name)}/things"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the rules for the specific topic.
  """
  def list_topic_rules(client, options \\ []) do
    url = "/rules"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists logging levels.
  """
  def list_v2_logging_levels(client, options \\ []) do
    url = "/v2LoggingLevel"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the Device Defender security profile violations discovered during the
  given time period. You can use filters to limit the results to those alerts
  issued for a particular security profile, behavior, or thing (device).
  """
  def list_violation_events(client, options \\ []) do
    url = "/violation-events"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
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
    url = "/cacertificate"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Registers a device certificate with AWS IoT. If you have more than one CA
  certificate that has the same subject field, you must specify the CA
  certificate that was used to sign the device certificate being registered.
  """
  def register_certificate(client, input, options \\ []) do
    url = "/certificate/register"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Provisions a thing.
  """
  def register_thing(client, input, options \\ []) do
    url = "/things"
    headers = []
    request(client, :post, url, headers, input, options, nil)
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
    url = "/reject-certificate-transfer/#{URI.encode(certificate_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Removes the given thing from the billing group.
  """
  def remove_thing_from_billing_group(client, input, options \\ []) do
    url = "/billing-groups/removeThingFromBillingGroup"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Remove the specified thing from the specified group.
  """
  def remove_thing_from_thing_group(client, input, options \\ []) do
    url = "/thing-groups/removeThingFromThingGroup"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Replaces the rule. You must specify all parameters for the new rule.
  Creating rules is an administrator-level action. Any user who has
  permission to create rules will be able to access data processed by the
  rule.
  """
  def replace_topic_rule(client, rule_name, input, options \\ []) do
    url = "/rules/#{URI.encode(rule_name)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  The query search index.
  """
  def search_index(client, input, options \\ []) do
    url = "/indices/search"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Sets the default authorizer. This will be used if a websocket connection is
  made without specifying an authorizer.
  """
  def set_default_authorizer(client, input, options \\ []) do
    url = "/default-authorizer"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Sets the specified version of the specified policy as the policy's default
  (operative) version. This action affects all certificates to which the
  policy is attached. To list the principals the policy is attached to, use
  the ListPrincipalPolicy API.
  """
  def set_default_policy_version(client, policy_name, policy_version_id, input, options \\ []) do
    url = "/policies/#{URI.encode(policy_name)}/version/#{URI.encode(policy_version_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Sets the logging options.

  NOTE: use of this command is not recommended. Use `SetV2LoggingOptions`
  instead.
  """
  def set_logging_options(client, input, options \\ []) do
    url = "/loggingOptions"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Sets the logging level.
  """
  def set_v2_logging_level(client, input, options \\ []) do
    url = "/v2LoggingLevel"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Sets the logging options for the V2 logging service.
  """
  def set_v2_logging_options(client, input, options \\ []) do
    url = "/v2LoggingOptions"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Starts a task that applies a set of mitigation actions to the specified
  target.
  """
  def start_audit_mitigation_actions_task(client, task_id, input, options \\ []) do
    url = "/audit/mitigationactions/tasks/#{URI.encode(task_id)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Starts an on-demand Device Defender audit.
  """
  def start_on_demand_audit_task(client, input, options \\ []) do
    url = "/audit/tasks"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates a bulk thing provisioning task.
  """
  def start_thing_registration_task(client, input, options \\ []) do
    url = "/thing-registration-tasks"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Cancels a bulk thing provisioning task.
  """
  def stop_thing_registration_task(client, task_id, input, options \\ []) do
    url = "/thing-registration-tasks/#{URI.encode(task_id)}/cancel"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Adds to or modifies the tags of the given resource. Tags are metadata which
  can be used to manage a resource.
  """
  def tag_resource(client, input, options \\ []) do
    url = "/tags"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Tests if a specified principal is authorized to perform an AWS IoT action
  on a specified resource. Use this to test and debug the authorization
  behavior of devices that connect to the AWS IoT device gateway.
  """
  def test_authorization(client, input, options \\ []) do
    url = "/test-authorization"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Tests a custom authorization behavior by invoking a specified custom
  authorizer. Use this to test and debug the custom authorization behavior of
  devices that connect to the AWS IoT device gateway.
  """
  def test_invoke_authorizer(client, authorizer_name, input, options \\ []) do
    url = "/authorizer/#{URI.encode(authorizer_name)}/test"
    headers = []
    request(client, :post, url, headers, input, options, nil)
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
    url = "/transfer-certificate/#{URI.encode(certificate_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Removes the given tags (metadata) from the resource.
  """
  def untag_resource(client, input, options \\ []) do
    url = "/untag"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Configures or reconfigures the Device Defender audit settings for this
  account. Settings include how audit notifications are sent and which audit
  checks are enabled or disabled.
  """
  def update_account_audit_configuration(client, input, options \\ []) do
    url = "/audit/configuration"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Updates an authorizer.
  """
  def update_authorizer(client, authorizer_name, input, options \\ []) do
    url = "/authorizer/#{URI.encode(authorizer_name)}"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Updates information about the billing group.
  """
  def update_billing_group(client, billing_group_name, input, options \\ []) do
    url = "/billing-groups/#{URI.encode(billing_group_name)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Updates a registered CA certificate.
  """
  def update_c_a_certificate(client, certificate_id, input, options \\ []) do
    url = "/cacertificate/#{URI.encode(certificate_id)}"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Updates the status of the specified certificate. This operation is
  idempotent.

  Moving a certificate from the ACTIVE state (including REVOKED) will not
  disconnect currently connected devices, but these devices will be unable to
  reconnect.

  The ACTIVE state is required to authenticate devices connecting to AWS IoT
  using a certificate.
  """
  def update_certificate(client, certificate_id, input, options \\ []) do
    url = "/certificates/#{URI.encode(certificate_id)}"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Updates a dynamic thing group.
  """
  def update_dynamic_thing_group(client, thing_group_name, input, options \\ []) do
    url = "/dynamic-thing-groups/#{URI.encode(thing_group_name)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Updates the event configurations.
  """
  def update_event_configurations(client, input, options \\ []) do
    url = "/event-configurations"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Updates the search configuration.
  """
  def update_indexing_configuration(client, input, options \\ []) do
    url = "/indexing/config"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Updates supported fields of the specified job.
  """
  def update_job(client, job_id, input, options \\ []) do
    url = "/jobs/#{URI.encode(job_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Updates the definition for the specified mitigation action.
  """
  def update_mitigation_action(client, action_name, input, options \\ []) do
    url = "/mitigationactions/actions/#{URI.encode(action_name)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Updates a role alias.
  """
  def update_role_alias(client, role_alias, input, options \\ []) do
    url = "/role-aliases/#{URI.encode(role_alias)}"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Updates a scheduled audit, including which checks are performed and how
  often the audit takes place.
  """
  def update_scheduled_audit(client, scheduled_audit_name, input, options \\ []) do
    url = "/audit/scheduledaudits/#{URI.encode(scheduled_audit_name)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Updates a Device Defender security profile.
  """
  def update_security_profile(client, security_profile_name, input, options \\ []) do
    url = "/security-profiles/#{URI.encode(security_profile_name)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Updates an existing stream. The stream version will be incremented by one.
  """
  def update_stream(client, stream_id, input, options \\ []) do
    url = "/streams/#{URI.encode(stream_id)}"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Updates the data for a thing.
  """
  def update_thing(client, thing_name, input, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Update a thing group.
  """
  def update_thing_group(client, thing_group_name, input, options \\ []) do
    url = "/thing-groups/#{URI.encode(thing_group_name)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Updates the groups to which the thing belongs.
  """
  def update_thing_groups_for_thing(client, input, options \\ []) do
    url = "/thing-groups/updateThingGroupsForThing"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Validates a Device Defender security profile behaviors specification.
  """
  def validate_security_profile_behaviors(client, input, options \\ []) do
    url = "/security-profile-behaviors/validate"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), map(), list(), pos_integer()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, method, url, headers, input, options, success_status_code) do
    client = %{client | service: "execute-api"}
    host = get_host("iot", client)
    url = get_url(host, url, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Security-Token", client.session_token} | headers
    ]

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, response}

      {:ok, %HTTPoison.Response{status_code: status_code, body: body} = response}
      when status_code == 200 or status_code == 202 or status_code == 204->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body, %{})["message"]
        {:error, reason}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body, %{})["message"]
        {:error, reason}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, url, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{url}/"
  end

  defp encode_payload(input) do
    if input != nil, do: Poison.Encoder.encode(input, []), else: ""
  end
end
