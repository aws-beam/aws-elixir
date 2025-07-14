# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Transfer do
  @moduledoc """
  Transfer Family is a fully managed service that enables the transfer of files
  over the File Transfer Protocol (FTP), File Transfer Protocol over SSL (FTPS),
  or Secure Shell (SSH) File Transfer Protocol (SFTP) directly into and out of
  Amazon Simple Storage Service (Amazon S3) or Amazon EFS.

  Additionally, you can use Applicability Statement 2 (AS2) to transfer files into
  and out of Amazon S3. Amazon Web Services helps you seamlessly migrate your file
  transfer workflows to Transfer Family by integrating with existing
  authentication systems, and providing DNS routing with Amazon Route 53 so
  nothing changes for your customers and partners, or their applications. With
  your data in Amazon S3, you can use it with Amazon Web Services services for
  processing, analytics, machine learning, and archiving. Getting started with
  Transfer Family is easy since there is no infrastructure to buy and set up.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      described_certificate() :: %{
        "ActiveDate" => non_neg_integer(),
        "Arn" => String.t(),
        "Certificate" => String.t(),
        "CertificateChain" => String.t(),
        "CertificateId" => String.t(),
        "Description" => String.t(),
        "InactiveDate" => non_neg_integer(),
        "NotAfterDate" => non_neg_integer(),
        "NotBeforeDate" => non_neg_integer(),
        "Serial" => String.t(),
        "Status" => list(any()),
        "Tags" => list(tag()),
        "Type" => list(any()),
        "Usage" => list(any())
      }
      
  """
  @type described_certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_detail() :: %{
        "ExecutionRole" => String.t(),
        "WorkflowId" => String.t()
      }
      
  """
  @type workflow_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_security_policy_request() :: %{
        required("SecurityPolicyName") => String.t()
      }
      
  """
  @type describe_security_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workflow_request() :: %{
        optional("Description") => String.t(),
        optional("OnExceptionSteps") => list(workflow_step()),
        optional("Tags") => list(tag()),
        required("Steps") => list(workflow_step())
      }
      
  """
  @type create_workflow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_certificate_request() :: %{
        optional("ActiveDate") => non_neg_integer(),
        optional("Description") => String.t(),
        optional("InactiveDate") => non_neg_integer(),
        required("CertificateId") => String.t()
      }
      
  """
  @type update_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      described_access() :: %{
        "ExternalId" => String.t(),
        "HomeDirectory" => String.t(),
        "HomeDirectoryMappings" => list(home_directory_map_entry()),
        "HomeDirectoryType" => list(any()),
        "Policy" => String.t(),
        "PosixProfile" => posix_profile(),
        "Role" => String.t()
      }
      
  """
  @type described_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_access_response() :: %{
        "Access" => described_access(),
        "ServerId" => String.t()
      }
      
  """
  @type describe_access_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Arn") => String.t(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_agreement_request() :: %{
        required("AgreementId") => String.t(),
        required("ServerId") => String.t()
      }
      
  """
  @type describe_agreement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_server_response() :: %{
        "ServerId" => String.t()
      }
      
  """
  @type update_server_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_profile_request() :: %{
        required("ProfileId") => String.t()
      }
      
  """
  @type describe_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_access_request() :: %{
        required("ExternalId") => String.t(),
        required("ServerId") => String.t()
      }
      
  """
  @type describe_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      described_web_app_customization() :: %{
        "Arn" => String.t(),
        "FaviconFile" => binary(),
        "LogoFile" => binary(),
        "Title" => String.t(),
        "WebAppId" => String.t()
      }
      
  """
  @type described_web_app_customization() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_server_request() :: %{
        required("ServerId") => String.t()
      }
      
  """
  @type describe_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      listed_server() :: %{
        "Arn" => String.t(),
        "Domain" => list(any()),
        "EndpointType" => list(any()),
        "IdentityProviderType" => list(any()),
        "LoggingRole" => String.t(),
        "ServerId" => String.t(),
        "State" => list(any()),
        "UserCount" => integer()
      }
      
  """
  @type listed_server() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_connectors_response() :: %{
        "Connectors" => list(listed_connector()),
        "NextToken" => String.t()
      }
      
  """
  @type list_connectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_server_request() :: %{
        optional("Certificate") => String.t(),
        optional("EndpointDetails") => endpoint_details(),
        optional("EndpointType") => list(any()),
        optional("HostKey") => String.t(),
        optional("IdentityProviderDetails") => identity_provider_details(),
        optional("IpAddressType") => list(any()),
        optional("LoggingRole") => String.t(),
        optional("PostAuthenticationLoginBanner") => String.t(),
        optional("PreAuthenticationLoginBanner") => String.t(),
        optional("ProtocolDetails") => protocol_details(),
        optional("Protocols") => list(list(any())()),
        optional("S3StorageOptions") => s3_storage_options(),
        optional("SecurityPolicyName") => String.t(),
        optional("StructuredLogDestinations") => list(String.t()),
        optional("WorkflowDetails") => workflow_details(),
        required("ServerId") => String.t()
      }
      
  """
  @type update_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_identity_provider_request() :: %{
        optional("ServerProtocol") => list(any()),
        optional("SourceIp") => String.t(),
        optional("UserPassword") => String.t(),
        required("ServerId") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type test_identity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_execution_request() :: %{
        required("ExecutionId") => String.t(),
        required("WorkflowId") => String.t()
      }
      
  """
  @type describe_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_response() :: %{
        "ServerId" => String.t(),
        "UserName" => String.t()
      }
      
  """
  @type update_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_profile_request() :: %{
        required("ProfileId") => String.t()
      }
      
  """
  @type delete_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_details() :: %{
        "OnPartialUpload" => list(workflow_detail()),
        "OnUpload" => list(workflow_detail())
      }
      
  """
  @type workflow_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workflow_response() :: %{
        "Workflow" => described_workflow()
      }
      
  """
  @type describe_workflow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      listed_profile() :: %{
        "Arn" => String.t(),
        "As2Id" => String.t(),
        "ProfileId" => String.t(),
        "ProfileType" => list(any())
      }
      
  """
  @type listed_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_web_app_customization_request() :: %{
        optional("FaviconFile") => binary(),
        optional("LogoFile") => binary(),
        optional("Title") => String.t(),
        required("WebAppId") => String.t()
      }
      
  """
  @type update_web_app_customization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_directories_type() :: %{
        "FailedFilesDirectory" => String.t(),
        "MdnFilesDirectory" => String.t(),
        "PayloadFilesDirectory" => String.t(),
        "StatusFilesDirectory" => String.t(),
        "TemporaryFilesDirectory" => String.t()
      }
      
  """
  @type custom_directories_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_provider_details() :: %{
        "DirectoryId" => String.t(),
        "Function" => String.t(),
        "InvocationRole" => String.t(),
        "SftpAuthenticationMethods" => list(any()),
        "Url" => String.t()
      }
      
  """
  @type identity_provider_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workflow_request() :: %{
        required("WorkflowId") => String.t()
      }
      
  """
  @type delete_workflow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_agreement_request() :: %{
        optional("BaseDirectory") => String.t(),
        optional("CustomDirectories") => custom_directories_type(),
        optional("Description") => String.t(),
        optional("EnforceMessageSigning") => list(any()),
        optional("PreserveFilename") => list(any()),
        optional("Status") => list(any()),
        optional("Tags") => list(tag()),
        required("AccessRole") => String.t(),
        required("LocalProfileId") => String.t(),
        required("PartnerProfileId") => String.t(),
        required("ServerId") => String.t()
      }
      
  """
  @type create_agreement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ProfileType") => list(any())
      }
      
  """
  @type list_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connector_response() :: %{
        "Connector" => described_connector()
      }
      
  """
  @type describe_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_workflow_step_state_response() :: %{}
      
  """
  @type send_workflow_step_state_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_step_details() :: %{
        "Name" => String.t(),
        "SourceFileLocation" => String.t()
      }
      
  """
  @type delete_step_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      endpoint_details() :: %{
        "AddressAllocationIds" => list(String.t()),
        "SecurityGroupIds" => list(String.t()),
        "SubnetIds" => list(String.t()),
        "VpcEndpointId" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type endpoint_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_connector_request() :: %{
        optional("AccessRole") => String.t(),
        optional("As2Config") => as2_connector_config(),
        optional("LoggingRole") => String.t(),
        optional("SecurityPolicyName") => String.t(),
        optional("SftpConfig") => sftp_connector_config(),
        optional("Url") => String.t(),
        required("ConnectorId") => String.t()
      }
      
  """
  @type update_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_remote_delete_response() :: %{
        "DeleteId" => String.t()
      }
      
  """
  @type start_remote_delete_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_web_app_customization_request() :: %{
        required("WebAppId") => String.t()
      }
      
  """
  @type describe_web_app_customization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_access_response() :: %{
        "ExternalId" => String.t(),
        "ServerId" => String.t()
      }
      
  """
  @type create_access_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_agreement_response() :: %{
        "Agreement" => described_agreement()
      }
      
  """
  @type describe_agreement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_servers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_servers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_error() :: %{
        "Message" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type execution_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_agreement_response() :: %{
        "AgreementId" => String.t()
      }
      
  """
  @type update_agreement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_metadata() :: %{
        "UserDetails" => user_details()
      }
      
  """
  @type service_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_details() :: %{
        "ServerId" => String.t(),
        "SessionId" => String.t(),
        "UserName" => String.t()
      }
      
  """
  @type user_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connector_file_transfer_result() :: %{
        "FailureCode" => String.t(),
        "FailureMessage" => String.t(),
        "FilePath" => String.t(),
        "StatusCode" => list(any())
      }
      
  """
  @type connector_file_transfer_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_web_app_response() :: %{
        "WebAppId" => String.t()
      }
      
  """
  @type create_web_app_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_execution_response() :: %{
        "Execution" => described_execution(),
        "WorkflowId" => String.t()
      }
      
  """
  @type describe_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      posix_profile() :: %{
        "Gid" => float(),
        "SecondaryGids" => list(float()),
        "Uid" => float()
      }
      
  """
  @type posix_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_certificate_response() :: %{
        "CertificateId" => String.t()
      }
      
  """
  @type import_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_server_request() :: %{
        required("ServerId") => String.t()
      }
      
  """
  @type start_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_connectors_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_connectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_server_response() :: %{
        "Server" => described_server()
      }
      
  """
  @type describe_server_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sftp_connector_connection_details() :: %{
        "HostKey" => String.t()
      }
      
  """
  @type sftp_connector_connection_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("Arn") => String.t(),
        required("TagKeys") => list(String.t())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_certificates_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_certificates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_agreement_request() :: %{
        required("AgreementId") => String.t(),
        required("ServerId") => String.t()
      }
      
  """
  @type delete_agreement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workflow_request() :: %{
        required("WorkflowId") => String.t()
      }
      
  """
  @type describe_workflow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_access_request() :: %{
        optional("HomeDirectory") => String.t(),
        optional("HomeDirectoryMappings") => list(home_directory_map_entry()),
        optional("HomeDirectoryType") => list(any()),
        optional("Policy") => String.t(),
        optional("PosixProfile") => posix_profile(),
        optional("Role") => String.t(),
        required("ExternalId") => String.t(),
        required("ServerId") => String.t()
      }
      
  """
  @type update_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_server_request() :: %{
        optional("Certificate") => String.t(),
        optional("Domain") => list(any()),
        optional("EndpointDetails") => endpoint_details(),
        optional("EndpointType") => list(any()),
        optional("HostKey") => String.t(),
        optional("IdentityProviderDetails") => identity_provider_details(),
        optional("IdentityProviderType") => list(any()),
        optional("IpAddressType") => list(any()),
        optional("LoggingRole") => String.t(),
        optional("PostAuthenticationLoginBanner") => String.t(),
        optional("PreAuthenticationLoginBanner") => String.t(),
        optional("ProtocolDetails") => protocol_details(),
        optional("Protocols") => list(list(any())()),
        optional("S3StorageOptions") => s3_storage_options(),
        optional("SecurityPolicyName") => String.t(),
        optional("StructuredLogDestinations") => list(String.t()),
        optional("Tags") => list(tag()),
        optional("WorkflowDetails") => workflow_details()
      }
      
  """
  @type create_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      logging_configuration() :: %{
        "LogGroupName" => String.t(),
        "LoggingRole" => String.t()
      }
      
  """
  @type logging_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_ssh_public_key_response() :: %{
        "ServerId" => String.t(),
        "SshPublicKeyId" => String.t(),
        "UserName" => String.t()
      }
      
  """
  @type import_ssh_public_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_web_app_customization_response() :: %{
        "WebAppCustomization" => described_web_app_customization()
      }
      
  """
  @type describe_web_app_customization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      described_security_policy() :: %{
        "Fips" => boolean(),
        "Protocols" => list(list(any())()),
        "SecurityPolicyName" => String.t(),
        "SshCiphers" => list(String.t()),
        "SshHostKeyAlgorithms" => list(String.t()),
        "SshKexs" => list(String.t()),
        "SshMacs" => list(String.t()),
        "TlsCiphers" => list(String.t()),
        "Type" => list(any())
      }
      
  """
  @type described_security_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_web_app_request() :: %{
        optional("AccessEndpoint") => String.t(),
        optional("Tags") => list(tag()),
        optional("WebAppEndpointPolicy") => list(any()),
        optional("WebAppUnits") => list(),
        required("IdentityProviderDetails") => list()
      }
      
  """
  @type create_web_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      listed_user() :: %{
        "Arn" => String.t(),
        "HomeDirectory" => String.t(),
        "HomeDirectoryType" => list(any()),
        "Role" => String.t(),
        "SshPublicKeyCount" => integer(),
        "UserName" => String.t()
      }
      
  """
  @type listed_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_host_key_response() :: %{
        "HostKeyId" => String.t(),
        "ServerId" => String.t()
      }
      
  """
  @type update_host_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cfn_user_properties() :: %{
        "SshPublicKeys" => list(String.t())
      }
      
  """
  @type cfn_user_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_step_details() :: %{
        "Name" => String.t(),
        "SourceFileLocation" => String.t(),
        "Target" => String.t(),
        "TimeoutSeconds" => integer()
      }
      
  """
  @type custom_step_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_profile_request() :: %{
        optional("CertificateIds") => list(String.t()),
        optional("Tags") => list(tag()),
        required("As2Id") => String.t(),
        required("ProfileType") => list(any())
      }
      
  """
  @type create_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_file_transfer_results_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ConnectorId") => String.t(),
        required("TransferId") => String.t()
      }
      
  """
  @type list_file_transfer_results_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      described_user() :: %{
        "Arn" => String.t(),
        "HomeDirectory" => String.t(),
        "HomeDirectoryMappings" => list(home_directory_map_entry()),
        "HomeDirectoryType" => list(any()),
        "Policy" => String.t(),
        "PosixProfile" => posix_profile(),
        "Role" => String.t(),
        "SshPublicKeys" => list(ssh_public_key()),
        "Tags" => list(tag()),
        "UserName" => String.t()
      }
      
  """
  @type described_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_accesses_response() :: %{
        "Accesses" => list(listed_access()),
        "NextToken" => String.t(),
        "ServerId" => String.t()
      }
      
  """
  @type list_accesses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      as2_connector_config() :: %{
        "BasicAuthSecretId" => String.t(),
        "Compression" => list(any()),
        "EncryptionAlgorithm" => list(any()),
        "LocalProfileId" => String.t(),
        "MdnResponse" => list(any()),
        "MdnSigningAlgorithm" => list(any()),
        "MessageSubject" => String.t(),
        "PartnerProfileId" => String.t(),
        "PreserveContentType" => list(any()),
        "SigningAlgorithm" => list(any())
      }
      
  """
  @type as2_connector_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      described_host_key() :: %{
        "Arn" => String.t(),
        "DateImported" => non_neg_integer(),
        "Description" => String.t(),
        "HostKeyFingerprint" => String.t(),
        "HostKeyId" => String.t(),
        "Tags" => list(tag()),
        "Type" => String.t()
      }
      
  """
  @type described_host_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "Resource" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      listed_access() :: %{
        "ExternalId" => String.t(),
        "HomeDirectory" => String.t(),
        "HomeDirectoryType" => list(any()),
        "Role" => String.t()
      }
      
  """
  @type listed_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_profile_request() :: %{
        optional("CertificateIds") => list(String.t()),
        required("ProfileId") => String.t()
      }
      
  """
  @type update_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_executions_response() :: %{
        "Executions" => list(listed_execution()),
        "NextToken" => String.t(),
        "WorkflowId" => String.t()
      }
      
  """
  @type list_executions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_host_key_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => list(tag()),
        required("HostKeyBody") => String.t(),
        required("ServerId") => String.t()
      }
      
  """
  @type import_host_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_host_key_request() :: %{
        required("HostKeyId") => String.t(),
        required("ServerId") => String.t()
      }
      
  """
  @type describe_host_key_request() :: %{String.t() => any()}

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
      
      create_server_response() :: %{
        "ServerId" => String.t()
      }
      
  """
  @type create_server_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_input_file_location() :: %{
        "Bucket" => String.t(),
        "Key" => String.t()
      }
      
  """
  @type s3_input_file_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_remote_delete_request() :: %{
        required("ConnectorId") => String.t(),
        required("DeletePath") => String.t()
      }
      
  """
  @type start_remote_delete_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_file_transfer_response() :: %{
        "TransferId" => String.t()
      }
      
  """
  @type start_file_transfer_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_certificate_request() :: %{
        required("CertificateId") => String.t()
      }
      
  """
  @type describe_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_profile_response() :: %{
        "ProfileId" => String.t()
      }
      
  """
  @type create_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      listed_connector() :: %{
        "Arn" => String.t(),
        "ConnectorId" => String.t(),
        "Url" => String.t()
      }
      
  """
  @type listed_connector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_users_response() :: %{
        "NextToken" => String.t(),
        "ServerId" => String.t(),
        "Users" => list(listed_user())
      }
      
  """
  @type list_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_access_request() :: %{
        required("ExternalId") => String.t(),
        required("ServerId") => String.t()
      }
      
  """
  @type delete_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workflows_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_workflows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_web_app_response() :: %{
        "WebApp" => described_web_app()
      }
      
  """
  @type describe_web_app_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_access_request() :: %{
        optional("HomeDirectory") => String.t(),
        optional("HomeDirectoryMappings") => list(home_directory_map_entry()),
        optional("HomeDirectoryType") => list(any()),
        optional("Policy") => String.t(),
        optional("PosixProfile") => posix_profile(),
        required("ExternalId") => String.t(),
        required("Role") => String.t(),
        required("ServerId") => String.t()
      }
      
  """
  @type create_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      described_execution() :: %{
        "ExecutionId" => String.t(),
        "ExecutionRole" => String.t(),
        "InitialFileLocation" => file_location(),
        "LoggingConfiguration" => logging_configuration(),
        "PosixProfile" => posix_profile(),
        "Results" => execution_results(),
        "ServiceMetadata" => service_metadata(),
        "Status" => list(any())
      }
      
  """
  @type described_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_connector_response() :: %{
        "ConnectorId" => String.t()
      }
      
  """
  @type create_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Arn" => String.t(),
        "NextToken" => String.t(),
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_security_policy_response() :: %{
        "SecurityPolicy" => described_security_policy()
      }
      
  """
  @type describe_security_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow_step() :: %{
        "CopyStepDetails" => copy_step_details(),
        "CustomStepDetails" => custom_step_details(),
        "DecryptStepDetails" => decrypt_step_details(),
        "DeleteStepDetails" => delete_step_details(),
        "TagStepDetails" => tag_step_details(),
        "Type" => list(any())
      }
      
  """
  @type workflow_step() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      listed_web_app() :: %{
        "AccessEndpoint" => String.t(),
        "Arn" => String.t(),
        "WebAppEndpoint" => String.t(),
        "WebAppId" => String.t()
      }
      
  """
  @type listed_web_app() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_file_transfer_results_response() :: %{
        "FileTransferResults" => list(connector_file_transfer_result()),
        "NextToken" => String.t()
      }
      
  """
  @type list_file_transfer_results_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_step_details() :: %{
        "Name" => String.t(),
        "SourceFileLocation" => String.t(),
        "Tags" => list(s3_tag())
      }
      
  """
  @type tag_step_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_web_app_request() :: %{
        required("WebAppId") => String.t()
      }
      
  """
  @type describe_web_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_agreement_response() :: %{
        "AgreementId" => String.t()
      }
      
  """
  @type create_agreement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_web_app_customization_request() :: %{
        required("WebAppId") => String.t()
      }
      
  """
  @type delete_web_app_customization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      described_identity_center_config() :: %{
        "ApplicationArn" => String.t(),
        "InstanceArn" => String.t(),
        "Role" => String.t()
      }
      
  """
  @type described_identity_center_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_web_app_identity_center_config() :: %{
        "Role" => String.t()
      }
      
  """
  @type update_web_app_identity_center_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_connector_request() :: %{
        required("ConnectorId") => String.t()
      }
      
  """
  @type describe_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      described_server() :: %{
        "Arn" => String.t(),
        "As2ServiceManagedEgressIpAddresses" => list(String.t()),
        "Certificate" => String.t(),
        "Domain" => list(any()),
        "EndpointDetails" => endpoint_details(),
        "EndpointType" => list(any()),
        "HostKeyFingerprint" => String.t(),
        "IdentityProviderDetails" => identity_provider_details(),
        "IdentityProviderType" => list(any()),
        "IpAddressType" => list(any()),
        "LoggingRole" => String.t(),
        "PostAuthenticationLoginBanner" => String.t(),
        "PreAuthenticationLoginBanner" => String.t(),
        "ProtocolDetails" => protocol_details(),
        "Protocols" => list(list(any())()),
        "S3StorageOptions" => s3_storage_options(),
        "SecurityPolicyName" => String.t(),
        "ServerId" => String.t(),
        "State" => list(any()),
        "StructuredLogDestinations" => list(String.t()),
        "Tags" => list(tag()),
        "UserCount" => integer(),
        "WorkflowDetails" => workflow_details()
      }
      
  """
  @type described_server() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_agreements_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ServerId") => String.t()
      }
      
  """
  @type list_agreements_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_request() :: %{
        required("ServerId") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type delete_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      described_profile() :: %{
        "Arn" => String.t(),
        "As2Id" => String.t(),
        "CertificateIds" => list(String.t()),
        "ProfileId" => String.t(),
        "ProfileType" => list(any()),
        "Tags" => list(tag())
      }
      
  """
  @type described_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_server_request() :: %{
        required("ServerId") => String.t()
      }
      
  """
  @type stop_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_host_key_request() :: %{
        required("HostKeyId") => String.t(),
        required("ServerId") => String.t()
      }
      
  """
  @type delete_host_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_identity_provider_response() :: %{
        "Message" => String.t(),
        "Response" => String.t(),
        "StatusCode" => integer(),
        "Url" => String.t()
      }
      
  """
  @type test_identity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_web_app_request() :: %{
        required("WebAppId") => String.t()
      }
      
  """
  @type delete_web_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      file_location() :: %{
        "EfsFileLocation" => efs_file_location(),
        "S3FileLocation" => s3_file_location()
      }
      
  """
  @type file_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      listed_execution() :: %{
        "ExecutionId" => String.t(),
        "InitialFileLocation" => file_location(),
        "ServiceMetadata" => service_metadata(),
        "Status" => list(any())
      }
      
  """
  @type listed_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_workflow_step_state_request() :: %{
        required("ExecutionId") => String.t(),
        required("Status") => list(any()),
        required("Token") => String.t(),
        required("WorkflowId") => String.t()
      }
      
  """
  @type send_workflow_step_state_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_host_key_response() :: %{
        "HostKeyId" => String.t(),
        "ServerId" => String.t()
      }
      
  """
  @type import_host_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_connection_response() :: %{
        "ConnectorId" => String.t(),
        "SftpConnectionDetails" => sftp_connector_connection_details(),
        "Status" => String.t(),
        "StatusMessage" => String.t()
      }
      
  """
  @type test_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_response() :: %{
        "ServerId" => String.t(),
        "User" => described_user()
      }
      
  """
  @type describe_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_file_location() :: %{
        "EfsFileLocation" => efs_file_location(),
        "S3FileLocation" => s3_input_file_location()
      }
      
  """
  @type input_file_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_web_app_request() :: %{
        optional("AccessEndpoint") => String.t(),
        optional("IdentityProviderDetails") => list(),
        optional("WebAppUnits") => list(),
        required("WebAppId") => String.t()
      }
      
  """
  @type update_web_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_ssh_public_key_request() :: %{
        required("ServerId") => String.t(),
        required("SshPublicKeyBody") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type import_ssh_public_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      decrypt_step_details() :: %{
        "DestinationFileLocation" => input_file_location(),
        "Name" => String.t(),
        "OverwriteExisting" => list(any()),
        "SourceFileLocation" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type decrypt_step_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      identity_center_config() :: %{
        "InstanceArn" => String.t(),
        "Role" => String.t()
      }
      
  """
  @type identity_center_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_exists_exception() :: %{
        "Message" => String.t(),
        "Resource" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type resource_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      listed_host_key() :: %{
        "Arn" => String.t(),
        "DateImported" => non_neg_integer(),
        "Description" => String.t(),
        "Fingerprint" => String.t(),
        "HostKeyId" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type listed_host_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_step_result() :: %{
        "Error" => execution_error(),
        "Outputs" => String.t(),
        "StepType" => list(any())
      }
      
  """
  @type execution_step_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_certificate_request() :: %{
        optional("ActiveDate") => non_neg_integer(),
        optional("CertificateChain") => String.t(),
        optional("Description") => String.t(),
        optional("InactiveDate") => non_neg_integer(),
        optional("PrivateKey") => String.t(),
        optional("Tags") => list(tag()),
        required("Certificate") => String.t(),
        required("Usage") => list(any())
      }
      
  """
  @type import_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workflow_response() :: %{
        "WorkflowId" => String.t()
      }
      
  """
  @type create_workflow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_security_policies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_security_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ssh_public_key() :: %{
        "DateImported" => non_neg_integer(),
        "SshPublicKeyBody" => String.t(),
        "SshPublicKeyId" => String.t()
      }
      
  """
  @type ssh_public_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_agreement_request() :: %{
        optional("AccessRole") => String.t(),
        optional("BaseDirectory") => String.t(),
        optional("CustomDirectories") => custom_directories_type(),
        optional("Description") => String.t(),
        optional("EnforceMessageSigning") => list(any()),
        optional("LocalProfileId") => String.t(),
        optional("PartnerProfileId") => String.t(),
        optional("PreserveFilename") => list(any()),
        optional("Status") => list(any()),
        required("AgreementId") => String.t(),
        required("ServerId") => String.t()
      }
      
  """
  @type update_agreement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_web_apps_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_web_apps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_certificate_request() :: %{
        required("CertificateId") => String.t()
      }
      
  """
  @type delete_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_connector_request() :: %{
        optional("As2Config") => as2_connector_config(),
        optional("LoggingRole") => String.t(),
        optional("SecurityPolicyName") => String.t(),
        optional("SftpConfig") => sftp_connector_config(),
        optional("Tags") => list(tag()),
        required("AccessRole") => String.t(),
        required("Url") => String.t()
      }
      
  """
  @type create_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_security_policies_response() :: %{
        "NextToken" => String.t(),
        "SecurityPolicyNames" => list(String.t())
      }
      
  """
  @type list_security_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_certificate_response() :: %{
        "Certificate" => described_certificate()
      }
      
  """
  @type describe_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      listed_agreement() :: %{
        "AgreementId" => String.t(),
        "Arn" => String.t(),
        "Description" => String.t(),
        "LocalProfileId" => String.t(),
        "PartnerProfileId" => String.t(),
        "ServerId" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type listed_agreement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_remote_move_request() :: %{
        required("ConnectorId") => String.t(),
        required("SourcePath") => String.t(),
        required("TargetPath") => String.t()
      }
      
  """
  @type start_remote_move_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      efs_file_location() :: %{
        "FileSystemId" => String.t(),
        "Path" => String.t()
      }
      
  """
  @type efs_file_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_storage_options() :: %{
        "DirectoryListingOptimization" => list(any())
      }
      
  """
  @type s3_storage_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_error() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_service_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_request() :: %{
        required("ServerId") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type describe_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_accesses_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ServerId") => String.t()
      }
      
  """
  @type list_accesses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_access_response() :: %{
        "ExternalId" => String.t(),
        "ServerId" => String.t()
      }
      
  """
  @type update_access_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_profile_response() :: %{
        "ProfileId" => String.t()
      }
      
  """
  @type update_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_request() :: %{
        optional("HomeDirectory") => String.t(),
        optional("HomeDirectoryMappings") => list(home_directory_map_entry()),
        optional("HomeDirectoryType") => list(any()),
        optional("Policy") => String.t(),
        optional("PosixProfile") => posix_profile(),
        optional("Role") => String.t(),
        required("ServerId") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type update_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_profiles_response() :: %{
        "NextToken" => String.t(),
        "Profiles" => list(listed_profile())
      }
      
  """
  @type list_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      listed_workflow() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "WorkflowId" => String.t()
      }
      
  """
  @type listed_workflow() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Arn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_host_keys_response() :: %{
        "HostKeys" => list(listed_host_key()),
        "NextToken" => String.t(),
        "ServerId" => String.t()
      }
      
  """
  @type list_host_keys_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_web_apps_response() :: %{
        "NextToken" => String.t(),
        "WebApps" => list(listed_web_app())
      }
      
  """
  @type list_web_apps_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_connector_response() :: %{
        "ConnectorId" => String.t()
      }
      
  """
  @type update_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_file_location() :: %{
        "Bucket" => String.t(),
        "Etag" => String.t(),
        "Key" => String.t(),
        "VersionId" => String.t()
      }
      
  """
  @type s3_file_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "RetryAfterSeconds" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      described_workflow() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "OnExceptionSteps" => list(workflow_step()),
        "Steps" => list(workflow_step()),
        "Tags" => list(tag()),
        "WorkflowId" => String.t()
      }
      
  """
  @type described_workflow() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_servers_response() :: %{
        "NextToken" => String.t(),
        "Servers" => list(listed_server())
      }
      
  """
  @type list_servers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_host_keys_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ServerId") => String.t()
      }
      
  """
  @type list_host_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ServerId") => String.t()
      }
      
  """
  @type list_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_directory_listing_request() :: %{
        optional("MaxItems") => integer(),
        required("ConnectorId") => String.t(),
        required("OutputDirectoryPath") => String.t(),
        required("RemoteDirectoryPath") => String.t()
      }
      
  """
  @type start_directory_listing_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      listed_certificate() :: %{
        "ActiveDate" => non_neg_integer(),
        "Arn" => String.t(),
        "CertificateId" => String.t(),
        "Description" => String.t(),
        "InactiveDate" => non_neg_integer(),
        "Status" => list(any()),
        "Type" => list(any()),
        "Usage" => list(any())
      }
      
  """
  @type listed_certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_remote_move_response() :: %{
        "MoveId" => String.t()
      }
      
  """
  @type start_remote_move_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_connector_request() :: %{
        required("ConnectorId") => String.t()
      }
      
  """
  @type delete_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      home_directory_map_entry() :: %{
        "Entry" => String.t(),
        "Target" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type home_directory_map_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_host_key_request() :: %{
        required("Description") => String.t(),
        required("HostKeyId") => String.t(),
        required("ServerId") => String.t()
      }
      
  """
  @type update_host_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      described_agreement() :: %{
        "AccessRole" => String.t(),
        "AgreementId" => String.t(),
        "Arn" => String.t(),
        "BaseDirectory" => String.t(),
        "CustomDirectories" => custom_directories_type(),
        "Description" => String.t(),
        "EnforceMessageSigning" => list(any()),
        "LocalProfileId" => String.t(),
        "PartnerProfileId" => String.t(),
        "PreserveFilename" => list(any()),
        "ServerId" => String.t(),
        "Status" => list(any()),
        "Tags" => list(tag())
      }
      
  """
  @type described_agreement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_agreements_response() :: %{
        "Agreements" => list(listed_agreement()),
        "NextToken" => String.t()
      }
      
  """
  @type list_agreements_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sftp_connector_config() :: %{
        "MaxConcurrentConnections" => integer(),
        "TrustedHostKeys" => list(String.t()),
        "UserSecretId" => String.t()
      }
      
  """
  @type sftp_connector_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_host_key_response() :: %{
        "HostKey" => described_host_key()
      }
      
  """
  @type describe_host_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      described_web_app() :: %{
        "AccessEndpoint" => String.t(),
        "Arn" => String.t(),
        "DescribedIdentityProviderDetails" => list(),
        "Tags" => list(tag()),
        "WebAppEndpoint" => String.t(),
        "WebAppEndpointPolicy" => list(any()),
        "WebAppId" => String.t(),
        "WebAppUnits" => list()
      }
      
  """
  @type described_web_app() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type s3_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workflows_response() :: %{
        "NextToken" => String.t(),
        "Workflows" => list(listed_workflow())
      }
      
  """
  @type list_workflows_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_ssh_public_key_request() :: %{
        required("ServerId") => String.t(),
        required("SshPublicKeyId") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type delete_ssh_public_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_directory_listing_response() :: %{
        "ListingId" => String.t(),
        "OutputFileName" => String.t()
      }
      
  """
  @type start_directory_listing_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_response() :: %{
        "ServerId" => String.t(),
        "UserName" => String.t()
      }
      
  """
  @type create_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_certificate_response() :: %{
        "CertificateId" => String.t()
      }
      
  """
  @type update_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      copy_step_details() :: %{
        "DestinationFileLocation" => input_file_location(),
        "Name" => String.t(),
        "OverwriteExisting" => list(any()),
        "SourceFileLocation" => String.t()
      }
      
  """
  @type copy_step_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_file_transfer_request() :: %{
        optional("LocalDirectoryPath") => String.t(),
        optional("RemoteDirectoryPath") => String.t(),
        optional("RetrieveFilePaths") => list(String.t()),
        optional("SendFilePaths") => list(String.t()),
        required("ConnectorId") => String.t()
      }
      
  """
  @type start_file_transfer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_profile_response() :: %{
        "Profile" => described_profile()
      }
      
  """
  @type describe_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_web_app_response() :: %{
        "WebAppId" => String.t()
      }
      
  """
  @type update_web_app_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_results() :: %{
        "OnExceptionSteps" => list(execution_step_result()),
        "Steps" => list(execution_step_result())
      }
      
  """
  @type execution_results() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      described_connector() :: %{
        "AccessRole" => String.t(),
        "Arn" => String.t(),
        "As2Config" => as2_connector_config(),
        "ConnectorId" => String.t(),
        "LoggingRole" => String.t(),
        "SecurityPolicyName" => String.t(),
        "ServiceManagedEgressIpAddresses" => list(String.t()),
        "SftpConfig" => sftp_connector_config(),
        "Tags" => list(tag()),
        "Url" => String.t()
      }
      
  """
  @type described_connector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_certificates_response() :: %{
        "Certificates" => list(listed_certificate()),
        "NextToken" => String.t()
      }
      
  """
  @type list_certificates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_executions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("WorkflowId") => String.t()
      }
      
  """
  @type list_executions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_connection_request() :: %{
        required("ConnectorId") => String.t()
      }
      
  """
  @type test_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_server_request() :: %{
        required("ServerId") => String.t()
      }
      
  """
  @type delete_server_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      protocol_details() :: %{
        "As2Transports" => list(list(any())()),
        "PassiveIp" => String.t(),
        "SetStatOption" => list(any()),
        "TlsSessionResumptionMode" => list(any())
      }
      
  """
  @type protocol_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_request() :: %{
        optional("HomeDirectory") => String.t(),
        optional("HomeDirectoryMappings") => list(home_directory_map_entry()),
        optional("HomeDirectoryType") => list(any()),
        optional("Policy") => String.t(),
        optional("PosixProfile") => posix_profile(),
        optional("SshPublicKeyBody") => String.t(),
        optional("Tags") => list(tag()),
        required("Role") => String.t(),
        required("ServerId") => String.t(),
        required("UserName") => String.t()
      }
      
  """
  @type create_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_web_app_customization_response() :: %{
        "WebAppId" => String.t()
      }
      
  """
  @type update_web_app_customization_response() :: %{String.t() => any()}

  @type create_access_errors() ::
          internal_service_error()
          | resource_exists_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type create_agreement_errors() ::
          throttling_exception()
          | internal_service_error()
          | resource_exists_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type create_connector_errors() ::
          throttling_exception()
          | internal_service_error()
          | resource_exists_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type create_profile_errors() ::
          throttling_exception()
          | internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type create_server_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | resource_exists_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type create_user_errors() ::
          internal_service_error()
          | resource_exists_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type create_web_app_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type create_workflow_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | resource_exists_exception()
          | service_unavailable_exception()
          | invalid_request_exception()

  @type delete_access_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_agreement_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_certificate_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_connector_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_host_key_errors() ::
          throttling_exception()
          | internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_profile_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_server_errors() ::
          internal_service_error()
          | access_denied_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_ssh_public_key_errors() ::
          throttling_exception()
          | internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_user_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_web_app_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_web_app_customization_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workflow_errors() ::
          internal_service_error()
          | access_denied_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_access_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_agreement_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_certificate_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_connector_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_execution_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_host_key_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_profile_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_security_policy_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_server_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_user_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_web_app_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_web_app_customization_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_workflow_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type import_certificate_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type import_host_key_errors() ::
          throttling_exception()
          | internal_service_error()
          | resource_exists_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type import_ssh_public_key_errors() ::
          throttling_exception()
          | internal_service_error()
          | resource_exists_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_accesses_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_agreements_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_certificates_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_connectors_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_executions_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_file_transfer_results_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_host_keys_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_profiles_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_security_policies_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()

  @type list_servers_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()

  @type list_tags_for_resource_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()

  @type list_users_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_web_apps_errors() ::
          throttling_exception()
          | internal_service_error()
          | invalid_next_token_exception()
          | invalid_request_exception()

  @type list_workflows_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_next_token_exception()
          | invalid_request_exception()

  @type send_workflow_step_state_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type start_directory_listing_errors() ::
          throttling_exception()
          | internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type start_file_transfer_errors() ::
          throttling_exception()
          | internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type start_remote_delete_errors() ::
          throttling_exception()
          | internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type start_remote_move_errors() ::
          throttling_exception()
          | internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type start_server_errors() ::
          throttling_exception()
          | internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type stop_server_errors() ::
          throttling_exception()
          | internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type test_connection_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type test_identity_provider_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_access_errors() ::
          throttling_exception()
          | internal_service_error()
          | resource_exists_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_agreement_errors() ::
          throttling_exception()
          | internal_service_error()
          | resource_exists_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_certificate_errors() ::
          throttling_exception()
          | internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_connector_errors() ::
          throttling_exception()
          | internal_service_error()
          | resource_exists_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_host_key_errors() ::
          throttling_exception()
          | internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_profile_errors() ::
          throttling_exception()
          | internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_server_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | resource_exists_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_user_errors() ::
          throttling_exception()
          | internal_service_error()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_web_app_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_web_app_customization_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2018-11-05",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "transfer",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Transfer",
      signature_version: "v4",
      signing_name: "transfer",
      target_prefix: "TransferService"
    }
  end

  @doc """
  Used by administrators to choose which groups in the directory should have
  access to upload and download files over the enabled protocols using Transfer
  Family.

  For example, a Microsoft Active Directory might contain 50,000 users, but only a
  small fraction might need the ability to transfer files to the server. An
  administrator can use `CreateAccess` to limit the access to the correct set of
  users who need this ability.
  """
  @spec create_access(map(), create_access_request(), list()) ::
          {:ok, create_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_access_errors()}
  def create_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAccess", input, options)
  end

  @doc """
  Creates an agreement.

  An agreement is a bilateral trading partner agreement, or partnership, between
  an Transfer Family server and an AS2 process. The agreement defines the file and
  message transfer relationship between the server and the AS2 process. To define
  an agreement, Transfer Family combines a server, local profile, partner profile,
  certificate, and other attributes.

  The partner is identified with the `PartnerProfileId`, and the AS2 process is
  identified with the `LocalProfileId`.

  Specify *either* `BaseDirectory` or `CustomDirectories`, but not both.
  Specifying both causes the command to fail.
  """
  @spec create_agreement(map(), create_agreement_request(), list()) ::
          {:ok, create_agreement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_agreement_errors()}
  def create_agreement(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAgreement", input, options)
  end

  @doc """
  Creates the connector, which captures the parameters for a connection for the
  AS2 or SFTP protocol.

  For AS2, the connector is required for sending files to an externally hosted AS2
  server. For SFTP, the connector is required when sending files to an SFTP server
  or receiving files from an SFTP server. For more details about connectors, see
  [Configure AS2 connectors](https://docs.aws.amazon.com/transfer/latest/userguide/configure-as2-connector.html)
  and [Create SFTP connectors](https://docs.aws.amazon.com/transfer/latest/userguide/configure-sftp-connector.html).

  You must specify exactly one configuration object: either for AS2 (`As2Config`)
  or SFTP (`SftpConfig`).
  """
  @spec create_connector(map(), create_connector_request(), list()) ::
          {:ok, create_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_connector_errors()}
  def create_connector(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateConnector", input, options)
  end

  @doc """
  Creates the local or partner profile to use for AS2 transfers.
  """
  @spec create_profile(map(), create_profile_request(), list()) ::
          {:ok, create_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_profile_errors()}
  def create_profile(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateProfile", input, options)
  end

  @doc """
  Instantiates an auto-scaling virtual server based on the selected file transfer
  protocol in Amazon Web Services.

  When you make updates to your file transfer protocol-enabled server or when you
  work with users, use the service-generated `ServerId` property that is assigned
  to the newly created server.
  """
  @spec create_server(map(), create_server_request(), list()) ::
          {:ok, create_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_server_errors()}
  def create_server(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateServer", input, options)
  end

  @doc """
  Creates a user and associates them with an existing file transfer
  protocol-enabled server.

  You can only create and associate users with servers that have the
  `IdentityProviderType` set to `SERVICE_MANAGED`. Using parameters for
  `CreateUser`, you can specify the user name, set the home directory, store the
  user's public key, and assign the user's Identity and Access Management (IAM)
  role. You can also optionally add a session policy, and assign metadata with
  tags that can be used to group and search for users.
  """
  @spec create_user(map(), create_user_request(), list()) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateUser", input, options)
  end

  @doc """
  Creates a web app based on specified parameters, and returns the ID for the new
  web app.
  """
  @spec create_web_app(map(), create_web_app_request(), list()) ::
          {:ok, create_web_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_web_app_errors()}
  def create_web_app(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateWebApp", input, options)
  end

  @doc """
  Allows you to create a workflow with specified steps and step details the
  workflow invokes after file transfer completes.

  After creating a workflow, you can associate the workflow created with any
  transfer servers by specifying the `workflow-details` field in `CreateServer`
  and `UpdateServer` operations.
  """
  @spec create_workflow(map(), create_workflow_request(), list()) ::
          {:ok, create_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workflow_errors()}
  def create_workflow(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateWorkflow", input, options)
  end

  @doc """
  Allows you to delete the access specified in the `ServerID` and `ExternalID`
  parameters.
  """
  @spec delete_access(map(), delete_access_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_access_errors()}
  def delete_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAccess", input, options)
  end

  @doc """
  Delete the agreement that's specified in the provided `AgreementId`.
  """
  @spec delete_agreement(map(), delete_agreement_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_agreement_errors()}
  def delete_agreement(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAgreement", input, options)
  end

  @doc """
  Deletes the certificate that's specified in the `CertificateId` parameter.
  """
  @spec delete_certificate(map(), delete_certificate_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_certificate_errors()}
  def delete_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCertificate", input, options)
  end

  @doc """
  Deletes the connector that's specified in the provided `ConnectorId`.
  """
  @spec delete_connector(map(), delete_connector_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_connector_errors()}
  def delete_connector(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteConnector", input, options)
  end

  @doc """
  Deletes the host key that's specified in the `HostKeyId` parameter.
  """
  @spec delete_host_key(map(), delete_host_key_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_host_key_errors()}
  def delete_host_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteHostKey", input, options)
  end

  @doc """
  Deletes the profile that's specified in the `ProfileId` parameter.
  """
  @spec delete_profile(map(), delete_profile_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_profile_errors()}
  def delete_profile(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteProfile", input, options)
  end

  @doc """
  Deletes the file transfer protocol-enabled server that you specify.

  No response returns from this operation.
  """
  @spec delete_server(map(), delete_server_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_server_errors()}
  def delete_server(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteServer", input, options)
  end

  @doc """
  Deletes a user's Secure Shell (SSH) public key.
  """
  @spec delete_ssh_public_key(map(), delete_ssh_public_key_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_ssh_public_key_errors()}
  def delete_ssh_public_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSshPublicKey", input, options)
  end

  @doc """
  Deletes the user belonging to a file transfer protocol-enabled server you
  specify.

  No response returns from this operation.

  When you delete a user from a server, the user's information is lost.
  """
  @spec delete_user(map(), delete_user_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteUser", input, options)
  end

  @doc """
  Deletes the specified web app.
  """
  @spec delete_web_app(map(), delete_web_app_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_web_app_errors()}
  def delete_web_app(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteWebApp", input, options)
  end

  @doc """
  Deletes the `WebAppCustomization` object that corresponds to the web app ID
  specified.
  """
  @spec delete_web_app_customization(map(), delete_web_app_customization_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_web_app_customization_errors()}
  def delete_web_app_customization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteWebAppCustomization", input, options)
  end

  @doc """
  Deletes the specified workflow.
  """
  @spec delete_workflow(map(), delete_workflow_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workflow_errors()}
  def delete_workflow(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteWorkflow", input, options)
  end

  @doc """
  Describes the access that is assigned to the specific file transfer
  protocol-enabled server, as identified by its `ServerId` property and its
  `ExternalId`.

  The response from this call returns the properties of the access that is
  associated with the `ServerId` value that was specified.
  """
  @spec describe_access(map(), describe_access_request(), list()) ::
          {:ok, describe_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_access_errors()}
  def describe_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAccess", input, options)
  end

  @doc """
  Describes the agreement that's identified by the `AgreementId`.
  """
  @spec describe_agreement(map(), describe_agreement_request(), list()) ::
          {:ok, describe_agreement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_agreement_errors()}
  def describe_agreement(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAgreement", input, options)
  end

  @doc """
  Describes the certificate that's identified by the `CertificateId`.
  """
  @spec describe_certificate(map(), describe_certificate_request(), list()) ::
          {:ok, describe_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_certificate_errors()}
  def describe_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCertificate", input, options)
  end

  @doc """
  Describes the connector that's identified by the `ConnectorId.`
  """
  @spec describe_connector(map(), describe_connector_request(), list()) ::
          {:ok, describe_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_connector_errors()}
  def describe_connector(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeConnector", input, options)
  end

  @doc """
  You can use `DescribeExecution` to check the details of the execution of the
  specified workflow.

  This API call only returns details for in-progress workflows.

  If you provide an ID for an execution that is not in progress, or if the
  execution doesn't match the specified workflow ID, you receive a
  `ResourceNotFound` exception.
  """
  @spec describe_execution(map(), describe_execution_request(), list()) ::
          {:ok, describe_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_execution_errors()}
  def describe_execution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeExecution", input, options)
  end

  @doc """
  Returns the details of the host key that's specified by the `HostKeyId` and
  `ServerId`.
  """
  @spec describe_host_key(map(), describe_host_key_request(), list()) ::
          {:ok, describe_host_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_host_key_errors()}
  def describe_host_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeHostKey", input, options)
  end

  @doc """
  Returns the details of the profile that's specified by the `ProfileId`.
  """
  @spec describe_profile(map(), describe_profile_request(), list()) ::
          {:ok, describe_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_profile_errors()}
  def describe_profile(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeProfile", input, options)
  end

  @doc """
  Describes the security policy that is attached to your server or SFTP connector.

  The response contains a description of the security policy's properties. For
  more information about security policies, see [Working with security policies for
  servers](https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html)
  or [Working with security policies for SFTP connectors](https://docs.aws.amazon.com/transfer/latest/userguide/security-policies-connectors.html).
  """
  @spec describe_security_policy(map(), describe_security_policy_request(), list()) ::
          {:ok, describe_security_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_security_policy_errors()}
  def describe_security_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSecurityPolicy", input, options)
  end

  @doc """
  Describes a file transfer protocol-enabled server that you specify by passing
  the `ServerId` parameter.

  The response contains a description of a server's properties. When you set
  `EndpointType` to VPC, the response will contain the `EndpointDetails`.
  """
  @spec describe_server(map(), describe_server_request(), list()) ::
          {:ok, describe_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_server_errors()}
  def describe_server(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeServer", input, options)
  end

  @doc """
  Describes the user assigned to the specific file transfer protocol-enabled
  server, as identified by its `ServerId` property.

  The response from this call returns the properties of the user associated with
  the `ServerId` value that was specified.
  """
  @spec describe_user(map(), describe_user_request(), list()) ::
          {:ok, describe_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_user_errors()}
  def describe_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeUser", input, options)
  end

  @doc """
  Describes the web app that's identified by `WebAppId`.
  """
  @spec describe_web_app(map(), describe_web_app_request(), list()) ::
          {:ok, describe_web_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_web_app_errors()}
  def describe_web_app(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWebApp", input, options)
  end

  @doc """
  Describes the web app customization object that's identified by `WebAppId`.
  """
  @spec describe_web_app_customization(map(), describe_web_app_customization_request(), list()) ::
          {:ok, describe_web_app_customization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_web_app_customization_errors()}
  def describe_web_app_customization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWebAppCustomization", input, options)
  end

  @doc """
  Describes the specified workflow.
  """
  @spec describe_workflow(map(), describe_workflow_request(), list()) ::
          {:ok, describe_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_workflow_errors()}
  def describe_workflow(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWorkflow", input, options)
  end

  @doc """
  Imports the signing and encryption certificates that you need to create local
  (AS2) profiles and partner profiles.

  You can import both the certificate and its chain in the `Certificate`
  parameter.

  If you use the `Certificate` parameter to upload both the certificate and its
  chain, don't use the `CertificateChain` parameter.
  """
  @spec import_certificate(map(), import_certificate_request(), list()) ::
          {:ok, import_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_certificate_errors()}
  def import_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ImportCertificate", input, options)
  end

  @doc """
  Adds a host key to the server that's specified by the `ServerId` parameter.
  """
  @spec import_host_key(map(), import_host_key_request(), list()) ::
          {:ok, import_host_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_host_key_errors()}
  def import_host_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ImportHostKey", input, options)
  end

  @doc """
  Adds a Secure Shell (SSH) public key to a Transfer Family user identified by a
  `UserName` value assigned to the specific file transfer protocol-enabled server,
  identified by `ServerId`.

  The response returns the `UserName` value, the `ServerId` value, and the name of
  the `SshPublicKeyId`.
  """
  @spec import_ssh_public_key(map(), import_ssh_public_key_request(), list()) ::
          {:ok, import_ssh_public_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_ssh_public_key_errors()}
  def import_ssh_public_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ImportSshPublicKey", input, options)
  end

  @doc """
  Lists the details for all the accesses you have on your server.
  """
  @spec list_accesses(map(), list_accesses_request(), list()) ::
          {:ok, list_accesses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_accesses_errors()}
  def list_accesses(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAccesses", input, options)
  end

  @doc """
  Returns a list of the agreements for the server that's identified by the
  `ServerId` that you supply.

  If you want to limit the results to a certain number, supply a value for the
  `MaxResults` parameter. If you ran the command previously and received a value
  for `NextToken`, you can supply that value to continue listing agreements from
  where you left off.
  """
  @spec list_agreements(map(), list_agreements_request(), list()) ::
          {:ok, list_agreements_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_agreements_errors()}
  def list_agreements(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAgreements", input, options)
  end

  @doc """
  Returns a list of the current certificates that have been imported into Transfer
  Family.

  If you want to limit the results to a certain number, supply a value for the
  `MaxResults` parameter. If you ran the command previously and received a value
  for the `NextToken` parameter, you can supply that value to continue listing
  certificates from where you left off.
  """
  @spec list_certificates(map(), list_certificates_request(), list()) ::
          {:ok, list_certificates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_certificates_errors()}
  def list_certificates(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCertificates", input, options)
  end

  @doc """
  Lists the connectors for the specified Region.
  """
  @spec list_connectors(map(), list_connectors_request(), list()) ::
          {:ok, list_connectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_connectors_errors()}
  def list_connectors(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListConnectors", input, options)
  end

  @doc """
  Lists all in-progress executions for the specified workflow.

  If the specified workflow ID cannot be found, `ListExecutions` returns a
  `ResourceNotFound` exception.
  """
  @spec list_executions(map(), list_executions_request(), list()) ::
          {:ok, list_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_executions_errors()}
  def list_executions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListExecutions", input, options)
  end

  @doc """
  Returns real-time updates and detailed information on the status of each
  individual file being transferred in a specific file transfer operation.

  You specify the file transfer by providing its `ConnectorId` and its
  `TransferId`.

  File transfer results are available up to 7 days after an operation has been
  requested.
  """
  @spec list_file_transfer_results(map(), list_file_transfer_results_request(), list()) ::
          {:ok, list_file_transfer_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_file_transfer_results_errors()}
  def list_file_transfer_results(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFileTransferResults", input, options)
  end

  @doc """
  Returns a list of host keys for the server that's specified by the `ServerId`
  parameter.
  """
  @spec list_host_keys(map(), list_host_keys_request(), list()) ::
          {:ok, list_host_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_host_keys_errors()}
  def list_host_keys(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListHostKeys", input, options)
  end

  @doc """
  Returns a list of the profiles for your system.

  If you want to limit the results to a certain number, supply a value for the
  `MaxResults` parameter. If you ran the command previously and received a value
  for `NextToken`, you can supply that value to continue listing profiles from
  where you left off.
  """
  @spec list_profiles(map(), list_profiles_request(), list()) ::
          {:ok, list_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_profiles_errors()}
  def list_profiles(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListProfiles", input, options)
  end

  @doc """
  Lists the security policies that are attached to your servers and SFTP
  connectors.

  For more information about security policies, see [Working with security policies for
  servers](https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html)
  or [Working with security policies for SFTP connectors](https://docs.aws.amazon.com/transfer/latest/userguide/security-policies-connectors.html).
  """
  @spec list_security_policies(map(), list_security_policies_request(), list()) ::
          {:ok, list_security_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_security_policies_errors()}
  def list_security_policies(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSecurityPolicies", input, options)
  end

  @doc """
  Lists the file transfer protocol-enabled servers that are associated with your
  Amazon Web Services account.
  """
  @spec list_servers(map(), list_servers_request(), list()) ::
          {:ok, list_servers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_servers_errors()}
  def list_servers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListServers", input, options)
  end

  @doc """
  Lists all of the tags associated with the Amazon Resource Name (ARN) that you
  specify.

  The resource can be a user, server, or role.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists the users for a file transfer protocol-enabled server that you specify by
  passing the `ServerId` parameter.
  """
  @spec list_users(map(), list_users_request(), list()) ::
          {:ok, list_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_users_errors()}
  def list_users(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListUsers", input, options)
  end

  @doc """
  Lists all web apps associated with your Amazon Web Services account for your
  current region.
  """
  @spec list_web_apps(map(), list_web_apps_request(), list()) ::
          {:ok, list_web_apps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_web_apps_errors()}
  def list_web_apps(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListWebApps", input, options)
  end

  @doc """
  Lists all workflows associated with your Amazon Web Services account for your
  current region.
  """
  @spec list_workflows(map(), list_workflows_request(), list()) ::
          {:ok, list_workflows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workflows_errors()}
  def list_workflows(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListWorkflows", input, options)
  end

  @doc """
  Sends a callback for asynchronous custom steps.

  The `ExecutionId`, `WorkflowId`, and `Token` are passed to the target resource
  during execution of a custom step of a workflow. You must include those with
  their callback as well as providing a status.
  """
  @spec send_workflow_step_state(map(), send_workflow_step_state_request(), list()) ::
          {:ok, send_workflow_step_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_workflow_step_state_errors()}
  def send_workflow_step_state(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SendWorkflowStepState", input, options)
  end

  @doc """
  Retrieves a list of the contents of a directory from a remote SFTP server.

  You specify the connector ID, the output path, and the remote directory path.
  You can also specify the optional `MaxItems` value to control the maximum number
  of items that are listed from the remote directory. This API returns a list of
  all files and directories in the remote directory (up to the maximum value), but
  does not return files or folders in sub-directories. That is, it only returns a
  list of files and directories one-level deep.

  After you receive the listing file, you can provide the files that you want to
  transfer to the `RetrieveFilePaths` parameter of the `StartFileTransfer` API
  call.

  The naming convention for the output file is `
  *connector-ID*-*listing-ID*.json`. The output file contains the following
  information:

    * `filePath`: the complete path of a remote file, relative to the
  directory of the listing request for your SFTP connector on the remote server.

    * `modifiedTimestamp`: the last time the file was modified, in UTC
  time format. This field is optional. If the remote file attributes don't contain
  a timestamp, it is omitted from the file listing.

    * `size`: the size of the file, in bytes. This field is optional. If
  the remote file attributes don't contain a file size, it is omitted from the
  file listing.

    * `path`: the complete path of a remote directory, relative to the
  directory of the listing request for your SFTP connector on the remote server.

    * `truncated`: a flag indicating whether the list output contains
  all of the items contained in the remote directory or not. If your `Truncated`
  output value is true, you can increase the value provided in the optional
  `max-items` input attribute to be able to list more items (up to the maximum
  allowed list size of 10,000 items).
  """
  @spec start_directory_listing(map(), start_directory_listing_request(), list()) ::
          {:ok, start_directory_listing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_directory_listing_errors()}
  def start_directory_listing(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartDirectoryListing", input, options)
  end

  @doc """
  Begins a file transfer between local Amazon Web Services storage and a remote
  AS2 or SFTP server.

    * For an AS2 connector, you specify the `ConnectorId` and one or
  more `SendFilePaths` to identify the files you want to transfer.

    * For an SFTP connector, the file transfer can be either outbound or
  inbound. In both cases, you specify the `ConnectorId`. Depending on the
  direction of the transfer, you also specify the following items:

      * If you are transferring file from a partner's SFTP
  server to Amazon Web Services storage, you specify one or more
  `RetrieveFilePaths` to identify the files you want to transfer, and a
  `LocalDirectoryPath` to specify the destination folder.

      * If you are transferring file to a partner's SFTP
  server from Amazon Web Services storage, you specify one or more `SendFilePaths`
  to identify the files you want to transfer, and a `RemoteDirectoryPath` to
  specify the destination folder.
  """
  @spec start_file_transfer(map(), start_file_transfer_request(), list()) ::
          {:ok, start_file_transfer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_file_transfer_errors()}
  def start_file_transfer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartFileTransfer", input, options)
  end

  @doc """
  Deletes a file or directory on the remote SFTP server.
  """
  @spec start_remote_delete(map(), start_remote_delete_request(), list()) ::
          {:ok, start_remote_delete_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_remote_delete_errors()}
  def start_remote_delete(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartRemoteDelete", input, options)
  end

  @doc """
  Moves or renames a file or directory on the remote SFTP server.
  """
  @spec start_remote_move(map(), start_remote_move_request(), list()) ::
          {:ok, start_remote_move_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_remote_move_errors()}
  def start_remote_move(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartRemoteMove", input, options)
  end

  @doc """
  Changes the state of a file transfer protocol-enabled server from `OFFLINE` to
  `ONLINE`.

  It has no impact on a server that is already `ONLINE`. An `ONLINE` server can
  accept and process file transfer jobs.

  The state of `STARTING` indicates that the server is in an intermediate state,
  either not fully able to respond, or not fully online. The values of
  `START_FAILED` can indicate an error condition.

  No response is returned from this call.
  """
  @spec start_server(map(), start_server_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_server_errors()}
  def start_server(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartServer", input, options)
  end

  @doc """
  Changes the state of a file transfer protocol-enabled server from `ONLINE` to
  `OFFLINE`.

  An `OFFLINE` server cannot accept and process file transfer jobs. Information
  tied to your server, such as server and user properties, are not affected by
  stopping your server.

  Stopping the server does not reduce or impact your file transfer protocol
  endpoint billing; you must delete the server to stop being billed.

  The state of `STOPPING` indicates that the server is in an intermediate state,
  either not fully able to respond, or not fully offline. The values of
  `STOP_FAILED` can indicate an error condition.

  No response is returned from this call.
  """
  @spec stop_server(map(), stop_server_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_server_errors()}
  def stop_server(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopServer", input, options)
  end

  @doc """
  Attaches a key-value pair to a resource, as identified by its Amazon Resource
  Name (ARN).

  Resources are users, servers, roles, and other entities.

  There is no response returned from this call.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Tests whether your SFTP connector is set up successfully.

  We highly recommend that you call this operation to test your ability to
  transfer files between local Amazon Web Services storage and a trading partner's
  SFTP server.
  """
  @spec test_connection(map(), test_connection_request(), list()) ::
          {:ok, test_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_connection_errors()}
  def test_connection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TestConnection", input, options)
  end

  @doc """
  If the `IdentityProviderType` of a file transfer protocol-enabled server is
  `AWS_DIRECTORY_SERVICE` or `API_Gateway`, tests whether your identity provider
  is set up successfully.

  We highly recommend that you call this operation to test your authentication
  method as soon as you create your server. By doing so, you can troubleshoot
  issues with the identity provider integration to ensure that your users can
  successfully use the service.

  The `ServerId` and `UserName` parameters are required. The `ServerProtocol`,
  `SourceIp`, and `UserPassword` are all optional.

  Note the following:

    * You cannot use `TestIdentityProvider` if the
  `IdentityProviderType` of your server is `SERVICE_MANAGED`.

    * `TestIdentityProvider` does not work with keys: it only accepts
  passwords.

    * `TestIdentityProvider` can test the password operation for a
  custom Identity Provider that handles keys and passwords.

    * If you provide any incorrect values for any parameters, the
  `Response` field is empty.

    * If you provide a server ID for a server that uses service-managed
  users, you get an error:

  ` An error occurred (InvalidRequestException) when calling the
  TestIdentityProvider operation: s-*server-ID* not configured for external auth `

    * If you enter a Server ID for the `--server-id` parameter that does
  not identify an actual Transfer server, you receive the following error:

  `An error occurred (ResourceNotFoundException) when calling the
  TestIdentityProvider operation: Unknown server`.

  It is possible your sever is in a different region. You can specify a region by
  adding the following: `--region region-code`, such as `--region us-east-2` to
  specify a server in **US East (Ohio)**.
  """
  @spec test_identity_provider(map(), test_identity_provider_request(), list()) ::
          {:ok, test_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_identity_provider_errors()}
  def test_identity_provider(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TestIdentityProvider", input, options)
  end

  @doc """
  Detaches a key-value pair from a resource, as identified by its Amazon Resource
  Name (ARN).

  Resources are users, servers, roles, and other entities.

  No response is returned from this call.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Allows you to update parameters for the access specified in the `ServerID` and
  `ExternalID` parameters.
  """
  @spec update_access(map(), update_access_request(), list()) ::
          {:ok, update_access_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_access_errors()}
  def update_access(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAccess", input, options)
  end

  @doc """
  Updates some of the parameters for an existing agreement.

  Provide the `AgreementId` and the `ServerId` for the agreement that you want to
  update, along with the new values for the parameters to update.

  Specify *either* `BaseDirectory` or `CustomDirectories`, but not both.
  Specifying both causes the command to fail.

  If you update an agreement from using base directory to custom directories, the
  base directory is no longer used. Similarly, if you change from custom
  directories to a base directory, the custom directories are no longer used.
  """
  @spec update_agreement(map(), update_agreement_request(), list()) ::
          {:ok, update_agreement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_agreement_errors()}
  def update_agreement(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAgreement", input, options)
  end

  @doc """
  Updates the active and inactive dates for a certificate.
  """
  @spec update_certificate(map(), update_certificate_request(), list()) ::
          {:ok, update_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_certificate_errors()}
  def update_certificate(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateCertificate", input, options)
  end

  @doc """
  Updates some of the parameters for an existing connector.

  Provide the `ConnectorId` for the connector that you want to update, along with
  the new values for the parameters to update.
  """
  @spec update_connector(map(), update_connector_request(), list()) ::
          {:ok, update_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_connector_errors()}
  def update_connector(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateConnector", input, options)
  end

  @doc """
  Updates the description for the host key that's specified by the `ServerId` and
  `HostKeyId` parameters.
  """
  @spec update_host_key(map(), update_host_key_request(), list()) ::
          {:ok, update_host_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_host_key_errors()}
  def update_host_key(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateHostKey", input, options)
  end

  @doc """
  Updates some of the parameters for an existing profile.

  Provide the `ProfileId` for the profile that you want to update, along with the
  new values for the parameters to update.
  """
  @spec update_profile(map(), update_profile_request(), list()) ::
          {:ok, update_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_profile_errors()}
  def update_profile(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateProfile", input, options)
  end

  @doc """
  Updates the file transfer protocol-enabled server's properties after that server
  has been created.

  The `UpdateServer` call returns the `ServerId` of the server you updated.
  """
  @spec update_server(map(), update_server_request(), list()) ::
          {:ok, update_server_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_server_errors()}
  def update_server(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateServer", input, options)
  end

  @doc """
  Assigns new properties to a user.

  Parameters you pass modify any or all of the following: the home directory,
  role, and policy for the `UserName` and `ServerId` you specify.

  The response returns the `ServerId` and the `UserName` for the updated user.

  In the console, you can select *Restricted* when you create or update a user.
  This ensures that the user can't access anything outside of their home
  directory. The programmatic way to configure this behavior is to update the
  user. Set their `HomeDirectoryType` to `LOGICAL`, and specify
  `HomeDirectoryMappings` with `Entry` as root (`/`) and `Target` as their home
  directory.

  For example, if the user's home directory is `/test/admin-user`, the following
  command updates the user so that their configuration in the console shows the
  *Restricted* flag as selected.

  ` aws transfer update-user --server-id <server-id> --user-name admin-user
  --home-directory-type LOGICAL --home-directory-mappings "[{\"Entry\":\"/\", \"Target\":\"/test/admin-user\"}]"`
  """
  @spec update_user(map(), update_user_request(), list()) ::
          {:ok, update_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_errors()}
  def update_user(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateUser", input, options)
  end

  @doc """
  Assigns new properties to a web app.

  You can modify the access point, identity provider details, and the web app
  units.
  """
  @spec update_web_app(map(), update_web_app_request(), list()) ::
          {:ok, update_web_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_web_app_errors()}
  def update_web_app(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateWebApp", input, options)
  end

  @doc """
  Assigns new customization properties to a web app.

  You can modify the icon file, logo file, and title.
  """
  @spec update_web_app_customization(map(), update_web_app_customization_request(), list()) ::
          {:ok, update_web_app_customization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_web_app_customization_errors()}
  def update_web_app_customization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateWebAppCustomization", input, options)
  end
end
