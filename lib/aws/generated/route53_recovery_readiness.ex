# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53RecoveryReadiness do
  @moduledoc """
  Recovery readiness
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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
  Creates a cell in an account.
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
  Creates a cross-account readiness authorization.

  This lets you authorize another account to work with Route 53 Application
  Recovery Controller, for example, to check the readiness status of resources in
  a separate account.
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
  Creates a readiness check in an account.

  A readiness check monitors a resource set in your application, such as a set of
  Amazon Aurora instances, that Application Recovery Controller is auditing
  recovery readiness for. The audits run once every minute on every resource
  that's associated with a readiness check.
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
  Creates a recovery group in an account.

  A recovery group corresponds to an application and includes a list of the cells
  that make up the application.
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
  Creates a resource set.

  A resource set is a set of resources of one type that span multiple cells. You
  can associate a resource set with a readiness check to monitor the resources for
  failover readiness.
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
  Delete a cell.

  When successful, the response code is 204, with no response body.
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
  Deletes cross account readiness authorization.
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
  Deletes a readiness check.
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
  Deletes a recovery group.
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
  Deletes a resource set.
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
  Gets recommendations about architecture designs for improving resiliency for an
  application, based on a recovery group.
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
  Gets information about a cell including cell name, cell Amazon Resource Name
  (ARN), ARNs of nested cells for this cell, and a list of those cell ARNs with
  their associated recovery group ARNs.
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
  Gets readiness for a cell.

  Aggregates the readiness of all the resources that are associated with the cell
  into a single value.
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
  Gets details about a readiness check.
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
  Gets individual readiness status for a readiness check.

  To see the overall readiness status for a recovery group, that considers the
  readiness status for all the readiness checks in the recovery group, use
  GetRecoveryGroupReadinessSummary.
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
  Gets the readiness status for an individual readiness check.

  To see the overall readiness status for a recovery group, that considers the
  readiness status for all the readiness checks in a recovery group, use
  GetRecoveryGroupReadinessSummary.
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
  Gets details about a recovery group, including a list of the cells that are
  included in it.
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
  Displays a summary of information about a recovery group's readiness status.

  Includes the readiness checks for resources in the recovery group and the
  readiness status of each one.
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
  Displays the details about a resource set, including a list of the resources in
  the set.
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
  Lists the cells for an account.
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
  Lists the cross-account readiness authorizations that are in place for an
  account.
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
  Lists the readiness checks for an account.
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
  Lists the recovery groups in an account.
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
  Lists the resource sets in an account.
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
  Lists all readiness rules, or lists the readiness rules for a specific resource
  type.
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
  Lists the tags for a resource.
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
  Adds a tag to a resource.
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
  Removes a tag from a resource.
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
  Updates a cell to replace the list of nested cells with a new list of nested
  cells.
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
  Updates a readiness check.
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
  Updates a recovery group.
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
  Updates a resource set.
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
