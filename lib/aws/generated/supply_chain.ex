# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SupplyChain do
  @moduledoc """
  AWS Supply Chain is a cloud-based application that works with your enterprise
  resource planning (ERP) and supply chain management systems.

  Using AWS Supply Chain, you can connect and extract your inventory, supply, and
  demand related data from existing ERP or supply chain systems into a single data
  model.

  The AWS Supply Chain API supports configuration data import for Supply Planning.

  All AWS Supply chain API operations are Amazon-authenticated and
  certificate-signed. They not only require the use of the AWS SDK, but also allow
  for the exclusive use of AWS Identity and Access Management users and roles to
  help facilitate access, trust, and permission policies.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2024-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "scn",
      global?: false,
      protocol: "rest-json",
      service_id: "SupplyChain",
      signature_version: "v4",
      signing_name: "scn",
      target_prefix: nil
    }
  end

  @doc """
  CreateBillOfMaterialsImportJob creates an import job for the Product Bill Of
  Materials (BOM) entity.

  For information on the product_bom entity, see the AWS Supply Chain User Guide.

  The CSV file must be located in an Amazon S3 location accessible to AWS Supply
  Chain. It is recommended to use the same Amazon S3 bucket created during your
  AWS Supply Chain instance creation.
  """
  def create_bill_of_materials_import_job(%Client{} = client, instance_id, input, options \\ []) do
    url_path =
      "/api/configuration/instances/#{AWS.Util.encode_uri(instance_id)}/bill-of-materials-import-jobs"

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
  Get status and details of a BillOfMaterialsImportJob.
  """
  def get_bill_of_materials_import_job(%Client{} = client, instance_id, job_id, options \\ []) do
    url_path =
      "/api/configuration/instances/#{AWS.Util.encode_uri(instance_id)}/bill-of-materials-import-jobs/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end
end
