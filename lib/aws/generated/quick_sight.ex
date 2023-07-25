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
    %{
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
      nil
    )
  end

  @doc """
  Creates Amazon QuickSight customizations for the current Amazon Web Services
  Region.

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
      nil
    )
  end

  @doc """
  Creates an Amazon QuickSight account, or subscribes to Amazon QuickSight Q.

  The Amazon Web Services Region for the account is derived from what is
  configured in the CLI or SDK. This operation isn't supported in the US East
  (Ohio) Region, South America (Sao Paulo) Region, or Asia Pacific (Singapore)
  Region.

  Before you use this operation, make sure that you can connect to an existing
  Amazon Web Services account. If you don't have an Amazon Web Services account,
  see [Sign up for Amazon Web Services](https://docs.aws.amazon.com/quicksight/latest/user/setting-up-aws-sign-up.html)
  in the *Amazon QuickSight User Guide*. The person who signs up for Amazon
  QuickSight needs to have the correct Identity and Access Management (IAM)
  permissions. For more information, see [IAM Policy Examples for Amazon QuickSight](https://docs.aws.amazon.com/quicksight/latest/user/iam-policy-examples.html)
  in the *Amazon QuickSight User Guide*.

  If your IAM policy includes both the `Subscribe` and `CreateAccountSubscription`
  actions, make sure that both actions are set to `Allow`. If either action is set
  to `Deny`, the `Deny` action prevails and your API call fails.

  You can't pass an existing IAM role to access other Amazon Web Services services
  using this API operation. To pass your existing IAM role to Amazon QuickSight,
  see [Passing IAM roles to Amazon QuickSight](https://docs.aws.amazon.com/quicksight/latest/user/security_iam_service-with-iam.html#security-create-iam-role)
  in the *Amazon QuickSight User Guide*.

  You can't set default resource access on the new account from the Amazon
  QuickSight API. Instead, add default resource access from the Amazon QuickSight
  console. For more information about setting default resource access to Amazon
  Web Services services, see [Setting default resource access to Amazon Web Services
  services](https://docs.aws.amazon.com/quicksight/latest/user/scoping-policies-defaults.html)
  in the *Amazon QuickSight User Guide*.
  """
  def create_account_subscription(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/account/#{AWS.Util.encode_uri(aws_account_id)}"
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
      nil
    )
  end

  @doc """
  Creates an analysis in Amazon QuickSight.

  Analyses can be created either from a template or from an `AnalysisDefinition`.
  """
  def create_analysis(%Client{} = client, analysis_id, aws_account_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses/#{AWS.Util.encode_uri(analysis_id)}"

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
      nil
    )
  end

  @doc """
  Creates a dashboard from either a template or directly with a
  `DashboardDefinition`.

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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Use the `CreateGroup` operation to create a group in Amazon QuickSight.

  You can create up to 10,000 groups in a namespace. If you want to create more
  than 10,000 groups in a namespace, contact AWS Support.

  The permissions resource is
  `arn:aws:quicksight:<your-region>:*<relevant-aws-account-id>*:group/default/*<group-name>*
  `.

  The response is a group object.
  """
  def create_group(%Client{} = client, aws_account_id, namespace, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups"

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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
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
      nil
    )
  end

  @doc """
  Creates a refresh schedule for a dataset.

  You can create up to 5 different schedules for a single dataset.
  """
  def create_refresh_schedule(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/refresh-schedules"

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
      nil
    )
  end

  @doc """
  Creates a template either from a `TemplateDefinition` or from an existing Amazon
  QuickSight analysis or template.

  You can use the resulting template to create additional dashboards, templates,
  or analyses.

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
      nil
    )
  end

  @doc """
  Creates a new Q topic.
  """
  def create_topic(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics"
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
      nil
    )
  end

  @doc """
  Creates a topic refresh schedule.
  """
  def create_topic_refresh_schedule(
        %Client{} = client,
        aws_account_id,
        topic_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/schedules"

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
      nil
    )
  end

  @doc """
  Creates a new VPC connection.
  """
  def create_vpc_connection(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/vpc-connections"
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
      nil
    )
  end

  @doc """
  Use the `DeleteAccountSubscription` operation to delete an Amazon QuickSight
  account.

  This operation will result in an error message if you have configured your
  account termination protection settings to `True`. To change this setting and
  delete your account, call the `UpdateAccountSettings` API and set the value of
  the `TerminationProtectionEnabled` parameter to `False`, then make another call
  to the `DeleteAccountSubscription` API.
  """
  def delete_account_subscription(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/account/#{AWS.Util.encode_uri(aws_account_id)}"
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
      nil
    )
  end

  @doc """
  Deletes the dataset refresh properties of the dataset.
  """
  def delete_data_set_refresh_properties(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/refresh-properties"

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
      nil
    )
  end

  @doc """
  Deletes a refresh schedule from a dataset.
  """
  def delete_refresh_schedule(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        schedule_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/refresh-schedules/#{AWS.Util.encode_uri(schedule_id)}"

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
      nil
    )
  end

  @doc """
  Deletes a topic.
  """
  def delete_topic(%Client{} = client, aws_account_id, topic_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}"

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
      nil
    )
  end

  @doc """
  Deletes a topic refresh schedule.
  """
  def delete_topic_refresh_schedule(
        %Client{} = client,
        aws_account_id,
        dataset_id,
        topic_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/schedules/#{AWS.Util.encode_uri(dataset_id)}"

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
      nil
    )
  end

  @doc """
  Deletes the Amazon QuickSight user that is associated with the identity of the
  IAM user or role that's making the call.

  The IAM user isn't deleted as a result of this call.
  """
  def delete_user(%Client{} = client, aws_account_id, namespace, user_name, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users/#{AWS.Util.encode_uri(user_name)}"

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
      nil
    )
  end

  @doc """
  Deletes a VPC connection.
  """
  def delete_vpc_connection(
        %Client{} = client,
        aws_account_id,
        vpc_connection_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/vpc-connections/#{AWS.Util.encode_uri(vpc_connection_id)}"

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes the settings that were used when your Amazon QuickSight subscription
  was first created in this Amazon Web Services account.
  """
  def describe_account_settings(%Client{} = client, aws_account_id, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Use the DescribeAccountSubscription operation to receive a description of an
  Amazon QuickSight account's subscription.

  A successful API call returns an `AccountInfo` object that includes an account's
  name, subscription status, authentication type, edition, and notification email
  address.
  """
  def describe_account_subscription(%Client{} = client, aws_account_id, options \\ []) do
    url_path = "/account/#{AWS.Util.encode_uri(aws_account_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Provides a summary of the metadata for an analysis.
  """
  def describe_analysis(%Client{} = client, analysis_id, aws_account_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses/#{AWS.Util.encode_uri(analysis_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Provides a detailed description of the definition of an analysis.

  If you do not need to know details about the content of an Analysis, for
  instance if you are trying to check the status of a recently created or updated
  Analysis, use the [ `DescribeAnalysis`
  ](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeAnalysis.html)
  instead.
  """
  def describe_analysis_definition(%Client{} = client, analysis_id, aws_account_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses/#{AWS.Util.encode_uri(analysis_id)}/definition"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes an existing export job.

  Poll job descriptions after a job starts to know the status of the job. When a
  job succeeds, a URL is provided to download the exported assets' data from.
  Download URLs are valid for five minutes after they are generated. You can call
  the `DescribeAssetBundleExportJob` API for a new download URL as needed.

  Job descriptions are available for 14 days after the job starts.
  """
  def describe_asset_bundle_export_job(
        %Client{} = client,
        asset_bundle_export_job_id,
        aws_account_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/asset-bundle-export-jobs/#{AWS.Util.encode_uri(asset_bundle_export_job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes an existing import job.

  Poll job descriptions after starting a job to know when it has succeeded or
  failed. Job descriptions are available for 14 days after job starts.
  """
  def describe_asset_bundle_import_job(
        %Client{} = client,
        asset_bundle_import_job_id,
        aws_account_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/asset-bundle-import-jobs/#{AWS.Util.encode_uri(asset_bundle_import_job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Provides a detailed description of the definition of a dashboard.

  If you do not need to know details about the content of a dashboard, for
  instance if you are trying to check the status of a recently created or updated
  dashboard, use the [ `DescribeDashboard`
  ](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeDashboard.html)
  instead.
  """
  def describe_dashboard_definition(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        alias_name \\ nil,
        version_number \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/definition"

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes an existing snapshot job.

  Poll job descriptions after a job starts to know the status of the job. For
  information on available status codes, see `JobStatus`.
  """
  def describe_dashboard_snapshot_job(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        snapshot_job_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/snapshot-jobs/#{AWS.Util.encode_uri(snapshot_job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes the result of an existing snapshot job that has finished running.

  A finished snapshot job will return a `COMPLETED` or `FAILED` status when you
  poll the job with a `DescribeDashboardSnapshotJob` API call.

  If the job has not finished running, this operation returns a message that says
  `Dashboard Snapshot Job with id <SnapshotjobId> has not reached a terminal
  state.`.
  """
  def describe_dashboard_snapshot_job_result(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        snapshot_job_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/snapshot-jobs/#{AWS.Util.encode_uri(snapshot_job_id)}/result"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes the refresh properties of a dataset.
  """
  def describe_data_set_refresh_properties(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/refresh-properties"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes a data source.
  """
  def describe_data_source(%Client{} = client, aws_account_id, data_source_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sources/#{AWS.Util.encode_uri(data_source_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes a folder.
  """
  def describe_folder(%Client{} = client, aws_account_id, folder_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes permissions for a folder.
  """
  def describe_folder_permissions(%Client{} = client, aws_account_id, folder_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/folders/#{AWS.Util.encode_uri(folder_id)}/permissions"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns an Amazon QuickSight group's description and Amazon Resource Name (ARN).
  """
  def describe_group(%Client{} = client, aws_account_id, group_name, namespace, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups/#{AWS.Util.encode_uri(group_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Use the `DescribeGroupMembership` operation to determine if a user is a member
  of the specified group.

  If the user exists and is a member of the specified group, an associated
  `GroupMember` object is returned.
  """
  def describe_group_membership(
        %Client{} = client,
        aws_account_id,
        group_name,
        member_name,
        namespace,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups/#{AWS.Util.encode_uri(group_name)}/members/#{AWS.Util.encode_uri(member_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Provides a summary and status of IP rules.
  """
  def describe_ip_restriction(%Client{} = client, aws_account_id, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/ip-restriction"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes the current namespace.
  """
  def describe_namespace(%Client{} = client, aws_account_id, namespace, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Provides a summary of a refresh schedule.
  """
  def describe_refresh_schedule(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        schedule_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/refresh-schedules/#{AWS.Util.encode_uri(schedule_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Provides a detailed description of the definition of a template.

  If you do not need to know details about the content of a template, for instance
  if you are trying to check the status of a recently created or updated template,
  use the [ `DescribeTemplate`
  ](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeTemplate.html)
  instead.
  """
  def describe_template_definition(
        %Client{} = client,
        aws_account_id,
        template_id,
        alias_name \\ nil,
        version_number \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/templates/#{AWS.Util.encode_uri(template_id)}/definition"

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes the read and write permissions for a theme.
  """
  def describe_theme_permissions(%Client{} = client, aws_account_id, theme_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}/permissions"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes a topic.
  """
  def describe_topic(%Client{} = client, aws_account_id, topic_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes the permissions of a topic.
  """
  def describe_topic_permissions(%Client{} = client, aws_account_id, topic_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/permissions"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes the status of a topic refresh.
  """
  def describe_topic_refresh(
        %Client{} = client,
        aws_account_id,
        refresh_id,
        topic_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/refresh/#{AWS.Util.encode_uri(refresh_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Deletes a topic refresh schedule.
  """
  def describe_topic_refresh_schedule(
        %Client{} = client,
        aws_account_id,
        dataset_id,
        topic_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/schedules/#{AWS.Util.encode_uri(dataset_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns information about a user, given the user name.
  """
  def describe_user(%Client{} = client, aws_account_id, namespace, user_name, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users/#{AWS.Util.encode_uri(user_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes a VPC connection.
  """
  def describe_vpc_connection(
        %Client{} = client,
        aws_account_id,
        vpc_connection_id,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/vpc-connections/#{AWS.Util.encode_uri(vpc_connection_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Generates an embed URL that you can use to embed an Amazon QuickSight dashboard
  or visual in your website, without having to register any reader users.

  Before you use this action, make sure that you have configured the dashboards
  and permissions.

  The following rules apply to the generated URL:

    * It contains a temporary bearer token. It is valid for 5 minutes
  after it is generated. Once redeemed within this period, it cannot be re-used
  again.

    * The URL validity period should not be confused with the actual
  session lifetime that can be customized using the `
  [SessionLifetimeInMinutes](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_GenerateEmbedUrlForAnonymousUser.html#QS-GenerateEmbedUrlForAnonymousUser-request-SessionLifetimeInMinutes) ` parameter. The resulting user session is valid for 15 minutes (minimum) to 10
  hours (maximum). The default session duration is 10 hours.

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

  The resulting user session is valid for 15 minutes (minimum) to 10 hours
  (maximum). The default session duration is 10 hours.

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
      nil
    )
  end

  @doc """
  Generates a temporary session URL and authorization code(bearer token) that you
  can use to embed an Amazon QuickSight read-only dashboard in your website or
  application.

  Before you use this command, make sure that you have configured the dashboards
  and permissions.

  Currently, you can use `GetDashboardEmbedURL` only from the server, not from the
  user's browser. The following rules apply to the generated URL:

    * They must be used together.

    * They can be used one time only.

    * They are valid for 5 minutes after you run this command.

    * You are charged only when the URL is used or there is interaction
  with Amazon QuickSight.

    * The resulting user session is valid for 15 minutes (default) up to
  10 hours (maximum). You can use the optional `SessionLifetimeInMinutes`
  parameter to customize session duration.

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists all asset bundle export jobs that have been taken place in the last 14
  days.

  Jobs created more than 14 days ago are deleted forever and are not returned. If
  you are using the same job ID for multiple jobs, `ListAssetBundleExportJobs`
  only returns the most recent job that uses the repeated job ID.
  """
  def list_asset_bundle_export_jobs(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/asset-bundle-export-jobs"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists all asset bundle import jobs that have taken place in the last 14 days.

  Jobs created more than 14 days ago are deleted forever and are not returned. If
  you are using the same job ID for multiple jobs, `ListAssetBundleImportJobs`
  only returns the most recent job that uses the repeated job ID.
  """
  def list_asset_bundle_import_jobs(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/asset-bundle-import-jobs"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists the IAM policy assignments in the current Amazon QuickSight account.
  """
  def list_iam_policy_assignments(
        %Client{} = client,
        aws_account_id,
        namespace,
        assignment_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/v2/iam-policy-assignments"

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

    query_params =
      if !is_nil(assignment_status) do
        [{"assignment-status", assignment_status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists all of the IAM policy assignments, including the Amazon Resource Names
  (ARNs), for the IAM policies assigned to the specified user and group, or groups
  that the user belongs to.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists the namespaces for the specified Amazon Web Services account.

  This operation doesn't list deleted namespaces.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists the refresh schedules of a dataset.

  Each dataset can have up to 5 schedules.
  """
  def list_refresh_schedules(%Client{} = client, aws_account_id, data_set_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/refresh-schedules"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists the tags assigned to a resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(resource_arn)}/tags"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists all of the refresh schedules for a topic.
  """
  def list_topic_refresh_schedules(%Client{} = client, aws_account_id, topic_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/schedules"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists all of the topics within an account.
  """
  def list_topics(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists all of the VPC connections in the current set Amazon Web Services Region
  of an Amazon Web Services account.
  """
  def list_vpc_connections(
        %Client{} = client,
        aws_account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/vpc-connections"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Creates or updates the dataset refresh properties for the dataset.
  """
  def put_data_set_refresh_properties(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/refresh-properties"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Creates an Amazon QuickSight user whose identity is associated with the Identity
  and Access Management (IAM) identity or role specified in the request.

  When you register a new user from the Amazon QuickSight API, Amazon QuickSight
  generates a registration URL. The user accesses this registration URL to create
  their account. Amazon QuickSight doesn't send a registration email to users who
  are registered from the Amazon QuickSight API. If you want new users to receive
  a registration email, then add those users in the Amazon QuickSight console. For
  more information on registering a new user in the Amazon QuickSight console, see
  [ Inviting users to access Amazon QuickSight](https://docs.aws.amazon.com/quicksight/latest/user/managing-users.html#inviting-users).
  """
  def register_user(%Client{} = client, aws_account_id, namespace, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users"

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
      nil
    )
  end

  @doc """
  Use the `SearchDataSets` operation to search for datasets that belong to an
  account.
  """
  def search_data_sets(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/search/data-sets"
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
      nil
    )
  end

  @doc """
  Use the `SearchDataSources` operation to search for data sources that belong to
  an account.
  """
  def search_data_sources(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/search/data-sources"
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
      nil
    )
  end

  @doc """
  Use the `SearchGroups` operation to search groups in a specified Amazon
  QuickSight namespace using the supplied filters.
  """
  def search_groups(%Client{} = client, aws_account_id, namespace, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/groups-search"

    headers = []

    {query_params, input} =
      [
        {"MaxResults", "max-results"},
        {"NextToken", "next-token"}
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
      nil
    )
  end

  @doc """
  Starts an Asset Bundle export job.

  An Asset Bundle export job exports specified Amazon QuickSight assets. You can
  also choose to export any asset dependencies in the same job. Export jobs run
  asynchronously and can be polled with a `DescribeAssetBundleExportJob` API call.
  When a job is successfully completed, a download URL that contains the exported
  assets is returned. The URL is valid for 5 minutes and can be refreshed with a
  `DescribeAssetBundleExportJob` API call. Each Amazon QuickSight account can run
  up to 5 export jobs concurrently.

  The API caller must have the necessary permissions in their IAM role to access
  each resource before the resources can be exported.
  """
  def start_asset_bundle_export_job(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/asset-bundle-export-jobs/export"
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
      nil
    )
  end

  @doc """
  Starts an Asset Bundle import job.

  An Asset Bundle import job imports specified Amazon QuickSight assets into an
  Amazon QuickSight account. You can also choose to import a naming prefix and
  specified configuration overrides. The assets that are contained in the bundle
  file that you provide are used to create or update a new or existing asset in
  your Amazon QuickSight account. Each Amazon QuickSight account can run up to 5
  import jobs concurrently.

  The API caller must have the necessary `"create"`, `"describe"`, and `"update"`
  permissions in their IAM role to access each resource type that is contained in
  the bundle file before the resources can be imported.
  """
  def start_asset_bundle_import_job(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/asset-bundle-import-jobs/import"
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
      nil
    )
  end

  @doc """
  Starts an asynchronous job that generates a dashboard snapshot.

  You can request up to one paginated PDF and up to five CSVs per API call.

  Poll job descriptions with a `DescribeDashboardSnapshotJob` API call. Once the
  job succeeds, use the `DescribeDashboardSnapshotJobResult` API to obtain the
  download URIs that the job generates.
  """
  def start_dashboard_snapshot_job(
        %Client{} = client,
        aws_account_id,
        dashboard_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/dashboards/#{AWS.Util.encode_uri(dashboard_id)}/snapshot-jobs"

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
  tagging on data set, data source, dashboard, template, and topic.

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
      nil
    )
  end

  @doc """
  Updates Amazon QuickSight customizations for the current Amazon Web Services
  Region.

  Currently, the only customization that you can use is a theme.

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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates the Amazon QuickSight settings in your Amazon Web Services account.
  """
  def update_account_settings(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates an analysis in Amazon QuickSight
  """
  def update_analysis(%Client{} = client, analysis_id, aws_account_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/analyses/#{AWS.Util.encode_uri(analysis_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates a dataset.

  This operation doesn't support datasets that include uploaded files as a source.
  Partial updates are not supported by this operation.
  """
  def update_data_set(%Client{} = client, aws_account_id, data_set_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates the content and status of IP rules.

  To use this operation, you must provide the entire map of rules. You can use the
  `DescribeIpRestriction` operation to get the current rule map.
  """
  def update_ip_restriction(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/ip-restriction"
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
      nil
    )
  end

  @doc """
  Use the `UpdatePublicSharingSettings` operation to turn on or turn off the
  public sharing settings of an Amazon QuickSight dashboard.

  To use this operation, turn on session capacity pricing for your Amazon
  QuickSight account.

  Before you can turn on public sharing on your account, make sure to give public
  sharing permissions to an administrative user in the Identity and Access
  Management (IAM) console. For more information on using IAM with Amazon
  QuickSight, see [Using Amazon QuickSight with IAM](https://docs.aws.amazon.com/quicksight/latest/user/security_iam_service-with-iam.html)
  in the *Amazon QuickSight User Guide*.
  """
  def update_public_sharing_settings(%Client{} = client, aws_account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/public-sharing-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates a refresh schedule for a dataset.
  """
  def update_refresh_schedule(
        %Client{} = client,
        aws_account_id,
        data_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/data-sets/#{AWS.Util.encode_uri(data_set_id)}/refresh-schedules"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates a theme.
  """
  def update_theme(%Client{} = client, aws_account_id, theme_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/themes/#{AWS.Util.encode_uri(theme_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates a topic.
  """
  def update_topic(%Client{} = client, aws_account_id, topic_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates the permissions of a topic.
  """
  def update_topic_permissions(%Client{} = client, aws_account_id, topic_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/permissions"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates a topic refresh schedule.
  """
  def update_topic_refresh_schedule(
        %Client{} = client,
        aws_account_id,
        dataset_id,
        topic_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/topics/#{AWS.Util.encode_uri(topic_id)}/schedules/#{AWS.Util.encode_uri(dataset_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates an Amazon QuickSight user.
  """
  def update_user(%Client{} = client, aws_account_id, namespace, user_name, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/users/#{AWS.Util.encode_uri(user_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates a VPC connection.
  """
  def update_vpc_connection(
        %Client{} = client,
        aws_account_id,
        vpc_connection_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(aws_account_id)}/vpc-connections/#{AWS.Util.encode_uri(vpc_connection_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end
end
