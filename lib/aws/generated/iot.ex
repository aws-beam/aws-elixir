# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoT do
  @moduledoc """
  IoT

  IoT provides secure, bi-directional communication between Internet-connected
  devices (such as sensors, actuators, embedded devices, or smart appliances) and
  the Amazon Web Services
  cloud.

  You can discover your custom IoT-Data endpoint to communicate with, configure
  rules for data processing and integration with other services, organize
  resources
  associated with each device (Registry), configure logging, and create and manage
  policies and credentials to authenticate devices.

  The service endpoints that expose this API are listed in
  [Amazon Web Services IoT Core Endpoints and Quotas](https://docs.aws.amazon.com/general/latest/gr/iot-core.html).
  You must use the endpoint for the region that has the resources you want to
  access.

  The service name used by [Amazon Web Services Signature Version
  4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html) to
  sign the request is:
  *execute-api*.

  For more information about how IoT works, see the [Developer Guide](https://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html).

  For information about how to use the credentials provider for IoT, see
  [Authorizing Direct Calls to Amazon Web Services Services](https://docs.aws.amazon.com/iot/latest/developerguide/authorizing-direct-aws.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2015-05-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "iot",
      global?: false,
      protocol: "rest-json",
      service_id: "IoT",
      signature_version: "v4",
      signing_name: "iot",
      target_prefix: nil
    }
  end

  @doc """
  Accepts a pending certificate transfer.

  The default state of the certificate is
  INACTIVE.

  To check for pending certificate transfers, call `ListCertificates`
  to enumerate your certificates.

  Requires permission to access the
  [AcceptCertificateTransfer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def accept_certificate_transfer(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/accept-certificate-transfer/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []

    {query_params, input} =
      [
        {"setAsActive", "setAsActive"}
      ]
      |> Request.build_params(input)

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
  Adds a thing to a billing group.

  Requires permission to access the
  [AddThingToBillingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def add_thing_to_billing_group(%Client{} = client, input, options \\ []) do
    url_path = "/billing-groups/addThingToBillingGroup"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Adds a thing to a thing group.

  Requires permission to access the
  [AddThingToThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def add_thing_to_thing_group(%Client{} = client, input, options \\ []) do
    url_path = "/thing-groups/addThingToThingGroup"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Associates a group with a continuous job.

  The following criteria must be met:

    *
  The job must have been created with the `targetSelection` field set to
  "CONTINUOUS".

    *
  The job status must currently be "IN_PROGRESS".

    *
  The total number of targets associated with a job must not exceed 100.

  Requires permission to access the
  [AssociateTargetsWithJob](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def associate_targets_with_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}/targets"
    headers = []

    {query_params, input} =
      [
        {"namespaceId", "namespaceId"}
      ]
      |> Request.build_params(input)

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
  Attaches the specified policy to the specified principal (certificate or other
  credential).

  Requires permission to access the
  [AttachPolicy](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def attach_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/target-policies/#{AWS.Util.encode_uri(policy_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Attaches the specified policy to the specified principal (certificate or other
  credential).

  **Note:** This action is deprecated and works as
  expected for backward compatibility, but we won't add enhancements. Use
  `AttachPolicy` instead.

  Requires permission to access the
  [AttachPrincipalPolicy](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def attach_principal_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/principal-policies/#{AWS.Util.encode_uri(policy_name)}"

    {headers, input} =
      [
        {"principal", "x-amzn-iot-principal"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Associates a Device Defender security profile with a thing group or this
  account.

  Each
  thing group or account can have up to five security profiles associated with it.

  Requires permission to access the
  [AttachSecurityProfile](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def attach_security_profile(%Client{} = client, security_profile_name, input, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}/targets"
    headers = []

    {query_params, input} =
      [
        {"securityProfileTargetArn", "securityProfileTargetArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Attaches the specified principal to the specified thing.

  A principal can be X.509
  certificates, Amazon Cognito identities or federated identities.

  Requires permission to access the
  [AttachThingPrincipal](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def attach_thing_principal(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/principals"

    {headers, input} =
      [
        {"principal", "x-amzn-principal"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Cancels a mitigation action task that is in progress.

  If the task
  is not
  in progress, an InvalidRequestException occurs.

  Requires permission to access the
  [CancelAuditMitigationActionsTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def cancel_audit_mitigation_actions_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/audit/mitigationactions/tasks/#{AWS.Util.encode_uri(task_id)}/cancel"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Cancels an audit that is in progress.

  The audit can be either scheduled or on demand. If the audit isn't in progress,
  an "InvalidRequestException" occurs.

  Requires permission to access the
  [CancelAuditTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def cancel_audit_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/audit/tasks/#{AWS.Util.encode_uri(task_id)}/cancel"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Cancels a pending transfer for the specified certificate.

  **Note** Only the transfer source account can use this
  operation to cancel a transfer. (Transfer destinations can use
  `RejectCertificateTransfer` instead.) After transfer, IoT returns the
  certificate to the source account in the INACTIVE state. After the destination
  account has
  accepted the transfer, the transfer cannot be cancelled.

  After a certificate transfer is cancelled, the status of the certificate changes
  from
  PENDING_TRANSFER to INACTIVE.

  Requires permission to access the
  [CancelCertificateTransfer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def cancel_certificate_transfer(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/cancel-certificate-transfer/#{AWS.Util.encode_uri(certificate_id)}"
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

  Cancels a Device Defender ML Detect mitigation action.

  Requires permission to access the
  [CancelDetectMitigationActionsTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def cancel_detect_mitigation_actions_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/detect/mitigationactions/tasks/#{AWS.Util.encode_uri(task_id)}/cancel"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Cancels a job.

  Requires permission to access the
  [CancelJob](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def cancel_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}/cancel"
    headers = []

    {query_params, input} =
      [
        {"force", "force"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Cancels the execution of a job for a given thing.

  Requires permission to access the
  [CancelJobExecution](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Clears the default authorizer.

  Requires permission to access the
  [ClearDefaultAuthorizer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def clear_default_authorizer(%Client{} = client, input, options \\ []) do
    url_path = "/default-authorizer"
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
  Confirms a topic rule destination.

  When you create a rule requiring a destination, IoT
  sends a confirmation message to the endpoint or base address you specify. The
  message
  includes a token which you pass back when calling `ConfirmTopicRuleDestination`
  to confirm that you own or have access to the endpoint.

  Requires permission to access the
  [ConfirmTopicRuleDestination](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def confirm_topic_rule_destination(%Client{} = client, confirmation_token, options \\ []) do
    url_path = "/confirmdestination/#{AWS.Util.encode_multi_segment_uri(confirmation_token)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Creates a Device Defender audit suppression.

  Requires permission to access the
  [CreateAuditSuppression](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_audit_suppression(%Client{} = client, input, options \\ []) do
    url_path = "/audit/suppressions/create"
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
  Creates an authorizer.

  Requires permission to access the
  [CreateAuthorizer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_authorizer(%Client{} = client, authorizer_name, input, options \\ []) do
    url_path = "/authorizer/#{AWS.Util.encode_uri(authorizer_name)}"
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
  Creates a billing group.

  Requires permission to access the
  [CreateBillingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_billing_group(%Client{} = client, billing_group_name, input, options \\ []) do
    url_path = "/billing-groups/#{AWS.Util.encode_uri(billing_group_name)}"
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
  Creates an X.509 certificate using the specified certificate signing
  request.

  Requires permission to access the
  [CreateCertificateFromCsr](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.

  The CSR must include a public key that is either an RSA key with a length of at
  least
  2048 bits or an ECC key from NIST P-256, NIST P-384, or NIST P-521 curves. For
  supported
  certificates, consult [ Certificate signing algorithms supported by
  IoT](https://docs.aws.amazon.com/iot/latest/developerguide/x509-client-certs.html#x509-cert-algorithms).

  Reusing the same certificate signing request (CSR)
  results in a distinct certificate.

  You can create multiple certificates in a batch by creating a directory, copying
  multiple `.csr` files into that directory, and then specifying that directory on
  the command
  line. The following commands show how to create a batch of certificates given a
  batch of
  CSRs. In the following commands, we assume that a set of CSRs are located inside
  of the
  directory my-csr-directory:

  On Linux and OS X, the command is:

  ```
  $ ls my-csr-directory/ | xargs -I {} aws iot create-certificate-from-csr
  --certificate-signing-request file://my-csr-directory/{}
  ```

  This command lists all of the CSRs in my-csr-directory and pipes each CSR file
  name
  to the `aws iot create-certificate-from-csr` Amazon Web Services CLI command to
  create a certificate for
  the corresponding CSR.

  You can also run the `aws iot create-certificate-from-csr` part of the
  command in parallel to speed up the certificate creation process:

  ```
  $ ls my-csr-directory/ | xargs -P 10 -I {} aws iot create-certificate-from-csr
  --certificate-signing-request file://my-csr-directory/{}

  ```

  On Windows PowerShell, the command to create certificates for all CSRs in
  my-csr-directory is:

  ```
  > ls -Name my-csr-directory | %{aws iot create-certificate-from-csr
  --certificate-signing-request file://my-csr-directory/$_}

  ```

  On a Windows command prompt, the command to create certificates for all CSRs in
  my-csr-directory is:

  ```
  > forfiles /p my-csr-directory /c "cmd /c aws iot create-certificate-from-csr
  --certificate-signing-request file://@path"

  ```
  """
  def create_certificate_from_csr(%Client{} = client, input, options \\ []) do
    url_path = "/certificates"
    headers = []

    {query_params, input} =
      [
        {"setAsActive", "setAsActive"}
      ]
      |> Request.build_params(input)

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
  Creates an Amazon Web Services IoT Core certificate provider.

  You can use Amazon Web Services IoT Core certificate provider to
  customize how to sign a certificate signing request (CSR) in IoT fleet
  provisioning. For
  more information, see [Customizing certificate signing using Amazon Web Services IoT Core certificate
  provider](https://docs.aws.amazon.com/iot/latest/developerguide/provisioning-cert-provider.html)
  from *Amazon Web Services IoT Core Developer
  Guide*.

  Requires permission to access the
  [CreateCertificateProvider](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.

  After you create a certificate provider, the behavior of [
  `CreateCertificateFromCsr` API for fleet
  provisioning](https://docs.aws.amazon.com/iot/latest/developerguide/fleet-provision-api.html#create-cert-csr)
  will
  change and all API calls to `CreateCertificateFromCsr` will invoke the
  certificate provider to create the certificates. It can take up to a few minutes
  for
  this behavior to change after a certificate provider is created.
  """
  def create_certificate_provider(
        %Client{} = client,
        certificate_provider_name,
        input,
        options \\ []
      ) do
    url_path = "/certificate-providers/#{AWS.Util.encode_uri(certificate_provider_name)}"
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
  Use this API to define a
  Custom
  Metric
  published by your devices to Device Defender.

  Requires permission to access the
  [CreateCustomMetric](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_custom_metric(%Client{} = client, metric_name, input, options \\ []) do
    url_path = "/custom-metric/#{AWS.Util.encode_uri(metric_name)}"
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
  Create a dimension that you can use to limit the scope of a metric used in a
  security profile for IoT Device Defender.

  For example, using a `TOPIC_FILTER` dimension, you can narrow down the scope of
  the metric only to MQTT topics whose name match the pattern specified in the
  dimension.

  Requires permission to access the
  [CreateDimension](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_dimension(%Client{} = client, name, input, options \\ []) do
    url_path = "/dimensions/#{AWS.Util.encode_uri(name)}"
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
  Creates a domain configuration.

  Requires permission to access the
  [CreateDomainConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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
  Creates a dynamic thing group.

  Requires permission to access the
  [CreateDynamicThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_dynamic_thing_group(%Client{} = client, thing_group_name, input, options \\ []) do
    url_path = "/dynamic-thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
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
  Creates a fleet metric.

  Requires permission to access the
  [CreateFleetMetric](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_fleet_metric(%Client{} = client, metric_name, input, options \\ []) do
    url_path = "/fleet-metric/#{AWS.Util.encode_uri(metric_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a job.

  Requires permission to access the
  [CreateJob](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a job template.

  Requires permission to access the
  [CreateJobTemplate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_job_template(%Client{} = client, job_template_id, input, options \\ []) do
    url_path = "/job-templates/#{AWS.Util.encode_uri(job_template_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a 2048-bit RSA key pair and issues an X.509 certificate using the issued
  public key.

  You can also call `CreateKeysAndCertificate` over MQTT from a
  device, for more information, see [Provisioning MQTT API](https://docs.aws.amazon.com/iot/latest/developerguide/provision-wo-cert.html#provision-mqtt-api).

  **Note** This is the only time IoT issues the private key
  for this certificate, so it is important to keep it in a secure location.

  Requires permission to access the
  [CreateKeysAndCertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_keys_and_certificate(%Client{} = client, input, options \\ []) do
    url_path = "/keys-and-certificate"
    headers = []

    {query_params, input} =
      [
        {"setAsActive", "setAsActive"}
      ]
      |> Request.build_params(input)

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
  Defines an action that can be applied to audit findings by using
  StartAuditMitigationActionsTask.

  Only certain types of mitigation actions can be applied to specific check names.
  For more information, see [Mitigation actions](https://docs.aws.amazon.com/iot/latest/developerguide/device-defender-mitigation-actions.html).
  Each mitigation action can apply only one type of change.

  Requires permission to access the
  [CreateMitigationAction](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_mitigation_action(%Client{} = client, action_name, input, options \\ []) do
    url_path = "/mitigationactions/actions/#{AWS.Util.encode_uri(action_name)}"
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
  Creates an IoT OTA update on a target group of things or groups.

  Requires permission to access the
  [CreateOTAUpdate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_ota_update(%Client{} = client, ota_update_id, input, options \\ []) do
    url_path = "/otaUpdates/#{AWS.Util.encode_uri(ota_update_id)}"
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
  Creates an IoT software package that can be deployed to your fleet.

  Requires permission to access the
  [CreatePackage](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) and
  [GetIndexingConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  actions.
  """
  def create_package(%Client{} = client, package_name, input, options \\ []) do
    url_path = "/packages/#{AWS.Util.encode_uri(package_name)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a new version for an existing IoT software package.

  Requires permission to access the
  [CreatePackageVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) and
  [GetIndexingConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  actions.
  """
  def create_package_version(%Client{} = client, package_name, version_name, input, options \\ []) do
    url_path =
      "/packages/#{AWS.Util.encode_uri(package_name)}/versions/#{AWS.Util.encode_uri(version_name)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates an IoT policy.

  The created policy is the default version for the policy. This operation creates
  a
  policy version with a version identifier of **1** and sets
  **1** as the policy's default version.

  Requires permission to access the
  [CreatePolicy](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_name)}"
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
  Creates a new version of the specified IoT policy.

  To update a policy, create a
  new policy version. A managed policy can have up to five versions. If the policy
  has five
  versions, you must use `DeletePolicyVersion` to delete an existing version
  before you create a new one.

  Optionally, you can set the new version as the policy's default version. The
  default
  version is the operative version (that is, the version that is in effect for the
  certificates to which the policy is attached).

  Requires permission to access the
  [CreatePolicyVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_policy_version(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_name)}/version"
    headers = []

    {query_params, input} =
      [
        {"setAsDefault", "setAsDefault"}
      ]
      |> Request.build_params(input)

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
  Creates a provisioning claim.

  Requires permission to access the
  [CreateProvisioningClaim](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_provisioning_claim(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}/provisioning-claim"
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
  Creates a provisioning template.

  Requires permission to access the
  [CreateProvisioningTemplate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_provisioning_template(%Client{} = client, input, options \\ []) do
    url_path = "/provisioning-templates"
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
  Creates a new version of a provisioning template.

  Requires permission to access the
  [CreateProvisioningTemplateVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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
  Creates a role alias.

  Requires permission to access the
  [CreateRoleAlias](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_role_alias(%Client{} = client, role_alias, input, options \\ []) do
    url_path = "/role-aliases/#{AWS.Util.encode_uri(role_alias)}"
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
  Creates a scheduled audit that is run at a specified
  time interval.

  Requires permission to access the
  [CreateScheduledAudit](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_scheduled_audit(%Client{} = client, scheduled_audit_name, input, options \\ []) do
    url_path = "/audit/scheduledaudits/#{AWS.Util.encode_uri(scheduled_audit_name)}"
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
  Creates a Device Defender security profile.

  Requires permission to access the
  [CreateSecurityProfile](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_security_profile(%Client{} = client, security_profile_name, input, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}"
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
  Creates a stream for delivering one or more large files in chunks over MQTT.

  A stream transports data
  bytes in chunks or blocks packaged as MQTT messages from a source like S3. You
  can have one or more files
  associated with a stream.

  Requires permission to access the
  [CreateStream](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_stream(%Client{} = client, stream_id, input, options \\ []) do
    url_path = "/streams/#{AWS.Util.encode_uri(stream_id)}"
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
  Creates a thing record in the registry.

  If this call is made multiple times using
  the same thing name and configuration, the call will succeed. If this call is
  made with
  the same thing name but different configuration a
  `ResourceAlreadyExistsException` is thrown.

  This is a control plane operation. See
  [Authorization](https://docs.aws.amazon.com/iot/latest/developerguide/iot-authorization.html) for
  information about authorizing control plane actions.

  Requires permission to access the
  [CreateThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_thing(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}"
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
  Create a thing group.

  This is a control plane operation. See
  [Authorization](https://docs.aws.amazon.com/iot/latest/developerguide/iot-authorization.html) for
  information about authorizing control plane actions.

  If the `ThingGroup` that you create has the exact same attributes as an existing
  `ThingGroup`, you will get a 200 success response.

  Requires permission to access the
  [CreateThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_thing_group(%Client{} = client, thing_group_name, input, options \\ []) do
    url_path = "/thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
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
  Creates a new thing type.

  Requires permission to access the
  [CreateThingType](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_thing_type(%Client{} = client, thing_type_name, input, options \\ []) do
    url_path = "/thing-types/#{AWS.Util.encode_uri(thing_type_name)}"
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
  Creates a rule.

  Creating rules is an administrator-level action. Any user who has
  permission to create rules will be able to access data processed by the rule.

  Requires permission to access the
  [CreateTopicRule](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_topic_rule(%Client{} = client, rule_name, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_name)}"

    {headers, input} =
      [
        {"tags", "x-amz-tagging"}
      ]
      |> Request.build_params(input)

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
  Creates a topic rule destination.

  The destination must be confirmed prior to use.

  Requires permission to access the
  [CreateTopicRuleDestination](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def create_topic_rule_destination(%Client{} = client, input, options \\ []) do
    url_path = "/destinations"
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
  Restores the default settings for Device Defender audits for this account.

  Any
  configuration data you entered is deleted and all audit checks are reset to
  disabled.

  Requires permission to access the
  [DeleteAccountAuditConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_account_audit_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/audit/configuration"
    headers = []

    {query_params, input} =
      [
        {"deleteScheduledAudits", "deleteScheduledAudits"}
      ]
      |> Request.build_params(input)

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

  Deletes a Device Defender audit suppression.

  Requires permission to access the
  [DeleteAuditSuppression](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_audit_suppression(%Client{} = client, input, options \\ []) do
    url_path = "/audit/suppressions/delete"
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
  Deletes an authorizer.

  Requires permission to access the
  [DeleteAuthorizer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_authorizer(%Client{} = client, authorizer_name, input, options \\ []) do
    url_path = "/authorizer/#{AWS.Util.encode_uri(authorizer_name)}"
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
  Deletes the billing group.

  Requires permission to access the
  [DeleteBillingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_billing_group(%Client{} = client, billing_group_name, input, options \\ []) do
    url_path = "/billing-groups/#{AWS.Util.encode_uri(billing_group_name)}"
    headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
      ]
      |> Request.build_params(input)

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
  Deletes a registered CA certificate.

  Requires permission to access the
  [DeleteCACertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_ca_certificate(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/cacertificate/#{AWS.Util.encode_uri(certificate_id)}"
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
  Deletes the specified certificate.

  A certificate cannot be deleted if it has a policy or IoT thing attached to it
  or if
  its status is set to ACTIVE. To delete a certificate, first use the
  `DetachPolicy` action to detach all policies. Next, use the `UpdateCertificate`
  action to set the certificate to the INACTIVE
  status.

  Requires permission to access the
  [DeleteCertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_certificate(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/certificates/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []

    {query_params, input} =
      [
        {"forceDelete", "forceDelete"}
      ]
      |> Request.build_params(input)

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
  Deletes a certificate provider.

  Requires permission to access the
  [DeleteCertificateProvider](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.

  If you delete the certificate provider resource, the behavior of
  `CreateCertificateFromCsr` will resume, and IoT will create
  certificates signed by IoT from a certificate signing request (CSR).
  """
  def delete_certificate_provider(
        %Client{} = client,
        certificate_provider_name,
        input,
        options \\ []
      ) do
    url_path = "/certificate-providers/#{AWS.Util.encode_uri(certificate_provider_name)}"
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

  Deletes a Device Defender detect custom metric.

  Requires permission to access the
  [DeleteCustomMetric](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.

  Before you can delete a custom metric, you must first remove the custom metric
  from all
  security profiles it's a part of.
  The
  security
  profile associated with the custom metric can be found using the
  [ListSecurityProfiles](https://docs.aws.amazon.com/iot/latest/apireference/API_ListSecurityProfiles.html)
  API with `metricName` set to your custom metric name.
  """
  def delete_custom_metric(%Client{} = client, metric_name, input, options \\ []) do
    url_path = "/custom-metric/#{AWS.Util.encode_uri(metric_name)}"
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
  Removes the specified dimension from your Amazon Web Services accounts.

  Requires permission to access the
  [DeleteDimension](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_dimension(%Client{} = client, name, input, options \\ []) do
    url_path = "/dimensions/#{AWS.Util.encode_uri(name)}"
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
  Deletes the specified domain configuration.

  Requires permission to access the
  [DeleteDomainConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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
  Deletes a dynamic thing group.

  Requires permission to access the
  [DeleteDynamicThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_dynamic_thing_group(%Client{} = client, thing_group_name, input, options \\ []) do
    url_path = "/dynamic-thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
    headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
      ]
      |> Request.build_params(input)

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
  Deletes the specified fleet metric.

  Returns successfully with no error if the deletion is successful or you specify
  a fleet metric that doesn't exist.

  Requires permission to access the
  [DeleteFleetMetric](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_fleet_metric(%Client{} = client, metric_name, input, options \\ []) do
    url_path = "/fleet-metric/#{AWS.Util.encode_uri(metric_name)}"
    headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
      ]
      |> Request.build_params(input)

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
  Deletes a job and its related job executions.

  Deleting a job may take time, depending on the number of job
  executions created for the job and various other factors. While the job
  is being deleted, the status of the job will be shown as
  "DELETION_IN_PROGRESS". Attempting to delete or cancel a job whose status
  is already "DELETION_IN_PROGRESS" will result in an error.

  Only 10 jobs may have status "DELETION_IN_PROGRESS" at the same time, or
  a LimitExceededException will occur.

  Requires permission to access the
  [DeleteJob](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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
  Deletes a job execution.

  Requires permission to access the
  [DeleteJobExecution](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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
  Deletes the specified job template.
  """
  def delete_job_template(%Client{} = client, job_template_id, input, options \\ []) do
    url_path = "/job-templates/#{AWS.Util.encode_uri(job_template_id)}"
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
  Deletes a defined mitigation action from your Amazon Web Services accounts.

  Requires permission to access the
  [DeleteMitigationAction](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_mitigation_action(%Client{} = client, action_name, input, options \\ []) do
    url_path = "/mitigationactions/actions/#{AWS.Util.encode_uri(action_name)}"
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
  Delete an OTA update.

  Requires permission to access the
  [DeleteOTAUpdate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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
  Deletes a specific version from a software package.

  **Note:** All package versions must be deleted before deleting the software
  package.

  Requires permission to access the
  [DeletePackageVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_package(%Client{} = client, package_name, input, options \\ []) do
    url_path = "/packages/#{AWS.Util.encode_uri(package_name)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

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
  Deletes a specific version from a software package.

  **Note:** If a package version is designated as default, you must remove the
  designation from the software package using the `UpdatePackage` action.
  """
  def delete_package_version(%Client{} = client, package_name, version_name, input, options \\ []) do
    url_path =
      "/packages/#{AWS.Util.encode_uri(package_name)}/versions/#{AWS.Util.encode_uri(version_name)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

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
  Deletes the specified policy.

  A policy cannot be deleted if it has non-default versions or it is attached to
  any
  certificate.

  To delete a policy, use the `DeletePolicyVersion` action to delete all
  non-default
  versions of the policy; use the `DetachPolicy` action to detach the policy from
  any
  certificate; and then use the DeletePolicy action to delete the policy.

  When a policy is deleted using DeletePolicy, its default version is deleted with
  it.

  Because of the distributed nature of Amazon Web Services, it can take up to five
  minutes after
  a policy is detached before it's ready to be deleted.

  Requires permission to access the
  [DeletePolicy](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_name)}"
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
  Deletes the specified version of the specified policy.

  You cannot delete the default
  version of a policy using this action. To delete the default version of a
  policy, use `DeletePolicy`. To find out which version of a policy is marked as
  the default
  version, use ListPolicyVersions.

  Requires permission to access the
  [DeletePolicyVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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
  Deletes a provisioning template.

  Requires permission to access the
  [DeleteProvisioningTemplate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_provisioning_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}"
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
  Deletes a provisioning template version.

  Requires permission to access the
  [DeleteProvisioningTemplateVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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
  Deletes a CA certificate registration code.

  Requires permission to access the
  [DeleteRegistrationCode](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_registration_code(%Client{} = client, input, options \\ []) do
    url_path = "/registrationcode"
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
  Deletes a role alias

  Requires permission to access the
  [DeleteRoleAlias](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_role_alias(%Client{} = client, role_alias, input, options \\ []) do
    url_path = "/role-aliases/#{AWS.Util.encode_uri(role_alias)}"
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
  Deletes a scheduled audit.

  Requires permission to access the
  [DeleteScheduledAudit](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_scheduled_audit(%Client{} = client, scheduled_audit_name, input, options \\ []) do
    url_path = "/audit/scheduledaudits/#{AWS.Util.encode_uri(scheduled_audit_name)}"
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
  Deletes a Device Defender security profile.

  Requires permission to access the
  [DeleteSecurityProfile](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_security_profile(%Client{} = client, security_profile_name, input, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}"
    headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
      ]
      |> Request.build_params(input)

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
  Deletes a stream.

  Requires permission to access the
  [DeleteStream](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_stream(%Client{} = client, stream_id, input, options \\ []) do
    url_path = "/streams/#{AWS.Util.encode_uri(stream_id)}"
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
  Deletes the specified thing.

  Returns successfully with no error if the deletion is
  successful or you specify a thing that doesn't exist.

  Requires permission to access the
  [DeleteThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_thing(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}"
    headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
      ]
      |> Request.build_params(input)

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
  Deletes a thing group.

  Requires permission to access the
  [DeleteThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_thing_group(%Client{} = client, thing_group_name, input, options \\ []) do
    url_path = "/thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
    headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
      ]
      |> Request.build_params(input)

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
  Deletes the specified thing type.

  You cannot delete a thing type if it has things
  associated with it. To delete a thing type, first mark it as deprecated by
  calling `DeprecateThingType`, then remove any associated things by calling
  `UpdateThing` to change the thing type on any associated thing, and
  finally use `DeleteThingType` to delete the thing type.

  Requires permission to access the
  [DeleteThingType](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_thing_type(%Client{} = client, thing_type_name, input, options \\ []) do
    url_path = "/thing-types/#{AWS.Util.encode_uri(thing_type_name)}"
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
  Deletes the rule.

  Requires permission to access the
  [DeleteTopicRule](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_topic_rule(%Client{} = client, rule_name, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_name)}"
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
  Deletes a topic rule destination.

  Requires permission to access the
  [DeleteTopicRuleDestination](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_topic_rule_destination(%Client{} = client, arn, input, options \\ []) do
    url_path = "/destinations/#{AWS.Util.encode_multi_segment_uri(arn)}"
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
  Deletes a logging level.

  Requires permission to access the
  [DeleteV2LoggingLevel](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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
  Deprecates a thing type.

  You can not associate new things with deprecated thing
  type.

  Requires permission to access the
  [DeprecateThingType](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def deprecate_thing_type(%Client{} = client, thing_type_name, input, options \\ []) do
    url_path = "/thing-types/#{AWS.Util.encode_uri(thing_type_name)}/deprecate"
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
  Gets information about the Device Defender audit settings for this account.

  Settings include how audit notifications are sent and which audit checks are
  enabled or disabled.

  Requires permission to access the
  [DescribeAccountAuditConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_account_audit_configuration(%Client{} = client, options \\ []) do
    url_path = "/audit/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a single audit finding.

  Properties include the reason for
  noncompliance, the severity of the issue,
  and the start time
  when the audit that returned the
  finding.

  Requires permission to access the
  [DescribeAuditFinding](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_audit_finding(%Client{} = client, finding_id, options \\ []) do
    url_path = "/audit/findings/#{AWS.Util.encode_uri(finding_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Gets information about a Device Defender audit suppression.
  """
  def describe_audit_suppression(%Client{} = client, input, options \\ []) do
    url_path = "/audit/suppressions/describe"
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
  Gets information about a Device Defender audit.

  Requires permission to access the
  [DescribeAuditTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_audit_task(%Client{} = client, task_id, options \\ []) do
    url_path = "/audit/tasks/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an authorizer.

  Requires permission to access the
  [DescribeAuthorizer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_authorizer(%Client{} = client, authorizer_name, options \\ []) do
    url_path = "/authorizer/#{AWS.Util.encode_uri(authorizer_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a billing group.

  Requires permission to access the
  [DescribeBillingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_billing_group(%Client{} = client, billing_group_name, options \\ []) do
    url_path = "/billing-groups/#{AWS.Util.encode_uri(billing_group_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a registered CA certificate.

  Requires permission to access the
  [DescribeCACertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_ca_certificate(%Client{} = client, certificate_id, options \\ []) do
    url_path = "/cacertificate/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified certificate.

  Requires permission to access the
  [DescribeCertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_certificate(%Client{} = client, certificate_id, options \\ []) do
    url_path = "/certificates/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a certificate provider.

  Requires permission to access the
  [DescribeCertificateProvider](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_certificate_provider(%Client{} = client, certificate_provider_name, options \\ []) do
    url_path = "/certificate-providers/#{AWS.Util.encode_uri(certificate_provider_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Gets information about a Device Defender detect custom metric.

  Requires permission to access the
  [DescribeCustomMetric](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_custom_metric(%Client{} = client, metric_name, options \\ []) do
    url_path = "/custom-metric/#{AWS.Util.encode_uri(metric_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the default authorizer.

  Requires permission to access the
  [DescribeDefaultAuthorizer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_default_authorizer(%Client{} = client, options \\ []) do
    url_path = "/default-authorizer"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Gets information about a Device Defender ML Detect mitigation action.

  Requires permission to access the
  [DescribeDetectMitigationActionsTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_detect_mitigation_actions_task(%Client{} = client, task_id, options \\ []) do
    url_path = "/detect/mitigationactions/tasks/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides details about a dimension that is defined in your Amazon Web Services
  accounts.

  Requires permission to access the
  [DescribeDimension](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_dimension(%Client{} = client, name, options \\ []) do
    url_path = "/dimensions/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets summary information about a domain configuration.

  Requires permission to access the
  [DescribeDomainConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_domain_configuration(%Client{} = client, domain_configuration_name, options \\ []) do
    url_path = "/domainConfigurations/#{AWS.Util.encode_uri(domain_configuration_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns or creates a unique endpoint specific to the Amazon Web Services account
  making the
  call.

  The first time `DescribeEndpoint` is called, an endpoint is created. All
  subsequent calls to `DescribeEndpoint` return the same endpoint.

  Requires permission to access the
  [DescribeEndpoint](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes event configurations.

  Requires permission to access the
  [DescribeEventConfigurations](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_event_configurations(%Client{} = client, options \\ []) do
    url_path = "/event-configurations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified fleet metric.

  Requires permission to access the
  [DescribeFleetMetric](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_fleet_metric(%Client{} = client, metric_name, options \\ []) do
    url_path = "/fleet-metric/#{AWS.Util.encode_uri(metric_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a search index.

  Requires permission to access the
  [DescribeIndex](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_index(%Client{} = client, index_name, options \\ []) do
    url_path = "/indices/#{AWS.Util.encode_uri(index_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a job.

  Requires permission to access the
  [DescribeJob](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a job execution.

  Requires permission to access the
  [DescribeJobExecution](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a job template.
  """
  def describe_job_template(%Client{} = client, job_template_id, options \\ []) do
    url_path = "/job-templates/#{AWS.Util.encode_uri(job_template_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  View details of a managed job template.
  """
  def describe_managed_job_template(
        %Client{} = client,
        template_name,
        template_version \\ nil,
        options \\ []
      ) do
    url_path = "/managed-job-templates/#{AWS.Util.encode_uri(template_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(template_version) do
        [{"templateVersion", template_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a mitigation action.

  Requires permission to access the
  [DescribeMitigationAction](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_mitigation_action(%Client{} = client, action_name, options \\ []) do
    url_path = "/mitigationactions/actions/#{AWS.Util.encode_uri(action_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a provisioning template.

  Requires permission to access the
  [DescribeProvisioningTemplate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_provisioning_template(%Client{} = client, template_name, options \\ []) do
    url_path = "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a provisioning template version.

  Requires permission to access the
  [DescribeProvisioningTemplateVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a role alias.

  Requires permission to access the
  [DescribeRoleAlias](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_role_alias(%Client{} = client, role_alias, options \\ []) do
    url_path = "/role-aliases/#{AWS.Util.encode_uri(role_alias)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a scheduled audit.

  Requires permission to access the
  [DescribeScheduledAudit](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_scheduled_audit(%Client{} = client, scheduled_audit_name, options \\ []) do
    url_path = "/audit/scheduledaudits/#{AWS.Util.encode_uri(scheduled_audit_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a Device Defender security profile.

  Requires permission to access the
  [DescribeSecurityProfile](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_security_profile(%Client{} = client, security_profile_name, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a stream.

  Requires permission to access the
  [DescribeStream](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_stream(%Client{} = client, stream_id, options \\ []) do
    url_path = "/streams/#{AWS.Util.encode_uri(stream_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified thing.

  Requires permission to access the
  [DescribeThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_thing(%Client{} = client, thing_name, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describe a thing group.

  Requires permission to access the
  [DescribeThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_thing_group(%Client{} = client, thing_group_name, options \\ []) do
    url_path = "/thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a bulk thing provisioning task.

  Requires permission to access the
  [DescribeThingRegistrationTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_thing_registration_task(%Client{} = client, task_id, options \\ []) do
    url_path = "/thing-registration-tasks/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified thing type.

  Requires permission to access the
  [DescribeThingType](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def describe_thing_type(%Client{} = client, thing_type_name, options \\ []) do
    url_path = "/thing-types/#{AWS.Util.encode_uri(thing_type_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Detaches a policy from the specified target.

  Because of the distributed nature of Amazon Web Services, it can take up to five
  minutes after
  a policy is detached before it's ready to be deleted.

  Requires permission to access the
  [DetachPolicy](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def detach_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/target-policies/#{AWS.Util.encode_uri(policy_name)}"
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
  Removes the specified policy from the specified certificate.

  **Note:** This action is deprecated and works as
  expected for backward compatibility, but we won't add enhancements. Use
  `DetachPolicy` instead.

  Requires permission to access the
  [DetachPrincipalPolicy](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def detach_principal_policy(%Client{} = client, policy_name, input, options \\ []) do
    url_path = "/principal-policies/#{AWS.Util.encode_uri(policy_name)}"

    {headers, input} =
      [
        {"principal", "x-amzn-iot-principal"}
      ]
      |> Request.build_params(input)

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
  Disassociates a Device Defender security profile from a thing group or from this
  account.

  Requires permission to access the
  [DetachSecurityProfile](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def detach_security_profile(%Client{} = client, security_profile_name, input, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}/targets"
    headers = []

    {query_params, input} =
      [
        {"securityProfileTargetArn", "securityProfileTargetArn"}
      ]
      |> Request.build_params(input)

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
  Detaches the specified principal from the specified thing.

  A principal can be X.509
  certificates, IAM users, groups, and roles, Amazon Cognito identities or
  federated
  identities.

  This call is asynchronous. It might take several seconds for the detachment to
  propagate.

  Requires permission to access the
  [DetachThingPrincipal](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def detach_thing_principal(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}/principals"

    {headers, input} =
      [
        {"principal", "x-amzn-principal"}
      ]
      |> Request.build_params(input)

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
  Disables the rule.

  Requires permission to access the
  [DisableTopicRule](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def disable_topic_rule(%Client{} = client, rule_name, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_name)}/disable"
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
  Enables the rule.

  Requires permission to access the
  [EnableTopicRule](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def enable_topic_rule(%Client{} = client, rule_name, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_name)}/enable"
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

  Returns a Device Defender's ML Detect Security Profile training model's status.

  Requires permission to access the
  [GetBehaviorModelTrainingSummaries](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Aggregates on indexed data with search queries pertaining to particular fields.

  Requires permission to access the
  [GetBucketsAggregation](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def get_buckets_aggregation(%Client{} = client, input, options \\ []) do
    url_path = "/indices/buckets"
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
  Returns the approximate count of unique values that match the query.

  Requires permission to access the
  [GetCardinality](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def get_cardinality(%Client{} = client, input, options \\ []) do
    url_path = "/indices/cardinality"
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
  Gets a list of the policies that have an effect on the authorization behavior of
  the
  specified device when it connects to the IoT device gateway.

  Requires permission to access the
  [GetEffectivePolicies](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def get_effective_policies(%Client{} = client, input, options \\ []) do
    url_path = "/effective-policies"
    headers = []

    {query_params, input} =
      [
        {"thingName", "thingName"}
      ]
      |> Request.build_params(input)

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
  Gets the indexing configuration.

  Requires permission to access the
  [GetIndexingConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def get_indexing_configuration(%Client{} = client, options \\ []) do
    url_path = "/indexing/config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a job document.

  Requires permission to access the
  [GetJobDocument](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def get_job_document(%Client{} = client, job_id, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}/job-document"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the logging options.

  NOTE: use of this command is not recommended. Use `GetV2LoggingOptions`
  instead.

  Requires permission to access the
  [GetLoggingOptions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def get_logging_options(%Client{} = client, options \\ []) do
    url_path = "/loggingOptions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an OTA update.

  Requires permission to access the
  [GetOTAUpdate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def get_ota_update(%Client{} = client, ota_update_id, options \\ []) do
    url_path = "/otaUpdates/#{AWS.Util.encode_uri(ota_update_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified software package.

  Requires permission to access the
  [GetPackage](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def get_package(%Client{} = client, package_name, options \\ []) do
    url_path = "/packages/#{AWS.Util.encode_uri(package_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified software package's configuration.

  Requires permission to access the
  [GetPackageConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def get_package_configuration(%Client{} = client, options \\ []) do
    url_path = "/package-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified package version.

  Requires permission to access the
  [GetPackageVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def get_package_version(%Client{} = client, package_name, version_name, options \\ []) do
    url_path =
      "/packages/#{AWS.Util.encode_uri(package_name)}/versions/#{AWS.Util.encode_uri(version_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Groups the aggregated values that match the query into percentile groupings.

  The default
  percentile groupings are: 1,5,25,50,75,95,99, although you can specify your own
  when you call `GetPercentiles`. This function returns a value for each
  percentile group specified (or the default percentile groupings). The percentile
  group
  "1" contains the aggregated field value that occurs in approximately one percent
  of the
  values that match the query. The percentile group "5" contains the aggregated
  field value
  that occurs in approximately five percent of the values that match the query,
  and so on.
  The result is an approximation, the more values that match the query, the more
  accurate
  the percentile values.

  Requires permission to access the
  [GetPercentiles](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def get_percentiles(%Client{} = client, input, options \\ []) do
    url_path = "/indices/percentiles"
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
  Gets information about the specified policy with the policy document of the
  default
  version.

  Requires permission to access the
  [GetPolicy](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def get_policy(%Client{} = client, policy_name, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about the specified policy version.

  Requires permission to access the
  [GetPolicyVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def get_policy_version(%Client{} = client, policy_name, policy_version_id, options \\ []) do
    url_path =
      "/policies/#{AWS.Util.encode_uri(policy_name)}/version/#{AWS.Util.encode_uri(policy_version_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a registration code used to register a CA certificate with IoT.

  IoT will create a registration code as part of this API call if the registration
  code doesn't exist or has been deleted. If you already have a registration code,
  this API
  call will return the same registration code.

  Requires permission to access the
  [GetRegistrationCode](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def get_registration_code(%Client{} = client, options \\ []) do
    url_path = "/registrationcode"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the count, average, sum, minimum, maximum, sum of squares, variance,
  and standard deviation for the specified aggregated field.

  If the aggregation field is of type
  `String`, only the count statistic is returned.

  Requires permission to access the
  [GetStatistics](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def get_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/indices/statistics"
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
  Gets information about the rule.

  Requires permission to access the
  [GetTopicRule](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def get_topic_rule(%Client{} = client, rule_name, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a topic rule destination.

  Requires permission to access the
  [GetTopicRuleDestination](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def get_topic_rule_destination(%Client{} = client, arn, options \\ []) do
    url_path = "/destinations/#{AWS.Util.encode_multi_segment_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the fine grained logging options.

  Requires permission to access the
  [GetV2LoggingOptions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def get_v2_logging_options(%Client{} = client, options \\ []) do
    url_path = "/v2LoggingOptions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the active violations for a given Device Defender security profile.

  Requires permission to access the
  [ListActiveViolations](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def list_active_violations(
        %Client{} = client,
        behavior_criteria_type \\ nil,
        list_suppressed_alerts \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        security_profile_name \\ nil,
        thing_name \\ nil,
        verification_state \\ nil,
        options \\ []
      ) do
    url_path = "/active-violations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(verification_state) do
        [{"verificationState", verification_state} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the policies attached to the specified thing group.

  Requires permission to access the
  [ListAttachedPolicies](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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
  Lists the findings (results) of a Device Defender audit or of the audits
  performed during a specified time period.

  (Findings are retained for 90 days.)

  Requires permission to access the
  [ListAuditFindings](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def list_audit_findings(%Client{} = client, input, options \\ []) do
    url_path = "/audit/findings"
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
  Gets the status of audit mitigation action tasks that were
  executed.

  Requires permission to access the
  [ListAuditMitigationActionsExecutions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of audit mitigation action tasks that match the specified filters.

  Requires permission to access the
  [ListAuditMitigationActionsTasks](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Lists your Device Defender audit listings.

  Requires permission to access the
  [ListAuditSuppressions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def list_audit_suppressions(%Client{} = client, input, options \\ []) do
    url_path = "/audit/suppressions/list"
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
  Lists the Device Defender audits that have been performed during a given
  time period.

  Requires permission to access the
  [ListAuditTasks](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the authorizers registered in your account.

  Requires permission to access the
  [ListAuthorizers](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def list_authorizers(
        %Client{} = client,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/authorizers"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the billing groups you have created.

  Requires permission to access the
  [ListBillingGroups](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the CA certificates registered for your Amazon Web Services account.

  The results are paginated with a default page size of 25. You can use the
  returned
  marker to retrieve additional results.

  Requires permission to access the
  [ListCACertificates](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def list_ca_certificates(
        %Client{} = client,
        ascending_order \\ nil,
        marker \\ nil,
        page_size \\ nil,
        template_name \\ nil,
        options \\ []
      ) do
    url_path = "/cacertificates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(template_name) do
        [{"templateName", template_name} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all your certificate providers in your Amazon Web Services account.

  Requires permission to access the
  [ListCertificateProviders](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def list_certificate_providers(
        %Client{} = client,
        ascending_order \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/certificate-providers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(ascending_order) do
        [{"isAscendingOrder", ascending_order} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the certificates registered in your Amazon Web Services account.

  The results are paginated with a default page size of 25. You can use the
  returned
  marker to retrieve additional results.

  Requires permission to access the
  [ListCertificates](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the device certificates signed by the specified CA certificate.

  Requires permission to access the
  [ListCertificatesByCA](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Lists your Device Defender detect custom metrics.

  Requires permission to access the
  [ListCustomMetrics](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Lists mitigation actions executions for a Device Defender ML Detect Security
  Profile.

  Requires permission to access the
  [ListDetectMitigationActionsExecutions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  List of Device Defender ML Detect mitigation actions tasks.

  Requires permission to access the
  [ListDetectMitigationActionsTasks](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the set of dimensions that are defined for your Amazon Web Services
  accounts.

  Requires permission to access the
  [ListDimensions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of domain configurations for the user.

  This list is sorted
  alphabetically by domain configuration name.

  Requires permission to access the
  [ListDomainConfigurations](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all your fleet metrics.

  Requires permission to access the
  [ListFleetMetrics](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def list_fleet_metrics(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/fleet-metrics"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the search indices.

  Requires permission to access the
  [ListIndices](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the job executions for a job.

  Requires permission to access the
  [ListJobExecutionsForJob](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the job executions for the specified thing.

  Requires permission to access the
  [ListJobExecutionsForThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def list_job_executions_for_thing(
        %Client{} = client,
        thing_name,
        job_id \\ nil,
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

    query_params =
      if !is_nil(job_id) do
        [{"jobId", job_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of job templates.

  Requires permission to access the
  [ListJobTemplates](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists jobs.

  Requires permission to access the
  [ListJobs](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of managed job templates.
  """
  def list_managed_job_templates(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        template_name \\ nil,
        options \\ []
      ) do
    url_path = "/managed-job-templates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(template_name) do
        [{"templateName", template_name} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the values reported for an IoT Device Defender metric (device-side metric,
  cloud-side metric, or custom metric)
  by the given thing during the specified time period.
  """
  def list_metric_values(
        %Client{} = client,
        dimension_name \\ nil,
        dimension_value_operator \\ nil,
        end_time,
        max_results \\ nil,
        metric_name,
        next_token \\ nil,
        start_time,
        thing_name,
        options \\ []
      ) do
    url_path = "/metric-values"
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
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(dimension_value_operator) do
        [{"dimensionValueOperator", dimension_value_operator} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(dimension_name) do
        [{"dimensionName", dimension_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of all mitigation actions that match the specified filter criteria.

  Requires permission to access the
  [ListMitigationActions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists OTA updates.

  Requires permission to access the
  [ListOTAUpdates](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists certificates that are being transferred but not yet accepted.

  Requires permission to access the
  [ListOutgoingCertificates](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the software package versions associated to the account.

  Requires permission to access the
  [ListPackageVersions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def list_package_versions(
        %Client{} = client,
        package_name,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/packages/#{AWS.Util.encode_uri(package_name)}/versions"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the software packages associated to the account.

  Requires permission to access the
  [ListPackages](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def list_packages(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/packages"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists your policies.

  Requires permission to access the
  [ListPolicies](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the principals associated with the specified policy.

  **Note:** This action is deprecated and works as
  expected for backward compatibility, but we won't add enhancements. Use
  `ListTargetsForPolicy` instead.

  Requires permission to access the
  [ListPolicyPrincipals](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of the specified policy and identifies the default
  version.

  Requires permission to access the
  [ListPolicyVersions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def list_policy_versions(%Client{} = client, policy_name, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_name)}/version"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the policies attached to the specified principal.

  If you use an Cognito
  identity, the ID must be in [AmazonCognito Identity format](https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax).

  **Note:** This action is deprecated and works as
  expected for backward compatibility, but we won't add enhancements. Use
  `ListAttachedPolicies` instead.

  Requires permission to access the
  [ListPrincipalPolicies](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the things associated with the specified principal.

  A principal can be X.509
  certificates, IAM users, groups, and roles, Amazon Cognito identities or
  federated
  identities.

  Requires permission to access the
  [ListPrincipalThings](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  A list of provisioning template versions.

  Requires permission to access the
  [ListProvisioningTemplateVersions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the provisioning templates in your Amazon Web Services account.

  Requires permission to access the
  [ListProvisioningTemplates](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The related resources of an Audit finding.

  The following resources can be returned from calling this API:

    *
  DEVICE_CERTIFICATE

    *
  CA_CERTIFICATE

    *
  IOT_POLICY

    *
  COGNITO_IDENTITY_POOL

    *
  CLIENT_ID

    *
  ACCOUNT_SETTINGS

    *
  ROLE_ALIAS

    *
  IAM_ROLE

    *
  ISSUER_CERTIFICATE

  This API is similar to DescribeAuditFinding's
  [RelatedResources](https://docs.aws.amazon.com/iot/latest/apireference/API_DescribeAuditFinding.html) but provides pagination and is not limited to 10 resources.
  When calling
  [DescribeAuditFinding](https://docs.aws.amazon.com/iot/latest/apireference/API_DescribeAuditFinding.html)
  for the intermediate CA revoked for
  active device certificates check, RelatedResources will not be populated. You
  must use this API, ListRelatedResourcesForAuditFinding, to list the
  certificates.
  """
  def list_related_resources_for_audit_finding(
        %Client{} = client,
        finding_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/audit/relatedResources"
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
      if !is_nil(finding_id) do
        [{"findingId", finding_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the role aliases registered in your account.

  Requires permission to access the
  [ListRoleAliases](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of your scheduled audits.

  Requires permission to access the
  [ListScheduledAudits](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Device Defender security profiles
  you've
  created.

  You can filter security profiles by dimension or custom metric.

  Requires permission to access the
  [ListSecurityProfiles](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Device Defender security profiles attached to a target (thing group).

  Requires permission to access the
  [ListSecurityProfilesForTarget](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of the streams in your Amazon Web Services account.

  Requires permission to access the
  [ListStreams](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags (metadata) you have assigned to the resource.

  Requires permission to access the
  [ListTagsForResource](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List targets for the specified policy.

  Requires permission to access the
  [ListTargetsForPolicy](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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
  Lists the targets (thing groups) associated with a given Device Defender
  security profile.

  Requires permission to access the
  [ListTargetsForSecurityProfile](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the thing groups in your account.

  Requires permission to access the
  [ListThingGroups](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the thing groups to which the specified thing belongs.

  Requires permission to access the
  [ListThingGroupsForThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the principals associated with the specified thing.

  A principal can be X.509
  certificates, IAM users, groups, and roles, Amazon Cognito identities or
  federated
  identities.

  Requires permission to access the
  [ListThingPrincipals](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List bulk thing provisioning tasks.

  Requires permission to access the
  [ListThingRegistrationTasks](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the existing thing types.

  Requires permission to access the
  [ListThingTypes](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists your things.

  Use the **attributeName** and **attributeValue** parameters to filter your
  things. For example,
  calling `ListThings` with attributeName=Color and attributeValue=Red
  retrieves all things in the registry that contain an attribute **Color** with
  the value **Red**. For more
  information, see [List Things](https://docs.aws.amazon.com/iot/latest/developerguide/thing-registry.html#list-things)
  from the *Amazon Web Services IoT Core Developer
  Guide*.

  Requires permission to access the
  [ListThings](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the things you have added to the given billing group.

  Requires permission to access the
  [ListThingsInBillingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the things in the specified group.

  Requires permission to access the
  [ListThingsInThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the topic rule destinations in your Amazon Web Services account.

  Requires permission to access the
  [ListTopicRuleDestinations](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the rules for the specific topic.

  Requires permission to access the
  [ListTopicRules](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists logging levels.

  Requires permission to access the
  [ListV2LoggingLevels](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Device Defender security profile violations discovered during the
  given time period.

  You can use filters to limit the results to those alerts issued for a particular
  security profile,
  behavior, or thing (device).

  Requires permission to access the
  [ListViolationEvents](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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
        verification_state \\ nil,
        options \\ []
      ) do
    url_path = "/violation-events"
    headers = []
    query_params = []

    query_params =
      if !is_nil(verification_state) do
        [{"verificationState", verification_state} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Set a verification state and provide a description of that verification state on
  a violation (detect alarm).
  """
  def put_verification_state_on_violation(%Client{} = client, violation_id, input, options \\ []) do
    url_path = "/violations/verification-state/#{AWS.Util.encode_uri(violation_id)}"
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
  Registers a CA certificate with Amazon Web Services IoT Core.

  There is no limit to the number of CA
  certificates you can register in your Amazon Web Services account. You can
  register up to 10 CA
  certificates with the same `CA subject field` per Amazon Web Services account.

  Requires permission to access the
  [RegisterCACertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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
  Registers a device certificate with IoT in the same [certificate mode](https://docs.aws.amazon.com/iot/latest/apireference/API_CertificateDescription.html#iot-Type-CertificateDescription-certificateMode)
  as the signing CA.

  If you have more than one CA certificate that has the same subject field, you
  must
  specify the CA certificate that was used to sign the device certificate being
  registered.

  Requires permission to access the
  [RegisterCertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def register_certificate(%Client{} = client, input, options \\ []) do
    url_path = "/certificate/register"
    headers = []

    {query_params, input} =
      [
        {"setAsActive", "setAsActive"}
      ]
      |> Request.build_params(input)

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
  Register a certificate that does not have a certificate authority (CA).

  For supported certificates, consult [
  Certificate signing algorithms supported by
  IoT](https://docs.aws.amazon.com/iot/latest/developerguide/x509-client-certs.html#x509-cert-algorithms).
  """
  def register_certificate_without_ca(%Client{} = client, input, options \\ []) do
    url_path = "/certificate/register-no-ca"
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
  Provisions a thing in the device registry.

  RegisterThing calls other IoT control
  plane APIs. These calls might exceed your account level [
  IoT Throttling
  Limits](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_iot)
  and cause throttle errors. Please contact [Amazon Web Services Customer Support](https://console.aws.amazon.com/support/home) to raise
  your throttling limits if necessary.

  Requires permission to access the
  [RegisterThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def register_thing(%Client{} = client, input, options \\ []) do
    url_path = "/things"
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
  Rejects a pending certificate transfer.

  After IoT rejects a certificate transfer,
  the certificate status changes from **PENDING_TRANSFER** to
  **INACTIVE**.

  To check for pending certificate transfers, call `ListCertificates`
  to enumerate your certificates.

  This operation can only be called by the transfer destination. After it is
  called,
  the certificate will be returned to the source's account in the INACTIVE state.

  Requires permission to access the
  [RejectCertificateTransfer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def reject_certificate_transfer(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/reject-certificate-transfer/#{AWS.Util.encode_uri(certificate_id)}"
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
  Removes the given thing from the billing group.

  Requires permission to access the
  [RemoveThingFromBillingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.

  This call is asynchronous. It might take several seconds for the detachment to
  propagate.
  """
  def remove_thing_from_billing_group(%Client{} = client, input, options \\ []) do
    url_path = "/billing-groups/removeThingFromBillingGroup"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Remove the specified thing from the specified group.

  You must specify either a `thingGroupArn` or a
  `thingGroupName` to identify the thing group and
  either a `thingArn` or a `thingName` to
  identify the thing to remove from the thing group.

  Requires permission to access the
  [RemoveThingFromThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def remove_thing_from_thing_group(%Client{} = client, input, options \\ []) do
    url_path = "/thing-groups/removeThingFromThingGroup"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Replaces the rule.

  You must specify all parameters for the new rule. Creating rules
  is an administrator-level action. Any user who has permission to create rules
  will be able
  to access data processed by the rule.

  Requires permission to access the
  [ReplaceTopicRule](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def replace_topic_rule(%Client{} = client, rule_name, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_name)}"
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
  The query search index.

  Requires permission to access the
  [SearchIndex](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def search_index(%Client{} = client, input, options \\ []) do
    url_path = "/indices/search"
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
  Sets the default authorizer.

  This will be used if a websocket connection is made
  without specifying an authorizer.

  Requires permission to access the
  [SetDefaultAuthorizer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def set_default_authorizer(%Client{} = client, input, options \\ []) do
    url_path = "/default-authorizer"
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
  Sets the specified version of the specified policy as the policy's default
  (operative) version.

  This action affects all certificates to which the policy is attached.
  To list the principals the policy is attached to, use the
  `ListPrincipalPolicies`
  action.

  Requires permission to access the
  [SetDefaultPolicyVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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
  Sets the logging options.

  NOTE: use of this command is not recommended. Use `SetV2LoggingOptions`
  instead.

  Requires permission to access the
  [SetLoggingOptions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def set_logging_options(%Client{} = client, input, options \\ []) do
    url_path = "/loggingOptions"
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
  Sets the logging level.

  Requires permission to access the
  [SetV2LoggingLevel](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def set_v2_logging_level(%Client{} = client, input, options \\ []) do
    url_path = "/v2LoggingLevel"
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
  Sets the logging options for the V2 logging service.

  Requires permission to access the
  [SetV2LoggingOptions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def set_v2_logging_options(%Client{} = client, input, options \\ []) do
    url_path = "/v2LoggingOptions"
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
  Starts a task that applies a set of mitigation actions to the specified target.

  Requires permission to access the
  [StartAuditMitigationActionsTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def start_audit_mitigation_actions_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/audit/mitigationactions/tasks/#{AWS.Util.encode_uri(task_id)}"
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

  Starts a Device Defender ML Detect mitigation actions task.

  Requires permission to access the
  [StartDetectMitigationActionsTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def start_detect_mitigation_actions_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/detect/mitigationactions/tasks/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Starts an on-demand Device Defender audit.

  Requires permission to access the
  [StartOnDemandAuditTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def start_on_demand_audit_task(%Client{} = client, input, options \\ []) do
    url_path = "/audit/tasks"
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
  Creates a bulk thing provisioning task.

  Requires permission to access the
  [StartThingRegistrationTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def start_thing_registration_task(%Client{} = client, input, options \\ []) do
    url_path = "/thing-registration-tasks"
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
  Cancels a bulk thing provisioning task.

  Requires permission to access the
  [StopThingRegistrationTask](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def stop_thing_registration_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/thing-registration-tasks/#{AWS.Util.encode_uri(task_id)}/cancel"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Adds to or modifies the tags of the given resource.

  Tags are metadata which can be
  used to manage a resource.

  Requires permission to access the
  [TagResource](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
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
  Tests if a specified principal is authorized to perform an IoT action on a
  specified resource.

  Use this to test and debug the authorization behavior of devices that
  connect to the IoT device gateway.

  Requires permission to access the
  [TestAuthorization](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def test_authorization(%Client{} = client, input, options \\ []) do
    url_path = "/test-authorization"
    headers = []

    {query_params, input} =
      [
        {"clientId", "clientId"}
      ]
      |> Request.build_params(input)

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
  Tests a custom authorization behavior by invoking a specified custom authorizer.

  Use
  this to test and debug the custom authorization behavior of devices that connect
  to the IoT
  device gateway.

  Requires permission to access the
  [TestInvokeAuthorizer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def test_invoke_authorizer(%Client{} = client, authorizer_name, input, options \\ []) do
    url_path = "/authorizer/#{AWS.Util.encode_uri(authorizer_name)}/test"
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
  Transfers the specified certificate to the specified Amazon Web Services
  account.

  Requires permission to access the
  [TransferCertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.

  You can cancel the transfer until it is acknowledged by the recipient.

  No notification is sent to the transfer destination's account. It is up to the
  caller
  to notify the transfer target.

  The certificate being transferred must not be in the ACTIVE state. You can use
  the
  `UpdateCertificate` action to deactivate it.

  The certificate must not have any policies attached to it. You can use the
  `DetachPolicy` action to detach them.
  """
  def transfer_certificate(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/transfer-certificate/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []

    {query_params, input} =
      [
        {"targetAwsAccount", "targetAwsAccount"}
      ]
      |> Request.build_params(input)

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
  Removes the given tags (metadata) from the resource.

  Requires permission to access the
  [UntagResource](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/untag"
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
  Configures or reconfigures the Device Defender audit settings for this account.

  Settings include how audit notifications are sent and which audit checks are
  enabled or disabled.

  Requires permission to access the
  [UpdateAccountAuditConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_account_audit_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/audit/configuration"
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

  Updates a Device Defender audit suppression.
  """
  def update_audit_suppression(%Client{} = client, input, options \\ []) do
    url_path = "/audit/suppressions/update"
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
  Updates an authorizer.

  Requires permission to access the
  [UpdateAuthorizer](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_authorizer(%Client{} = client, authorizer_name, input, options \\ []) do
    url_path = "/authorizer/#{AWS.Util.encode_uri(authorizer_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates information about the billing group.

  Requires permission to access the
  [UpdateBillingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_billing_group(%Client{} = client, billing_group_name, input, options \\ []) do
    url_path = "/billing-groups/#{AWS.Util.encode_uri(billing_group_name)}"
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
  Updates a registered CA certificate.

  Requires permission to access the
  [UpdateCACertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the status of the specified certificate.

  This operation is
  idempotent.

  Requires permission to access the
  [UpdateCertificate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.

  Certificates must be in the ACTIVE state to authenticate devices that use
  a certificate to connect to IoT.

  Within a few minutes of updating a certificate from the ACTIVE state to any
  other
  state, IoT disconnects all devices that used that certificate to connect.
  Devices cannot
  use a certificate that is not in the ACTIVE state to reconnect.
  """
  def update_certificate(%Client{} = client, certificate_id, input, options \\ []) do
    url_path = "/certificates/#{AWS.Util.encode_uri(certificate_id)}"
    headers = []

    {query_params, input} =
      [
        {"newStatus", "newStatus"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a certificate provider.

  Requires permission to access the
  [UpdateCertificateProvider](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_certificate_provider(
        %Client{} = client,
        certificate_provider_name,
        input,
        options \\ []
      ) do
    url_path = "/certificate-providers/#{AWS.Util.encode_uri(certificate_provider_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a
  Device Defender detect custom metric.

  Requires permission to access the
  [UpdateCustomMetric](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_custom_metric(%Client{} = client, metric_name, input, options \\ []) do
    url_path = "/custom-metric/#{AWS.Util.encode_uri(metric_name)}"
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
  Updates the definition for a dimension.

  You
  cannot
  change the type of a dimension after
  it is created (you can delete it and
  recreate
  it).

  Requires permission to access the
  [UpdateDimension](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_dimension(%Client{} = client, name, input, options \\ []) do
    url_path = "/dimensions/#{AWS.Util.encode_uri(name)}"
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
  Updates values stored in the domain configuration.

  Domain configurations for default
  endpoints can't be updated.

  Requires permission to access the
  [UpdateDomainConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a dynamic thing group.

  Requires permission to access the
  [UpdateDynamicThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_dynamic_thing_group(%Client{} = client, thing_group_name, input, options \\ []) do
    url_path = "/dynamic-thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
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
  Updates the event configurations.

  Requires permission to access the
  [UpdateEventConfigurations](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_event_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/event-configurations"
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
  Updates the data for a fleet metric.

  Requires permission to access the
  [UpdateFleetMetric](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_fleet_metric(%Client{} = client, metric_name, input, options \\ []) do
    url_path = "/fleet-metric/#{AWS.Util.encode_uri(metric_name)}"
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
  Updates the search configuration.

  Requires permission to access the
  [UpdateIndexingConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_indexing_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/indexing/config"
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
  Updates supported fields of the specified job.

  Requires permission to access the
  [UpdateJob](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []

    {query_params, input} =
      [
        {"namespaceId", "namespaceId"}
      ]
      |> Request.build_params(input)

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
  Updates the definition for the specified mitigation action.

  Requires permission to access the
  [UpdateMitigationAction](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_mitigation_action(%Client{} = client, action_name, input, options \\ []) do
    url_path = "/mitigationactions/actions/#{AWS.Util.encode_uri(action_name)}"
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
  Updates the supported fields for a specific software package.

  Requires permission to access the
  [UpdatePackage](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) and
  [GetIndexingConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  actions.
  """
  def update_package(%Client{} = client, package_name, input, options \\ []) do
    url_path = "/packages/#{AWS.Util.encode_uri(package_name)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

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
  Updates the software package configuration.

  Requires permission to access the
  [UpdatePackageConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) and
  [iam:PassRole](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html)
  actions.
  """
  def update_package_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/package-configuration"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

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
  Updates the supported fields for a specific package version.

  Requires permission to access the
  [UpdatePackageVersion](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) and
  [GetIndexingConfiguration](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  actions.
  """
  def update_package_version(%Client{} = client, package_name, version_name, input, options \\ []) do
    url_path =
      "/packages/#{AWS.Util.encode_uri(package_name)}/versions/#{AWS.Util.encode_uri(version_name)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

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
  Updates a provisioning template.

  Requires permission to access the
  [UpdateProvisioningTemplate](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_provisioning_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/provisioning-templates/#{AWS.Util.encode_uri(template_name)}"
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
  Updates a role alias.

  Requires permission to access the
  [UpdateRoleAlias](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_role_alias(%Client{} = client, role_alias, input, options \\ []) do
    url_path = "/role-aliases/#{AWS.Util.encode_uri(role_alias)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a scheduled audit, including which checks are performed and
  how often the audit takes place.

  Requires permission to access the
  [UpdateScheduledAudit](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_scheduled_audit(%Client{} = client, scheduled_audit_name, input, options \\ []) do
    url_path = "/audit/scheduledaudits/#{AWS.Util.encode_uri(scheduled_audit_name)}"
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
  Updates a Device Defender security profile.

  Requires permission to access the
  [UpdateSecurityProfile](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_security_profile(%Client{} = client, security_profile_name, input, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(security_profile_name)}"
    headers = []

    {query_params, input} =
      [
        {"expectedVersion", "expectedVersion"}
      ]
      |> Request.build_params(input)

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
  Updates an existing stream.

  The stream version will be incremented by one.

  Requires permission to access the
  [UpdateStream](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_stream(%Client{} = client, stream_id, input, options \\ []) do
    url_path = "/streams/#{AWS.Util.encode_uri(stream_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the data for a thing.

  Requires permission to access the
  [UpdateThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_thing(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/things/#{AWS.Util.encode_uri(thing_name)}"
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
  Update a thing group.

  Requires permission to access the
  [UpdateThingGroup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_thing_group(%Client{} = client, thing_group_name, input, options \\ []) do
    url_path = "/thing-groups/#{AWS.Util.encode_uri(thing_group_name)}"
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
  Updates the groups to which the thing belongs.

  Requires permission to access the
  [UpdateThingGroupsForThing](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_thing_groups_for_thing(%Client{} = client, input, options \\ []) do
    url_path = "/thing-groups/updateThingGroupsForThing"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a topic rule destination.

  You use this to change the status, endpoint URL, or
  confirmation URL of the destination.

  Requires permission to access the
  [UpdateTopicRuleDestination](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def update_topic_rule_destination(%Client{} = client, input, options \\ []) do
    url_path = "/destinations"
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
  Validates a Device Defender security profile behaviors specification.

  Requires permission to access the
  [ValidateSecurityProfileBehaviors](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def validate_security_profile_behaviors(%Client{} = client, input, options \\ []) do
    url_path = "/security-profile-behaviors/validate"
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
end
