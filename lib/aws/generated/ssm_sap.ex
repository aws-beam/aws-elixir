# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SsmSap do
  @moduledoc """
  This API reference provides descriptions, syntax, and other details about each
  of the actions and data types for AWS Systems Manager for SAP.

  The topic for each action shows the API request parameters and responses.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ssm-sap",
      global?: false,
      protocol: "rest-json",
      service_id: "Ssm Sap",
      signature_version: "v4",
      signing_name: "ssm-sap",
      target_prefix: nil
    }
  end

  @doc """
  Removes permissions associated with the target database.
  """
  def delete_resource_permission(%Client{} = client, input, options \\ []) do
    url_path = "/delete-resource-permission"
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
  Deregister an SAP application with AWS Systems Manager for SAP.

  This action does not aﬀect the existing setup of your SAP workloads on Amazon
  EC2.
  """
  def deregister_application(%Client{} = client, input, options \\ []) do
    url_path = "/deregister-application"
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
  Gets an application registered with AWS Systems Manager for SAP.

  It also returns the components of the application.
  """
  def get_application(%Client{} = client, input, options \\ []) do
    url_path = "/get-application"
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
  Gets the component of an application registered with AWS Systems Manager for
  SAP.
  """
  def get_component(%Client{} = client, input, options \\ []) do
    url_path = "/get-component"
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
  Gets the SAP HANA database of an application registered with AWS Systems Manager
  for SAP.
  """
  def get_database(%Client{} = client, input, options \\ []) do
    url_path = "/get-database"
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
  Gets the details of an operation by specifying the operation ID.
  """
  def get_operation(%Client{} = client, input, options \\ []) do
    url_path = "/get-operation"
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
  Gets permissions associated with the target database.
  """
  def get_resource_permission(%Client{} = client, input, options \\ []) do
    url_path = "/get-resource-permission"
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
  Lists all the applications registered with AWS Systems Manager for SAP.
  """
  def list_applications(%Client{} = client, input, options \\ []) do
    url_path = "/list-applications"
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
  Lists all the components registered with AWS Systems Manager for SAP.
  """
  def list_components(%Client{} = client, input, options \\ []) do
    url_path = "/list-components"
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
  Lists the SAP HANA databases of an application registered with AWS Systems
  Manager for SAP.
  """
  def list_databases(%Client{} = client, input, options \\ []) do
    url_path = "/list-databases"
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
  Lists all tags on an SAP HANA application and/or database registered with AWS
  Systems Manager for SAP.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds permissions to the target database.
  """
  def put_resource_permission(%Client{} = client, input, options \\ []) do
    url_path = "/put-resource-permission"
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
  Register an SAP application with AWS Systems Manager for SAP.

  You must meet the following requirements before registering.

  The SAP application you want to register with AWS Systems Manager for SAP is
  running on Amazon EC2.

  AWS Systems Manager Agent must be setup on an Amazon EC2 instance along with the
  required IAM permissions.

  Amazon EC2 instance(s) must have access to the secrets created in AWS Secrets
  Manager to manage SAP applications and components.
  """
  def register_application(%Client{} = client, input, options \\ []) do
    url_path = "/register-application"
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
  Creates tag for a resource by specifying the ARN.
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
  Delete the tags for a resource.
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

  def update_application_settings(%Client{} = client, input, options \\ []) do
    url_path = "/update-application-settings"
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
