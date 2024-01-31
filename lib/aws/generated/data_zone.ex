# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DataZone do
  @moduledoc """
  Amazon DataZone is a data management service that enables you to catalog,
  discover, govern, share, and analyze your data.

  With Amazon DataZone, you can share and access your data across accounts and
  supported regions. Amazon DataZone simplifies your experience across Amazon Web
  Services services, including, but not limited to, Amazon Redshift, Amazon
  Athena, Amazon Web Services Glue, and Amazon Web Services Lake Formation.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "datazone",
      global?: false,
      protocol: "rest-json",
      service_id: "DataZone",
      signature_version: "v4",
      signing_name: "datazone",
      target_prefix: nil
    }
  end

  @doc """
  Accepts automatically generated business-friendly metadata for your Amazon
  DataZone assets.
  """
  def accept_predictions(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}/accept-predictions"

    headers = []

    {query_params, input} =
      [
        {"revision", "revision"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Accepts a subscription request to a specific asset.
  """
  def accept_subscription_request(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}/accept"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Cancels the subscription to the specified asset.
  """
  def cancel_subscription(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscriptions/#{AWS.Util.encode_uri(identifier)}/cancel"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates an asset in Amazon DataZone catalog.
  """
  def create_asset(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets"
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
      201
    )
  end

  @doc """
  Creates a revision of the asset.
  """
  def create_asset_revision(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}/revisions"

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
  Creates a custom asset type.
  """
  def create_asset_type(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/asset-types"
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
      201
    )
  end

  @doc """
  Creates an Amazon DataZone data source.
  """
  def create_data_source(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources"
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
      201
    )
  end

  @doc """
  Creates an Amazon DataZone domain.
  """
  def create_domain(%Client{} = client, input, options \\ []) do
    url_path = "/v2/domains"
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
      201
    )
  end

  @doc """
  Create an Amazon DataZone environment.
  """
  def create_environment(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments"
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
      201
    )
  end

  @doc """
  Creates an Amazon DataZone environment profile.
  """
  def create_environment_profile(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles"
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
      201
    )
  end

  @doc """
  Creates a metadata form type.
  """
  def create_form_type(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/form-types"
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
      201
    )
  end

  @doc """
  Creates an Amazon DataZone business glossary.
  """
  def create_glossary(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossaries"
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
      201
    )
  end

  @doc """
  Creates a business glossary term.
  """
  def create_glossary_term(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossary-terms"
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
      201
    )
  end

  @doc """
  Creates a group profile in Amazon DataZone.
  """
  def create_group_profile(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/group-profiles"
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
      201
    )
  end

  def create_listing_change_set(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/listings/change-set"
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
  Creates an Amazon DataZone project.
  """
  def create_project(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects"
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
      201
    )
  end

  @doc """
  Creates a project membership in Amazon DataZone.
  """
  def create_project_membership(
        %Client{} = client,
        domain_identifier,
        project_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(project_identifier)}/createMembership"

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
      201
    )
  end

  @doc """
  Creates a subsscription grant in Amazon DataZone.
  """
  def create_subscription_grant(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants"
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
  Creates a subscription request in Amazon DataZone.
  """
  def create_subscription_request(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests"
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
  Creates a subscription target in Amazon DataZone.
  """
  def create_subscription_target(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/subscription-targets"

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
  Creates a user profile in Amazon DataZone.
  """
  def create_user_profile(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/user-profiles"
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
      201
    )
  end

  @doc """
  Delets an asset in Amazon DataZone.
  """
  def delete_asset(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}"

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
      204
    )
  end

  @doc """
  Deletes an asset type in Amazon DataZone.
  """
  def delete_asset_type(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/asset-types/#{AWS.Util.encode_uri(identifier)}"

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
      204
    )
  end

  @doc """
  Deletes a data source in Amazon DataZone.
  """
  def delete_data_source(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(identifier)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
  Deletes a Amazon DataZone domain.
  """
  def delete_domain(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(identifier)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"},
        {"skipDeletionCheck", "skipDeletionCheck"}
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
      202
    )
  end

  @doc """
  Deletes an environment in Amazon DataZone.
  """
  def delete_environment(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(identifier)}"

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
      204
    )
  end

  @doc """
  Deletes the blueprint configuration in Amazon DataZone.
  """
  def delete_environment_blueprint_configuration(
        %Client{} = client,
        domain_identifier,
        environment_blueprint_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprint-configurations/#{AWS.Util.encode_uri(environment_blueprint_identifier)}"

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
      204
    )
  end

  @doc """
  Deletes an environment profile in Amazon DataZone.
  """
  def delete_environment_profile(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles/#{AWS.Util.encode_uri(identifier)}"

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
      204
    )
  end

  @doc """
  Delets and metadata form type in Amazon DataZone.
  """
  def delete_form_type(
        %Client{} = client,
        domain_identifier,
        form_type_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/form-types/#{AWS.Util.encode_uri(form_type_identifier)}"

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
      204
    )
  end

  @doc """
  Deletes a business glossary in Amazon DataZone.
  """
  def delete_glossary(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossaries/#{AWS.Util.encode_uri(identifier)}"

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
      204
    )
  end

  @doc """
  Deletes a business glossary term in Amazon DataZone.
  """
  def delete_glossary_term(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossary-terms/#{AWS.Util.encode_uri(identifier)}"

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
      204
    )
  end

  def delete_listing(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/listings/#{AWS.Util.encode_uri(identifier)}"

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
      204
    )
  end

  @doc """
  Deletes a project in Amazon DataZone.
  """
  def delete_project(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(identifier)}"

    headers = []

    {query_params, input} =
      [
        {"skipDeletionCheck", "skipDeletionCheck"}
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
      204
    )
  end

  @doc """
  Deletes project membership in Amazon DataZone.
  """
  def delete_project_membership(
        %Client{} = client,
        domain_identifier,
        project_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(project_identifier)}/deleteMembership"

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
      204
    )
  end

  @doc """
  Deletes and subscription grant in Amazon DataZone.
  """
  def delete_subscription_grant(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants/#{AWS.Util.encode_uri(identifier)}"

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
      200
    )
  end

  @doc """
  Deletes a subscription request in Amazon DataZone.
  """
  def delete_subscription_request(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}"

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
      204
    )
  end

  @doc """
  Deletes a subscription target in Amazon DataZone.
  """
  def delete_subscription_target(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/subscription-targets/#{AWS.Util.encode_uri(identifier)}"

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
      204
    )
  end

  @doc """
  Gets an Amazon DataZone asset.
  """
  def get_asset(%Client{} = client, domain_identifier, identifier, revision \\ nil, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(revision) do
        [{"revision", revision} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon DataZone asset type.
  """
  def get_asset_type(
        %Client{} = client,
        domain_identifier,
        identifier,
        revision \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/asset-types/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(revision) do
        [{"revision", revision} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon DataZone data source.
  """
  def get_data_source(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon DataZone data source run.
  """
  def get_data_source_run(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-source-runs/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon DataZone domain.
  """
  def get_domain(%Client{} = client, identifier, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon DataZone environment.
  """
  def get_environment(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon DataZone blueprint.
  """
  def get_environment_blueprint(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprints/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the blueprint configuration in Amazon DataZone.
  """
  def get_environment_blueprint_configuration(
        %Client{} = client,
        domain_identifier,
        environment_blueprint_identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprint-configurations/#{AWS.Util.encode_uri(environment_blueprint_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an evinronment profile in Amazon DataZone.
  """
  def get_environment_profile(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a metadata form type in Amazon DataZone.
  """
  def get_form_type(
        %Client{} = client,
        domain_identifier,
        form_type_identifier,
        revision \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/form-types/#{AWS.Util.encode_uri(form_type_identifier)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(revision) do
        [{"revision", revision} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a business glossary in Amazon DataZone.
  """
  def get_glossary(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossaries/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a business glossary term in Amazon DataZone.
  """
  def get_glossary_term(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossary-terms/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a group profile in Amazon DataZone.
  """
  def get_group_profile(%Client{} = client, domain_identifier, group_identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/group-profiles/#{AWS.Util.encode_uri(group_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the data portal URL for the specified Amazon DataZone domain.
  """
  def get_iam_portal_login_url(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/get-portal-login-url"
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

  def get_listing(
        %Client{} = client,
        domain_identifier,
        identifier,
        listing_revision \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/listings/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(listing_revision) do
        [{"listingRevision", listing_revision} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a project in Amazon DataZone.
  """
  def get_project(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a subscription in Amazon DataZone.
  """
  def get_subscription(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscriptions/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the subscription grant in Amazon DataZone.
  """
  def get_subscription_grant(%Client{} = client, domain_identifier, identifier, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the details of the specified subscription request.
  """
  def get_subscription_request_details(
        %Client{} = client,
        domain_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the subscription target in Amazon DataZone.
  """
  def get_subscription_target(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        identifier,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/subscription-targets/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a user profile in Amazon DataZone.
  """
  def get_user_profile(
        %Client{} = client,
        domain_identifier,
        user_identifier,
        type \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/user-profiles/#{AWS.Util.encode_uri(user_identifier)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the revisions for the asset.
  """
  def list_asset_revisions(
        %Client{} = client,
        domain_identifier,
        identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}/revisions"

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
  Lists data source run activities.
  """
  def list_data_source_run_activities(
        %Client{} = client,
        domain_identifier,
        identifier,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-source-runs/#{AWS.Util.encode_uri(identifier)}/activities"

    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  Lists data source runs in Amazon DataZone.
  """
  def list_data_source_runs(
        %Client{} = client,
        data_source_identifier,
        domain_identifier,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(data_source_identifier)}/runs"

    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  Lists data sources in Amazon DataZone.
  """
  def list_data_sources(
        %Client{} = client,
        domain_identifier,
        environment_identifier \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        project_identifier,
        status \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(project_identifier) do
        [{"projectIdentifier", project_identifier} | query_params]
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
      if !is_nil(environment_identifier) do
        [{"environmentIdentifier", environment_identifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon DataZone domains.
  """
  def list_domains(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  Lists blueprint configurations for a Amazon DataZone environment.
  """
  def list_environment_blueprint_configurations(
        %Client{} = client,
        domain_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprint-configurations"

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
  Lists blueprints in an Amazon DataZone environment.
  """
  def list_environment_blueprints(
        %Client{} = client,
        domain_identifier,
        managed \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprints"
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
      if !is_nil(managed) do
        [{"managed", managed} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon DataZone environment profiles.
  """
  def list_environment_profiles(
        %Client{} = client,
        domain_identifier,
        aws_account_id \\ nil,
        aws_account_region \\ nil,
        environment_blueprint_identifier \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        project_identifier \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles"
    headers = []
    query_params = []

    query_params =
      if !is_nil(project_identifier) do
        [{"projectIdentifier", project_identifier} | query_params]
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
      if !is_nil(environment_blueprint_identifier) do
        [{"environmentBlueprintIdentifier", environment_blueprint_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_account_region) do
        [{"awsAccountRegion", aws_account_region} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_account_id) do
        [{"awsAccountId", aws_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon DataZone environments.
  """
  def list_environments(
        %Client{} = client,
        domain_identifier,
        aws_account_id \\ nil,
        aws_account_region \\ nil,
        environment_blueprint_identifier \\ nil,
        environment_profile_identifier \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        project_identifier,
        provider \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(provider) do
        [{"provider", provider} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(project_identifier) do
        [{"projectIdentifier", project_identifier} | query_params]
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
      if !is_nil(environment_profile_identifier) do
        [{"environmentProfileIdentifier", environment_profile_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(environment_blueprint_identifier) do
        [{"environmentBlueprintIdentifier", environment_blueprint_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_account_region) do
        [{"awsAccountRegion", aws_account_region} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_account_id) do
        [{"awsAccountId", aws_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all Amazon DataZone notifications.
  """
  def list_notifications(
        %Client{} = client,
        domain_identifier,
        after_timestamp \\ nil,
        before_timestamp \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        subjects \\ nil,
        task_status \\ nil,
        type,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/notifications"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(task_status) do
        [{"taskStatus", task_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(subjects) do
        [{"subjects", subjects} | query_params]
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
      if !is_nil(before_timestamp) do
        [{"beforeTimestamp", before_timestamp} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(after_timestamp) do
        [{"afterTimestamp", after_timestamp} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all members of the specified project.
  """
  def list_project_memberships(
        %Client{} = client,
        domain_identifier,
        project_identifier,
        max_results \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(project_identifier)}/memberships"

    headers = []
    query_params = []

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
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
  Lists Amazon DataZone projects.
  """
  def list_projects(
        %Client{} = client,
        domain_identifier,
        group_identifier \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        user_identifier \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects"
    headers = []
    query_params = []

    query_params =
      if !is_nil(user_identifier) do
        [{"userIdentifier", user_identifier} | query_params]
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
      if !is_nil(group_identifier) do
        [{"groupIdentifier", group_identifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists subscription grants.
  """
  def list_subscription_grants(
        %Client{} = client,
        domain_identifier,
        environment_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        subscribed_listing_id \\ nil,
        subscription_id \\ nil,
        subscription_target_id \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants"
    headers = []
    query_params = []

    query_params =
      if !is_nil(subscription_target_id) do
        [{"subscriptionTargetId", subscription_target_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(subscription_id) do
        [{"subscriptionId", subscription_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(subscribed_listing_id) do
        [{"subscribedListingId", subscribed_listing_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
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
      if !is_nil(environment_id) do
        [{"environmentId", environment_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon DataZone subscription requests.
  """
  def list_subscription_requests(
        %Client{} = client,
        domain_identifier,
        approver_project_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        owning_project_id \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        status \\ nil,
        subscribed_listing_id \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests"
    headers = []
    query_params = []

    query_params =
      if !is_nil(subscribed_listing_id) do
        [{"subscribedListingId", subscribed_listing_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(owning_project_id) do
        [{"owningProjectId", owning_project_id} | query_params]
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
      if !is_nil(approver_project_id) do
        [{"approverProjectId", approver_project_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists subscription targets in Amazon DataZone.
  """
  def list_subscription_targets(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        max_results \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/subscription-targets"

    headers = []
    query_params = []

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
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
  Lists subscriptions in Amazon DataZone.
  """
  def list_subscriptions(
        %Client{} = client,
        domain_identifier,
        approver_project_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        owning_project_id \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        status \\ nil,
        subscribed_listing_id \\ nil,
        subscription_request_identifier \\ nil,
        options \\ []
      ) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscriptions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(subscription_request_identifier) do
        [{"subscriptionRequestIdentifier", subscription_request_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(subscribed_listing_id) do
        [{"subscribedListingId", subscribed_listing_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_order) do
        [{"sortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"sortBy", sort_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(owning_project_id) do
        [{"owningProjectId", owning_project_id} | query_params]
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
      if !is_nil(approver_project_id) do
        [{"approverProjectId", approver_project_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tags for the specified resource in Amazon DataZone.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Writes the configuration for the specified environment blueprint in Amazon
  DataZone.
  """
  def put_environment_blueprint_configuration(
        %Client{} = client,
        domain_identifier,
        environment_blueprint_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-blueprint-configurations/#{AWS.Util.encode_uri(environment_blueprint_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Rejects automatically generated business-friendly metadata for your Amazon
  DataZone assets.
  """
  def reject_predictions(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/assets/#{AWS.Util.encode_uri(identifier)}/reject-predictions"

    headers = []

    {query_params, input} =
      [
        {"revision", "revision"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Rejects the specified subscription request.
  """
  def reject_subscription_request(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}/reject"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Revokes a specified subscription in Amazon DataZone.
  """
  def revoke_subscription(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscriptions/#{AWS.Util.encode_uri(identifier)}/revoke"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Searches for assets in Amazon DataZone.
  """
  def search(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/search"
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
  Searches group profiles in Amazon DataZone.
  """
  def search_group_profiles(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/search-group-profiles"
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
  Searches listings in Amazon DataZone.
  """
  def search_listings(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/listings/search"
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
  Searches for types in Amazon DataZone.
  """
  def search_types(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/types-search"
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
  Searches user profiles in Amazon DataZone.
  """
  def search_user_profiles(%Client{} = client, domain_identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/search-user-profiles"
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
  Start the run of the specified data source in Amazon DataZone.
  """
  def start_data_source_run(
        %Client{} = client,
        data_source_identifier,
        domain_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(data_source_identifier)}/runs"

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
  Tags a resource in Amazon DataZone.
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
  Untags a resource in Amazon DataZone.
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
  Updates the specified data source in Amazon DataZone.
  """
  def update_data_source(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/data-sources/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a Amazon DataZone domain.
  """
  def update_domain(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/v2/domains/#{AWS.Util.encode_uri(identifier)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the specified environment in Amazon DataZone.
  """
  def update_environment(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified environment profile in Amazon DataZone.
  """
  def update_environment_profile(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environment-profiles/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the business glossary in Amazon DataZone.
  """
  def update_glossary(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossaries/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a business glossary term in Amazon DataZone.
  """
  def update_glossary_term(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/glossary-terms/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified group profile in Amazon DataZone.
  """
  def update_group_profile(
        %Client{} = client,
        domain_identifier,
        group_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/group-profiles/#{AWS.Util.encode_uri(group_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the specified project in Amazon DataZone.
  """
  def update_project(%Client{} = client, domain_identifier, identifier, input, options \\ []) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/projects/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the status of the specified subscription grant status in Amazon
  DataZone.
  """
  def update_subscription_grant_status(
        %Client{} = client,
        asset_identifier,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-grants/#{AWS.Util.encode_uri(identifier)}/status/#{AWS.Util.encode_uri(asset_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a specified subscription request in Amazon DataZone.
  """
  def update_subscription_request(
        %Client{} = client,
        domain_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/subscription-requests/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified subscription target in Amazon DataZone.
  """
  def update_subscription_target(
        %Client{} = client,
        domain_identifier,
        environment_identifier,
        identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/environments/#{AWS.Util.encode_uri(environment_identifier)}/subscription-targets/#{AWS.Util.encode_uri(identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the specified user profile in Amazon DataZone.
  """
  def update_user_profile(
        %Client{} = client,
        domain_identifier,
        user_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/domains/#{AWS.Util.encode_uri(domain_identifier)}/user-profiles/#{AWS.Util.encode_uri(user_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
