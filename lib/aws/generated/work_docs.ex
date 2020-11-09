# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkDocs do
  @moduledoc """
  The WorkDocs API is designed for the following use cases:

    * File Migration: File migration applications are supported for
  users who want to migrate their files from an on-premises or off-premises file
  system or service.

  Users can insert files into a user directory structure, as well as allow for
  basic metadata changes, such as modifications to the permissions of files.

    * Security: Support security applications are supported for users
  who have additional security needs, such as antivirus or data loss prevention.
  The API actions, along with AWS CloudTrail, allow these applications to detect
  when changes occur in Amazon WorkDocs. Then, the application can take the
  necessary actions and replace the target file. If the target file violates the
  policy, the application can also choose to email the user.

    * eDiscovery/Analytics: General administrative applications are
  supported, such as eDiscovery and analytics. These applications can choose to
  mimic or record the actions in an Amazon WorkDocs site, along with AWS
  CloudTrail, to replicate data for eDiscovery, backup, or analytical
  applications.

  All Amazon WorkDocs API actions are Amazon authenticated and certificate-signed.
  They not only require the use of the AWS SDK, but also allow for the exclusive
  use of IAM users and roles to help facilitate access, trust, and permission
  policies. By creating a role and allowing an IAM user to access the Amazon
  WorkDocs site, the IAM user gains full administrative visibility into the entire
  Amazon WorkDocs site (or as set in the IAM policy). This includes, but is not
  limited to, the ability to modify file permissions and upload any file to any
  user. This allows developers to perform the three use cases above, as well as
  give users the ability to grant access on a selective basis using the IAM model.
  """

  @doc """
  Aborts the upload of the specified document version that was previously
  initiated by `InitiateDocumentVersionUpload`.

  The client should make this call only when it no longer intends to upload the
  document version, or fails to do so.
  """
  def abort_document_version_upload(client, document_id, version_id, input, options \\ []) do
    path_ = "/api/v1/documents/#{URI.encode(document_id)}/versions/#{URI.encode(version_id)}"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Activates the specified user.

  Only active users can access Amazon WorkDocs.
  """
  def activate_user(client, user_id, input, options \\ []) do
    path_ = "/api/v1/users/#{URI.encode(user_id)}/activation"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a set of permissions for the specified folder or document.

  The resource permissions are overwritten if the principals already have
  different permissions.
  """
  def add_resource_permissions(client, resource_id, input, options \\ []) do
    path_ = "/api/v1/resources/#{URI.encode(resource_id)}/permissions"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Adds a new comment to the specified document version.
  """
  def create_comment(client, document_id, version_id, input, options \\ []) do
    path_ = "/api/v1/documents/#{URI.encode(document_id)}/versions/#{URI.encode(version_id)}/comment"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Adds one or more custom properties to the specified resource (a folder,
  document, or version).
  """
  def create_custom_metadata(client, resource_id, input, options \\ []) do
    path_ = "/api/v1/resources/#{URI.encode(resource_id)}/customMetadata"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    {query_, input} =
      [
        {"VersionId", "versionid"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a folder with the specified name and parent folder.
  """
  def create_folder(client, input, options \\ []) do
    path_ = "/api/v1/folders"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Adds the specified list of labels to the given resource (a document or folder)
  """
  def create_labels(client, resource_id, input, options \\ []) do
    path_ = "/api/v1/resources/#{URI.encode(resource_id)}/labels"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Configure Amazon WorkDocs to use Amazon SNS notifications.

  The endpoint receives a confirmation message, and must confirm the subscription.

  For more information, see [Subscribe to Notifications](https://docs.aws.amazon.com/workdocs/latest/developerguide/subscribe-notifications.html)
  in the *Amazon WorkDocs Developer Guide*.
  """
  def create_notification_subscription(client, organization_id, input, options \\ []) do
    path_ = "/api/v1/organizations/#{URI.encode(organization_id)}/subscriptions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a user in a Simple AD or Microsoft AD directory.

  The status of a newly created user is "ACTIVE". New users can access Amazon
  WorkDocs.
  """
  def create_user(client, input, options \\ []) do
    path_ = "/api/v1/users"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Deactivates the specified user, which revokes the user's access to Amazon
  WorkDocs.
  """
  def deactivate_user(client, user_id, input, options \\ []) do
    path_ = "/api/v1/users/#{URI.encode(user_id)}/activation"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the specified comment from the document version.
  """
  def delete_comment(client, comment_id, document_id, version_id, input, options \\ []) do
    path_ = "/api/v1/documents/#{URI.encode(document_id)}/versions/#{URI.encode(version_id)}/comment/#{URI.encode(comment_id)}"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes custom metadata from the specified resource.
  """
  def delete_custom_metadata(client, resource_id, input, options \\ []) do
    path_ = "/api/v1/resources/#{URI.encode(resource_id)}/customMetadata"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    {query_, input} =
      [
        {"DeleteAll", "deleteAll"},
        {"Keys", "keys"},
        {"VersionId", "versionId"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Permanently deletes the specified document and its associated metadata.
  """
  def delete_document(client, document_id, input, options \\ []) do
    path_ = "/api/v1/documents/#{URI.encode(document_id)}"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Permanently deletes the specified folder and its contents.
  """
  def delete_folder(client, folder_id, input, options \\ []) do
    path_ = "/api/v1/folders/#{URI.encode(folder_id)}"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the contents of the specified folder.
  """
  def delete_folder_contents(client, folder_id, input, options \\ []) do
    path_ = "/api/v1/folders/#{URI.encode(folder_id)}/contents"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the specified list of labels from a resource.
  """
  def delete_labels(client, resource_id, input, options \\ []) do
    path_ = "/api/v1/resources/#{URI.encode(resource_id)}/labels"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    {query_, input} =
      [
        {"DeleteAll", "deleteAll"},
        {"Labels", "labels"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes the specified subscription from the specified organization.
  """
  def delete_notification_subscription(client, organization_id, subscription_id, input, options \\ []) do
    path_ = "/api/v1/organizations/#{URI.encode(organization_id)}/subscriptions/#{URI.encode(subscription_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes the specified user from a Simple AD or Microsoft AD directory.
  """
  def delete_user(client, user_id, input, options \\ []) do
    path_ = "/api/v1/users/#{URI.encode(user_id)}"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Describes the user activities in a specified time period.
  """
  def describe_activities(client, activity_types \\ nil, end_time \\ nil, include_indirect_activities \\ nil, limit \\ nil, marker \\ nil, organization_id \\ nil, resource_id \\ nil, start_time \\ nil, user_id \\ nil, authentication_token \\ nil, options \\ []) do
    path_ = "/api/v1/activities"
    headers = []
    headers = if !is_nil(authentication_token) do
      [{"Authentication", authentication_token} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(user_id) do
      [{"userId", user_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(start_time) do
      [{"startTime", start_time} | query_]
    else
      query_
    end
    query_ = if !is_nil(resource_id) do
      [{"resourceId", resource_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(organization_id) do
      [{"organizationId", organization_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    query_ = if !is_nil(include_indirect_activities) do
      [{"includeIndirectActivities", include_indirect_activities} | query_]
    else
      query_
    end
    query_ = if !is_nil(end_time) do
      [{"endTime", end_time} | query_]
    else
      query_
    end
    query_ = if !is_nil(activity_types) do
      [{"activityTypes", activity_types} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  List all the comments for the specified document version.
  """
  def describe_comments(client, document_id, version_id, limit \\ nil, marker \\ nil, authentication_token \\ nil, options \\ []) do
    path_ = "/api/v1/documents/#{URI.encode(document_id)}/versions/#{URI.encode(version_id)}/comments"
    headers = []
    headers = if !is_nil(authentication_token) do
      [{"Authentication", authentication_token} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the document versions for the specified document.

  By default, only active versions are returned.
  """
  def describe_document_versions(client, document_id, fields \\ nil, include \\ nil, limit \\ nil, marker \\ nil, authentication_token \\ nil, options \\ []) do
    path_ = "/api/v1/documents/#{URI.encode(document_id)}/versions"
    headers = []
    headers = if !is_nil(authentication_token) do
      [{"Authentication", authentication_token} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    query_ = if !is_nil(include) do
      [{"include", include} | query_]
    else
      query_
    end
    query_ = if !is_nil(fields) do
      [{"fields", fields} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Describes the contents of the specified folder, including its documents and
  subfolders.

  By default, Amazon WorkDocs returns the first 100 active document and folder
  metadata items. If there are more results, the response includes a marker that
  you can use to request the next set of results. You can also request initialized
  documents.
  """
  def describe_folder_contents(client, folder_id, include \\ nil, limit \\ nil, marker \\ nil, order \\ nil, sort \\ nil, type \\ nil, authentication_token \\ nil, options \\ []) do
    path_ = "/api/v1/folders/#{URI.encode(folder_id)}/contents"
    headers = []
    headers = if !is_nil(authentication_token) do
      [{"Authentication", authentication_token} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(type) do
      [{"type", type} | query_]
    else
      query_
    end
    query_ = if !is_nil(sort) do
      [{"sort", sort} | query_]
    else
      query_
    end
    query_ = if !is_nil(order) do
      [{"order", order} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    query_ = if !is_nil(include) do
      [{"include", include} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Describes the groups specified by the query.

  Groups are defined by the underlying Active Directory.
  """
  def describe_groups(client, limit \\ nil, marker \\ nil, organization_id \\ nil, search_query, authentication_token \\ nil, options \\ []) do
    path_ = "/api/v1/groups"
    headers = []
    headers = if !is_nil(authentication_token) do
      [{"Authentication", authentication_token} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(search_query) do
      [{"searchQuery", search_query} | query_]
    else
      query_
    end
    query_ = if !is_nil(organization_id) do
      [{"organizationId", organization_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the specified notification subscriptions.
  """
  def describe_notification_subscriptions(client, organization_id, limit \\ nil, marker \\ nil, options \\ []) do
    path_ = "/api/v1/organizations/#{URI.encode(organization_id)}/subscriptions"
    headers = []
    query_ = []
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Describes the permissions of a specified resource.
  """
  def describe_resource_permissions(client, resource_id, limit \\ nil, marker \\ nil, principal_id \\ nil, authentication_token \\ nil, options \\ []) do
    path_ = "/api/v1/resources/#{URI.encode(resource_id)}/permissions"
    headers = []
    headers = if !is_nil(authentication_token) do
      [{"Authentication", authentication_token} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(principal_id) do
      [{"principalId", principal_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Describes the current user's special folders; the `RootFolder` and the
  `RecycleBin`.

  `RootFolder` is the root of user's files and folders and `RecycleBin` is the
  root of recycled items. This is not a valid action for SigV4 (administrative
  API) clients.

  This action requires an authentication token. To get an authentication token,
  register an application with Amazon WorkDocs. For more information, see
  [Authentication and Access Control for User Applications](https://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html)
  in the *Amazon WorkDocs Developer Guide*.
  """
  def describe_root_folders(client, limit \\ nil, marker \\ nil, authentication_token, options \\ []) do
    path_ = "/api/v1/me/root"
    headers = []
    headers = if !is_nil(authentication_token) do
      [{"Authentication", authentication_token} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Describes the specified users.

  You can describe all users or filter the results (for example, by status or
  organization).

  By default, Amazon WorkDocs returns the first 24 active or pending users. If
  there are more results, the response includes a marker that you can use to
  request the next set of results.
  """
  def describe_users(client, fields \\ nil, include \\ nil, limit \\ nil, marker \\ nil, order \\ nil, organization_id \\ nil, query \\ nil, sort \\ nil, user_ids \\ nil, authentication_token \\ nil, options \\ []) do
    path_ = "/api/v1/users"
    headers = []
    headers = if !is_nil(authentication_token) do
      [{"Authentication", authentication_token} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(user_ids) do
      [{"userIds", user_ids} | query_]
    else
      query_
    end
    query_ = if !is_nil(sort) do
      [{"sort", sort} | query_]
    else
      query_
    end
    query_ = if !is_nil(query) do
      [{"query", query} | query_]
    else
      query_
    end
    query_ = if !is_nil(organization_id) do
      [{"organizationId", organization_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(order) do
      [{"order", order} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    query_ = if !is_nil(include) do
      [{"include", include} | query_]
    else
      query_
    end
    query_ = if !is_nil(fields) do
      [{"fields", fields} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves details of the current user for whom the authentication token was
  generated.

  This is not a valid action for SigV4 (administrative API) clients.

  This action requires an authentication token. To get an authentication token,
  register an application with Amazon WorkDocs. For more information, see
  [Authentication and Access Control for User Applications](https://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html)
  in the *Amazon WorkDocs Developer Guide*.
  """
  def get_current_user(client, authentication_token, options \\ []) do
    path_ = "/api/v1/me"
    headers = []
    headers = if !is_nil(authentication_token) do
      [{"Authentication", authentication_token} | headers]
    else
      headers
    end
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves details of a document.
  """
  def get_document(client, document_id, include_custom_metadata \\ nil, authentication_token \\ nil, options \\ []) do
    path_ = "/api/v1/documents/#{URI.encode(document_id)}"
    headers = []
    headers = if !is_nil(authentication_token) do
      [{"Authentication", authentication_token} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(include_custom_metadata) do
      [{"includeCustomMetadata", include_custom_metadata} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the path information (the hierarchy from the root folder) for the
  requested document.

  By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the
  requested document and only includes the IDs of the parent folders in the path.
  You can limit the maximum number of levels. You can also request the names of
  the parent folders.
  """
  def get_document_path(client, document_id, fields \\ nil, limit \\ nil, marker \\ nil, authentication_token \\ nil, options \\ []) do
    path_ = "/api/v1/documents/#{URI.encode(document_id)}/path"
    headers = []
    headers = if !is_nil(authentication_token) do
      [{"Authentication", authentication_token} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    query_ = if !is_nil(fields) do
      [{"fields", fields} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves version metadata for the specified document.
  """
  def get_document_version(client, document_id, version_id, fields \\ nil, include_custom_metadata \\ nil, authentication_token \\ nil, options \\ []) do
    path_ = "/api/v1/documents/#{URI.encode(document_id)}/versions/#{URI.encode(version_id)}"
    headers = []
    headers = if !is_nil(authentication_token) do
      [{"Authentication", authentication_token} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(include_custom_metadata) do
      [{"includeCustomMetadata", include_custom_metadata} | query_]
    else
      query_
    end
    query_ = if !is_nil(fields) do
      [{"fields", fields} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the metadata of the specified folder.
  """
  def get_folder(client, folder_id, include_custom_metadata \\ nil, authentication_token \\ nil, options \\ []) do
    path_ = "/api/v1/folders/#{URI.encode(folder_id)}"
    headers = []
    headers = if !is_nil(authentication_token) do
      [{"Authentication", authentication_token} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(include_custom_metadata) do
      [{"includeCustomMetadata", include_custom_metadata} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the path information (the hierarchy from the root folder) for the
  specified folder.

  By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the
  requested folder and only includes the IDs of the parent folders in the path.
  You can limit the maximum number of levels. You can also request the parent
  folder names.
  """
  def get_folder_path(client, folder_id, fields \\ nil, limit \\ nil, marker \\ nil, authentication_token \\ nil, options \\ []) do
    path_ = "/api/v1/folders/#{URI.encode(folder_id)}/path"
    headers = []
    headers = if !is_nil(authentication_token) do
      [{"Authentication", authentication_token} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    query_ = if !is_nil(fields) do
      [{"fields", fields} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves a collection of resources, including folders and documents.

  The only `CollectionType` supported is `SHARED_WITH_ME`.
  """
  def get_resources(client, collection_type \\ nil, limit \\ nil, marker \\ nil, user_id \\ nil, authentication_token \\ nil, options \\ []) do
    path_ = "/api/v1/resources"
    headers = []
    headers = if !is_nil(authentication_token) do
      [{"Authentication", authentication_token} | headers]
    else
      headers
    end
    query_ = []
    query_ = if !is_nil(user_id) do
      [{"userId", user_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    query_ = if !is_nil(collection_type) do
      [{"collectionType", collection_type} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Creates a new document object and version object.

  The client specifies the parent folder ID and name of the document to upload.
  The ID is optionally specified when creating a new version of an existing
  document. This is the first step to upload a document. Next, upload the document
  to the URL returned from the call, and then call `UpdateDocumentVersion`.

  To cancel the document upload, call `AbortDocumentVersionUpload`.
  """
  def initiate_document_version_upload(client, input, options \\ []) do
    path_ = "/api/v1/documents"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Removes all the permissions from the specified resource.
  """
  def remove_all_resource_permissions(client, resource_id, input, options \\ []) do
    path_ = "/api/v1/resources/#{URI.encode(resource_id)}/permissions"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Removes the permission for the specified principal from the specified resource.
  """
  def remove_resource_permission(client, principal_id, resource_id, input, options \\ []) do
    path_ = "/api/v1/resources/#{URI.encode(resource_id)}/permissions/#{URI.encode(principal_id)}"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    {query_, input} =
      [
        {"PrincipalType", "type"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Updates the specified attributes of a document.

  The user must have access to both the document and its parent folder, if
  applicable.
  """
  def update_document(client, document_id, input, options \\ []) do
    path_ = "/api/v1/documents/#{URI.encode(document_id)}"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Changes the status of the document version to ACTIVE.

  Amazon WorkDocs also sets its document container to ACTIVE. This is the last
  step in a document upload, after the client uploads the document to an
  S3-presigned URL returned by `InitiateDocumentVersionUpload`.
  """
  def update_document_version(client, document_id, version_id, input, options \\ []) do
    path_ = "/api/v1/documents/#{URI.encode(document_id)}/versions/#{URI.encode(version_id)}"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the specified attributes of the specified folder.

  The user must have access to both the folder and its parent folder, if
  applicable.
  """
  def update_folder(client, folder_id, input, options \\ []) do
    path_ = "/api/v1/folders/#{URI.encode(folder_id)}"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the specified attributes of the specified user, and grants or revokes
  administrative privileges to the Amazon WorkDocs site.
  """
  def update_user(client, user_id, input, options \\ []) do
    path_ = "/api/v1/users/#{URI.encode(user_id)}"
    {headers, input} =
      [
        {"AuthenticationToken", "Authentication"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "workdocs"}
    host = build_host("workdocs", client)
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

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

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
