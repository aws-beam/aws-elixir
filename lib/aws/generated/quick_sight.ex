# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.QuickSight do
  @moduledoc """
  Amazon QuickSight API Reference

  Amazon QuickSight is a fully managed, serverless business intelligence service
  for the Amazon Web Services Cloud that makes it easy to extend data and insights
  to every user in your organization.

  This API reference contains documentation for a programming interface that you
  can use to manage Amazon QuickSight.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-04-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "quicksight",
      global?: false,
      protocol: "rest-json",
      service_id: "QuickSight",
      signature_version: "v4",
      signing_name: "quicksight",
      target_prefix: nil
    }
  end

  @doc """
  Cancels an ongoing ingestion of data into SPICE.
  """
  def cancel_ingestion(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        ingestion_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/ingestions/#{AWS.Util.encode_uri(ingestion_id)}"

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
  Creates Amazon QuickSight customizations the current Amazon Web Services Region.

  Currently, you can add a custom default theme by using the
  `CreateAccountCustomization` or `UpdateAccountCustomization` API operation. To
  further customize Amazon QuickSight by removing Amazon QuickSight sample assets
  and videos for all new users, see [Customizing Amazon QuickSight](https://docs.aws.amazon.com/quicksight/latest/user/customizing-quicksight.html)
  in the *Amazon QuickSight User Guide.*

  You can create customizations for your Amazon Web Services account or, if you
  specify a namespace, for a QuickSight namespace instead. Customizations that
  apply to a namespace always override customizations that apply to an Amazon Web
  Services account. To find out which customizations apply, use the
  `DescribeAccountCustomization` API operation.

  Before you use the `CreateAccountCustomization` API operation to add a theme as
  the namespace default, make sure that you first share the theme with the
  namespace. If you don't share it with the namespace, the theme isn't visible to
  your users even if you make it the default theme. To check if the theme is
  shared, view the current permissions by using the `
  [DescribeThemePermissions](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeThemePermissions.html) ` API operation. To share the theme, grant permissions by using the `
  [UpdateThemePermissions](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdateThemePermissions.html)
  ` API operation.
  """
  def create_account_customization(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/customizations"
    headers = []

    {query_params, input} =
      [
        {"Namespace", "namespace"}
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
  Creates an analysis in Amazon QuickSight.
  """
  def create_analysis(%Client{} = client, analysis_id, aws_account_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses/#{AWS.Util.encode_uri(analysis_id)}"

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
  Creates a dashboard from a template.

  To first create a template, see the `
  [CreateTemplate](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateTemplate.html)
  ` API operation.

  A dashboard is an entity in Amazon QuickSight that identifies Amazon QuickSight
  reports, created from analyses. You can share Amazon QuickSight dashboards. With
  the right permissions, you can create scheduled email reports from them. If you
  have the correct permissions, you can create a dashboard from a template that
  exists in a different Amazon Web Services account.
  """
  def create_dashboard(%Client{} = client, aws_account_id, dashboard_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}"

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
  Creates a dataset.

  This operation doesn't support datasets that include uploaded files as a source.
  """
  def create_data_set(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets"
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
  Creates a data source.
  """
  def create_data_source(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sources"
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
  Creates an empty shared folder.
  """
  def create_folder(%Client{} = client, aws_account_id, folder_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}"

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
  Adds an asset, such as a dashboard, analysis, or dataset into a folder.
  """
  def create_folder_membership(
        %Client{} = client,
        aws_account_id,
        folder_id,
        member_id,
        member_type,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}/members/#{AWS.Util.encode_uri(member_type)}/#{AWS.Util.encode_uri(member_id)}"

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
  Creates an Amazon QuickSight group.

  The permissions resource is
  `arn:aws:quicksight:us-east-1:*<relevant-aws-account-id>*:group/default/*<group-name>*
  `.

  The response is a group object.
  """
  def create_group(%Client{} = client, aws_account_id, namespace, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups"

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
  Adds an Amazon QuickSight user to an Amazon QuickSight group.
  """
  def create_group_membership(
        %Client{} = client,
        aws_account_id,
        group_name,
        member_name,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups/#{AWS.Util.encode_uri(group_name)}/members/#{AWS.Util.encode_uri(member_name)}"

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
  Creates an assignment with one specified IAM policy, identified by its Amazon
  Resource Name (ARN).

  This policy assignment is attached to the specified groups or users of Amazon
  QuickSight. Assignment names are unique per Amazon Web Services account. To
  avoid overwriting rules in other namespaces, use assignment names that are
  unique.
  """
  def create_iam_policy_assignment(
        %Client{} = client,
        aws_account_id,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/iam-policy-assignments/"

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
  Creates and starts a new SPICE ingestion for a dataset.

  You can manually refresh datasets in an Enterprise edition account 32 times in a
  24-hour period. You can manually refresh datasets in a Standard edition account
  8 times in a 24-hour period. Each 24-hour period is measured starting 24 hours
  before the current date and time.

  Any ingestions operating on tagged datasets inherit the same tags automatically
  for use in access control. For an example, see [How do I create an IAM policy to control access to Amazon EC2 resources using
  tags?](http://aws.amazon.com/premiumsupport/knowledge-center/iam-ec2-resource-tags/)
  in the Amazon Web Services Knowledge Center. Tags are visible on the tagged
  dataset, but not on the ingestion resource.
  """
  def create_ingestion(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        ingestion_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/ingestions/#{AWS.Util.encode_uri(ingestion_id)}"

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
  (Enterprise edition only) Creates a new namespace for you to use with Amazon
  QuickSight.

  A namespace allows you to isolate the Amazon QuickSight users and groups that
  are registered for that namespace. Users that access the namespace can share
  assets only with other users or groups in the same namespace. They can't see
  users and groups in other namespaces. You can create a namespace after your
  Amazon Web Services account is subscribed to Amazon QuickSight. The namespace
  must be unique within the Amazon Web Services account. By default, there is a
  limit of 100 namespaces per Amazon Web Services account. To increase your limit,
  create a ticket with Amazon Web Services Support.
  """
  def create_namespace(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}"
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
  Creates a template from an existing Amazon QuickSight analysis or template.

  You can use the resulting template to create a dashboard.

  A *template* is an entity in Amazon QuickSight that encapsulates the metadata
  required to create an analysis and that you can use to create s dashboard. A
  template adds a layer of abstraction by using placeholders to replace the
  dataset associated with the analysis. You can use templates to create dashboards
  by replacing dataset placeholders with datasets that follow the same schema that
  was used to create the source analysis and template.
  """
  def create_template(%Client{} = client, aws_account_id, template_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}"

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
  Creates a template alias for a template.
  """
  def create_template_alias(
        %Client{} = client,
        alias_name,
        aws_account_id,
        template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}/aliases/#{AWS.Util.encode_uri(alias_name)}"

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
  Creates a theme.

  A *theme* is set of configuration options for color and layout. Themes apply to
  analyses and dashboards. For more information, see [Using Themes in Amazon QuickSight](https://docs.aws.amazon.com/quicksight/latest/user/themes-in-quicksight.html)
  in the *Amazon QuickSight User Guide*.
  """
  def create_theme(%Client{} = client, aws_account_id, theme_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}"

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
  Creates a theme alias for a theme.
  """
  def create_theme_alias(
        %Client{} = client,
        alias_name,
        aws_account_id,
        theme_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}/aliases/#{AWS.Util.encode_uri(alias_name)}"

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
  Deletes all Amazon QuickSight customizations in this Amazon Web Services Region
  for the specified Amazon Web Services account and Amazon QuickSight namespace.
  """
  def delete_account_customization(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/customizations"
    headers = []

    {query_params, input} =
      [
        {"Namespace", "namespace"}
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
  Deletes an analysis from Amazon QuickSight.

  You can optionally include a recovery window during which you can restore the
  analysis. If you don't specify a recovery window value, the operation defaults
  to 30 days. Amazon QuickSight attaches a `DeletionTime` stamp to the response
  that specifies the end of the recovery window. At the end of the recovery
  window, Amazon QuickSight deletes the analysis permanently.

  At any time before recovery window ends, you can use the `RestoreAnalysis` API
  operation to remove the `DeletionTime` stamp and cancel the deletion of the
  analysis. The analysis remains visible in the API until it's deleted, so you can
  describe it but you can't make a template from it.

  An analysis that's scheduled for deletion isn't accessible in the Amazon
  QuickSight console. To access it in the console, restore it. Deleting an
  analysis doesn't delete the dashboards that you publish from it.
  """
  def delete_analysis(%Client{} = client, analysis_id, aws_account_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses/#{AWS.Util.encode_uri(analysis_id)}"

    headers = []

    {query_params, input} =
      [
        {"ForceDeleteWithoutRecovery", "force-delete-without-recovery"},
        {"RecoveryWindowInDays", "recovery-window-in-days"}
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
  Deletes a dashboard.
  """
  def delete_dashboard(%Client{} = client, aws_account_id, dashboard_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}"

    headers = []

    {query_params, input} =
      [
        {"VersionNumber", "version-number"}
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
  Deletes a dataset.
  """
  def delete_data_set(%Client{} = client, aws_account_id, data_set_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}"

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
  Deletes the data source permanently.

  This operation breaks all the datasets that reference the deleted data source.
  """
  def delete_data_source(%Client{} = client, aws_account_id, data_source_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sources/#{AWS.Util.encode_uri(data_source_id)}"

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
  Deletes an empty folder.
  """
  def delete_folder(%Client{} = client, aws_account_id, folder_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}"

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
  Removes an asset, such as a dashboard, analysis, or dataset, from a folder.
  """
  def delete_folder_membership(
        %Client{} = client,
        aws_account_id,
        folder_id,
        member_id,
        member_type,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}/members/#{AWS.Util.encode_uri(member_type)}/#{AWS.Util.encode_uri(member_id)}"

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
  Removes a user group from Amazon QuickSight.
  """
  def delete_group(
        %Client{} = client,
        aws_account_id,
        group_name,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups/#{AWS.Util.encode_uri(group_name)}"

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
  Removes a user from a group so that the user is no longer a member of the group.
  """
  def delete_group_membership(
        %Client{} = client,
        aws_account_id,
        group_name,
        member_name,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups/#{AWS.Util.encode_uri(group_name)}/members/#{AWS.Util.encode_uri(member_name)}"

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
  Deletes an existing IAM policy assignment.
  """
  def delete_iam_policy_assignment(
        %Client{} = client,
        assignment_name,
        aws_account_id,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespace/#{AWS.Util.encode_uri(namespace)}/iam-policy-assignments/#{AWS.Util.encode_uri(assignment_name)}"

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
  Deletes a namespace and the users and groups that are associated with the
  namespace.

  This is an asynchronous process. Assets including dashboards, analyses, datasets
  and data sources are not deleted. To delete these assets, you use the API
  operations for the relevant asset.
  """
  def delete_namespace(%Client{} = client, aws_account_id, namespace, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}"

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
  Deletes a template.
  """
  def delete_template(%Client{} = client, aws_account_id, template_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}"

    headers = []

    {query_params, input} =
      [
        {"VersionNumber", "version-number"}
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
  Deletes the item that the specified template alias points to.

  If you provide a specific alias, you delete the version of the template that the
  alias points to.
  """
  def delete_template_alias(
        %Client{} = client,
        alias_name,
        aws_account_id,
        template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}/aliases/#{AWS.Util.encode_uri(alias_name)}"

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
  Deletes a theme.
  """
  def delete_theme(%Client{} = client, aws_account_id, theme_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}"

    headers = []

    {query_params, input} =
      [
        {"VersionNumber", "version-number"}
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
  Deletes the version of the theme that the specified theme alias points to.

  If you provide a specific alias, you delete the version of the theme that the
  alias points to.
  """
  def delete_theme_alias(
        %Client{} = client,
        alias_name,
        aws_account_id,
        theme_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}/aliases/#{AWS.Util.encode_uri(alias_name)}"

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
  Deletes the Amazon QuickSight user that is associated with the identity of the
  Identity and Access Management (IAM) user or role that's making the call.

  The IAM user isn't deleted as a result of this call.
  """
  def delete_user(%Client{} = client, aws_account_id, namespace, user_name, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users/#{AWS.Util.encode_uri(user_name)}"

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
  Deletes a user identified by its principal ID.
  """
  def delete_user_by_principal_id(
        %Client{} = client,
        aws_account_id,
        namespace,
        principal_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/user-principals/#{AWS.Util.encode_uri(principal_id)}"

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
  Describes the customizations associated with the provided Amazon Web Services
  account and Amazon Amazon QuickSight namespace in an Amazon Web Services Region.

  The Amazon QuickSight console evaluates which customizations to apply by running
  this API operation with the `Resolved` flag included.

  To determine what customizations display when you run this command, it can help
  to visualize the relationship of the entities involved.

    * `Amazon Web Services account` - The Amazon Web Services account
  exists at the top of the hierarchy. It has the potential to use all of the
  Amazon Web Services Regions and Amazon Web Services Services. When you subscribe
  to Amazon QuickSight, you choose one Amazon Web Services Region to use as your
  home Region. That's where your free SPICE capacity is located. You can use
  Amazon QuickSight in any supported Amazon Web Services Region.

    * `Amazon Web Services Region` - In each Amazon Web Services Region
  where you sign in to Amazon QuickSight at least once, Amazon QuickSight acts as
  a separate instance of the same service. If you have a user directory, it
  resides in us-east-1, which is the US East (N. Virginia). Generally speaking,
  these users have access to Amazon QuickSight in any Amazon Web Services Region,
  unless they are constrained to a namespace.

  To run the command in a different Amazon Web Services Region, you change your
  Region settings. If you're using the CLI, you can use one of the following
  options:

      * Use [command line options](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-options.html).

      * Use [named profiles](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html).

      * Run `aws configure` to change your default Amazon Web
  Services Region. Use Enter to key the same settings for your keys. For more
  information, see [Configuring the CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html).

    * `Namespace` - A QuickSight namespace is a partition that contains
  users and assets (data sources, datasets, dashboards, and so on). To access
  assets that are in a specific namespace, users and groups must also be part of
  the same namespace. People who share a namespace are completely isolated from
  users and assets in other namespaces, even if they are in the same Amazon Web
  Services account and Amazon Web Services Region.

    * `Applied customizations` - Within an Amazon Web Services Region, a
  set of Amazon QuickSight customizations can apply to an Amazon Web Services
  account or to a namespace. Settings that you apply to a namespace override
  settings that you apply to an Amazon Web Services account. All settings are
  isolated to a single Amazon Web Services Region. To apply them in other Amazon
  Web Services Regions, run the `CreateAccountCustomization` command in each
  Amazon Web Services Region where you want to apply the same customizations.
  """
  def describe_account_customization(
        %Client{} = client,
        aws_account_id,
        namespace \\ nil,
        resolved \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/customizations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resolved) do
        [{"resolved", resolved} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
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
  Describes the settings that were used when your Amazon QuickSight subscription
  was first created in this Amazon Web Services account.
  """
  def describe_account_settings(%Client{} = client, aws_account_id, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/settings"
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
  Provides a summary of the metadata for an analysis.
  """
  def describe_analysis(%Client{} = client, analysis_id, aws_account_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses/#{AWS.Util.encode_uri(analysis_id)}"

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
  Provides the read and write permissions for an analysis.
  """
  def describe_analysis_permissions(
        %Client{} = client,
        analysis_id,
        aws_account_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses/#{AWS.Util.encode_uri(analysis_id)}/permissions"

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
  Provides a summary for a dashboard.
  """
  def describe_dashboard(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        alias_name \\ nil,
        version_number \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(version_number) do
        [{"version-number", version_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(alias_name) do
        [{"alias-name", alias_name} | query_params]
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
  Describes read and write permissions for a dashboard.
  """
  def describe_dashboard_permissions(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/permissions"

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
  Describes a dataset.

  This operation doesn't support datasets that include uploaded files as a source.
  """
  def describe_data_set(%Client{} = client, aws_account_id, data_set_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}"

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
  Describes the permissions on a dataset.

  The permissions resource is
  `arn:aws:quicksight:region:aws-account-id:dataset/data-set-id`.
  """
  def describe_data_set_permissions(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/permissions"

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
  Describes a data source.
  """
  def describe_data_source(%Client{} = client, aws_account_id, data_source_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sources/#{AWS.Util.encode_uri(data_source_id)}"

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
  Describes the resource permissions for a data source.
  """
  def describe_data_source_permissions(
        %Client{} = client,
        aws_account_id,
        data_source_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sources/#{AWS.Util.encode_uri(data_source_id)}/permissions"

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
  Describes a folder.
  """
  def describe_folder(%Client{} = client, aws_account_id, folder_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}"

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
  Describes permissions for a folder.
  """
  def describe_folder_permissions(%Client{} = client, aws_account_id, folder_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}/permissions"

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
  Describes the folder resolved permissions.

  Permissions consists of both folder direct permissions and the inherited
  permissions from the ancestor folders.
  """
  def describe_folder_resolved_permissions(
        %Client{} = client,
        aws_account_id,
        folder_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}/resolved-permissions"

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
  Returns an Amazon QuickSight group's description and Amazon Resource Name (ARN).
  """
  def describe_group(%Client{} = client, aws_account_id, group_name, namespace, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups/#{AWS.Util.encode_uri(group_name)}"

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
  Describes an existing IAM policy assignment, as specified by the assignment
  name.
  """
  def describe_iam_policy_assignment(
        %Client{} = client,
        assignment_name,
        aws_account_id,
        namespace,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/iam-policy-assignments/#{AWS.Util.encode_uri(assignment_name)}"

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
  Describes a SPICE ingestion.
  """
  def describe_ingestion(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        ingestion_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/ingestions/#{AWS.Util.encode_uri(ingestion_id)}"

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
  Provides a summary and status of IP rules.
  """
  def describe_ip_restriction(%Client{} = client, aws_account_id, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/ip-restriction"
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
  Describes the current namespace.
  """
  def describe_namespace(%Client{} = client, aws_account_id, namespace, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}"

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
  Describes a template's metadata.
  """
  def describe_template(
        %Client{} = client,
        aws_account_id,
        template_id,
        alias_name \\ nil,
        version_number \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(version_number) do
        [{"version-number", version_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(alias_name) do
        [{"alias-name", alias_name} | query_params]
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
  Describes the template alias for a template.
  """
  def describe_template_alias(
        %Client{} = client,
        alias_name,
        aws_account_id,
        template_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}/aliases/#{AWS.Util.encode_uri(alias_name)}"

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
  Describes read and write permissions on a template.
  """
  def describe_template_permissions(
        %Client{} = client,
        aws_account_id,
        template_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}/permissions"

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
  Describes a theme.
  """
  def describe_theme(
        %Client{} = client,
        aws_account_id,
        theme_id,
        alias_name \\ nil,
        version_number \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(version_number) do
        [{"version-number", version_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(alias_name) do
        [{"alias-name", alias_name} | query_params]
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
  Describes the alias for a theme.
  """
  def describe_theme_alias(
        %Client{} = client,
        alias_name,
        aws_account_id,
        theme_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}/aliases/#{AWS.Util.encode_uri(alias_name)}"

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
  Describes the read and write permissions for a theme.
  """
  def describe_theme_permissions(%Client{} = client, aws_account_id, theme_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}/permissions"

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
  Returns information about a user, given the user name.
  """
  def describe_user(%Client{} = client, aws_account_id, namespace, user_name, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users/#{AWS.Util.encode_uri(user_name)}"

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
  Generates an embed URL that you can use to embed an Amazon QuickSight dashboard
  in your website, without having to register any reader users.

  Before you use this action, make sure that you have configured the dashboards
  and permissions.

  The following rules apply to the generated URL:

    * It contains a temporary bearer token. It is valid for 5 minutes
  after it is generated. Once redeemed within this period, it cannot be re-used
  again.

    * The URL validity period should not be confused with the actual
  session lifetime that can be customized using the `
  [SessionLifetimeInMinutes](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_GenerateEmbedUrlForAnonymousUser.html#QS-GenerateEmbedUrlForAnonymousUser-request-SessionLifetimeInMinutes) ` parameter.

  The resulting user session is valid for 15 minutes (default) to 10 hours
  (maximum).

    * You are charged only when the URL is used or there is interaction
  with Amazon QuickSight.

  For more information, see [Embedded
  Analytics](https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html)
  in the *Amazon QuickSight User Guide*.

  For more information about the high-level steps for embedding and for an
  interactive demo of the ways you can customize embedding, visit the [Amazon QuickSight Developer
  Portal](https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html).
  """
  def generate_embed_url_for_anonymous_user(
        %Client{} = client,
        aws_account_id,
        input,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/embed-url/anonymous-user"
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
  Generates an embed URL that you can use to embed an Amazon QuickSight experience
  in your website.

  This action can be used for any type of user registered in an Amazon QuickSight
  account. Before you use this action, make sure that you have configured the
  relevant Amazon QuickSight resource and permissions.

  The following rules apply to the generated URL:

    * It contains a temporary bearer token. It is valid for 5 minutes
  after it is generated. Once redeemed within this period, it cannot be re-used
  again.

    * The URL validity period should not be confused with the actual
  session lifetime that can be customized using the `
  [SessionLifetimeInMinutes](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_GenerateEmbedUrlForRegisteredUser.html#QS-GenerateEmbedUrlForRegisteredUser-request-SessionLifetimeInMinutes) ` parameter.

  The resulting user session is valid for 15 minutes (default) to 10 hours
  (maximum).

    * You are charged only when the URL is used or there is interaction
  with Amazon QuickSight.

  For more information, see [Embedded
  Analytics](https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html)
  in the *Amazon QuickSight User Guide*.

  For more information about the high-level steps for embedding and for an
  interactive demo of the ways you can customize embedding, visit the [Amazon QuickSight Developer
  Portal](https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html).
  """
  def generate_embed_url_for_registered_user(
        %Client{} = client,
        aws_account_id,
        input,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/embed-url/registered-user"
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
  Generates a session URL and authorization code that you can use to embed an
  Amazon Amazon QuickSight read-only dashboard in your web server code.

  Before you use this command, make sure that you have configured the dashboards
  and permissions.

  Currently, you can use `GetDashboardEmbedURL` only from the server, not from the
  user's browser. The following rules apply to the combination of URL and
  authorization code:

    * They must be used together.

    * They can be used one time only.

    * They are valid for 5 minutes after you run this command.

    * The resulting user session is valid for 10 hours.

  For more information, see [Embedding Analytics Using GetDashboardEmbedUrl](https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics-deprecated.html)
  in the *Amazon QuickSight User Guide*.

  For more information about the high-level steps for embedding and for an
  interactive demo of the ways you can customize embedding, visit the [Amazon QuickSight Developer
  Portal](https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html).
  """
  def get_dashboard_embed_url(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        additional_dashboard_ids \\ nil,
        identity_type,
        namespace \\ nil,
        reset_disabled \\ nil,
        session_lifetime_in_minutes \\ nil,
        state_persistence_enabled \\ nil,
        undo_redo_disabled \\ nil,
        user_arn \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/embed-url"

    headers = []
    query_params = []

    query_params =
      if !is_nil(user_arn) do
        [{"user-arn", user_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(undo_redo_disabled) do
        [{"undo-redo-disabled", undo_redo_disabled} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(state_persistence_enabled) do
        [{"state-persistence-enabled", state_persistence_enabled} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(session_lifetime_in_minutes) do
        [{"session-lifetime", session_lifetime_in_minutes} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(reset_disabled) do
        [{"reset-disabled", reset_disabled} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(identity_type) do
        [{"creds-type", identity_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(additional_dashboard_ids) do
        [{"additional-dashboard-ids", additional_dashboard_ids} | query_params]
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
  Generates a session URL and authorization code that you can use to embed the
  Amazon Amazon QuickSight console in your web server code.

  Use `GetSessionEmbedUrl` where you want to provide an authoring portal that
  allows users to create data sources, datasets, analyses, and dashboards. The
  users who access an embedded Amazon QuickSight console need belong to the author
  or admin security cohort. If you want to restrict permissions to some of these
  features, add a custom permissions profile to the user with the `
  [UpdateUser](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdateUser.html) ` API operation. Use `
  [RegisterUser](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_RegisterUser.html)
  ` API operation to add a new user with a custom permission profile attached. For
  more information, see the following sections in the *Amazon QuickSight User
  Guide*:

    * [Embedding Analytics](https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html)

    * [Customizing Access to the Amazon QuickSight Console](https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html)
  """
  def get_session_embed_url(
        %Client{} = client,
        aws_account_id,
        entry_point \\ nil,
        session_lifetime_in_minutes \\ nil,
        user_arn \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/session-embed-url"
    headers = []
    query_params = []

    query_params =
      if !is_nil(user_arn) do
        [{"user-arn", user_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(session_lifetime_in_minutes) do
        [{"session-lifetime", session_lifetime_in_minutes} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(entry_point) do
        [{"entry-point", entry_point} | query_params]
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
  Lists Amazon QuickSight analyses that exist in the specified Amazon Web Services
  account.
  """
  def list_analyses(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
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
  Lists all the versions of the dashboards in the Amazon QuickSight subscription.
  """
  def list_dashboard_versions(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
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
  Lists dashboards in an Amazon Web Services account.
  """
  def list_dashboards(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
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
  Lists all of the datasets belonging to the current Amazon Web Services account
  in an Amazon Web Services Region.

  The permissions resource is
  `arn:aws:quicksight:region:aws-account-id:dataset/*`.
  """
  def list_data_sets(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
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
  Lists data sources in current Amazon Web Services Region that belong to this
  Amazon Web Services account.
  """
  def list_data_sources(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sources"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
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
  List all assets (`DASHBOARD`, `ANALYSIS`, and `DATASET`) in a folder.
  """
  def list_folder_members(
        %Client{} = client,
        aws_account_id,
        folder_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}/members"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
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
  Lists all folders in an account.
  """
  def list_folders(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
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
  Lists member users in a group.
  """
  def list_group_memberships(
        %Client{} = client,
        aws_account_id,
        group_name,
        namespace,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups/#{AWS.Util.encode_uri(group_name)}/members"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
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
  Lists all user groups in Amazon QuickSight.
  """
  def list_groups(
        %Client{} = client,
        aws_account_id,
        namespace,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
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
  Lists IAM policy assignments in the current Amazon QuickSight account.
  """
  def list_iam_policy_assignments(
        %Client{} = client,
        aws_account_id,
        namespace,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/iam-policy-assignments"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
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
  Lists all the IAM policy assignments, including the Amazon Resource Names (ARNs)
  for the IAM policies assigned to the specified user and group or groups that the
  user belongs to.
  """
  def list_iam_policy_assignments_for_user(
        %Client{} = client,
        aws_account_id,
        namespace,
        user_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users/#{AWS.Util.encode_uri(user_name)}/iam-policy-assignments"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
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
  Lists the history of SPICE ingestions for a dataset.
  """
  def list_ingestions(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/ingestions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
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
  Lists the namespaces for the specified Amazon Web Services account.
  """
  def list_namespaces(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
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
  Lists the tags assigned to a resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(resource_arn)}/tags"
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
  Lists all the aliases of a template.
  """
  def list_template_aliases(
        %Client{} = client,
        aws_account_id,
        template_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}/aliases"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-result", max_results} | query_params]
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
  Lists all the versions of the templates in the current Amazon QuickSight
  account.
  """
  def list_template_versions(
        %Client{} = client,
        aws_account_id,
        template_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
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
  Lists all the templates in the current Amazon QuickSight account.
  """
  def list_templates(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-result", max_results} | query_params]
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
  Lists all the aliases of a theme.
  """
  def list_theme_aliases(
        %Client{} = client,
        aws_account_id,
        theme_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}/aliases"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-result", max_results} | query_params]
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
  Lists all the versions of the themes in the current Amazon Web Services account.
  """
  def list_theme_versions(
        %Client{} = client,
        aws_account_id,
        theme_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
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
  Lists all the themes in the current Amazon Web Services account.
  """
  def list_themes(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
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
  Lists the Amazon QuickSight groups that an Amazon QuickSight user is a member
  of.
  """
  def list_user_groups(
        %Client{} = client,
        aws_account_id,
        namespace,
        user_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users/#{AWS.Util.encode_uri(user_name)}/groups"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
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
  Returns a list of all of the Amazon QuickSight users belonging to this account.
  """
  def list_users(
        %Client{} = client,
        aws_account_id,
        namespace,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
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
  Creates an Amazon QuickSight user, whose identity is associated with the
  Identity and Access Management (IAM) identity or role specified in the request.
  """
  def register_user(%Client{} = client, aws_account_id, namespace, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users"

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
  Restores an analysis.
  """
  def restore_analysis(%Client{} = client, analysis_id, aws_account_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/restore/analyses/#{AWS.Util.encode_uri(analysis_id)}"

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
  Searches for analyses that belong to the user specified in the filter.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.
  """
  def search_analyses(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/search/analyses"
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
  Searches for dashboards that belong to a user.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.
  """
  def search_dashboards(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/search/dashboards"
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
  Searches the subfolders in a folder.
  """
  def search_folders(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/search/folders"
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
  Assigns one or more tags (key-value pairs) to the specified Amazon QuickSight
  resource.

  Tags can help you organize and categorize your resources. You can also use them
  to scope user permissions, by granting a user permission to access or change
  only resources with certain tag values. You can use the `TagResource` operation
  with a resource that already has tags. If you specify a new tag key for the
  resource, this tag is appended to the list of tags associated with the resource.
  If you specify a tag key that is already associated with the resource, the new
  tag value that you specify replaces the previous value for that tag.

  You can associate as many as 50 tags with a resource. Amazon QuickSight supports
  tagging on data set, data source, dashboard, and template.

  Tagging for Amazon QuickSight works in a similar way to tagging for other Amazon
  Web Services services, except for the following:

    * You can't use tags to track costs for Amazon QuickSight. This
  isn't possible because you can't tag the resources that Amazon QuickSight costs
  are based on, for example Amazon QuickSight storage capacity (SPICE), number of
  users, type of users, and usage metrics.

    * Amazon QuickSight doesn't currently support the tag editor for
  Resource Groups.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(resource_arn)}/tags"
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
  Removes a tag or tags from a resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(resource_arn)}/tags"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "keys"}
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
  Updates Amazon QuickSight customizations the current Amazon Web Services Region.

  Currently, the only customization you can use is a theme.

  You can use customizations for your Amazon Web Services account or, if you
  specify a namespace, for a Amazon QuickSight namespace instead. Customizations
  that apply to a namespace override customizations that apply to an Amazon Web
  Services account. To find out which customizations apply, use the
  `DescribeAccountCustomization` API operation.
  """
  def update_account_customization(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/customizations"
    headers = []

    {query_params, input} =
      [
        {"Namespace", "namespace"}
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
  Updates the Amazon QuickSight settings in your Amazon Web Services account.
  """
  def update_account_settings(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/settings"
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
  Updates an analysis in Amazon QuickSight
  """
  def update_analysis(%Client{} = client, analysis_id, aws_account_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses/#{AWS.Util.encode_uri(analysis_id)}"

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
  Updates the read and write permissions for an analysis.
  """
  def update_analysis_permissions(
        %Client{} = client,
        analysis_id,
        aws_account_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses/#{AWS.Util.encode_uri(analysis_id)}/permissions"

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
  Updates a dashboard in an Amazon Web Services account.

  Updating a Dashboard creates a new dashboard version but does not immediately
  publish the new version. You can update the published version of a dashboard by
  using the `
  [UpdateDashboardPublishedVersion](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdateDashboardPublishedVersion.html)
  ` API operation.
  """
  def update_dashboard(%Client{} = client, aws_account_id, dashboard_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}"

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
  Updates read and write permissions on a dashboard.
  """
  def update_dashboard_permissions(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/permissions"

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
  Updates the published version of a dashboard.
  """
  def update_dashboard_published_version(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        version_number,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/versions/#{AWS.Util.encode_uri(version_number)}"

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
  Updates a dataset.

  This operation doesn't support datasets that include uploaded files as a source.
  """
  def update_data_set(%Client{} = client, aws_account_id, data_set_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}"

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
  Updates the permissions on a dataset.

  The permissions resource is
  `arn:aws:quicksight:region:aws-account-id:dataset/data-set-id`.
  """
  def update_data_set_permissions(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/permissions"

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
  Updates a data source.
  """
  def update_data_source(%Client{} = client, aws_account_id, data_source_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sources/#{AWS.Util.encode_uri(data_source_id)}"

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
  Updates the permissions to a data source.
  """
  def update_data_source_permissions(
        %Client{} = client,
        aws_account_id,
        data_source_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sources/#{AWS.Util.encode_uri(data_source_id)}/permissions"

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
  Updates the name of a folder.
  """
  def update_folder(%Client{} = client, aws_account_id, folder_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}"

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
  Updates permissions of a folder.
  """
  def update_folder_permissions(
        %Client{} = client,
        aws_account_id,
        folder_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}/permissions"

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
  Changes a group description.
  """
  def update_group(
        %Client{} = client,
        aws_account_id,
        group_name,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups/#{AWS.Util.encode_uri(group_name)}"

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
  Updates an existing IAM policy assignment.

  This operation updates only the optional parameter or parameters that are
  specified in the request. This overwrites all of the users included in
  `Identities`.
  """
  def update_iam_policy_assignment(
        %Client{} = client,
        assignment_name,
        aws_account_id,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/iam-policy-assignments/#{AWS.Util.encode_uri(assignment_name)}"

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
  Updates the content and status of IP rules.

  To use this operation, you need to provide the entire map of rules. You can use
  the `DescribeIpRestriction` operation to get the current rule map.
  """
  def update_ip_restriction(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/ip-restriction"
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
  Updates a template from an existing Amazon QuickSight analysis or another
  template.
  """
  def update_template(%Client{} = client, aws_account_id, template_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}"

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
  Updates the template alias of a template.
  """
  def update_template_alias(
        %Client{} = client,
        alias_name,
        aws_account_id,
        template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}/aliases/#{AWS.Util.encode_uri(alias_name)}"

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
  Updates the resource permissions for a template.
  """
  def update_template_permissions(
        %Client{} = client,
        aws_account_id,
        template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}/permissions"

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
  Updates a theme.
  """
  def update_theme(%Client{} = client, aws_account_id, theme_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}"

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
  Updates an alias of a theme.
  """
  def update_theme_alias(
        %Client{} = client,
        alias_name,
        aws_account_id,
        theme_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}/aliases/#{AWS.Util.encode_uri(alias_name)}"

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
  Updates the resource permissions for a theme.

  Permissions apply to the action to grant or revoke permissions on, for example
  `"quicksight:DescribeTheme"`.

  Theme permissions apply in groupings. Valid groupings include the following for
  the three levels of permissions, which are user, owner, or no permissions:

    * User

      * `"quicksight:DescribeTheme"`

      * `"quicksight:DescribeThemeAlias"`

      * `"quicksight:ListThemeAliases"`

      * `"quicksight:ListThemeVersions"`

    * Owner

      * `"quicksight:DescribeTheme"`

      * `"quicksight:DescribeThemeAlias"`

      * `"quicksight:ListThemeAliases"`

      * `"quicksight:ListThemeVersions"`

      * `"quicksight:DeleteTheme"`

      * `"quicksight:UpdateTheme"`

      * `"quicksight:CreateThemeAlias"`

      * `"quicksight:DeleteThemeAlias"`

      * `"quicksight:UpdateThemeAlias"`

      * `"quicksight:UpdateThemePermissions"`

      * `"quicksight:DescribeThemePermissions"`

    * To specify no permissions, omit the permissions list.
  """
  def update_theme_permissions(%Client{} = client, aws_account_id, theme_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}/permissions"

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
  Updates an Amazon QuickSight user.
  """
  def update_user(%Client{} = client, aws_account_id, namespace, user_name, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users/#{AWS.Util.encode_uri(user_name)}"

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
end
