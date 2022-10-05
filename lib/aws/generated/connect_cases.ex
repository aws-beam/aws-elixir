# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ConnectCases do
  @moduledoc """
  Welcome to the Amazon Connect Cases API Reference.

  This guide provides information about the Amazon Connect Cases API, which you
  can use to create, update, get, and list Cases domains, fields, field options,
  layouts, templates, cases, related items, and tags.

  ` For more information about Amazon Connect Cases, see [Amazon Connect Cases](https://docs.aws.amazon.com/connect/latest/adminguide/cases.html) in the
  *Amazon Connect Administrator Guide*.

  `
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2022-10-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cases",
      global?: false,
      protocol: "rest-json",
      service_id: "ConnectCases",
      signature_version: "v4",
      signing_name: "cases",
      target_prefix: nil
    }
  end

  @doc """
  Returns the description for the list of fields in the request parameters.
  """
  def batch_get_field(%Client{} = client, domain_id, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/fields-batch"
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
  Creates and updates a set of field options for a single select field in a Cases
  domain.
  """
  def batch_put_field_options(%Client{} = client, domain_id, field_id, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/fields/#{AWS.Util.encode_uri(field_id)}/options"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a case in the specified Cases domain.

  Case system and custom fields are taken as an array id/value pairs with a
  declared data types.

  `customer_id` is a required field when creating a case.
  """
  def create_case(%Client{} = client, domain_id, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/cases"
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
  Creates a domain, which is a container for all case data, such as cases, fields,
  templates and layouts.

  Each Amazon Connect instance can be associated with only one Cases domain.

  This will not associate your connect instance to Cases domain. Instead, use the
  Amazon Connect
  [CreateIntegrationAssociation](https://docs.aws.amazon.com/connect/latest/APIReference/API_CreateIntegrationAssociation.html)
  API.
  """
  def create_domain(%Client{} = client, input, options \\ []) do
    url_path = "/domains"
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
  Creates a field in the Cases domain.

  This field is used to define the case object model (that is, defines what data
  can be captured on cases) in a Cases domain.
  """
  def create_field(%Client{} = client, domain_id, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/fields"
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
  Creates a layout in the Cases domain.

  Layouts define the following configuration in the top section and More Info tab
  of the Cases user interface:

    * Fields to display to the users

    * Field ordering

  Title and Status fields cannot be part of layouts since they are not
  configurable.
  """
  def create_layout(%Client{} = client, domain_id, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/layouts"
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
  Creates a related item (comments, tasks, and contacts) and associates it with a
  case.

  A Related Item is a resource that is associated with a case. It may or may not
  have an external identifier linking it to an external resource (for example, a
  `contactArn`). All Related Items have their own internal identifier, the
  `relatedItemArn`. Examples of related items include `comments` and `contacts`.
  """
  def create_related_item(%Client{} = client, case_id, domain_id, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/cases/#{AWS.Util.encode_uri(case_id)}/related-items/"

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
  Creates a template in the Cases domain.

  This template is used to define the case object model (that is, define what data
  can be captured on cases) in a Cases domain. A template must have a unique name
  within a domain, and it must reference existing field IDs and layout IDs.
  Additionally, multiple fields with same IDs are not allowed within the same
  Template.
  """
  def create_template(%Client{} = client, domain_id, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/templates"
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
  Returns information about a specific case if it exists.
  """
  def get_case(%Client{} = client, case_id, domain_id, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/cases/#{AWS.Util.encode_uri(case_id)}"
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
  Returns the case event publishing configuration.
  """
  def get_case_event_configuration(%Client{} = client, domain_id, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/case-event-configuration"
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
  Returns information about a specific domain if it exists.
  """
  def get_domain(%Client{} = client, domain_id, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}"
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
  Returns the details for the requested layout.
  """
  def get_layout(%Client{} = client, domain_id, layout_id, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/layouts/#{AWS.Util.encode_uri(layout_id)}"

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
  Returns the details for the requested template.
  """
  def get_template(%Client{} = client, domain_id, template_id, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/templates/#{AWS.Util.encode_uri(template_id)}"

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
  Lists cases for a given contact.
  """
  def list_cases_for_contact(%Client{} = client, domain_id, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/list-cases-for-contact"
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
  Lists all cases domains in the Amazon Web Services account.

  Each list item is a condensed summary object of the domain.
  """
  def list_domains(%Client{} = client, input, options \\ []) do
    url_path = "/domains-list"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
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
  Lists all of the field options for a field identifier in the domain.
  """
  def list_field_options(%Client{} = client, domain_id, field_id, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/fields/#{AWS.Util.encode_uri(field_id)}/options-list"

    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"},
        {"values", "values"}
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
  Lists all fields in a Cases domain.
  """
  def list_fields(%Client{} = client, domain_id, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/fields-list"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
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
  Lists all layouts in the given cases domain.

  Each list item is a condensed summary object of the layout.
  """
  def list_layouts(%Client{} = client, domain_id, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/layouts-list"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
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
  Lists tags for a resource.
  """
  def list_tags_for_resource(%Client{} = client, arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of the templates in a Cases domain.

  Each list item is a condensed summary object of the template.
  """
  def list_templates(%Client{} = client, domain_id, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/templates-list"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
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
  API for adding case event publishing configuration
  """
  def put_case_event_configuration(%Client{} = client, domain_id, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/case-event-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Searches for cases within their associated Cases domain.

  Search results are returned as a paginated list of abridged case documents.
  """
  def search_cases(%Client{} = client, domain_id, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/cases-search"
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
  Searches for related items that are associated with a case.

  If no filters are provided, this returns all related items associated with a
  case.
  """
  def search_related_items(%Client{} = client, case_id, domain_id, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/cases/#{AWS.Util.encode_uri(case_id)}/related-items-search"

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
  Adds tags to a resource.
  """
  def tag_resource(%Client{} = client, arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"
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
  Untags a resource.
  """
  def untag_resource(%Client{} = client, arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"
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
  Updates the values of fields on a case.

  Fields to be updated are received as an array of id/value pairs identical to the
  `CreateCase` input .

  If the action is successful, the service sends back an HTTP 200 response with an
  empty HTTP body.
  """
  def update_case(%Client{} = client, case_id, domain_id, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/cases/#{AWS.Util.encode_uri(case_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the properties of an existing field.
  """
  def update_field(%Client{} = client, domain_id, field_id, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/fields/#{AWS.Util.encode_uri(field_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the attributes of an existing layout.

  If the action is successful, the service sends back an HTTP 200 response with an
  empty HTTP body.

  A `ValidationException` is returned when you add non-existent `fieldIds` to a
  layout.

  Title and Status fields cannot be part of layouts because they are not
  configurable.
  """
  def update_layout(%Client{} = client, domain_id, layout_id, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/layouts/#{AWS.Util.encode_uri(layout_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the attributes of an existing template.

  The template attributes that can be modified include `name`, `description`,
  `layouts`, and `requiredFields`. At least one of these attributes must not be
  null. If a null value is provided for a given attribute, that attribute is
  ignored and its current value is preserved.
  """
  def update_template(%Client{} = client, domain_id, template_id, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/templates/#{AWS.Util.encode_uri(template_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
