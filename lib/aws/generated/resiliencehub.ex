# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Resiliencehub do
  @moduledoc """
  Resilience Hub helps you proactively prepare and protect your Amazon Web
  Services applications from disruptions.

  It offers continual resiliency assessment and validation that integrates into
  your software development lifecycle. This enables you to uncover resiliency
  weaknesses, ensure recovery time objective (RTO) and recovery point objective
  (RPO) targets for your applications are met, and resolve issues before they are
  released into production.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2020-04-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "resiliencehub",
      global?: false,
      protocol: "rest-json",
      service_id: "resiliencehub",
      signature_version: "v4",
      signing_name: "resiliencehub",
      target_prefix: nil
    }
  end

  @doc """
  Adds the resource mapping for the draft application version.

  You can also update an existing resource mapping to a new physical resource.
  """
  def add_draft_app_version_resource_mappings(%Client{} = client, input, options \\ []) do
    url_path = "/add-draft-app-version-resource-mappings"
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
  Creates an Resilience Hub application.

  An Resilience Hub application is a collection of Amazon Web Services resources
  structured to prevent and recover Amazon Web Services application disruptions.
  To describe a Resilience Hub application, you provide an application name,
  resources from one or more–up to five–CloudFormation stacks, and an appropriate
  resiliency policy.

  After you create an Resilience Hub application, you publish it so that you can
  run a resiliency assessment on it. You can then use recommendations from the
  assessment to improve resiliency by running another assessment, comparing
  results, and then iterating the process until you achieve your goals for
  recovery time objective (RTO) and recovery point objective (RPO).
  """
  def create_app(%Client{} = client, input, options \\ []) do
    url_path = "/create-app"
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
  Creates a new Application Component in the Resilience Hub application.

  This API updates the Resilience Hub application draft version. To use this
  Application Component for running assessments, you must publish the Resilience
  Hub application using the `PublishAppVersion` API.
  """
  def create_app_version_app_component(%Client{} = client, input, options \\ []) do
    url_path = "/create-app-version-app-component"
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
  Adds a resource to the Resilience Hub application and assigns it to the
  specified Application Components.

  If you specify a new Application Component, Resilience Hub will automatically
  create the Application Component.

     This action has no effect outside Resilience Hub.

     This API updates the Resilience Hub application draft version. To
  use this resource for running resiliency assessments, you must publish the
  Resilience Hub application using the `PublishAppVersion` API.

     To update application version with new `physicalResourceID`, you
  must call `ResolveAppVersionResources` API.
  """
  def create_app_version_resource(%Client{} = client, input, options \\ []) do
    url_path = "/create-app-version-resource"
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
  Creates a new recommendation template for the Resilience Hub application.
  """
  def create_recommendation_template(%Client{} = client, input, options \\ []) do
    url_path = "/create-recommendation-template"
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
  Creates a resiliency policy for an application.
  """
  def create_resiliency_policy(%Client{} = client, input, options \\ []) do
    url_path = "/create-resiliency-policy"
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
  Deletes an Resilience Hub application.

  This is a destructive action that can't be undone.
  """
  def delete_app(%Client{} = client, input, options \\ []) do
    url_path = "/delete-app"
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
  Deletes an Resilience Hub application assessment.

  This is a destructive action that can't be undone.
  """
  def delete_app_assessment(%Client{} = client, input, options \\ []) do
    url_path = "/delete-app-assessment"
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
  Deletes the input source and all of its imported resources from the Resilience
  Hub application.
  """
  def delete_app_input_source(%Client{} = client, input, options \\ []) do
    url_path = "/delete-app-input-source"
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
  Deletes an Application Component from the Resilience Hub application.

     This API updates the Resilience Hub application draft version. To
  use this Application Component for running assessments, you must publish the
  Resilience Hub application using the `PublishAppVersion` API.

     You will not be able to delete an Application Component if it has
  resources associated with it.
  """
  def delete_app_version_app_component(%Client{} = client, input, options \\ []) do
    url_path = "/delete-app-version-app-component"
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
  Deletes a resource from the Resilience Hub application.

     You can only delete a manually added resource. To exclude
  non-manually added resources, use the `UpdateAppVersionResource` API.

     This action has no effect outside Resilience Hub.

     This API updates the Resilience Hub application draft version. To
  use this resource for running resiliency assessments, you must publish the
  Resilience Hub application using the `PublishAppVersion` API.
  """
  def delete_app_version_resource(%Client{} = client, input, options \\ []) do
    url_path = "/delete-app-version-resource"
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
  Deletes a recommendation template.

  This is a destructive action that can't be undone.
  """
  def delete_recommendation_template(%Client{} = client, input, options \\ []) do
    url_path = "/delete-recommendation-template"
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
  Deletes a resiliency policy.

  This is a destructive action that can't be undone.
  """
  def delete_resiliency_policy(%Client{} = client, input, options \\ []) do
    url_path = "/delete-resiliency-policy"
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
  Describes an Resilience Hub application.
  """
  def describe_app(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app"
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
  Describes an assessment for an Resilience Hub application.
  """
  def describe_app_assessment(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app-assessment"
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
  Describes the Resilience Hub application version.
  """
  def describe_app_version(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app-version"
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
  Describes an Application Component in the Resilience Hub application.
  """
  def describe_app_version_app_component(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app-version-app-component"
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
  Describes a resource of the Resilience Hub application.

  This API accepts only one of the following parameters to descibe the resource:

     `resourceName`

     `logicalResourceId`

     `physicalResourceId` (Along with `physicalResourceId`, you can also
  provide `awsAccountId`, and `awsRegion`)
  """
  def describe_app_version_resource(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app-version-resource"
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
  Returns the resolution status for the specified resolution identifier for an
  application version.

  If `resolutionId` is not specified, the current resolution status is returned.
  """
  def describe_app_version_resources_resolution_status(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app-version-resources-resolution-status"
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
  Describes details about an Resilience Hub application.
  """
  def describe_app_version_template(%Client{} = client, input, options \\ []) do
    url_path = "/describe-app-version-template"
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
  Describes the status of importing resources to an application version.

  If you get a 404 error with `ResourceImportStatusNotFoundAppMetadataException`,
  you must call `importResourcesToDraftAppVersion` after creating the application
  and before calling `describeDraftAppVersionResourcesImportStatus` to obtain the
  status.
  """
  def describe_draft_app_version_resources_import_status(%Client{} = client, input, options \\ []) do
    url_path = "/describe-draft-app-version-resources-import-status"
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
  Describes a specified resiliency policy for an Resilience Hub application.

  The returned policy object includes creation time, data location constraints,
  the Amazon Resource Name (ARN) for the policy, tags, tier, and more.
  """
  def describe_resiliency_policy(%Client{} = client, input, options \\ []) do
    url_path = "/describe-resiliency-policy"
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
  Imports resources to Resilience Hub application draft version from different
  input sources.

  For more information about the input sources supported by Resilience Hub, see
  [Discover the structure and describe your Resilience Hub application](https://docs.aws.amazon.com/resilience-hub/latest/userguide/discover-structure.html).
  """
  def import_resources_to_draft_app_version(%Client{} = client, input, options \\ []) do
    url_path = "/import-resources-to-draft-app-version"
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
  Lists the alarm recommendations for an Resilience Hub application.
  """
  def list_alarm_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/list-alarm-recommendations"
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
  Lists the assessments for an Resilience Hub application.

  You can use request parameters to refine the results for the response object.
  """
  def list_app_assessments(
        %Client{} = client,
        app_arn \\ nil,
        assessment_name \\ nil,
        assessment_status \\ nil,
        compliance_status \\ nil,
        invoker \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        reverse_order \\ nil,
        options \\ []
      ) do
    url_path = "/list-app-assessments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(reverse_order) do
        [{"reverseOrder", reverse_order} | query_params]
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
      if !is_nil(invoker) do
        [{"invoker", invoker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(compliance_status) do
        [{"complianceStatus", compliance_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(assessment_status) do
        [{"assessmentStatus", assessment_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(assessment_name) do
        [{"assessmentName", assessment_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(app_arn) do
        [{"appArn", app_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the compliances for an Resilience Hub Application Component.
  """
  def list_app_component_compliances(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-component-compliances"
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
  Lists the recommendations for an Resilience Hub Application Component.
  """
  def list_app_component_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-component-recommendations"
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
  Lists all the input sources of the Resilience Hub application.

  For more information about the input sources supported by Resilience Hub, see
  [Discover the structure and describe your Resilience Hub application](https://docs.aws.amazon.com/resilience-hub/latest/userguide/discover-structure.html).
  """
  def list_app_input_sources(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-input-sources"
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
  Lists all the Application Components in the Resilience Hub application.
  """
  def list_app_version_app_components(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-version-app-components"
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
  Lists how the resources in an application version are mapped/sourced from.

  Mappings can be physical resource identifiers, CloudFormation stacks,
  resource-groups, or an application registry app.
  """
  def list_app_version_resource_mappings(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-version-resource-mappings"
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
  Lists all the resources in an Resilience Hub application.
  """
  def list_app_version_resources(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-version-resources"
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
  Lists the different versions for the Resilience Hub applications.
  """
  def list_app_versions(%Client{} = client, input, options \\ []) do
    url_path = "/list-app-versions"
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
  Lists your Resilience Hub applications.

  You can filter applications using only one filter at a time or without using any
  filter. If you try to filter applications using multiple filters, you will get
  the following error:

  `An error occurred (ValidationException) when calling the ListApps operation:
  Only one filter is supported for this operation.`
  """
  def list_apps(
        %Client{} = client,
        app_arn \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/list-apps"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
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
      if !is_nil(app_arn) do
        [{"appArn", app_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the recommendation templates for the Resilience Hub applications.
  """
  def list_recommendation_templates(
        %Client{} = client,
        assessment_arn,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        recommendation_template_arn \\ nil,
        reverse_order \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/list-recommendation-templates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(reverse_order) do
        [{"reverseOrder", reverse_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(recommendation_template_arn) do
        [{"recommendationTemplateArn", recommendation_template_arn} | query_params]
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
      if !is_nil(name) do
        [{"name", name} | query_params]
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
      if !is_nil(assessment_arn) do
        [{"assessmentArn", assessment_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the resiliency policies for the Resilience Hub applications.
  """
  def list_resiliency_policies(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        policy_name \\ nil,
        options \\ []
      ) do
    url_path = "/list-resiliency-policies"
    headers = []
    query_params = []

    query_params =
      if !is_nil(policy_name) do
        [{"policyName", policy_name} | query_params]
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
  Lists the standard operating procedure (SOP) recommendations for the Resilience
  Hub applications.
  """
  def list_sop_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/list-sop-recommendations"
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
  Lists the suggested resiliency policies for the Resilience Hub applications.
  """
  def list_suggested_resiliency_policies(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/list-suggested-resiliency-policies"
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
  Lists the tags for your resources in your Resilience Hub applications.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the test recommendations for the Resilience Hub application.
  """
  def list_test_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/list-test-recommendations"
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
  Lists the resources that are not currently supported in Resilience Hub.

  An unsupported resource is a resource that exists in the object that was used to
  create an app, but is not supported by Resilience Hub.
  """
  def list_unsupported_app_version_resources(%Client{} = client, input, options \\ []) do
    url_path = "/list-unsupported-app-version-resources"
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
  Publishes a new version of a specific Resilience Hub application.
  """
  def publish_app_version(%Client{} = client, input, options \\ []) do
    url_path = "/publish-app-version"
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
  Adds or updates the app template for an Resilience Hub application draft
  version.
  """
  def put_draft_app_version_template(%Client{} = client, input, options \\ []) do
    url_path = "/put-draft-app-version-template"
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
  Removes resource mappings from a draft application version.
  """
  def remove_draft_app_version_resource_mappings(%Client{} = client, input, options \\ []) do
    url_path = "/remove-draft-app-version-resource-mappings"
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
  Resolves the resources for an application version.
  """
  def resolve_app_version_resources(%Client{} = client, input, options \\ []) do
    url_path = "/resolve-app-version-resources"
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
  Creates a new application assessment for an application.
  """
  def start_app_assessment(%Client{} = client, input, options \\ []) do
    url_path = "/start-app-assessment"
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
  Applies one or more tags to a resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes one or more tags from a resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
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
  Updates an application.
  """
  def update_app(%Client{} = client, input, options \\ []) do
    url_path = "/update-app"
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
  Updates the Resilience Hub application version.

  This API updates the Resilience Hub application draft version. To use this
  information for running resiliency assessments, you must publish the Resilience
  Hub application using the `PublishAppVersion` API.
  """
  def update_app_version(%Client{} = client, input, options \\ []) do
    url_path = "/update-app-version"
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
  Updates an existing Application Component in the Resilience Hub application.

  This API updates the Resilience Hub application draft version. To use this
  Application Component for running assessments, you must publish the Resilience
  Hub application using the `PublishAppVersion` API.
  """
  def update_app_version_app_component(%Client{} = client, input, options \\ []) do
    url_path = "/update-app-version-app-component"
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
  Updates the resource details in the Resilience Hub application.

     This action has no effect outside Resilience Hub.

     This API updates the Resilience Hub application draft version. To
  use this resource for running resiliency assessments, you must publish the
  Resilience Hub application using the `PublishAppVersion` API.

     To update application version with new `physicalResourceID`, you
  must call `ResolveAppVersionResources` API.
  """
  def update_app_version_resource(%Client{} = client, input, options \\ []) do
    url_path = "/update-app-version-resource"
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
  Updates a resiliency policy.
  """
  def update_resiliency_policy(%Client{} = client, input, options \\ []) do
    url_path = "/update-resiliency-policy"
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
