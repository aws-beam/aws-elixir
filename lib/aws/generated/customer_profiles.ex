# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CustomerProfiles do
  @moduledoc """
  Amazon Connect Customer Profiles

  Amazon Connect Customer Profiles is a unified customer profile for your contact
  center that has pre-built connectors powered by AppFlow that make it easy to
  combine customer information from third party applications, such as Salesforce
  (CRM), ServiceNow (ITSM), and your enterprise resource planning (ERP), with
  contact history from your Amazon Connect contact center.

  If you're new to Amazon Connect, you might find it helpful to review the [Amazon Connect Administrator
  Guide](https://docs.aws.amazon.com/connect/latest/adminguide/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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
  Associates a new key value with a specific profile, such as a Contact Record
  ContactId.

  A profile object can have a single unique key and any number of additional keys
  that can be used to identify the profile that it belongs to.
  """
  def add_profile_key(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/keys"
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
  Creates a new calculated attribute definition.

  After creation, new object data ingested into Customer Profiles will be included
  in the calculated attribute, which can be retrieved for a profile using the
  [GetCalculatedAttributeForProfile](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetCalculatedAttributeForProfile.html)
  API. Defining a calculated attribute makes it available for all profiles within
  a domain. Each calculated attribute can only reference one `ObjectType` and at
  most, two fields from that `ObjectType`.
  """
  def create_calculated_attribute_definition(
        %Client{} = client,
        calculated_attribute_name,
        domain_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/calculated-attributes/#{AWS.Util.encode_uri(calculated_attribute_name)}"

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
  Creates a domain, which is a container for all customer data, such as customer
  profile attributes, object types, profile keys, and encryption keys.

  You can create multiple domains, and each domain can have multiple third-party
  integrations.

  Each Amazon Connect instance can be associated with only one domain. Multiple
  Amazon Connect instances can be associated with one domain.

  Use this API or
  [UpdateDomain](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html) to enable [identity
  resolution](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html):
  set `Matching` to true.

  To prevent cross-service impersonation when you call this API, see
  [Cross-service confused deputy prevention](https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html)
  for sample policies that you should apply.
  """
  def create_domain(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}"
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
  Creates an event stream, which is a subscription to real-time events, such as
  when profiles are created and updated through Amazon Connect Customer Profiles.

  Each event stream can be associated with only one Kinesis Data Stream
  destination in the same region and Amazon Web Services account as the customer
  profiles domain
  """
  def create_event_stream(
        %Client{} = client,
        domain_name,
        event_stream_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/event-streams/#{AWS.Util.encode_uri(event_stream_name)}"

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
  Creates an integration workflow.

  An integration workflow is an async process which ingests historic data and sets
  up an integration for ongoing updates. The supported Amazon AppFlow sources are
  Salesforce, ServiceNow, and Marketo.
  """
  def create_integration_workflow(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/workflows/integrations"
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
  Creates a standard profile.

  A standard profile represents the following attributes for a customer profile in
  a domain.
  """
  def create_profile(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles"
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
  Deletes an existing calculated attribute definition.

  Note that deleting a default calculated attribute is possible, however once
  deleted, you will be unable to undo that action and will need to recreate it on
  your own using the CreateCalculatedAttributeDefinition API if you want it back.
  """
  def delete_calculated_attribute_definition(
        %Client{} = client,
        calculated_attribute_name,
        domain_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/calculated-attributes/#{AWS.Util.encode_uri(calculated_attribute_name)}"

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
  Deletes a specific domain and all of its customer data, such as customer profile
  attributes and their related objects.
  """
  def delete_domain(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}"
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
  Disables and deletes the specified event stream.
  """
  def delete_event_stream(
        %Client{} = client,
        domain_name,
        event_stream_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/event-streams/#{AWS.Util.encode_uri(event_stream_name)}"

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
  Removes an integration from a specific domain.
  """
  def delete_integration(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/integrations/delete"
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
  Deletes the standard customer profile and all data pertaining to the profile.
  """
  def delete_profile(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/delete"
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
  Removes a searchable key from a customer profile.
  """
  def delete_profile_key(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/keys/delete"
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
  Removes an object associated with a profile of a given ProfileObjectType.
  """
  def delete_profile_object(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/objects/delete"
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
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/object-types/#{AWS.Util.encode_uri(object_type_name)}"

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
  Deletes the specified workflow and all its corresponding resources.

  This is an async process.
  """
  def delete_workflow(%Client{} = client, domain_name, workflow_id, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/workflows/#{AWS.Util.encode_uri(workflow_id)}"

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
  Tests the auto-merging settings of your Identity Resolution Job without merging
  your data.

  It randomly selects a sample of matching groups from the existing matching
  results, and applies the automerging settings that you provided. You can then
  view the number of profiles in the sample, the number of matches, and the number
  of profiles identified to be merged. This enables you to evaluate the accuracy
  of the attributes in your matching list.

  You can't view which profiles are matched and would be merged.

  We strongly recommend you use this API to do a dry run of the automerging
  process before running the Identity Resolution Job. Include **at least** two
  matching attributes. If your matching list includes too few attributes (such as
  only `FirstName` or only `LastName`), there may be a large number of matches.
  This increases the chances of erroneous merges.
  """
  def get_auto_merging_preview(%Client{} = client, domain_name, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/identity-resolution-jobs/auto-merging-preview"

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
  Provides more information on a calculated attribute definition for Customer
  Profiles.
  """
  def get_calculated_attribute_definition(
        %Client{} = client,
        calculated_attribute_name,
        domain_name,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/calculated-attributes/#{AWS.Util.encode_uri(calculated_attribute_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieve a calculated attribute for a customer profile.
  """
  def get_calculated_attribute_for_profile(
        %Client{} = client,
        calculated_attribute_name,
        domain_name,
        profile_id,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/profile/#{AWS.Util.encode_uri(profile_id)}/calculated-attributes/#{AWS.Util.encode_uri(calculated_attribute_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns information about a specific domain.
  """
  def get_domain(%Client{} = client, domain_name, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns information about the specified event stream in a specific domain.
  """
  def get_event_stream(%Client{} = client, domain_name, event_stream_name, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/event-streams/#{AWS.Util.encode_uri(event_stream_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns information about an Identity Resolution Job in a specific domain.

  Identity Resolution Jobs are set up using the Amazon Connect admin console. For
  more information, see [Use Identity Resolution to consolidate similar profiles](https://docs.aws.amazon.com/connect/latest/adminguide/use-identity-resolution.html).
  """
  def get_identity_resolution_job(%Client{} = client, domain_name, job_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/identity-resolution-jobs/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns an integration for a domain.
  """
  def get_integration(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/integrations"
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
  Before calling this API, use
  [CreateDomain](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html) or
  [UpdateDomain](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html)
  to enable identity resolution: set `Matching` to true.

  GetMatches returns potentially matching profiles, based on the results of the
  latest run of a machine learning process.

  The process of matching duplicate profiles. If `Matching` = `true`, Amazon
  Connect Customer Profiles starts a weekly batch process called Identity
  Resolution Job. If you do not specify a date and time for Identity Resolution
  Job to run, by default it runs every Saturday at 12AM UTC to detect duplicate
  profiles in your domains.

  After the Identity Resolution Job completes, use the
  [GetMatches](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html)
  API to return and review the results. Or, if you have configured
  `ExportingConfig` in the `MatchingRequest`, you can download the results from
  S3.

  Amazon Connect uses the following profile attributes to identify matches:

    * PhoneNumber

    * HomePhoneNumber

    * BusinessPhoneNumber

    * MobilePhoneNumber

    * EmailAddress

    * PersonalEmailAddress

    * BusinessEmailAddress

    * FullName

  For example, two or more profiles—with spelling mistakes such as ## John Doe
  and **Jhn Doe**, or different casing email addresses such as
  **JOHN_DOE@ANYCOMPANY.COM** and **johndoe@anycompany.com**, or different phone
  number formats such as **555-010-0000** and **+1-555-010-0000**—can be detected
  as belonging to the same customer **John Doe** and merged into a unified
  profile.
  """
  def get_matches(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/matches"
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
  Returns the object types for a specific domain.
  """
  def get_profile_object_type(%Client{} = client, domain_name, object_type_name, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/object-types/#{AWS.Util.encode_uri(object_type_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the template information for a specific object type.

  A template is a predefined ProfileObjectType, such as “Salesforce-Account” or
  “Salesforce-Contact.” When a user sends a ProfileObject, using the
  PutProfileObject API, with an ObjectTypeName that matches one of the
  TemplateIds, it uses the mappings from the template.
  """
  def get_profile_object_type_template(%Client{} = client, template_id, options \\ []) do
    url_path = "/templates/#{AWS.Util.encode_uri(template_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Get details of specified workflow.
  """
  def get_workflow(%Client{} = client, domain_name, workflow_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/workflows/#{AWS.Util.encode_uri(workflow_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Get granular list of steps in workflow.
  """
  def get_workflow_steps(
        %Client{} = client,
        domain_name,
        workflow_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/workflows/#{AWS.Util.encode_uri(workflow_id)}/steps"

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
  Lists all of the integrations associated to a specific URI in the AWS account.
  """
  def list_account_integrations(%Client{} = client, input, options \\ []) do
    url_path = "/integrations"
    headers = []

    {query_params, input} =
      [
        {"IncludeHidden", "include-hidden"},
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
  Lists calculated attribute definitions for Customer Profiles
  """
  def list_calculated_attribute_definitions(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/calculated-attributes"
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
  Retrieve a list of calculated attributes for a customer profile.
  """
  def list_calculated_attributes_for_profile(
        %Client{} = client,
        domain_name,
        profile_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/profile/#{AWS.Util.encode_uri(profile_id)}/calculated-attributes"

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of all the event streams in a specific domain.
  """
  def list_event_streams(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/event-streams"
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
  Lists all of the Identity Resolution Jobs in your domain.

  The response sorts the list by `JobStartTime`.
  """
  def list_identity_resolution_jobs(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/identity-resolution-jobs"
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
  Lists all of the integrations in your domain.
  """
  def list_integrations(
        %Client{} = client,
        domain_name,
        include_hidden \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/integrations"
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
      if !is_nil(include_hidden) do
        [{"include-hidden", include_hidden} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
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
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/object-types"
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
  Returns a list of objects associated with a profile of a given
  ProfileObjectType.
  """
  def list_profile_objects(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/objects"
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
  Displays the tags associated with an Amazon Connect Customer Profiles resource.

  In Connect Customer Profiles, domains, profile object types, and integrations
  can be tagged.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Query to list all workflows.
  """
  def list_workflows(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/workflows"
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
  Runs an AWS Lambda job that does the following:

    1.

  All the profileKeys in the `ProfileToBeMerged` will be moved to the main
  profile.

    2. All the objects in the `ProfileToBeMerged` will be moved to the
  main profile.

    3. All the `ProfileToBeMerged` will be deleted at the end.

    4. All the profileKeys in the `ProfileIdsToBeMerged` will be moved
  to the main profile.

    5. Standard fields are merged as follows:

      1. Fields are always "union"-ed if there are no
  conflicts in standard fields or attributeKeys.

      2. When there are conflicting fields:

        1. If no `SourceProfileIds` entry is
  specified, the main Profile value is always taken.

        2. If a `SourceProfileIds` entry is
  specified, the specified profileId is always taken, even if it is a NULL value.

  You can use MergeProfiles together with
  [GetMatches](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html),
  which returns potentially matching profiles, or use it with the results of
  another matching system. After profiles have been merged, they cannot be
  separated (unmerged).
  """
  def merge_profiles(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/objects/merge"
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
  Adds an integration between the service and a third-party service, which
  includes Amazon AppFlow and Amazon Connect.

  An integration can belong to only one domain.

  To add or remove tags on an existing Integration, see [ TagResource
  ](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html)/[
  UntagResource](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html).
  """
  def put_integration(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/integrations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Adds additional objects to customer profiles of a given ObjectType.

  When adding a specific profile object, like a Contact Record, an inferred
  profile can get created if it is not mapped to an existing profile. The
  resulting profile will only have a phone number populated in the standard
  ProfileObject. Any additional Contact Records with the same phone number will be
  mapped to the same inferred profile.

  When a ProfileObject is created and if a ProfileObjectType already exists for
  the ProfileObject, it will provide data to a standard profile depending on the
  ProfileObjectType definition.

  PutProfileObject needs an ObjectType, which can be created using
  PutProfileObjectType.
  """
  def put_profile_object(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/objects"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Defines a ProfileObjectType.

  To add or remove tags on an existing ObjectType, see [
  TagResource](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html)/[UntagResource](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html).
  """
  def put_profile_object_type(
        %Client{} = client,
        domain_name,
        object_type_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/object-types/#{AWS.Util.encode_uri(object_type_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Searches for profiles within a specific domain using one or more predefined
  search keys (e.g., _fullName, _phone, _email, _account, etc.) and/or
  custom-defined search keys.

  A search key is a data type pair that consists of a `KeyName` and `Values` list.

  This operation supports searching for profiles with a minimum of 1 key-value(s)
  pair and up to 5 key-value(s) pairs using either `AND` or `OR` logic.
  """
  def search_profiles(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/search"
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
      nil
    )
  end

  @doc """
  Updates an existing calculated attribute definition.

  When updating the Conditions, note that increasing the date range of a
  calculated attribute will not trigger inclusion of historical data greater than
  the current date range.
  """
  def update_calculated_attribute_definition(
        %Client{} = client,
        calculated_attribute_name,
        domain_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/calculated-attributes/#{AWS.Util.encode_uri(calculated_attribute_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates the properties of a domain, including creating or selecting a dead
  letter queue or an encryption key.

  After a domain is created, the name can’t be changed.

  Use this API or
  [CreateDomain](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html) to enable [identity
  resolution](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html):
  set `Matching` to true.

  To prevent cross-service impersonation when you call this API, see
  [Cross-service confused deputy prevention](https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html)
  for sample policies that you should apply.

  To add or remove tags on an existing Domain, see
  [TagResource](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html)/[UntagResource](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html).
  """
  def update_domain(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates the properties of a profile.

  The ProfileId is required for updating a customer profile.

  When calling the UpdateProfile API, specifying an empty string value means that
  any existing value will be removed. Not specifying a string value means that any
  value already there will be kept.
  """
  def update_profile(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end
end
