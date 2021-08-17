# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AccessAnalyzer do
  @moduledoc """
  AWS IAM Access Analyzer helps identify potential resource-access risks by
  enabling you to identify any policies that grant access to an external
  principal.

  It does this by using logic-based reasoning to analyze resource-based policies
  in your AWS environment. An external principal can be another AWS account, a
  root user, an IAM user or role, a federated user, an AWS service, or an
  anonymous user. You can also use Access Analyzer to preview and validate public
  and cross-account access to your resources before deploying permissions changes.
  This guide describes the AWS IAM Access Analyzer operations that you can call
  programmatically. For general information about Access Analyzer, see [AWS IAM Access
  Analyzer](https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html)
  in the **IAM User Guide**.

  To start using Access Analyzer, you first need to create an analyzer.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2019-11-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "access-analyzer",
      global?: false,
      protocol: "rest-json",
      service_id: "AccessAnalyzer",
      signature_version: "v4",
      signing_name: "access-analyzer",
      target_prefix: nil
    }
  end

  @doc """
  Retroactively applies the archive rule to existing findings that meet the
  archive rule criteria.
  """
  def apply_archive_rule(%Client{} = client, input, options \\ []) do
    url_path = "/archive-rule"
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
  Cancels the requested policy generation.
  """
  def cancel_policy_generation(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/policy/generation/#{AWS.Util.encode_uri(job_id)}"
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
  Creates an access preview that allows you to preview Access Analyzer findings
  for your resource before deploying resource permissions.
  """
  def create_access_preview(%Client{} = client, input, options \\ []) do
    url_path = "/access-preview"
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
  Creates an analyzer for your account.
  """
  def create_analyzer(%Client{} = client, input, options \\ []) do
    url_path = "/analyzer"
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
  Creates an archive rule for the specified analyzer.

  Archive rules automatically archive new findings that meet the criteria you
  define when you create the rule.

  To learn about filter keys that you can use to create an archive rule, see
  [Access Analyzer filter keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html)
  in the **IAM User Guide**.
  """
  def create_archive_rule(%Client{} = client, analyzer_name, input, options \\ []) do
    url_path = "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}/archive-rule"
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
  Deletes the specified analyzer.

  When you delete an analyzer, Access Analyzer is disabled for the account or
  organization in the current or specific Region. All findings that were generated
  by the analyzer are deleted. You cannot undo this action.
  """
  def delete_analyzer(%Client{} = client, analyzer_name, input, options \\ []) do
    url_path = "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      200
    )
  end

  @doc """
  Deletes the specified archive rule.
  """
  def delete_archive_rule(%Client{} = client, analyzer_name, rule_name, input, options \\ []) do
    url_path =
      "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}/archive-rule/#{AWS.Util.encode_uri(rule_name)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      200
    )
  end

  @doc """
  Retrieves information about an access preview for the specified analyzer.
  """
  def get_access_preview(%Client{} = client, access_preview_id, analyzer_arn, options \\ []) do
    url_path = "/access-preview/#{AWS.Util.encode_uri(access_preview_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(analyzer_arn) do
        [{"analyzerArn", analyzer_arn} | query_params]
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
  Retrieves information about a resource that was analyzed.
  """
  def get_analyzed_resource(%Client{} = client, analyzer_arn, resource_arn, options \\ []) do
    url_path = "/analyzed-resource"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(analyzer_arn) do
        [{"analyzerArn", analyzer_arn} | query_params]
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
  Retrieves information about the specified analyzer.
  """
  def get_analyzer(%Client{} = client, analyzer_name, options \\ []) do
    url_path = "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}"
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
  Retrieves information about an archive rule.

  To learn about filter keys that you can use to create an archive rule, see
  [Access Analyzer filter keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html)
  in the **IAM User Guide**.
  """
  def get_archive_rule(%Client{} = client, analyzer_name, rule_name, options \\ []) do
    url_path =
      "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}/archive-rule/#{AWS.Util.encode_uri(rule_name)}"

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
  Retrieves information about the specified finding.
  """
  def get_finding(%Client{} = client, id, analyzer_arn, options \\ []) do
    url_path = "/finding/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(analyzer_arn) do
        [{"analyzerArn", analyzer_arn} | query_params]
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
  Retrieves the policy that was generated using `StartPolicyGeneration`.
  """
  def get_generated_policy(
        %Client{} = client,
        job_id,
        include_resource_placeholders \\ nil,
        include_service_level_template \\ nil,
        options \\ []
      ) do
    url_path = "/policy/generation/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(include_service_level_template) do
        [{"includeServiceLevelTemplate", include_service_level_template} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include_resource_placeholders) do
        [{"includeResourcePlaceholders", include_resource_placeholders} | query_params]
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
  Retrieves a list of access preview findings generated by the specified access
  preview.
  """
  def list_access_preview_findings(%Client{} = client, access_preview_id, input, options \\ []) do
    url_path = "/access-preview/#{AWS.Util.encode_uri(access_preview_id)}"
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
  Retrieves a list of access previews for the specified analyzer.
  """
  def list_access_previews(
        %Client{} = client,
        analyzer_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/access-preview"
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

    query_params =
      if !is_nil(analyzer_arn) do
        [{"analyzerArn", analyzer_arn} | query_params]
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
  Retrieves a list of resources of the specified type that have been analyzed by
  the specified analyzer..
  """
  def list_analyzed_resources(%Client{} = client, input, options \\ []) do
    url_path = "/analyzed-resource"
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
  Retrieves a list of analyzers.
  """
  def list_analyzers(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/analyzer"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
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
  Retrieves a list of archive rules created for the specified analyzer.
  """
  def list_archive_rules(
        %Client{} = client,
        analyzer_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}/archive-rule"
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
  Retrieves a list of findings generated by the specified analyzer.

  To learn about filter keys that you can use to retrieve a list of findings, see
  [Access Analyzer filter keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html)
  in the **IAM User Guide**.
  """
  def list_findings(%Client{} = client, input, options \\ []) do
    url_path = "/finding"
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
  Lists all of the policy generations requested in the last seven days.
  """
  def list_policy_generations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        principal_arn \\ nil,
        options \\ []
      ) do
    url_path = "/policy/generation"
    headers = []
    query_params = []

    query_params =
      if !is_nil(principal_arn) do
        [{"principalArn", principal_arn} | query_params]
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
  Retrieves a list of tags applied to the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
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
  Starts the policy generation request.
  """
  def start_policy_generation(%Client{} = client, input, options \\ []) do
    url_path = "/policy/generation"
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
  Immediately starts a scan of the policies applied to the specified resource.
  """
  def start_resource_scan(%Client{} = client, input, options \\ []) do
    url_path = "/resource/scan"
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
  Adds a tag to the specified resource.
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
  Removes a tag from the specified resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
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
      200
    )
  end

  @doc """
  Updates the criteria and values for the specified archive rule.
  """
  def update_archive_rule(%Client{} = client, analyzer_name, rule_name, input, options \\ []) do
    url_path =
      "/analyzer/#{AWS.Util.encode_uri(analyzer_name)}/archive-rule/#{AWS.Util.encode_uri(rule_name)}"

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
  Updates the status for the specified findings.
  """
  def update_findings(%Client{} = client, input, options \\ []) do
    url_path = "/finding"
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
  Requests the validation of a policy and returns a list of findings.

  The findings help you identify issues and provide actionable recommendations to
  resolve the issue and enable you to author functional policies that meet
  security best practices.
  """
  def validate_policy(%Client{} = client, input, options \\ []) do
    url_path = "/policy/validation"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

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
end
