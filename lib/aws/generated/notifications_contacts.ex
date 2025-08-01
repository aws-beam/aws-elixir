# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.NotificationsContacts do
  @moduledoc """
  AWS User Notifications Contacts is a service that allows you to create and
  manage email contacts for AWS User Notifications.

  The AWS User Notifications Contacts API Reference provides descriptions, API
  request parameters, and the JSON response for all email contact related API
  actions.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      activate_email_contact_request() :: %{}

  """
  @type activate_email_contact_request() :: %{}

  @typedoc """

  ## Example:

      activate_email_contact_response() :: %{}

  """
  @type activate_email_contact_response() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | Atom.t(),
        "resourceId" => String.t() | Atom.t(),
        "resourceType" => String.t() | Atom.t()
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_email_contact_request() :: %{
        optional("tags") => map(),
        required("emailAddress") => String.t() | Atom.t(),
        required("name") => String.t() | Atom.t()
      }

  """
  @type create_email_contact_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_email_contact_response() :: %{
        "arn" => String.t() | Atom.t()
      }

  """
  @type create_email_contact_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_email_contact_request() :: %{}

  """
  @type delete_email_contact_request() :: %{}

  @typedoc """

  ## Example:

      delete_email_contact_response() :: %{}

  """
  @type delete_email_contact_response() :: %{}

  @typedoc """

  ## Example:

      email_contact() :: %{
        "address" => String.t() | Atom.t(),
        "arn" => String.t() | Atom.t(),
        "creationTime" => non_neg_integer(),
        "name" => String.t() | Atom.t(),
        "status" => String.t() | Atom.t(),
        "updateTime" => non_neg_integer()
      }

  """
  @type email_contact() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_email_contact_request() :: %{}

  """
  @type get_email_contact_request() :: %{}

  @typedoc """

  ## Example:

      get_email_contact_response() :: %{
        "emailContact" => email_contact()
      }

  """
  @type get_email_contact_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_email_contacts_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_email_contacts_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_email_contacts_response() :: %{
        "emailContacts" => list(email_contact()),
        "nextToken" => [String.t() | Atom.t()]
      }

  """
  @type list_email_contacts_response() :: %{String.t() | Atom.t() => any()}

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
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | Atom.t(),
        "resourceId" => String.t() | Atom.t(),
        "resourceType" => String.t() | Atom.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      send_activation_code_request() :: %{}

  """
  @type send_activation_code_request() :: %{}

  @typedoc """

  ## Example:

      send_activation_code_response() :: %{}

  """
  @type send_activation_code_response() :: %{}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | Atom.t(),
        "quotaCode" => String.t() | Atom.t(),
        "resourceId" => String.t() | Atom.t(),
        "resourceType" => String.t() | Atom.t(),
        "serviceCode" => String.t() | Atom.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | Atom.t(),
        "quotaCode" => String.t() | Atom.t(),
        "retryAfterSeconds" => [integer()],
        "serviceCode" => String.t() | Atom.t()
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => String.t() | Atom.t(),
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | Atom.t()],
        "name" => [String.t() | Atom.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() | Atom.t() => any()}

  @type activate_email_contact_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_email_contact_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_email_contact_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_email_contact_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_email_contacts_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type send_activation_code_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "notifications-contacts",
      global?: true,
      hostname: "notifications-contacts.us-east-1.api.aws",
      protocol: "rest-json",
      service_id: "NotificationsContacts",
      signature_version: "v4",
      signing_name: "notifications-contacts",
      target_prefix: nil
    }
  end

  @doc """
  Activates an email contact using an activation code.

  This code is in the activation email sent to the email address associated with
  this email contact.
  """
  @spec activate_email_contact(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          activate_email_contact_request(),
          list()
        ) ::
          {:ok, activate_email_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, activate_email_contact_errors()}
  def activate_email_contact(%Client{} = client, arn, code, input, options \\ []) do
    url_path = "/emailcontacts/#{AWS.Util.encode_uri(arn)}/activate/#{AWS.Util.encode_uri(code)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an email contact for the provided email address.
  """
  @spec create_email_contact(map(), create_email_contact_request(), list()) ::
          {:ok, create_email_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_email_contact_errors()}
  def create_email_contact(%Client{} = client, input, options \\ []) do
    url_path = "/2022-09-19/emailcontacts"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes an email contact.

  Deleting an email contact removes it from all associated notification
  configurations.
  """
  @spec delete_email_contact(map(), String.t() | Atom.t(), delete_email_contact_request(), list()) ::
          {:ok, delete_email_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_email_contact_errors()}
  def delete_email_contact(%Client{} = client, arn, input, options \\ []) do
    url_path = "/emailcontacts/#{AWS.Util.encode_uri(arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns an email contact.
  """
  @spec get_email_contact(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_email_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_email_contact_errors()}
  def get_email_contact(%Client{} = client, arn, options \\ []) do
    url_path = "/emailcontacts/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all email contacts created under the Account.
  """
  @spec list_email_contacts(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_email_contacts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_email_contacts_errors()}
  def list_email_contacts(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/emailcontacts"
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
  Lists all of the tags associated with the Amazon Resource Name (ARN) that you
  specify.

  The resource can be a user, server, or role.
  """
  @spec list_tags_for_resource(map(), String.t() | Atom.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Sends an activation email to the email address associated with the specified
  email contact.

  It might take a few minutes for the activation email to arrive. If it doesn't
  arrive, check in your spam folder or try sending another activation email.
  """
  @spec send_activation_code(map(), String.t() | Atom.t(), send_activation_code_request(), list()) ::
          {:ok, send_activation_code_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_activation_code_errors()}
  def send_activation_code(%Client{} = client, arn, input, options \\ []) do
    url_path = "/2022-10-31/emailcontacts/#{AWS.Util.encode_uri(arn)}/activate/send"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Attaches a key-value pair to a resource, as identified by its Amazon Resource
  Name (ARN).

  Taggable resources in AWS User Notifications Contacts include email contacts.
  """
  @spec tag_resource(map(), String.t() | Atom.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Detaches a key-value pair from a resource, as identified by its Amazon Resource
  Name (ARN).

  Taggable resources in AWS User Notifications Contacts include email contacts..
  """
  @spec untag_resource(map(), String.t() | Atom.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
