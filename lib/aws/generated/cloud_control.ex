# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudControl do
  @moduledoc """
  For more information about Amazon Web Services Cloud Control API, see the
  [Amazon Web Services Cloud Control API User Guide](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/what-is-cloudcontrolapi.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "CloudControlApi",
      api_version: "2021-09-30",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "cloudcontrolapi",
      global?: false,
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
  in the *Amazon Web Services Cloud Control API User Guide*.

  Only resource operations requests with a status of `PENDING` or `IN_PROGRESS`
  can be canceled.
  """
  def cancel_resource_request(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelResourceRequest", input, options)
  end

  @doc """
  Creates the specified resource.

  For more information, see [Creating a resource](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-create.html)
  in the *Amazon Web Services Cloud Control API User Guide*.

  After you have initiated a resource creation request, you can monitor the
  progress of your request by calling
  [GetResourceRequestStatus](https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html)
  using the `RequestToken` of the `ProgressEvent` type returned by
  `CreateResource`.
  """
  def create_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateResource", input, options)
  end

  @doc """
  Deletes the specified resource.

  For details, see [Deleting a resource](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-delete.html)
  in the *Amazon Web Services Cloud Control API User Guide*.

  After you have initiated a resource deletion request, you can monitor the
  progress of your request by calling
  [GetResourceRequestStatus](https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html)
  using the `RequestToken` of the `ProgressEvent` returned by `DeleteResource`.
  """
  def delete_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResource", input, options)
  end

  @doc """
  Returns information about the current state of the specified resource.

  For details, see [Reading a resource's current state](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-read.html).

  You can use this action to return information about an existing resource in your
  account and Amazon Web Services Region, whether those resources were provisioned
  using Cloud Control API.
  """
  def get_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResource", input, options)
  end

  @doc """
  Returns the current status of a resource operation request.

  For more information, see [Tracking the progress of resource operation requests](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-track)
  in the *Amazon Web Services Cloud Control API User Guide*.
  """
  def get_resource_request_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourceRequestStatus", input, options)
  end

  @doc """
  Returns existing resource operation requests.

  This includes requests of all status types. For more information, see [Listing active resource operation
  requests](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-list)
  in the *Amazon Web Services Cloud Control API User Guide*.

  Resource operation requests expire after 7 days.
  """
  def list_resource_requests(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResourceRequests", input, options)
  end

  @doc """
  Returns information about the specified resources.

  For more information, see [Discovering resources](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-list.html)
  in the *Amazon Web Services Cloud Control API User Guide*.

  You can use this action to return information about existing resources in your
  account and Amazon Web Services Region, whether those resources were provisioned
  using Cloud Control API.
  """
  def list_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListResources", input, options)
  end

  @doc """
  Updates the specified property values in the resource.

  You specify your resource property updates as a list of patch operations
  contained in a JSON patch document that adheres to the [ *RFC 6902 - JavaScript Object Notation (JSON) Patch* ](https://datatracker.ietf.org/doc/html/rfc6902)
  standard.

  For details on how Cloud Control API performs resource update operations, see
  [Updating a resource](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-update.html)
  in the *Amazon Web Services Cloud Control API User Guide*.

  After you have initiated a resource update request, you can monitor the progress
  of your request by calling
  [GetResourceRequestStatus](https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html) using the `RequestToken` of the `ProgressEvent` returned by `UpdateResource`.

  For more information about the properties of a specific resource, refer to the
  related topic for the resource in the [Resource and property types
  reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)
  in the *CloudFormation Users Guide*.
  """
  def update_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateResource", input, options)
  end
end
