# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTFleetHub do
  @moduledoc """
  With Fleet Hub for AWS IoT Device Management you can build stand-alone web
  applications for monitoring the health of your device fleets.

  Fleet Hub for AWS IoT Device Management is in public preview and is subject to
  change.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      application_summary() :: %{
        "applicationCreationDate" => float(),
        "applicationDescription" => String.t(),
        "applicationId" => String.t(),
        "applicationLastUpdateDate" => float(),
        "applicationName" => String.t(),
        "applicationState" => list(any()),
        "applicationUrl" => String.t()
      }

  """
  @type application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("applicationDescription") => String.t(),
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("applicationName") => String.t(),
        required("roleArn") => String.t()
      }

  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_response() :: %{
        "applicationArn" => String.t(),
        "applicationId" => String.t()
      }

  """
  @type create_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_application_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_application_response() :: %{}

  """
  @type delete_application_response() :: %{}

  @typedoc """

  ## Example:

      describe_application_request() :: %{}

  """
  @type describe_application_request() :: %{}

  @typedoc """

  ## Example:

      describe_application_response() :: %{
        "applicationArn" => String.t(),
        "applicationCreationDate" => float(),
        "applicationDescription" => String.t(),
        "applicationId" => String.t(),
        "applicationLastUpdateDate" => float(),
        "applicationName" => String.t(),
        "applicationState" => list(any()),
        "applicationUrl" => String.t(),
        "errorMessage" => String.t(),
        "roleArn" => String.t(),
        "ssoClientId" => String.t(),
        "tags" => map()
      }

  """
  @type describe_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("nextToken") => String.t()
      }

  """
  @type list_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_response() :: %{
        "applicationSummaries" => list(application_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_application_request() :: %{
        optional("applicationDescription") => String.t(),
        optional("applicationName") => String.t(),
        optional("clientToken") => String.t()
      }

  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_response() :: %{}

  """
  @type update_application_response() :: %{}

  @type create_application_errors() ::
          throttling_exception()
          | limit_exceeded_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type delete_application_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type describe_application_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_applications_errors() ::
          throttling_exception() | invalid_request_exception() | internal_failure_exception()

  @type list_tags_for_resource_errors() ::
          resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type tag_resource_errors() ::
          resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type untag_resource_errors() ::
          resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type update_application_errors() ::
          throttling_exception()
          | resource_not_found_exception()
          | invalid_request_exception()
          | internal_failure_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-11-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.fleethub.iot",
      global?: false,
      protocol: "rest-json",
      service_id: "IoTFleetHub",
      signature_version: "v4",
      signing_name: "iotfleethub",
      target_prefix: nil
    }
  end

  @doc """
  Creates a Fleet Hub for AWS IoT Device Management web application.

  Fleet Hub for AWS IoT Device Management is in public preview and is subject to
  change.
  """
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
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
  Deletes a Fleet Hub for AWS IoT Device Management web application.

  Fleet Hub for AWS IoT Device Management is in public preview and is subject to
  change.
  """
  @spec delete_application(map(), String.t(), delete_application_request(), list()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
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
      204
    )
  end

  @doc """
  Gets information about a Fleet Hub for AWS IoT Device Management web
  application.

  Fleet Hub for AWS IoT Device Management is in public preview and is subject to
  change.
  """
  @spec describe_application(map(), String.t(), list()) ::
          {:ok, describe_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_application_errors()}
  def describe_application(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of Fleet Hub for AWS IoT Device Management web applications for the
  current account.

  Fleet Hub for AWS IoT Device Management is in public preview and is subject to
  change.
  """
  @spec list_applications(map(), String.t() | nil, list()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_applications_errors()}
  def list_applications(%Client{} = client, next_token \\ nil, options \\ []) do
    url_path = "/applications"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for the specified resource.

  Fleet Hub for AWS IoT Device Management is in public preview and is subject to
  change.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds to or modifies the tags of the specified resource.

  Tags are metadata which can be used to manage a resource.

  Fleet Hub for AWS IoT Device Management is in public preview and is subject to
  change.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
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
  Removes the specified tags (metadata) from the resource.

  Fleet Hub for AWS IoT Device Management is in public preview and is subject to
  change.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
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
  Updates information about a Fleet Hub for a AWS IoT Device Management web
  application.

  Fleet Hub for AWS IoT Device Management is in public preview and is subject to
  change.
  """
  @spec update_application(map(), String.t(), update_application_request(), list()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
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
      202
    )
  end
end
