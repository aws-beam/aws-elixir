# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.InspectorScan do
  @moduledoc """
  Amazon Inspector Scan is a vulnerability discovery service that scans a provided
  Software Bill of Materials (SBOM) for security vulnerabilities.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2023-08-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "inspector-scan",
      global?: false,
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

  You can generate compatible SBOMs for your resources using the [Amazon Inspector SBOM generator]().
  """
  def scan_sbom(%Client{} = client, input, options \\ []) do
    url_path = "/scan/sbom"
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
