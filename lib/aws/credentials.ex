defmodule AWS.Credentials do
  @moduledoc """
  Helpers for building and resolving credentials used by AWS.Client.

  This module provides a small adapter layer around the existing client API so
  callers can either use explicit static credentials or delegate to a provider
  implementation such as aws_credentials.
  """

  @type credential_map :: %{
          optional(:access_key_id) => binary(),
          optional(:secret_access_key) => binary(),
          optional(:session_token) => binary() | nil,
          optional(:region) => binary() | nil
        }

  @type provider_source :: {:provider, module(), keyword()}

  @doc """
  Builds a static credential map.
  """
  @spec from_static(binary(), binary(), binary() | nil, binary() | nil) :: credential_map()
  def from_static(access_key_id, secret_access_key, token \\ nil, region \\ nil) do
    %{
      access_key_id: access_key_id,
      secret_access_key: secret_access_key,
      session_token: token,
      region: region
    }
  end

  @doc """
  Builds a provider-backed credential source for aws_credentials-compatible
  providers.
  """
  @spec aws_beam(keyword()) :: provider_source()
  def aws_beam(opts \\ []) do
    {:provider, AWS.Credentials.AWSBeam, opts}
  end
end

defmodule AWS.Credentials.Provider do
  @moduledoc """
  Behaviour for credential providers that can supply AWS credentials.
  """

  @callback resolve(keyword()) :: {:ok, map()} | {:error, term()}
end

defmodule AWS.Credentials.AWSBeam do
  @moduledoc """
  Adapter for the aws_credentials library.

  This module resolves credentials from the aws_credentials application when it is
  available in the runtime. If it is not loaded, resolution fails cleanly and the
  existing client values are left unchanged.
  """

  @behaviour AWS.Credentials.Provider

  @impl true
  def resolve(_opts) do
    if Code.ensure_loaded?(:aws_credentials) and
         function_exported?(:aws_credentials, :get_credentials, 0) do
      case :aws_credentials.get_credentials() do
        nil ->
          {:error, :no_credentials}

        credentials when is_map(credentials) ->
          {:ok,
           %{
             access_key_id:
               fetch_value(credentials, [
                 :access_key_id,
                 "access_key_id",
                 :accessKeyId,
                 "AccessKeyId"
               ]),
             secret_access_key:
               fetch_value(credentials, [
                 :secret_access_key,
                 "secret_access_key",
                 :secretAccessKey,
                 "SecretAccessKey"
               ]),
             session_token:
               fetch_value(credentials, [:token, "token", :sessionToken, "SessionToken"]),
             region: fetch_value(credentials, [:region, "region", :regionName, "RegionName"])
           }}

        other ->
          {:error, {:unexpected_credentials, other}}
      end
    else
      {:error, :module_unavailable}
    end
  end

  defp fetch_value(map, keys) do
    Enum.find_value(keys, fn key -> Map.get(map, key) end)
  end
end
