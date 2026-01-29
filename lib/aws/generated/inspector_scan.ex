# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.InspectorScan do
  @moduledoc """
  Amazon Inspector Scan is a vulnerability discovery service that scans a provided
  Software Bill of Materials (SBOM) for security vulnerabilities.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()],
        "reason" => list(any()),
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scan_sbom_request() :: %{
        optional("outputFormat") => list(any()),
        required("sbom") => any()
      }

  """
  @type scan_sbom_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scan_sbom_response() :: %{
        "sbom" => any()
      }

  """
  @type scan_sbom_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fields" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @type scan_sbom_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2023-08-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "inspector-scan",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Inspector Scan",
      signature_version: "v4",
      signing_name: "inspector-scan",
      target_prefix: nil
    }
  end

  @doc """
  Scans a provided CycloneDX 1.5 SBOM and reports on any vulnerabilities
  discovered in that SBOM.

  You can generate compatible SBOMs for your resources using the [Amazon Inspector SBOM
  generator](https://docs.aws.amazon.com/inspector/latest/user/sbom-generator.html).

  The output of this action reports NVD and CVSS scores when NVD and CVSS scores
  are available. Because the output reports both scores, you might notice a
  discrepency between them. However, you can triage the severity of either score
  depending on the vendor of your choosing.
  """
  @spec scan_sbom(map(), scan_sbom_request(), list()) ::
          {:ok, scan_sbom_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, scan_sbom_errors()}
  def scan_sbom(%Client{} = client, input, options \\ []) do
    url_path = "/scan/sbom"
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
end
