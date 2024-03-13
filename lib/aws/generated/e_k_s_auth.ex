# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EKSAuth do
  @moduledoc """
  The Amazon EKS Auth API and the `AssumeRoleForPodIdentity` action are only
  used by the EKS Pod Identity Agent.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assume_role_for_pod_identity_request() :: %{
        required("token") => String.t()
      }

  """
  @type assume_role_for_pod_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assume_role_for_pod_identity_response() :: %{
        "assumedRoleUser" => assumed_role_user(),
        "audience" => [String.t()],
        "credentials" => credentials(),
        "podIdentityAssociation" => pod_identity_association(),
        "subject" => subject()
      }

  """
  @type assume_role_for_pod_identity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assumed_role_user() :: %{
        "arn" => [String.t()],
        "assumeRoleId" => [String.t()]
      }

  """
  @type assumed_role_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      credentials() :: %{
        "accessKeyId" => [String.t()],
        "expiration" => [non_neg_integer()],
        "secretAccessKey" => [String.t()],
        "sessionToken" => [String.t()]
      }

  """
  @type credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      expired_token_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type expired_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_token_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type invalid_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pod_identity_association() :: %{
        "associationArn" => [String.t()],
        "associationId" => [String.t()]
      }

  """
  @type pod_identity_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subject() :: %{
        "namespace" => [String.t()],
        "serviceAccount" => [String.t()]
      }

  """
  @type subject() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @type assume_role_for_pod_identity_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | invalid_token_exception()
          | invalid_request_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | expired_token_exception()
          | access_denied_exception()

  def metadata do
    %{
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
  Amazon Web Services services; if
  credentials from an EKS Pod Identity association are available in the pod, the
  latest versions of the
  SDKs use them automatically.
  """
  @spec assume_role_for_pod_identity(
          map(),
          String.t(),
          assume_role_for_pod_identity_request(),
          list()
        ) ::
          {:ok, assume_role_for_pod_identity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, assume_role_for_pod_identity_errors()}
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
