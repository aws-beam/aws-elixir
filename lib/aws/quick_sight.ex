# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.QuickSight do
  @moduledoc """
  Amazon QuickSight API Reference

  Amazon QuickSight is a fully managed, serverless business intelligence
  service for the AWS Cloud that makes it easy to extend data and insights to
  every user in your organization. This API reference contains documentation
  for a programming interface that you can use to manage Amazon QuickSight.
  """

  @doc """
  Cancels an ongoing ingestion of data into SPICE.
  """
  def cancel_ingestion(client, aws_account_id, data_set_id, ingestion_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/data-sets/#{URI.encode(data_set_id)}/ingestions/#{URI.encode(ingestion_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a customization for the Amazon QuickSight subscription associated
  with your AWS account.
  """
  def create_account_customization(client, aws_account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/customizations"
    headers = []
    {query_, input} =
      [
        {"Namespace", "namespace"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a dashboard from a template. To first create a template, see the
  `CreateTemplate` API operation.

  A dashboard is an entity in QuickSight that identifies QuickSight reports,
  created from analyses. You can share QuickSight dashboards. With the right
  permissions, you can create scheduled email reports from them. The
  `CreateDashboard`, `DescribeDashboard`, and `ListDashboardsByUser` API
  operations act on the dashboard entity. If you have the correct
  permissions, you can create a dashboard from a template that exists in a
  different AWS account.
  """
  def create_dashboard(client, aws_account_id, dashboard_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/dashboards/#{URI.encode(dashboard_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a dataset.
  """
  def create_data_set(client, aws_account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/data-sets"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a data source.
  """
  def create_data_source(client, aws_account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/data-sources"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates an Amazon QuickSight group.

  The permissions resource is
  `arn:aws:quicksight:us-east-1:*&lt;relevant-aws-account-id&gt;*:group/default/*&lt;group-name&gt;*
  `.

  The response is a group object.
  """
  def create_group(client, aws_account_id, namespace, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/groups"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds an Amazon QuickSight user to an Amazon QuickSight group.
  """
  def create_group_membership(client, aws_account_id, group_name, member_name, namespace, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/groups/#{URI.encode(group_name)}/members/#{URI.encode(member_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates an assignment with one specified IAM policy, identified by its
  Amazon Resource Name (ARN). This policy will be assigned to specified
  groups or users of Amazon QuickSight. The users and groups need to be in
  the same namespace.
  """
  def create_i_a_m_policy_assignment(client, aws_account_id, namespace, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/iam-policy-assignments/"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates and starts a new SPICE ingestion on a dataset

  Any ingestions operating on tagged datasets inherit the same tags
  automatically for use in access control. For an example, see [How do I
  create an IAM policy to control access to Amazon EC2 resources using
  tags?](https://aws.amazon.com/premiumsupport/knowledge-center/iam-ec2-resource-tags/)
  in the AWS Knowledge Center. Tags are visible on the tagged dataset, but
  not on the ingestion resource.
  """
  def create_ingestion(client, aws_account_id, data_set_id, ingestion_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/data-sets/#{URI.encode(data_set_id)}/ingestions/#{URI.encode(ingestion_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  (Enterprise edition only) Creates a new namespace for you to use with
  Amazon QuickSight.

  A namespace allows you to isolate the QuickSight users and groups that are
  registered for that namespace. Users that access the namespace can share
  assets only with other users or groups in the same namespace. They can't
  see users and groups in other namespaces. You can create a namespace after
  your AWS account is subscribed to QuickSight. The namespace must be unique
  within the AWS account. By default, there is a limit of 100 namespaces per
  AWS account. To increase your limit, create a ticket with AWS Support.
  """
  def create_namespace(client, aws_account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a template from an existing QuickSight analysis or template. You
  can use the resulting template to create a dashboard.

  A *template* is an entity in QuickSight that encapsulates the metadata
  required to create an analysis and that you can use to create s dashboard.
  A template adds a layer of abstraction by using placeholders to replace the
  dataset associated with the analysis. You can use templates to create
  dashboards by replacing dataset placeholders with datasets that follow the
  same schema that was used to create the source analysis and template.
  """
  def create_template(client, aws_account_id, template_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/templates/#{URI.encode(template_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a template alias for a template.
  """
  def create_template_alias(client, alias_name, aws_account_id, template_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/templates/#{URI.encode(template_id)}/aliases/#{URI.encode(alias_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a theme.

  A *theme* is set of configuration options for color and layout. Themes
  apply to analyses and dashboards. For more information, see [Using Themes
  in Amazon
  QuickSight](https://docs.aws.amazon.com/quicksight/latest/user/themes-in-quicksight.html)
  in the *Amazon QuickSight User Guide*.
  """
  def create_theme(client, aws_account_id, theme_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/themes/#{URI.encode(theme_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a theme alias for a theme.
  """
  def create_theme_alias(client, alias_name, aws_account_id, theme_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/themes/#{URI.encode(theme_id)}/aliases/#{URI.encode(alias_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes customizations for the QuickSight subscription on your AWS account.
  """
  def delete_account_customization(client, aws_account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/customizations"
    headers = []
    {query_, input} =
      [
        {"Namespace", "namespace"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a dashboard.
  """
  def delete_dashboard(client, aws_account_id, dashboard_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/dashboards/#{URI.encode(dashboard_id)}"
    headers = []
    {query_, input} =
      [
        {"VersionNumber", "version-number"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a dataset.
  """
  def delete_data_set(client, aws_account_id, data_set_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/data-sets/#{URI.encode(data_set_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the data source permanently. This action breaks all the datasets
  that reference the deleted data source.
  """
  def delete_data_source(client, aws_account_id, data_source_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/data-sources/#{URI.encode(data_source_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes a user group from Amazon QuickSight.
  """
  def delete_group(client, aws_account_id, group_name, namespace, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/groups/#{URI.encode(group_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes a user from a group so that the user is no longer a member of the
  group.
  """
  def delete_group_membership(client, aws_account_id, group_name, member_name, namespace, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/groups/#{URI.encode(group_name)}/members/#{URI.encode(member_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes an existing IAM policy assignment.
  """
  def delete_i_a_m_policy_assignment(client, assignment_name, aws_account_id, namespace, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespace/#{URI.encode(namespace)}/iam-policy-assignments/#{URI.encode(assignment_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a namespace and the users and groups that are associated with the
  namespace. This is an asynchronous process. Assets including dashboards,
  analyses, datasets and data sources are not deleted. To delete these
  assets, you use the APIs for the relevant asset.
  """
  def delete_namespace(client, aws_account_id, namespace, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a template.
  """
  def delete_template(client, aws_account_id, template_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/templates/#{URI.encode(template_id)}"
    headers = []
    {query_, input} =
      [
        {"VersionNumber", "version-number"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the item that the specified template alias points to. If you
  provide a specific alias, you delete the version of the template that the
  alias points to.
  """
  def delete_template_alias(client, alias_name, aws_account_id, template_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/templates/#{URI.encode(template_id)}/aliases/#{URI.encode(alias_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a theme.
  """
  def delete_theme(client, aws_account_id, theme_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/themes/#{URI.encode(theme_id)}"
    headers = []
    {query_, input} =
      [
        {"VersionNumber", "version-number"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the version of the theme that the specified theme alias points to.
  If you provide a specific alias, you delete the version of the theme that
  the alias points to.
  """
  def delete_theme_alias(client, alias_name, aws_account_id, theme_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/themes/#{URI.encode(theme_id)}/aliases/#{URI.encode(alias_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the Amazon QuickSight user that is associated with the identity of
  the AWS Identity and Access Management (IAM) user or role that's making the
  call. The IAM user isn't deleted as a result of this call.
  """
  def delete_user(client, aws_account_id, namespace, user_name, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/users/#{URI.encode(user_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a user identified by its principal ID.
  """
  def delete_user_by_principal_id(client, aws_account_id, namespace, principal_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/user-principals/#{URI.encode(principal_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes the customizations associated with your AWS account.
  """
  def describe_account_customization(client, aws_account_id, namespace \\ nil, resolved \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/customizations"
    headers = []
    query_ = []
    query_ = if !is_nil(resolved) do
      [{"resolved", resolved} | query_]
    else
      query_
    end
    query_ = if !is_nil(namespace) do
      [{"namespace", namespace} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes the settings that were used when your QuickSight subscription was
  first created in this AWS Account.
  """
  def describe_account_settings(client, aws_account_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/settings"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Provides a summary for a dashboard.
  """
  def describe_dashboard(client, aws_account_id, dashboard_id, alias_name \\ nil, version_number \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/dashboards/#{URI.encode(dashboard_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(version_number) do
      [{"version-number", version_number} | query_]
    else
      query_
    end
    query_ = if !is_nil(alias_name) do
      [{"alias-name", alias_name} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes read and write permissions for a dashboard.
  """
  def describe_dashboard_permissions(client, aws_account_id, dashboard_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/dashboards/#{URI.encode(dashboard_id)}/permissions"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes a dataset.
  """
  def describe_data_set(client, aws_account_id, data_set_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/data-sets/#{URI.encode(data_set_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes the permissions on a dataset.

  The permissions resource is
  `arn:aws:quicksight:region:aws-account-id:dataset/data-set-id`.
  """
  def describe_data_set_permissions(client, aws_account_id, data_set_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/data-sets/#{URI.encode(data_set_id)}/permissions"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes a data source.
  """
  def describe_data_source(client, aws_account_id, data_source_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/data-sources/#{URI.encode(data_source_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes the resource permissions for a data source.
  """
  def describe_data_source_permissions(client, aws_account_id, data_source_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/data-sources/#{URI.encode(data_source_id)}/permissions"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns an Amazon QuickSight group's description and Amazon Resource Name
  (ARN).
  """
  def describe_group(client, aws_account_id, group_name, namespace, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/groups/#{URI.encode(group_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes an existing IAM policy assignment, as specified by the assignment
  name.
  """
  def describe_i_a_m_policy_assignment(client, assignment_name, aws_account_id, namespace, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/iam-policy-assignments/#{URI.encode(assignment_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes a SPICE ingestion.
  """
  def describe_ingestion(client, aws_account_id, data_set_id, ingestion_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/data-sets/#{URI.encode(data_set_id)}/ingestions/#{URI.encode(ingestion_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes the current namespace.
  """
  def describe_namespace(client, aws_account_id, namespace, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes a template's metadata.
  """
  def describe_template(client, aws_account_id, template_id, alias_name \\ nil, version_number \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/templates/#{URI.encode(template_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(version_number) do
      [{"version-number", version_number} | query_]
    else
      query_
    end
    query_ = if !is_nil(alias_name) do
      [{"alias-name", alias_name} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes the template alias for a template.
  """
  def describe_template_alias(client, alias_name, aws_account_id, template_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/templates/#{URI.encode(template_id)}/aliases/#{URI.encode(alias_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes read and write permissions on a template.
  """
  def describe_template_permissions(client, aws_account_id, template_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/templates/#{URI.encode(template_id)}/permissions"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes a theme.
  """
  def describe_theme(client, aws_account_id, theme_id, alias_name \\ nil, version_number \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/themes/#{URI.encode(theme_id)}"
    headers = []
    query_ = []
    query_ = if !is_nil(version_number) do
      [{"version-number", version_number} | query_]
    else
      query_
    end
    query_ = if !is_nil(alias_name) do
      [{"alias-name", alias_name} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes the alias for a theme.
  """
  def describe_theme_alias(client, alias_name, aws_account_id, theme_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/themes/#{URI.encode(theme_id)}/aliases/#{URI.encode(alias_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes the read and write permissions for a theme.
  """
  def describe_theme_permissions(client, aws_account_id, theme_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/themes/#{URI.encode(theme_id)}/permissions"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns information about a user, given the user name.
  """
  def describe_user(client, aws_account_id, namespace, user_name, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/users/#{URI.encode(user_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Generates a URL and authorization code that you can embed in your web
  server code. Before you use this command, make sure that you have
  configured the dashboards and permissions.

  Currently, you can use `GetDashboardEmbedURL` only from the server, not
  from the user's browser. The following rules apply to the combination of
  URL and authorization code:

  <ul> <li> They must be used together.

  </li> <li> They can be used one time only.

  </li> <li> They are valid for 5 minutes after you run this command.

  </li> <li> The resulting user session is valid for 10 hours.

  </li> </ul> For more information, see [Embedding Amazon QuickSight
  Dashboards](https://docs.aws.amazon.com/quicksight/latest/user/embedding-dashboards.html)
  in the *Amazon QuickSight User Guide* or [Embedding Amazon QuickSight
  Dashboards](https://docs.aws.amazon.com/quicksight/latest/APIReference/qs-dev-embedded-dashboards.html)
  in the *Amazon QuickSight API Reference*.
  """
  def get_dashboard_embed_url(client, aws_account_id, dashboard_id, identity_type, reset_disabled \\ nil, session_lifetime_in_minutes \\ nil, undo_redo_disabled \\ nil, user_arn \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/dashboards/#{URI.encode(dashboard_id)}/embed-url"
    headers = []
    query_ = []
    query_ = if !is_nil(user_arn) do
      [{"user-arn", user_arn} | query_]
    else
      query_
    end
    query_ = if !is_nil(undo_redo_disabled) do
      [{"undo-redo-disabled", undo_redo_disabled} | query_]
    else
      query_
    end
    query_ = if !is_nil(session_lifetime_in_minutes) do
      [{"session-lifetime", session_lifetime_in_minutes} | query_]
    else
      query_
    end
    query_ = if !is_nil(reset_disabled) do
      [{"reset-disabled", reset_disabled} | query_]
    else
      query_
    end
    query_ = if !is_nil(identity_type) do
      [{"creds-type", identity_type} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Generates a session URL and authorization code that you can embed in your
  web server code.
  """
  def get_session_embed_url(client, aws_account_id, entry_point \\ nil, session_lifetime_in_minutes \\ nil, user_arn \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/session-embed-url"
    headers = []
    query_ = []
    query_ = if !is_nil(user_arn) do
      [{"user-arn", user_arn} | query_]
    else
      query_
    end
    query_ = if !is_nil(session_lifetime_in_minutes) do
      [{"session-lifetime", session_lifetime_in_minutes} | query_]
    else
      query_
    end
    query_ = if !is_nil(entry_point) do
      [{"entry-point", entry_point} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all the versions of the dashboards in the QuickSight subscription.
  """
  def list_dashboard_versions(client, aws_account_id, dashboard_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/dashboards/#{URI.encode(dashboard_id)}/versions"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists dashboards in an AWS account.
  """
  def list_dashboards(client, aws_account_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/dashboards"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all of the datasets belonging to the current AWS account in an AWS
  Region.

  The permissions resource is
  `arn:aws:quicksight:region:aws-account-id:dataset/*`.
  """
  def list_data_sets(client, aws_account_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/data-sets"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists data sources in current AWS Region that belong to this AWS account.
  """
  def list_data_sources(client, aws_account_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/data-sources"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists member users in a group.
  """
  def list_group_memberships(client, aws_account_id, group_name, namespace, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/groups/#{URI.encode(group_name)}/members"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all user groups in Amazon QuickSight.
  """
  def list_groups(client, aws_account_id, namespace, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/groups"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists IAM policy assignments in the current Amazon QuickSight account.
  """
  def list_i_a_m_policy_assignments(client, aws_account_id, namespace, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/iam-policy-assignments"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all the IAM policy assignments, including the Amazon Resource Names
  (ARNs) for the IAM policies assigned to the specified user and group or
  groups that the user belongs to.
  """
  def list_i_a_m_policy_assignments_for_user(client, aws_account_id, namespace, user_name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/users/#{URI.encode(user_name)}/iam-policy-assignments"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the history of SPICE ingestions for a dataset.
  """
  def list_ingestions(client, aws_account_id, data_set_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/data-sets/#{URI.encode(data_set_id)}/ingestions"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the namespaces for the specified AWS account.
  """
  def list_namespaces(client, aws_account_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the tags assigned to a resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/resources/#{URI.encode(resource_arn)}/tags"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all the aliases of a template.
  """
  def list_template_aliases(client, aws_account_id, template_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/templates/#{URI.encode(template_id)}/aliases"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-result", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all the versions of the templates in the current Amazon QuickSight
  account.
  """
  def list_template_versions(client, aws_account_id, template_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/templates/#{URI.encode(template_id)}/versions"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all the templates in the current Amazon QuickSight account.
  """
  def list_templates(client, aws_account_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/templates"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-result", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all the aliases of a theme.
  """
  def list_theme_aliases(client, aws_account_id, theme_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/themes/#{URI.encode(theme_id)}/aliases"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-result", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all the versions of the themes in the current AWS account.
  """
  def list_theme_versions(client, aws_account_id, theme_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/themes/#{URI.encode(theme_id)}/versions"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all the themes in the current AWS account.
  """
  def list_themes(client, aws_account_id, max_results \\ nil, next_token \\ nil, type \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/themes"
    headers = []
    query_ = []
    query_ = if !is_nil(type) do
      [{"type", type} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the Amazon QuickSight groups that an Amazon QuickSight user is a
  member of.
  """
  def list_user_groups(client, aws_account_id, namespace, user_name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/users/#{URI.encode(user_name)}/groups"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a list of all of the Amazon QuickSight users belonging to this
  account.
  """
  def list_users(client, aws_account_id, namespace, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/users"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Creates an Amazon QuickSight user, whose identity is associated with the
  AWS Identity and Access Management (IAM) identity or role specified in the
  request.
  """
  def register_user(client, aws_account_id, namespace, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/users"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Searchs for dashboards that belong to a user.
  """
  def search_dashboards(client, aws_account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/search/dashboards"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified QuickSight
  resource.

  Tags can help you organize and categorize your resources. You can also use
  them to scope user permissions, by granting a user permission to access or
  change only resources with certain tag values. You can use the
  `TagResource` operation with a resource that already has tags. If you
  specify a new tag key for the resource, this tag is appended to the list of
  tags associated with the resource. If you specify a tag key that is already
  associated with the resource, the new tag value that you specify replaces
  the previous value for that tag.

  You can associate as many as 50 tags with a resource. QuickSight supports
  tagging on data set, data source, dashboard, and template.

  Tagging for QuickSight works in a similar way to tagging for other AWS
  services, except for the following:

  <ul> <li> You can't use tags to track AWS costs for QuickSight. This
  restriction is because QuickSight costs are based on users and SPICE
  capacity, which aren't taggable resources.

  </li> <li> QuickSight doesn't currently support the Tag Editor for AWS
  Resource Groups.

  </li> </ul>
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/resources/#{URI.encode(resource_arn)}/tags"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes a tag or tags from a resource.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/resources/#{URI.encode(resource_arn)}/tags"
    headers = []
    {query_, input} =
      [
        {"TagKeys", "keys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates customizations associated with the QuickSight subscription on your
  AWS account.
  """
  def update_account_customization(client, aws_account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/customizations"
    headers = []
    {query_, input} =
      [
        {"Namespace", "namespace"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the settings for the Amazon QuickSight subscription in your AWS
  Account.
  """
  def update_account_settings(client, aws_account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/settings"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a dashboard in an AWS account.
  """
  def update_dashboard(client, aws_account_id, dashboard_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/dashboards/#{URI.encode(dashboard_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates read and write permissions on a dashboard.
  """
  def update_dashboard_permissions(client, aws_account_id, dashboard_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/dashboards/#{URI.encode(dashboard_id)}/permissions"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the published version of a dashboard.
  """
  def update_dashboard_published_version(client, aws_account_id, dashboard_id, version_number, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/dashboards/#{URI.encode(dashboard_id)}/versions/#{URI.encode(version_number)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a dataset.
  """
  def update_data_set(client, aws_account_id, data_set_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/data-sets/#{URI.encode(data_set_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the permissions on a dataset.

  The permissions resource is
  `arn:aws:quicksight:region:aws-account-id:dataset/data-set-id`.
  """
  def update_data_set_permissions(client, aws_account_id, data_set_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/data-sets/#{URI.encode(data_set_id)}/permissions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a data source.
  """
  def update_data_source(client, aws_account_id, data_source_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/data-sources/#{URI.encode(data_source_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the permissions to a data source.
  """
  def update_data_source_permissions(client, aws_account_id, data_source_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/data-sources/#{URI.encode(data_source_id)}/permissions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Changes a group description.
  """
  def update_group(client, aws_account_id, group_name, namespace, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/groups/#{URI.encode(group_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an existing IAM policy assignment. This operation updates only the
  optional parameter or parameters that are specified in the request.
  """
  def update_i_a_m_policy_assignment(client, assignment_name, aws_account_id, namespace, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/iam-policy-assignments/#{URI.encode(assignment_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a template from an existing Amazon QuickSight analysis or another
  template.
  """
  def update_template(client, aws_account_id, template_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/templates/#{URI.encode(template_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the template alias of a template.
  """
  def update_template_alias(client, alias_name, aws_account_id, template_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/templates/#{URI.encode(template_id)}/aliases/#{URI.encode(alias_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the resource permissions for a template.
  """
  def update_template_permissions(client, aws_account_id, template_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/templates/#{URI.encode(template_id)}/permissions"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a theme.
  """
  def update_theme(client, aws_account_id, theme_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/themes/#{URI.encode(theme_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an alias of a theme.
  """
  def update_theme_alias(client, alias_name, aws_account_id, theme_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/themes/#{URI.encode(theme_id)}/aliases/#{URI.encode(alias_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the resource permissions for a theme. Permissions apply to the
  action to grant or revoke permissions on, for example
  `"quicksight:DescribeTheme"`.

  Theme permissions apply in groupings. Valid groupings include the following
  for the three levels of permissions, which are user, owner, or no
  permissions:

  <ul> <li> User

  <ul> <li> `"quicksight:DescribeTheme"`

  </li> <li> `"quicksight:DescribeThemeAlias"`

  </li> <li> `"quicksight:ListThemeAliases"`

  </li> <li> `"quicksight:ListThemeVersions"`

  </li> </ul> </li> <li> Owner

  <ul> <li> `"quicksight:DescribeTheme"`

  </li> <li> `"quicksight:DescribeThemeAlias"`

  </li> <li> `"quicksight:ListThemeAliases"`

  </li> <li> `"quicksight:ListThemeVersions"`

  </li> <li> `"quicksight:DeleteTheme"`

  </li> <li> `"quicksight:UpdateTheme"`

  </li> <li> `"quicksight:CreateThemeAlias"`

  </li> <li> `"quicksight:DeleteThemeAlias"`

  </li> <li> `"quicksight:UpdateThemeAlias"`

  </li> <li> `"quicksight:UpdateThemePermissions"`

  </li> <li> `"quicksight:DescribeThemePermissions"`

  </li> </ul> </li> <li> To specify no permissions, omit the permissions
  list.

  </li> </ul>
  """
  def update_theme_permissions(client, aws_account_id, theme_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/themes/#{URI.encode(theme_id)}/permissions"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an Amazon QuickSight user.
  """
  def update_user(client, aws_account_id, namespace, user_name, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(aws_account_id)}/namespaces/#{URI.encode(namespace)}/users/#{URI.encode(user_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, Poison.Parser.t(), Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "quicksight"}
    host = build_host("quicksight", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, response}

      {:ok, %HTTPoison.Response{status_code: status_code, body: body} = response}
      when status_code == 200 or status_code == 202 or status_code == 204 ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, %{}, response}

      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
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

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: Poison.Encoder.encode(input, %{}), else: ""
  end
end
