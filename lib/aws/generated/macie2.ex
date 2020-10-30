# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Macie2 do
  @moduledoc """
  Amazon Macie is a fully managed data security and data privacy service that
  uses machine learning and pattern matching to discover and protect your
  sensitive data in AWS. Macie automates the discovery of sensitive data,
  such as PII and intellectual property, to provide you with insight into the
  data that your organization stores in AWS. Macie also provides an inventory
  of your Amazon S3 buckets, which it continually monitors for you. If Macie
  detects sensitive data or potential data access issues, it generates
  detailed findings for you to review and act upon as necessary.
  """

  @doc """
  Accepts an Amazon Macie membership invitation that was received from a
  specific account.
  """
  def accept_invitation(client, input, options \\ []) do
    path_ = "/invitations/accept"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Retrieves information about one or more custom data identifiers.
  """
  def batch_get_custom_data_identifiers(client, input, options \\ []) do
    path_ = "/custom-data-identifiers/get"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates and defines the settings for a classification job.
  """
  def create_classification_job(client, input, options \\ []) do
    path_ = "/jobs"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates and defines the criteria and other settings for a custom data
  identifier.
  """
  def create_custom_data_identifier(client, input, options \\ []) do
    path_ = "/custom-data-identifiers"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates and defines the criteria and other settings for a findings filter.
  """
  def create_findings_filter(client, input, options \\ []) do
    path_ = "/findingsfilters"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Sends an Amazon Macie membership invitation to one or more accounts.
  """
  def create_invitations(client, input, options \\ []) do
    path_ = "/invitations"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Associates an account with an Amazon Macie master account.
  """
  def create_member(client, input, options \\ []) do
    path_ = "/members"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates sample findings.
  """
  def create_sample_findings(client, input, options \\ []) do
    path_ = "/findings/sample"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Declines Amazon Macie membership invitations that were received from
  specific accounts.
  """
  def decline_invitations(client, input, options \\ []) do
    path_ = "/invitations/decline"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Soft deletes a custom data identifier.
  """
  def delete_custom_data_identifier(client, id, input, options \\ []) do
    path_ = "/custom-data-identifiers/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a findings filter.
  """
  def delete_findings_filter(client, id, input, options \\ []) do
    path_ = "/findingsfilters/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes Amazon Macie membership invitations that were received from
  specific accounts.
  """
  def delete_invitations(client, input, options \\ []) do
    path_ = "/invitations/delete"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes the association between an Amazon Macie master account and an
  account.
  """
  def delete_member(client, id, input, options \\ []) do
    path_ = "/members/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Retrieves (queries) statistical data and other information about one or
  more S3 buckets that Amazon Macie monitors and analyzes.
  """
  def describe_buckets(client, input, options \\ []) do
    path_ = "/datasources/s3"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Retrieves the status and settings for a classification job.
  """
  def describe_classification_job(client, job_id, options \\ []) do
    path_ = "/jobs/#{URI.encode(job_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the Amazon Macie configuration settings for an AWS organization.
  """
  def describe_organization_configuration(client, options \\ []) do
    path_ = "/admin/configuration"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Disables an Amazon Macie account and deletes Macie resources for the
  account.
  """
  def disable_macie(client, input, options \\ []) do
    path_ = "/macie"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disables an account as the delegated Amazon Macie administrator account for
  an AWS organization.
  """
  def disable_organization_admin_account(client, input, options \\ []) do
    path_ = "/admin"
    headers = []
    {query_, input} =
      [
        {"adminAccountId", "adminAccountId"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disassociates a member account from its Amazon Macie master account.
  """
  def disassociate_from_master_account(client, input, options \\ []) do
    path_ = "/master/disassociate"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disassociates an Amazon Macie master account from a member account.
  """
  def disassociate_member(client, id, input, options \\ []) do
    path_ = "/members/disassociate/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Enables Amazon Macie and specifies the configuration settings for a Macie
  account.
  """
  def enable_macie(client, input, options \\ []) do
    path_ = "/macie"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Designates an account as the delegated Amazon Macie administrator account
  for an AWS organization.
  """
  def enable_organization_admin_account(client, input, options \\ []) do
    path_ = "/admin"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Retrieves (queries) aggregated statistical data for all the S3 buckets that
  Amazon Macie monitors and analyzes.
  """
  def get_bucket_statistics(client, input, options \\ []) do
    path_ = "/datasources/s3/statistics"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Retrieves the configuration settings for storing data classification
  results.
  """
  def get_classification_export_configuration(client, options \\ []) do
    path_ = "/classification-export-configuration"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the criteria and other settings for a custom data identifier.
  """
  def get_custom_data_identifier(client, id, options \\ []) do
    path_ = "/custom-data-identifiers/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) aggregated statistical data about findings.
  """
  def get_finding_statistics(client, input, options \\ []) do
    path_ = "/findings/statistics"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Retrieves the details of one or more findings.
  """
  def get_findings(client, input, options \\ []) do
    path_ = "/findings/describe"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Retrieves the criteria and other settings for a findings filter.
  """
  def get_findings_filter(client, id, options \\ []) do
    path_ = "/findingsfilters/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the count of Amazon Macie membership invitations that were
  received by an account.
  """
  def get_invitations_count(client, options \\ []) do
    path_ = "/invitations/count"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current status and configuration settings for an Amazon Macie
  account.
  """
  def get_macie_session(client, options \\ []) do
    path_ = "/macie"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the Amazon Macie master account for an account.
  """
  def get_master_account(client, options \\ []) do
    path_ = "/master"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a member account that's associated with an
  Amazon Macie master account.
  """
  def get_member(client, id, options \\ []) do
    path_ = "/members/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) quotas and aggregated usage data for one or more
  accounts.
  """
  def get_usage_statistics(client, input, options \\ []) do
    path_ = "/usage/statistics"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Retrieves (queries) aggregated usage data for an account.
  """
  def get_usage_totals(client, options \\ []) do
    path_ = "/usage"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves a subset of information about one or more classification jobs.
  """
  def list_classification_jobs(client, input, options \\ []) do
    path_ = "/jobs/list"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Retrieves a subset of information about all the custom data identifiers for
  an account.
  """
  def list_custom_data_identifiers(client, input, options \\ []) do
    path_ = "/custom-data-identifiers/list"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Retrieves a subset of information about one or more findings.
  """
  def list_findings(client, input, options \\ []) do
    path_ = "/findings"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Retrieves a subset of information about all the findings filters for an
  account.
  """
  def list_findings_filters(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/findingsfilters"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the Amazon Macie membership invitations
  that were received by an account.
  """
  def list_invitations(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/invitations"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the accounts that are associated with an Amazon
  Macie master account.
  """
  def list_members(client, max_results \\ nil, next_token \\ nil, only_associated \\ nil, options \\ []) do
    path_ = "/members"
    headers = []
    query_ = []
    query_ = if !is_nil(only_associated) do
      [{"onlyAssociated", only_associated} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the delegated Amazon Macie administrator
  account for an AWS organization.
  """
  def list_organization_admin_accounts(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/admin"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the tags (keys and values) that are associated with a
  classification job, custom data identifier, findings filter, or member
  account.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Creates or updates the configuration settings for storing data
  classification results.
  """
  def put_classification_export_configuration(client, input, options \\ []) do
    path_ = "/classification-export-configuration"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Adds or updates one or more tags (keys and values) that are associated with
  a classification job, custom data identifier, findings filter, or member
  account.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Tests a custom data identifier.
  """
  def test_custom_data_identifier(client, input, options \\ []) do
    path_ = "/custom-data-identifiers/test"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Removes one or more tags (keys and values) from a classification job,
  custom data identifier, findings filter, or member account.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"tagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Changes the status of a classification job.
  """
  def update_classification_job(client, job_id, input, options \\ []) do
    path_ = "/jobs/#{URI.encode(job_id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the criteria and other settings for a findings filter.
  """
  def update_findings_filter(client, id, input, options \\ []) do
    path_ = "/findingsfilters/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Suspends or re-enables an Amazon Macie account, or updates the
  configuration settings for a Macie account.
  """
  def update_macie_session(client, input, options \\ []) do
    path_ = "/macie"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Enables an Amazon Macie master account to suspend or re-enable a member
  account.
  """
  def update_member_session(client, id, input, options \\ []) do
    path_ = "/macie/members/#{URI.encode(id)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the Amazon Macie configuration settings for an AWS organization.
  """
  def update_organization_configuration(client, input, options \\ []) do
    path_ = "/admin/configuration"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "macie2"}
    host = build_host("macie2", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} -> error
    end
  end


  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
