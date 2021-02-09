# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CustomerProfiles do
  @moduledoc """
  Amazon Connect Customer Profiles

  Welcome to the Amazon Connect Customer Profiles API Reference.

  This guide provides information about the Amazon Connect Customer Profiles API,
  including supported operations, data types, parameters, and schemas.

  Amazon Connect Customer Profiles is a unified customer profile for your contact
  center that has pre-built connectors powered by AppFlow that make it easy to
  combine customer information from third party applications, such as Salesforce
  (CRM), ServiceNow (ITSM), and your enterprise resource planning (ERP), with
  contact history from your Amazon Connect contact center.

  If you're new to Amazon Connect, you might find it helpful to also review the
  [Amazon Connect Administrator Guide](https://docs.aws.amazon.com/connect/latest/adminguide/what-is-amazon-connect.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-08-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "profile",
      global?: false,
      protocol: "rest-json",
      service_id: "Customer Profiles",
      signature_version: "v4",
      signing_name: "profile",
      target_prefix: nil
    }
  end

  @doc """
  Associates a new key value with a specific profile, such as a Contact Trace
  Record (CTR) ContactId.

  A profile object can have a single unique key and any number of additional keys
  that can be used to identify the profile that it belongs to.
  """
  def add_profile_key(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{URI.encode(domain_name)}/profiles/keys"
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
  Creates a domain, which is a container for all customer data, such as customer
  profile attributes, object types, profile keys, and encryption keys.

  You can create multiple domains, and each domain can have multiple third-party
  integrations.

  Each Amazon Connect instance can be associated with only one domain. Multiple
  Amazon Connect instances can be associated with one domain.
  """
  def create_domain(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{URI.encode(domain_name)}"
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
  Creates a standard profile.

  A standard profile represents the following attributes for a customer profile in
  a domain.
  """
  def create_profile(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{URI.encode(domain_name)}/profiles"
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
  Deletes a specific domain and all of its customer data, such as customer profile
  attributes and their related objects.
  """
  def delete_domain(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{URI.encode(domain_name)}"
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
  Removes an integration from a specific domain.
  """
  def delete_integration(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{URI.encode(domain_name)}/integrations/delete"
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
  Deletes the standard customer profile and all data pertaining to the profile.
  """
  def delete_profile(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{URI.encode(domain_name)}/profiles/delete"
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
  Removes a searchable key from a customer profile.
  """
  def delete_profile_key(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{URI.encode(domain_name)}/profiles/keys/delete"
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
  Removes an object associated with a profile of a given ProfileObjectType.
  """
  def delete_profile_object(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{URI.encode(domain_name)}/profiles/objects/delete"
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
  Removes a ProfileObjectType from a specific domain as well as removes all the
  ProfileObjects of that type.

  It also disables integrations from this specific ProfileObjectType. In addition,
  it scrubs all of the fields of the standard profile that were populated from
  this ProfileObjectType.
  """
  def delete_profile_object_type(
        %Client{} = client,
        domain_name,
        object_type_name,
        input,
        options \\ []
      ) do
    url_path = "/domains/#{URI.encode(domain_name)}/object-types/#{URI.encode(object_type_name)}"
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
  Returns information about a specific domain.
  """
  def get_domain(%Client{} = client, domain_name, options \\ []) do
    url_path = "/domains/#{URI.encode(domain_name)}"
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
  Returns an integration for a domain.
  """
  def get_integration(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{URI.encode(domain_name)}/integrations"
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
  Returns the object types for a specific domain.
  """
  def get_profile_object_type(%Client{} = client, domain_name, object_type_name, options \\ []) do
    url_path = "/domains/#{URI.encode(domain_name)}/object-types/#{URI.encode(object_type_name)}"
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
  Returns the template information for a specific object type.

  A template is a predefined ProfileObjectType, such as “Salesforce-Account” or
  “Salesforce-Contact.” When a user sends a ProfileObject, using the
  PutProfileObject API, with an ObjectTypeName that matches one of the
  TemplateIds, it uses the mappings from the template.
  """
  def get_profile_object_type_template(%Client{} = client, template_id, options \\ []) do
    url_path = "/templates/#{URI.encode(template_id)}"
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
  Lists all of the integrations associated to a specific URI in the AWS account.
  """
  def list_account_integrations(%Client{} = client, input, options \\ []) do
    url_path = "/integrations"
    headers = []

    {query_params, input} =
      [
        {"MaxResults", "max-results"},
        {"NextToken", "next-token"}
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
  Returns a list of all the domains for an AWS account that have been created.
  """
  def list_domains(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/domains"
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
  Lists all of the integrations in your domain.
  """
  def list_integrations(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{URI.encode(domain_name)}/integrations"
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
  Lists all of the template information for object types.
  """
  def list_profile_object_type_templates(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/templates"
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
  Lists all of the templates available within the service.
  """
  def list_profile_object_types(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{URI.encode(domain_name)}/object-types"
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
  Returns a list of objects associated with a profile of a given
  ProfileObjectType.
  """
  def list_profile_objects(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{URI.encode(domain_name)}/profiles/objects"
    headers = []

    {query_params, input} =
      [
        {"MaxResults", "max-results"},
        {"NextToken", "next-token"}
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
  Displays the tags associated with an Amazon Connect Customer Profiles resource.

  In Connect Customer Profiles, domains, profile object types, and integrations
  can be tagged.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
  Adds an integration between the service and a third-party service, which
  includes Amazon AppFlow and Amazon Connect.

  An integration can belong to only one domain.
  """
  def put_integration(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{URI.encode(domain_name)}/integrations"
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
  Adds additional objects to customer profiles of a given ObjectType.

  When adding a specific profile object, like a Contact Trace Record (CTR), an
  inferred profile can get created if it is not mapped to an existing profile. The
  resulting profile will only have a phone number populated in the standard
  ProfileObject. Any additional CTRs with the same phone number will be mapped to
  the same inferred profile.

  When a ProfileObject is created and if a ProfileObjectType already exists for
  the ProfileObject, it will provide data to a standard profile depending on the
  ProfileObjectType definition.

  PutProfileObject needs an ObjectType, which can be created using
  PutProfileObjectType.
  """
  def put_profile_object(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{URI.encode(domain_name)}/profiles/objects"
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
  Defines a ProfileObjectType.
  """
  def put_profile_object_type(
        %Client{} = client,
        domain_name,
        object_type_name,
        input,
        options \\ []
      ) do
    url_path = "/domains/#{URI.encode(domain_name)}/object-types/#{URI.encode(object_type_name)}"
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
  Searches for profiles within a specific domain name using name, phone number,
  email address, account number, or a custom defined index.
  """
  def search_profiles(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{URI.encode(domain_name)}/profiles/search"
    headers = []

    {query_params, input} =
      [
        {"MaxResults", "max-results"},
        {"NextToken", "next-token"}
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
  Assigns one or more tags (key-value pairs) to the specified Amazon Connect
  Customer Profiles resource.

  Tags can help you organize and categorize your resources. You can also use them
  to scope user permissions by granting a user permission to access or change only
  resources with certain tag values. In Connect Customer Profiles, domains,
  profile object types, and integrations can be tagged.

  Tags don't have any semantic meaning to AWS and are interpreted strictly as
  strings of characters.

  You can use the TagResource action with a resource that already has tags. If you
  specify a new tag key, this tag is appended to the list of tags associated with
  the resource. If you specify a tag key that is already associated with the
  resource, the new tag value that you specify replaces the previous value for
  that tag.

  You can associate as many as 50 tags with a resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
  Removes one or more tags from the specified Amazon Connect Customer Profiles
  resource.

  In Connect Customer Profiles, domains, profile object types, and integrations
  can be tagged.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
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
  Updates the properties of a domain, including creating or selecting a dead
  letter queue or an encryption key.

  Once a domain is created, the name can’t be changed.
  """
  def update_domain(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{URI.encode(domain_name)}"
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
  Updates the properties of a profile.

  The ProfileId is required for updating a customer profile.

  When calling the UpdateProfile API, specifying an empty string value means that
  any existing value will be removed. Not specifying a string value means that any
  value already there will be kept.
  """
  def update_profile(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{URI.encode(domain_name)}/profiles"
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