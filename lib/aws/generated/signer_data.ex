# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SignerData do
  @moduledoc """
  AWS Signer Data Plane service provides APIs for checking revocation status of
  signed artifacts.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "code" => [String.t() | atom()],
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_revocation_status_request() :: %{
        required("certificateHashes") => list(String.t() | atom()),
        required("jobArn") => String.t() | atom(),
        required("platformId") => String.t() | atom(),
        required("profileVersionArn") => String.t() | atom(),
        required("signatureTimestamp") => [non_neg_integer()]
      }

  """
  @type get_revocation_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_revocation_status_response() :: %{
        "revokedEntities" => list(String.t() | atom())
      }

  """
  @type get_revocation_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_service_error_exception() :: %{
        "code" => [String.t() | atom()],
        "message" => [String.t() | atom()]
      }

  """
  @type internal_service_error_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "code" => [String.t() | atom()],
        "message" => [String.t() | atom()]
      }

  """
  @type too_many_requests_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "code" => [String.t() | atom()],
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type get_revocation_status_errors() ::
          validation_exception()
          | too_many_requests_exception()
          | internal_service_error_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2017-08-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "data-signer",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Signer Data",
      signature_version: "v4",
      signing_name: "signer",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves the revocation status for a signed artifact by checking if the signing
  profile, job, or certificate has been revoked.
  """
  @spec get_revocation_status(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_revocation_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_revocation_status_errors()}
  def get_revocation_status(
        %Client{} = client,
        certificate_hashes,
        job_arn,
        platform_id,
        profile_version_arn,
        signature_timestamp,
        options \\ []
      ) do
    url_path = "/revocations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(signature_timestamp) do
        [{"signatureTimestamp", signature_timestamp} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(profile_version_arn) do
        [{"profileVersionArn", profile_version_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(platform_id) do
        [{"platformId", platform_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(job_arn) do
        [{"jobArn", job_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(certificate_hashes) do
        [{"certificateHashes", certificate_hashes} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end
end
