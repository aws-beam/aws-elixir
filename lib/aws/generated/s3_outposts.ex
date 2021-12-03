# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.S3Outposts do
  @moduledoc """
  Amazon S3 on Outposts provides access to S3 on Outposts operations.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "s3-outposts",
      global?: false,
      protocol: "rest-json",
      service_id: "S3Outposts",
      signature_version: "v4",
      signing_name: "s3-outposts",
      target_prefix: nil
    }
  end

  @doc """
  Amazon S3 on Outposts Access Points simplify managing data access at scale for
  shared datasets in S3 on Outposts.

  S3 on Outposts uses endpoints to connect to Outposts buckets so that you can
  perform actions within your virtual private cloud (VPC). For more information,
  see [ Accessing S3 on Outposts using VPC only access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/AccessingS3Outposts.html).

  This action creates an endpoint and associates it with the specified Outposts.

  It can take up to 5 minutes for this action to complete.

  Related actions include:

    *
  [DeleteEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html)     *
  [ListEndpoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html)
  """
  def create_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/S3Outposts/CreateEndpoint"
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
  Amazon S3 on Outposts Access Points simplify managing data access at scale for
  shared datasets in S3 on Outposts.

  S3 on Outposts uses endpoints to connect to Outposts buckets so that you can
  perform actions within your virtual private cloud (VPC). For more information,
  see [ Accessing S3 on Outposts using VPC only access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/AccessingS3Outposts.html).

  This action deletes an endpoint.

  It can take up to 5 minutes for this action to complete.

  Related actions include:

    *
  [CreateEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html)     *
  [ListEndpoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html)
  """
  def delete_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/S3Outposts/DeleteEndpoint"
    headers = []

    {query_params, input} =
      [
        {"EndpointId", "endpointId"},
        {"OutpostId", "outpostId"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Amazon S3 on Outposts Access Points simplify managing data access at scale for
  shared datasets in S3 on Outposts.

  S3 on Outposts uses endpoints to connect to Outposts buckets so that you can
  perform actions within your virtual private cloud (VPC). For more information,
  see [ Accessing S3 on Outposts using VPC only access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/AccessingS3Outposts.html).

  This action lists endpoints associated with the Outposts.

  Related actions include:

    *
  [CreateEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html)     *
  [DeleteEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html)
  """
  def list_endpoints(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/S3Outposts/ListEndpoints"
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
end
