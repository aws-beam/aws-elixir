# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudControl do
  @moduledoc """
  For more information about Amazon Web Services Cloud Control API, see the
  [Amazon Web Services Cloud Control API User Guide](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/what-is-cloudcontrolapi.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_resource_requests_output() :: %{
        "NextToken" => String.t() | Atom.t(),
        "ResourceRequestStatusSummaries" => list(progress_event())
      }
      
  """
  @type list_resource_requests_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_output() :: %{
        optional("ProgressEvent") => progress_event()
      }
      
  """
  @type delete_resource_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_request_status_input() :: %{
        required("RequestToken") => String.t() | Atom.t()
      }
      
  """
  @type get_resource_request_status_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      handler_internal_failure_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type handler_internal_failure_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      general_service_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type general_service_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      already_exists_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type already_exists_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_resource_input() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("RoleArn") => String.t() | Atom.t(),
        optional("TypeVersionId") => String.t() | Atom.t(),
        required("DesiredState") => String.t() | Atom.t(),
        required("TypeName") => String.t() | Atom.t()
      }
      
  """
  @type create_resource_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      network_failure_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type network_failure_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_resource_output() :: %{
        optional("ProgressEvent") => progress_event()
      }
      
  """
  @type update_resource_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      private_type_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type private_type_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_resource_input() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("RoleArn") => String.t() | Atom.t(),
        optional("TypeVersionId") => String.t() | Atom.t(),
        required("Identifier") => String.t() | Atom.t(),
        required("PatchDocument") => String.t() | Atom.t(),
        required("TypeName") => String.t() | Atom.t()
      }
      
  """
  @type update_resource_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_action_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type unsupported_action_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_output() :: %{
        optional("ResourceDescription") => resource_description(),
        optional("TypeName") => String.t() | Atom.t()
      }
      
  """
  @type get_resource_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_resources_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("ResourceModel") => String.t() | Atom.t(),
        optional("RoleArn") => String.t() | Atom.t(),
        optional("TypeVersionId") => String.t() | Atom.t(),
        required("TypeName") => String.t() | Atom.t()
      }
      
  """
  @type list_resources_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_operation_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type concurrent_operation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      type_not_found_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type type_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      client_token_conflict_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type client_token_conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      progress_event() :: %{
        "ErrorCode" => String.t() | Atom.t(),
        "EventTime" => non_neg_integer(),
        "HooksRequestToken" => String.t() | Atom.t(),
        "Identifier" => String.t() | Atom.t(),
        "Operation" => String.t() | Atom.t(),
        "OperationStatus" => String.t() | Atom.t(),
        "RequestToken" => String.t() | Atom.t(),
        "ResourceModel" => String.t() | Atom.t(),
        "RetryAfter" => non_neg_integer(),
        "StatusMessage" => String.t() | Atom.t(),
        "TypeName" => String.t() | Atom.t()
      }
      
  """
  @type progress_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_resource_request_output() :: %{
        optional("ProgressEvent") => progress_event()
      }
      
  """
  @type cancel_resource_request_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_resource_requests_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("ResourceRequestStatusFilter") => resource_request_status_filter()
      }
      
  """
  @type list_resource_requests_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_resource_request_input() :: %{
        required("RequestToken") => String.t() | Atom.t()
      }
      
  """
  @type cancel_resource_request_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_request_status_output() :: %{
        optional("HooksProgressEvent") => list(hook_progress_event()),
        optional("ProgressEvent") => progress_event()
      }
      
  """
  @type get_resource_request_status_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_description() :: %{
        "Identifier" => String.t() | Atom.t(),
        "Properties" => String.t() | Atom.t()
      }
      
  """
  @type resource_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      hook_progress_event() :: %{
        "FailureMode" => String.t() | Atom.t(),
        "HookEventTime" => non_neg_integer(),
        "HookStatus" => String.t() | Atom.t(),
        "HookStatusMessage" => String.t() | Atom.t(),
        "HookTypeArn" => String.t() | Atom.t(),
        "HookTypeName" => String.t() | Atom.t(),
        "HookTypeVersionId" => String.t() | Atom.t(),
        "InvocationPoint" => String.t() | Atom.t()
      }
      
  """
  @type hook_progress_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_input() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("RoleArn") => String.t() | Atom.t(),
        optional("TypeVersionId") => String.t() | Atom.t(),
        required("Identifier") => String.t() | Atom.t(),
        required("TypeName") => String.t() | Atom.t()
      }
      
  """
  @type delete_resource_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      not_updatable_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type not_updatable_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      not_stabilized_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type not_stabilized_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      service_limit_exceeded_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type service_limit_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      request_token_not_found_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type request_token_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      handler_failure_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type handler_failure_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_resource_output() :: %{
        optional("ProgressEvent") => progress_event()
      }
      
  """
  @type create_resource_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_credentials_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type invalid_credentials_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_conflict_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type resource_conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_input() :: %{
        optional("RoleArn") => String.t() | Atom.t(),
        optional("TypeVersionId") => String.t() | Atom.t(),
        required("Identifier") => String.t() | Atom.t(),
        required("TypeName") => String.t() | Atom.t()
      }
      
  """
  @type get_resource_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_resources_output() :: %{
        "NextToken" => String.t() | Atom.t(),
        "ResourceDescriptions" => list(resource_description()),
        "TypeName" => String.t() | Atom.t()
      }
      
  """
  @type list_resources_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      service_internal_error_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type service_internal_error_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_request_status_filter() :: %{
        "OperationStatuses" => list(String.t() | Atom.t()),
        "Operations" => list(String.t() | Atom.t())
      }
      
  """
  @type resource_request_status_filter() :: %{String.t() | Atom.t() => any()}

  @type cancel_resource_request_errors() ::
          request_token_not_found_exception() | concurrent_modification_exception()

  @type create_resource_errors() ::
          service_internal_error_exception()
          | resource_conflict_exception()
          | invalid_credentials_exception()
          | handler_failure_exception()
          | throttling_exception()
          | service_limit_exceeded_exception()
          | not_stabilized_exception()
          | not_updatable_exception()
          | client_token_conflict_exception()
          | type_not_found_exception()
          | invalid_request_exception()
          | concurrent_operation_exception()
          | resource_not_found_exception()
          | unsupported_action_exception()
          | private_type_exception()
          | network_failure_exception()
          | already_exists_exception()
          | general_service_exception()
          | handler_internal_failure_exception()

  @type delete_resource_errors() ::
          service_internal_error_exception()
          | resource_conflict_exception()
          | invalid_credentials_exception()
          | handler_failure_exception()
          | throttling_exception()
          | service_limit_exceeded_exception()
          | not_stabilized_exception()
          | not_updatable_exception()
          | client_token_conflict_exception()
          | type_not_found_exception()
          | invalid_request_exception()
          | concurrent_operation_exception()
          | resource_not_found_exception()
          | unsupported_action_exception()
          | private_type_exception()
          | network_failure_exception()
          | already_exists_exception()
          | general_service_exception()
          | handler_internal_failure_exception()

  @type get_resource_errors() ::
          service_internal_error_exception()
          | resource_conflict_exception()
          | invalid_credentials_exception()
          | handler_failure_exception()
          | throttling_exception()
          | service_limit_exceeded_exception()
          | not_stabilized_exception()
          | not_updatable_exception()
          | type_not_found_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unsupported_action_exception()
          | private_type_exception()
          | network_failure_exception()
          | already_exists_exception()
          | general_service_exception()
          | handler_internal_failure_exception()

  @type get_resource_request_status_errors() :: request_token_not_found_exception()

  @type list_resources_errors() ::
          service_internal_error_exception()
          | resource_conflict_exception()
          | invalid_credentials_exception()
          | handler_failure_exception()
          | throttling_exception()
          | service_limit_exceeded_exception()
          | not_stabilized_exception()
          | not_updatable_exception()
          | type_not_found_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unsupported_action_exception()
          | private_type_exception()
          | network_failure_exception()
          | already_exists_exception()
          | general_service_exception()
          | handler_internal_failure_exception()

  @type update_resource_errors() ::
          service_internal_error_exception()
          | resource_conflict_exception()
          | invalid_credentials_exception()
          | handler_failure_exception()
          | throttling_exception()
          | service_limit_exceeded_exception()
          | not_stabilized_exception()
          | not_updatable_exception()
          | client_token_conflict_exception()
          | type_not_found_exception()
          | invalid_request_exception()
          | concurrent_operation_exception()
          | resource_not_found_exception()
          | unsupported_action_exception()
          | private_type_exception()
          | network_failure_exception()
          | already_exists_exception()
          | general_service_exception()
          | handler_internal_failure_exception()

  def metadata do
    %{
      api_version: "2021-09-30",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "cloudcontrolapi",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "CloudControl",
      signature_version: "v4",
      signing_name: "cloudcontrolapi",
      target_prefix: "CloudApiService"
    }
  end

  @doc """
  Cancels the specified resource operation request.

  For more information, see [Canceling resource operation requests](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-cancel)
  in the
  *Amazon Web Services Cloud Control API User Guide*.

  Only resource operations requests with a status of `PENDING` or
  `IN_PROGRESS` can be canceled.
  """
  @spec cancel_resource_request(map(), cancel_resource_request_input(), list()) ::
          {:ok, cancel_resource_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_resource_request_errors()}
  def cancel_resource_request(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelResourceRequest", input, options)
  end

  @doc """
  Creates the specified resource.

  For more information, see [Creating a resource](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-create.html)
  in the *Amazon Web Services Cloud Control API User Guide*.

  After you have initiated a resource creation request, you can monitor the
  progress of your
  request by calling
  [GetResourceRequestStatus](https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html)
  using the `RequestToken` of the
  `ProgressEvent` type returned by `CreateResource`.
  """
  @spec create_resource(map(), create_resource_input(), list()) ::
          {:ok, create_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_resource_errors()}
  def create_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateResource", input, options)
  end

  @doc """
  Deletes the specified resource.

  For details, see [Deleting a resource](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-delete.html)
  in the *Amazon Web Services Cloud Control API User Guide*.

  After you have initiated a resource deletion request, you can monitor the
  progress of your
  request by calling
  [GetResourceRequestStatus](https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html)
  using the `RequestToken` of the
  `ProgressEvent` returned by `DeleteResource`.
  """
  @spec delete_resource(map(), delete_resource_input(), list()) ::
          {:ok, delete_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_errors()}
  def delete_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResource", input, options)
  end

  @doc """
  Returns information about the current state of the specified resource.

  For details, see
  [Reading a resource's current state](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-read.html).

  You can use this action to return information about an existing resource in your
  account
  and Amazon Web Services Region, whether those resources were provisioned using
  Cloud Control API.
  """
  @spec get_resource(map(), get_resource_input(), list()) ::
          {:ok, get_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_errors()}
  def get_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResource", input, options)
  end

  @doc """
  Returns the current status of a resource operation request.

  For more information, see
  [Tracking the progress of resource operation requests](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-track)
  in the
  *Amazon Web Services Cloud Control API User Guide*.
  """
  @spec get_resource_request_status(map(), get_resource_request_status_input(), list()) ::
          {:ok, get_resource_request_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_request_status_errors()}
  def get_resource_request_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResourceRequestStatus", input, options)
  end

  @doc """
  Returns existing resource operation requests.

  This includes requests of all status types.
  For more information, see [Listing active resource operation requests](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-list)
  in the
  *Amazon Web Services Cloud Control API User Guide*.

  Resource operation requests expire after 7 days.
  """
  @spec list_resource_requests(map(), list_resource_requests_input(), list()) ::
          {:ok, list_resource_requests_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_resource_requests(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListResourceRequests", input, options)
  end

  @doc """
  Returns information about the specified resources.

  For more information, see [Discovering resources](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-list.html)
  in the *Amazon Web Services Cloud Control API User Guide*.

  You can use this action to return information about existing resources in your
  account and
  Amazon Web Services Region, whether those resources were provisioned using Cloud
  Control API.
  """
  @spec list_resources(map(), list_resources_input(), list()) ::
          {:ok, list_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resources_errors()}
  def list_resources(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListResources", input, options)
  end

  @doc """
  Updates the specified property values in the resource.

  You specify your resource property updates as a list of patch operations
  contained in a
  JSON patch document that adheres to the [
  *RFC 6902 - JavaScript Object
  Notation (JSON) Patch*
  ](https://datatracker.ietf.org/doc/html/rfc6902) standard.

  For details on how Cloud Control API performs resource update operations, see
  [Updating a resource](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-update.html)
  in the *Amazon Web Services Cloud Control API User Guide*.

  After you have initiated a resource update request, you can monitor the progress
  of your
  request by calling
  [GetResourceRequestStatus](https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html) using the `RequestToken` of the
  `ProgressEvent` returned by `UpdateResource`.

  For more information about the properties of a specific resource, refer to the
  related
  topic for the resource in the [Resource and property types
  reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)
  in the *CloudFormation Users Guide*.
  """
  @spec update_resource(map(), update_resource_input(), list()) ::
          {:ok, update_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_resource_errors()}
  def update_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateResource", input, options)
  end
end
