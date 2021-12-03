# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53RecoveryReadiness do
  @moduledoc """
  AWS Route53 Recovery Readiness
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2019-12-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "route53-recovery-readiness",
      global?: false,
      protocol: "rest-json",
      service_id: "Route53 Recovery Readiness",
      signature_version: "v4",
      signing_name: "route53-recovery-readiness",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new Cell.
  """
  def create_cell(%Client{} = client, input, options \\ []) do
    url_path = "/cells"
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
      200
    )
  end

  @doc """
  Create a new cross account readiness authorization.
  """
  def create_cross_account_authorization(%Client{} = client, input, options \\ []) do
    url_path = "/crossaccountauthorizations"
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
      200
    )
  end

  @doc """
  Creates a new Readiness Check.
  """
  def create_readiness_check(%Client{} = client, input, options \\ []) do
    url_path = "/readinesschecks"
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
      200
    )
  end

  @doc """
  Creates a new Recovery Group.
  """
  def create_recovery_group(%Client{} = client, input, options \\ []) do
    url_path = "/recoverygroups"
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
      200
    )
  end

  @doc """
  Creates a new Resource Set.
  """
  def create_resource_set(%Client{} = client, input, options \\ []) do
    url_path = "/resourcesets"
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
      200
    )
  end

  @doc """
  Deletes an existing Cell.
  """
  def delete_cell(%Client{} = client, cell_name, input, options \\ []) do
    url_path = "/cells/#{AWS.Util.encode_uri(cell_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Delete cross account readiness authorization
  """
  def delete_cross_account_authorization(
        %Client{} = client,
        cross_account_authorization,
        input,
        options \\ []
      ) do
    url_path = "/crossaccountauthorizations/#{AWS.Util.encode_uri(cross_account_authorization)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an existing Readiness Check.
  """
  def delete_readiness_check(%Client{} = client, readiness_check_name, input, options \\ []) do
    url_path = "/readinesschecks/#{AWS.Util.encode_uri(readiness_check_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes an existing Recovery Group.
  """
  def delete_recovery_group(%Client{} = client, recovery_group_name, input, options \\ []) do
    url_path = "/recoverygroups/#{AWS.Util.encode_uri(recovery_group_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes an existing Resource Set.
  """
  def delete_resource_set(%Client{} = client, resource_set_name, input, options \\ []) do
    url_path = "/resourcesets/#{AWS.Util.encode_uri(resource_set_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Returns a collection of recommendations to improve resilliance and readiness
  check quality for a Recovery Group.
  """
  def get_architecture_recommendations(
        %Client{} = client,
        recovery_group_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/recoverygroups/#{AWS.Util.encode_uri(recovery_group_name)}/architectureRecommendations"

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
      200
    )
  end

  @doc """
  Returns information about a Cell.
  """
  def get_cell(%Client{} = client, cell_name, options \\ []) do
    url_path = "/cells/#{AWS.Util.encode_uri(cell_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns information about readiness of a Cell.
  """
  def get_cell_readiness_summary(
        %Client{} = client,
        cell_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/cellreadiness/#{AWS.Util.encode_uri(cell_name)}"
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
      200
    )
  end

  @doc """
  Returns information about a ReadinessCheck.
  """
  def get_readiness_check(%Client{} = client, readiness_check_name, options \\ []) do
    url_path = "/readinesschecks/#{AWS.Util.encode_uri(readiness_check_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns detailed information about the status of an individual resource within a
  Readiness Check's Resource Set.
  """
  def get_readiness_check_resource_status(
        %Client{} = client,
        readiness_check_name,
        resource_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/readinesschecks/#{AWS.Util.encode_uri(readiness_check_name)}/resource/#{AWS.Util.encode_uri(resource_identifier)}/status"

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
      200
    )
  end

  @doc """
  Returns information about the status of a Readiness Check.
  """
  def get_readiness_check_status(
        %Client{} = client,
        readiness_check_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/readinesschecks/#{AWS.Util.encode_uri(readiness_check_name)}/status"
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
      200
    )
  end

  @doc """
  Returns information about a Recovery Group.
  """
  def get_recovery_group(%Client{} = client, recovery_group_name, options \\ []) do
    url_path = "/recoverygroups/#{AWS.Util.encode_uri(recovery_group_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns information about a Recovery Group.
  """
  def get_recovery_group_readiness_summary(
        %Client{} = client,
        recovery_group_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/recoverygroupreadiness/#{AWS.Util.encode_uri(recovery_group_name)}"
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
      200
    )
  end

  @doc """
  Returns information about a Resource Set.
  """
  def get_resource_set(%Client{} = client, resource_set_name, options \\ []) do
    url_path = "/resourcesets/#{AWS.Util.encode_uri(resource_set_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a collection of Cells.
  """
  def list_cells(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/cells"
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
      200
    )
  end

  @doc """
  Returns a collection of cross account readiness authorizations.
  """
  def list_cross_account_authorizations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/crossaccountauthorizations"
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
      200
    )
  end

  @doc """
  Returns a collection of Readiness Checks.
  """
  def list_readiness_checks(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/readinesschecks"
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
      200
    )
  end

  @doc """
  Returns a collection of Recovery Groups.
  """
  def list_recovery_groups(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/recoverygroups"
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
      200
    )
  end

  @doc """
  Returns a collection of Resource Sets.
  """
  def list_resource_sets(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/resourcesets"
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
      200
    )
  end

  @doc """
  Returns a collection of rules that are applied as part of Readiness Checks.
  """
  def list_rules(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        resource_type \\ nil,
        options \\ []
      ) do
    url_path = "/rules"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

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
      200
    )
  end

  @doc """
  Returns a list of the tags assigned to the specified resource.
  """
  def list_tags_for_resources(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Adds tags to the specified resource.

  You can specify one or more tags to add.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      200
    )
  end

  @doc """
  Removes tags from the specified resource.

  You can specify one or more tags to remove.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
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
      204
    )
  end

  @doc """
  Updates an existing Cell.
  """
  def update_cell(%Client{} = client, cell_name, input, options \\ []) do
    url_path = "/cells/#{AWS.Util.encode_uri(cell_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an exisiting Readiness Check.
  """
  def update_readiness_check(%Client{} = client, readiness_check_name, input, options \\ []) do
    url_path = "/readinesschecks/#{AWS.Util.encode_uri(readiness_check_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing Recovery Group.
  """
  def update_recovery_group(%Client{} = client, recovery_group_name, input, options \\ []) do
    url_path = "/recoverygroups/#{AWS.Util.encode_uri(recovery_group_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing Resource Set.
  """
  def update_resource_set(%Client{} = client, resource_set_name, input, options \\ []) do
    url_path = "/resourcesets/#{AWS.Util.encode_uri(resource_set_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
