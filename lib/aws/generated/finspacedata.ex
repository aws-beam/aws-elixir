# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Finspacedata do
  @moduledoc """
  The FinSpace APIs let you take actions inside the FinSpace environment.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-07-13",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "finspace-api",
      global?: false,
      protocol: "rest-json",
      service_id: "finspace data",
      signature_version: "v4",
      signing_name: "finspace-api",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new changeset in a FinSpace dataset.
  """
  def create_changeset(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/changesets"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Request programmatic credentials to use with Habanero SDK.
  """
  def get_programmatic_access_credentials(
        %Client{} = client,
        duration_in_minutes \\ nil,
        environment_id,
        options \\ []
      ) do
    url_path = "/credentials/programmatic"
    headers = []
    query_params = []

    query_params =
      if !is_nil(environment_id) do
        [{"environmentId", environment_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(duration_in_minutes) do
        [{"durationInMinutes", duration_in_minutes} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  A temporary Amazon S3 location to copy your files from a source location to
  stage or use as a scratch space in Habanero notebook.
  """
  def get_working_location(%Client{} = client, input, options \\ []) do
    url_path = "/workingLocationV1"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
