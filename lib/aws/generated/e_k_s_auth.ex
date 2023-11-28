# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EKSAuth do
  @moduledoc """
  The Amazon EKS Auth API and the `AssumeRoleForPodIdentity` action are only used
  by the EKS Pod Identity Agent.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2023-11-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "eks-auth",
      global?: false,
      protocol: "rest-json",
      service_id: "EKS Auth",
      signature_version: "v4",
      signing_name: "eks-auth",
      target_prefix: nil
    }
  end

  @doc """
  The Amazon EKS Auth API and the `AssumeRoleForPodIdentity` action are only used
  by the EKS Pod Identity Agent.

  We recommend that applications use the Amazon Web Services SDKs to connect to
  Amazon Web Services services; if credentials from an EKS Pod Identity
  association are available in the pod, the latest versions of the SDKs use them
  automatically.
  """
  def assume_role_for_pod_identity(%Client{} = client, cluster_name, input, options \\ []) do
    url_path = "/clusters/#{AWS.Util.encode_uri(cluster_name)}/assume-role-for-pod-identity"
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
