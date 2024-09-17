# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PcaConnectorScep do
  @moduledoc """
  Connector for SCEP creates a connector between Amazon Web Services Private CA
  and your SCEP-enabled clients and devices.

  For more information, see [Connector for SCEP](https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep.html)
  in the *Amazon Web Services Private CA User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      connector() :: %{
        "Arn" => String.t(),
        "CertificateAuthorityArn" => String.t(),
        "CreatedAt" => [non_neg_integer()],
        "Endpoint" => [String.t()],
        "MobileDeviceManagement" => list(),
        "OpenIdConfiguration" => open_id_configuration(),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "Type" => list(any()),
        "UpdatedAt" => [non_neg_integer()]
      }

  """
  @type connector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_connectors_response() :: %{
        "Connectors" => list(connector_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_connectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_challenge_response() :: %{
        "Challenge" => challenge()
      }

  """
  @type create_challenge_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_challenge_metadata_response() :: %{
        "ChallengeMetadata" => challenge_metadata()
      }

  """
  @type get_challenge_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_connectors_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_connectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_challenge_password_request() :: %{}

  """
  @type get_challenge_password_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list([String.t()]())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_challenge_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => map(),
        required("ConnectorArn") => String.t()
      }

  """
  @type create_challenge_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      challenge_metadata_summary() :: %{
        "Arn" => String.t(),
        "ConnectorArn" => String.t(),
        "CreatedAt" => [non_neg_integer()],
        "UpdatedAt" => [non_neg_integer()]
      }

  """
  @type challenge_metadata_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => [String.t()],
        "ResourceId" => [String.t()],
        "ResourceType" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t()],
        "ResourceId" => [String.t()],
        "ResourceType" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => [String.t()],
        "QuotaCode" => [String.t()],
        "ResourceType" => [String.t()],
        "ServiceCode" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      open_id_configuration() :: %{
        "Audience" => [String.t()],
        "Issuer" => [String.t()],
        "Subject" => [String.t()]
      }

  """
  @type open_id_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_challenge_request() :: %{}

  """
  @type delete_challenge_request() :: %{}

  @typedoc """

  ## Example:

      create_connector_response() :: %{
        "ConnectorArn" => String.t()
      }

  """
  @type create_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      challenge() :: %{
        "Arn" => String.t(),
        "ConnectorArn" => String.t(),
        "CreatedAt" => [non_neg_integer()],
        "Password" => String.t(),
        "UpdatedAt" => [non_neg_integer()]
      }

  """
  @type challenge() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connector_request() :: %{}

  """
  @type get_connector_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_connector_request() :: %{
        optional("ClientToken") => String.t(),
        optional("MobileDeviceManagement") => list(),
        optional("Tags") => map(),
        required("CertificateAuthorityArn") => String.t()
      }

  """
  @type create_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connector_summary() :: %{
        "Arn" => String.t(),
        "CertificateAuthorityArn" => String.t(),
        "CreatedAt" => [non_neg_integer()],
        "Endpoint" => [String.t()],
        "MobileDeviceManagement" => list(),
        "OpenIdConfiguration" => open_id_configuration(),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "Type" => list(any()),
        "UpdatedAt" => [non_neg_integer()]
      }

  """
  @type connector_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => [String.t()],
        "Reason" => list(any())
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_connector_response() :: %{
        "Connector" => connector()
      }

  """
  @type get_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_challenge_metadata_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ConnectorArn") => String.t()
      }

  """
  @type list_challenge_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_connector_request() :: %{}

  """
  @type delete_connector_request() :: %{}

  @typedoc """

  ## Example:

      challenge_metadata() :: %{
        "Arn" => String.t(),
        "ConnectorArn" => String.t(),
        "CreatedAt" => [non_neg_integer()],
        "UpdatedAt" => [non_neg_integer()]
      }

  """
  @type challenge_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_challenge_metadata_request() :: %{}

  """
  @type get_challenge_metadata_request() :: %{}

  @typedoc """

  ## Example:

      intune_configuration() :: %{
        "AzureApplicationId" => String.t(),
        "Domain" => String.t()
      }

  """
  @type intune_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_challenge_metadata_response() :: %{
        "Challenges" => list(challenge_metadata_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_challenge_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_challenge_password_response() :: %{
        "Password" => String.t()
      }

  """
  @type get_challenge_password_response() :: %{String.t() => any()}

  @type create_challenge_errors() ::
          bad_request_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_connector_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_challenge_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_connector_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_challenge_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_challenge_password_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_connector_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_challenge_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_connectors_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "pca-connector-scep",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Pca Connector Scep",
      signature_version: "v4",
      signing_name: "pca-connector-scep",
      target_prefix: nil
    }
  end

  @doc """
  For general-purpose connectors.

  Creates a *challenge password* for the specified connector. The SCEP protocol
  uses a challenge password to authenticate a request before issuing a certificate
  from a certificate authority (CA). Your SCEP clients include the challenge
  password as part of their certificate request to Connector for SCEP. To retrieve
  the connector Amazon Resource Names (ARNs) for the connectors in your account,
  call
  [ListConnectors](https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_ListConnectors.html).

  To create additional challenge passwords for the connector, call
  `CreateChallenge` again. We recommend frequently rotating your challenge
  passwords.
  """
  @spec create_challenge(map(), create_challenge_request(), list()) ::
          {:ok, create_challenge_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_challenge_errors()}
  def create_challenge(%Client{} = client, input, options \\ []) do
    url_path = "/challenges"
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
  Creates a SCEP connector.

  A SCEP connector links Amazon Web Services Private Certificate Authority to your
  SCEP-compatible devices and mobile device management (MDM) systems. Before you
  create a connector, you must complete a set of prerequisites, including creation
  of a private certificate authority (CA) to use with this connector. For more
  information, see [Connector for SCEP prerequisites](https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-prerequisites.html).
  """
  @spec create_connector(map(), create_connector_request(), list()) ::
          {:ok, create_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_connector_errors()}
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
  Deletes the specified
  [Challenge](https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Challenge.html).
  """
  @spec delete_challenge(map(), String.t(), delete_challenge_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_challenge_errors()}
  def delete_challenge(%Client{} = client, challenge_arn, input, options \\ []) do
    url_path = "/challenges/#{AWS.Util.encode_uri(challenge_arn)}"
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
  Deletes the specified
  [Connector](https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Connector.html).

  This operation also deletes any challenges associated with the connector.
  """
  @spec delete_connector(map(), String.t(), delete_connector_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_connector_errors()}
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
  Retrieves the metadata for the specified
  [Challenge](https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Challenge.html).
  """
  @spec get_challenge_metadata(map(), String.t(), list()) ::
          {:ok, get_challenge_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_challenge_metadata_errors()}
  def get_challenge_metadata(%Client{} = client, challenge_arn, options \\ []) do
    url_path = "/challengeMetadata/#{AWS.Util.encode_uri(challenge_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the challenge password for the specified
  [Challenge](https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Challenge.html).
  """
  @spec get_challenge_password(map(), String.t(), list()) ::
          {:ok, get_challenge_password_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_challenge_password_errors()}
  def get_challenge_password(%Client{} = client, challenge_arn, options \\ []) do
    url_path = "/challengePasswords/#{AWS.Util.encode_uri(challenge_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details about the specified
  [Connector](https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Connector.html).

  Calling this action returns important details about the connector, such as the
  public SCEP URL where your clients can request certificates.
  """
  @spec get_connector(map(), String.t(), list()) ::
          {:ok, get_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_connector_errors()}
  def get_connector(%Client{} = client, connector_arn, options \\ []) do
    url_path = "/connectors/#{AWS.Util.encode_uri(connector_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the challenge metadata for the specified ARN.
  """
  @spec list_challenge_metadata(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_challenge_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_challenge_metadata_errors()}
  def list_challenge_metadata(
        %Client{} = client,
        connector_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/challengeMetadata"
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
  Lists the connectors belonging to your Amazon Web Services account.
  """
  @spec list_connectors(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_connectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_connectors_errors()}
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
  Retrieves the tags associated with the specified resource.

  Tags are key-value pairs that
  you can use to categorize and manage your resources, for purposes like billing.
  For
  example, you might set the tag key to "customer" and the value to the customer
  name or ID.
  You can specify one or more tags to add to each Amazon Web Services resource, up
  to 50 tags for a
  resource.
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
  Adds one or more tags to your resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
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
      204
    )
  end

  @doc """
  Removes one or more tags from your resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
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
end
