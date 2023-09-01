# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PcaConnectorAd do
  @moduledoc """
  Amazon Web Services Private CA Connector for Active Directory creates a
  connector between Amazon Web Services Private CA and Active Directory (AD) that
  enables you to provision security certificates for AD signed by a private CA
  that you own.

  For more information, see [Amazon Web Services Private CA Connector for Active Directory](https://docs.aws.amazon.com/privateca/latest/userguide/ad-connector.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "pca-connector-ad",
      global?: false,
      protocol: "rest-json",
      service_id: "Pca Connector Ad",
      signature_version: "v4",
      signing_name: "pca-connector-ad",
      target_prefix: nil
    }
  end

  @doc """
  Creates a connector between Amazon Web Services Private CA and an Active
  Directory.

  You must specify the private CA, directory ID, and security groups.
  """
  def create_connector(%Client{} = client, input, options \\ []) do
    url_path = "/connectors"
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
      202
    )
  end

  @doc """
  Creates a directory registration that authorizes communication between Amazon
  Web Services Private CA and an Active Directory
  """
  def create_directory_registration(%Client{} = client, input, options \\ []) do
    url_path = "/directoryRegistrations"
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
      202
    )
  end

  @doc """
  Creates a service principal name (SPN) for the service account in Active
  Directory.

  Kerberos authentication uses SPNs to associate a service instance with a service
  sign-in account.
  """
  def create_service_principal_name(
        %Client{} = client,
        connector_arn,
        directory_registration_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/directoryRegistrations/#{AWS.Util.encode_uri(directory_registration_arn)}/servicePrincipalNames/#{AWS.Util.encode_uri(connector_arn)}"

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
      202
    )
  end

  @doc """
  Creates an Active Directory compatible certificate template.

  The connectors issues certificates using these templates based on the
  requester’s Active Directory group membership.
  """
  def create_template(%Client{} = client, input, options \\ []) do
    url_path = "/templates"
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
  Create a group access control entry.

  Allow or deny Active Directory groups from enrolling and/or autoenrolling with
  the template based on the group security identifiers (SIDs).
  """
  def create_template_group_access_control_entry(
        %Client{} = client,
        template_arn,
        input,
        options \\ []
      ) do
    url_path = "/templates/#{AWS.Util.encode_uri(template_arn)}/accessControlEntries"
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
  Deletes a connector for Active Directory.

  You must provide the Amazon Resource Name (ARN) of the connector that you want
  to delete. You can find the ARN by calling the
  [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_ListConnectors](https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_ListConnectors) action. Deleting a connector does not deregister your directory with Amazon Web
  Services Private CA. You can deregister your directory by calling the
  [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_DeleteDirectoryRegistration](https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_DeleteDirectoryRegistration)
  action.
  """
  def delete_connector(%Client{} = client, connector_arn, input, options \\ []) do
    url_path = "/connectors/#{AWS.Util.encode_uri(connector_arn)}"
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
      202
    )
  end

  @doc """
  Deletes a directory registration.

  Deleting a directory registration deauthorizes Amazon Web Services Private CA
  with the directory.
  """
  def delete_directory_registration(
        %Client{} = client,
        directory_registration_arn,
        input,
        options \\ []
      ) do
    url_path = "/directoryRegistrations/#{AWS.Util.encode_uri(directory_registration_arn)}"
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
      202
    )
  end

  @doc """
  Deletes the service principal name (SPN) used by a connector to authenticate
  with your Active Directory.
  """
  def delete_service_principal_name(
        %Client{} = client,
        connector_arn,
        directory_registration_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/directoryRegistrations/#{AWS.Util.encode_uri(directory_registration_arn)}/servicePrincipalNames/#{AWS.Util.encode_uri(connector_arn)}"

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
      202
    )
  end

  @doc """
  Deletes a template.

  Certificates issued using the template are still valid until they are revoked or
  expired.
  """
  def delete_template(%Client{} = client, template_arn, input, options \\ []) do
    url_path = "/templates/#{AWS.Util.encode_uri(template_arn)}"
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
      202
    )
  end

  @doc """
  Deletes a group access control entry.
  """
  def delete_template_group_access_control_entry(
        %Client{} = client,
        group_security_identifier,
        template_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/templates/#{AWS.Util.encode_uri(template_arn)}/accessControlEntries/#{AWS.Util.encode_uri(group_security_identifier)}"

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
  Lists information about your connector.

  You specify the connector on input by its ARN (Amazon Resource Name).
  """
  def get_connector(%Client{} = client, connector_arn, options \\ []) do
    url_path = "/connectors/#{AWS.Util.encode_uri(connector_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  A structure that contains information about your directory registration.
  """
  def get_directory_registration(%Client{} = client, directory_registration_arn, options \\ []) do
    url_path = "/directoryRegistrations/#{AWS.Util.encode_uri(directory_registration_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the service principal name that the connector uses to authenticate with
  Active Directory.
  """
  def get_service_principal_name(
        %Client{} = client,
        connector_arn,
        directory_registration_arn,
        options \\ []
      ) do
    url_path =
      "/directoryRegistrations/#{AWS.Util.encode_uri(directory_registration_arn)}/servicePrincipalNames/#{AWS.Util.encode_uri(connector_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a certificate template that the connector uses to issue certificates
  from a private CA.
  """
  def get_template(%Client{} = client, template_arn, options \\ []) do
    url_path = "/templates/#{AWS.Util.encode_uri(template_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the group access control entries for a template.
  """
  def get_template_group_access_control_entry(
        %Client{} = client,
        group_security_identifier,
        template_arn,
        options \\ []
      ) do
    url_path =
      "/templates/#{AWS.Util.encode_uri(template_arn)}/accessControlEntries/#{AWS.Util.encode_uri(group_security_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the connectors that you created by using the
  [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector](https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateConnector)
  action.
  """
  def list_connectors(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/connectors"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the directory registrations that you created by using the
  [https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration](https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateDirectoryRegistration)
  action.
  """
  def list_directory_registrations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/directoryRegistrations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the service principal names that the connector uses to authenticate with
  Active Directory.
  """
  def list_service_principal_names(
        %Client{} = client,
        directory_registration_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/directoryRegistrations/#{AWS.Util.encode_uri(directory_registration_arn)}/servicePrincipalNames"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags, if any, that are associated with your resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists group access control entries you created.
  """
  def list_template_group_access_control_entries(
        %Client{} = client,
        template_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/templates/#{AWS.Util.encode_uri(template_arn)}/accessControlEntries"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the templates, if any, that are associated with a connector.
  """
  def list_templates(
        %Client{} = client,
        connector_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/templates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(connector_arn) do
        [{"ConnectorArn", connector_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds one or more tags to your resource.
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
      204
    )
  end

  @doc """
  Removes one or more tags from your resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
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
  Update template configuration to define the information included in
  certificates.
  """
  def update_template(%Client{} = client, template_arn, input, options \\ []) do
    url_path = "/templates/#{AWS.Util.encode_uri(template_arn)}"
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
  Update a group access control entry you created using
  [CreateTemplateGroupAccessControlEntry](https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplateGroupAccessControlEntry.html).
  """
  def update_template_group_access_control_entry(
        %Client{} = client,
        group_security_identifier,
        template_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/templates/#{AWS.Util.encode_uri(template_arn)}/accessControlEntries/#{AWS.Util.encode_uri(group_security_identifier)}"

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
end
