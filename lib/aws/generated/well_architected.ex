# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WellArchitected do
  @moduledoc """
  Well-Architected Tool

  This is the *Well-Architected Tool API Reference*.

  The WA Tool API provides programmatic access to the [Well-Architected Tool](http://aws.amazon.com/well-architected-tool) in the [Amazon Web Services Management Console](https://console.aws.amazon.com/wellarchitected). For
  information about the Well-Architected Tool, see the [Well-Architected Tool User Guide](https://docs.aws.amazon.com/wellarchitected/latest/userguide/intro.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2020-03-31",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "wellarchitected",
      global?: false,
      protocol: "rest-json",
      service_id: "WellArchitected",
      signature_version: "v4",
      signing_name: "wellarchitected",
      target_prefix: nil
    }
  end

  @doc """
  Associate a lens to a workload.

  Up to 10 lenses can be associated with a workload in a single API operation. A
  maximum of 20 lenses can be associated with a workload.

  ## Disclaimer

  By accessing and/or applying custom lenses created by another Amazon Web
  Services user or account, you acknowledge that custom lenses created by other
  users and shared with you are Third Party Content as defined in the Amazon Web
  Services Customer Agreement.
  """
  def associate_lenses(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/associateLenses"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Associate a profile with a workload.
  """
  def associate_profiles(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/associateProfiles"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Create a lens share.

  The owner of a lens can share it with other Amazon Web Services accounts, users,
  an organization, and organizational units (OUs) in the same Amazon Web Services
  Region. Lenses provided by Amazon Web Services (Amazon Web Services Official
  Content) cannot be shared.

  Shared access to a lens is not removed until the lens invitation is deleted.

  If you share a lens with an organization or OU, all accounts in the organization
  or OU are granted access to the lens.

  For more information, see [Sharing a custom lens](https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-sharing.html)
  in the *Well-Architected Tool User Guide*.

  ## Disclaimer

  By sharing your custom lenses with other Amazon Web Services accounts, you
  acknowledge that Amazon Web Services will make your custom lenses available to
  those other accounts. Those other accounts may continue to access and use your
  shared custom lenses even if you delete the custom lenses from your own Amazon
  Web Services account or terminate your Amazon Web Services account.
  """
  def create_lens_share(%Client{} = client, lens_alias, input, options \\ []) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}/shares"
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
      nil
    )
  end

  @doc """
  Create a new lens version.

  A lens can have up to 100 versions.

  Use this operation to publish a new lens version after you have imported a lens.
  The `LensAlias` is used to identify the lens to be published. The owner of a
  lens can share the lens with other Amazon Web Services accounts and users in the
  same Amazon Web Services Region. Only the owner of a lens can delete it.
  """
  def create_lens_version(%Client{} = client, lens_alias, input, options \\ []) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}/versions"
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
      nil
    )
  end

  @doc """
  Create a milestone for an existing workload.
  """
  def create_milestone(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/milestones"
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
      nil
    )
  end

  @doc """
  Create a profile.
  """
  def create_profile(%Client{} = client, input, options \\ []) do
    url_path = "/profiles"
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
      nil
    )
  end

  @doc """
  Create a profile share.
  """
  def create_profile_share(%Client{} = client, profile_arn, input, options \\ []) do
    url_path = "/profiles/#{AWS.Util.encode_uri(profile_arn)}/shares"
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
      nil
    )
  end

  @doc """
  Create a review template.

  ## Disclaimer

  Do not include or gather personal identifiable information (PII) of end users or
  other identifiable individuals in or via your review templates. If your review
  template or those shared with you and used in your account do include or collect
  PII you are responsible for: ensuring that the included PII is processed in
  accordance with applicable law, providing adequate privacy notices, and
  obtaining necessary consents for processing such data.
  """
  def create_review_template(%Client{} = client, input, options \\ []) do
    url_path = "/reviewTemplates"
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
      nil
    )
  end

  @doc """
  Create a review template share.

  The owner of a review template can share it with other Amazon Web Services
  accounts, users, an organization, and organizational units (OUs) in the same
  Amazon Web Services Region.

  Shared access to a review template is not removed until the review template
  share invitation is deleted.

  If you share a review template with an organization or OU, all accounts in the
  organization or OU are granted access to the review template.

  ## Disclaimer

  By sharing your review template with other Amazon Web Services accounts, you
  acknowledge that Amazon Web Services will make your review template available to
  those other accounts.
  """
  def create_template_share(%Client{} = client, template_arn, input, options \\ []) do
    url_path = "/templates/shares/#{AWS.Util.encode_uri(template_arn)}"
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
      nil
    )
  end

  @doc """
  Create a new workload.

  The owner of a workload can share the workload with other Amazon Web Services
  accounts, users, an organization, and organizational units (OUs) in the same
  Amazon Web Services Region. Only the owner of a workload can delete it.

  For more information, see [Defining a Workload](https://docs.aws.amazon.com/wellarchitected/latest/userguide/define-workload.html)
  in the *Well-Architected Tool User Guide*.

  Either `AwsRegions`, `NonAwsRegions`, or both must be specified when creating a
  workload.

  You also must specify `ReviewOwner`, even though the parameter is listed as not
  being required in the following section.

  When creating a workload using a review template, you must have the following
  IAM permissions:

    * `wellarchitected:GetReviewTemplate`

    * `wellarchitected:GetReviewTemplateAnswer`

    * `wellarchitected:ListReviewTemplateAnswers`

    * `wellarchitected:GetReviewTemplateLensReview`
  """
  def create_workload(%Client{} = client, input, options \\ []) do
    url_path = "/workloads"
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
      nil
    )
  end

  @doc """
  Create a workload share.

  The owner of a workload can share it with other Amazon Web Services accounts and
  users in the same Amazon Web Services Region. Shared access to a workload is not
  removed until the workload invitation is deleted.

  If you share a workload with an organization or OU, all accounts in the
  organization or OU are granted access to the workload.

  For more information, see [Sharing a workload](https://docs.aws.amazon.com/wellarchitected/latest/userguide/workloads-sharing.html)
  in the *Well-Architected Tool User Guide*.
  """
  def create_workload_share(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/shares"
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
      nil
    )
  end

  @doc """
  Delete an existing lens.

  Only the owner of a lens can delete it. After the lens is deleted, Amazon Web
  Services accounts and users that you shared the lens with can continue to use
  it, but they will no longer be able to apply it to new workloads.

  ## Disclaimer

  By sharing your custom lenses with other Amazon Web Services accounts, you
  acknowledge that Amazon Web Services will make your custom lenses available to
  those other accounts. Those other accounts may continue to access and use your
  shared custom lenses even if you delete the custom lenses from your own Amazon
  Web Services account or terminate your Amazon Web Services account.
  """
  def delete_lens(%Client{} = client, lens_alias, input, options \\ []) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}"
    headers = []

    {query_params, input} =
      [
        {"ClientRequestToken", "ClientRequestToken"},
        {"LensStatus", "LensStatus"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Delete a lens share.

  After the lens share is deleted, Amazon Web Services accounts, users,
  organizations, and organizational units (OUs) that you shared the lens with can
  continue to use it, but they will no longer be able to apply it to new
  workloads.

  ## Disclaimer

  By sharing your custom lenses with other Amazon Web Services accounts, you
  acknowledge that Amazon Web Services will make your custom lenses available to
  those other accounts. Those other accounts may continue to access and use your
  shared custom lenses even if you delete the custom lenses from your own Amazon
  Web Services account or terminate your Amazon Web Services account.
  """
  def delete_lens_share(%Client{} = client, lens_alias, share_id, input, options \\ []) do
    url_path =
      "/lenses/#{AWS.Util.encode_uri(lens_alias)}/shares/#{AWS.Util.encode_uri(share_id)}"

    headers = []

    {query_params, input} =
      [
        {"ClientRequestToken", "ClientRequestToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Delete a profile.

  ## Disclaimer

  By sharing your profile with other Amazon Web Services accounts, you acknowledge
  that Amazon Web Services will make your profile available to those other
  accounts. Those other accounts may continue to access and use your shared
  profile even if you delete the profile from your own Amazon Web Services account
  or terminate your Amazon Web Services account.
  """
  def delete_profile(%Client{} = client, profile_arn, input, options \\ []) do
    url_path = "/profiles/#{AWS.Util.encode_uri(profile_arn)}"
    headers = []

    {query_params, input} =
      [
        {"ClientRequestToken", "ClientRequestToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Delete a profile share.
  """
  def delete_profile_share(%Client{} = client, profile_arn, share_id, input, options \\ []) do
    url_path =
      "/profiles/#{AWS.Util.encode_uri(profile_arn)}/shares/#{AWS.Util.encode_uri(share_id)}"

    headers = []

    {query_params, input} =
      [
        {"ClientRequestToken", "ClientRequestToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Delete a review template.

  Only the owner of a review template can delete it.

  After the review template is deleted, Amazon Web Services accounts, users,
  organizations, and organizational units (OUs) that you shared the review
  template with will no longer be able to apply it to new workloads.
  """
  def delete_review_template(%Client{} = client, template_arn, input, options \\ []) do
    url_path = "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}"
    headers = []

    {query_params, input} =
      [
        {"ClientRequestToken", "ClientRequestToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Delete a review template share.

  After the review template share is deleted, Amazon Web Services accounts, users,
  organizations, and organizational units (OUs) that you shared the review
  template with will no longer be able to apply it to new workloads.
  """
  def delete_template_share(%Client{} = client, share_id, template_arn, input, options \\ []) do
    url_path =
      "/templates/shares/#{AWS.Util.encode_uri(template_arn)}/#{AWS.Util.encode_uri(share_id)}"

    headers = []

    {query_params, input} =
      [
        {"ClientRequestToken", "ClientRequestToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Delete an existing workload.
  """
  def delete_workload(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}"
    headers = []

    {query_params, input} =
      [
        {"ClientRequestToken", "ClientRequestToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Delete a workload share.
  """
  def delete_workload_share(%Client{} = client, share_id, workload_id, input, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/shares/#{AWS.Util.encode_uri(share_id)}"

    headers = []

    {query_params, input} =
      [
        {"ClientRequestToken", "ClientRequestToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Disassociate a lens from a workload.

  Up to 10 lenses can be disassociated from a workload in a single API operation.

  The Amazon Web Services Well-Architected Framework lens (`wellarchitected`)
  cannot be removed from a workload.
  """
  def disassociate_lenses(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/disassociateLenses"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Disassociate a profile from a workload.
  """
  def disassociate_profiles(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/disassociateProfiles"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Export an existing lens.

  Only the owner of a lens can export it. Lenses provided by Amazon Web Services
  (Amazon Web Services Official Content) cannot be exported.

  Lenses are defined in JSON. For more information, see [JSON format specification](https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-format-specification.html)
  in the *Well-Architected Tool User Guide*.

  ## Disclaimer

  Do not include or gather personal identifiable information (PII) of end users or
  other identifiable individuals in or via your custom lenses. If your custom lens
  or those shared with you and used in your account do include or collect PII you
  are responsible for: ensuring that the included PII is processed in accordance
  with applicable law, providing adequate privacy notices, and obtaining necessary
  consents for processing such data.
  """
  def export_lens(%Client{} = client, lens_alias, lens_version \\ nil, options \\ []) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}/export"
    headers = []
    query_params = []

    query_params =
      if !is_nil(lens_version) do
        [{"LensVersion", lens_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Get the answer to a specific question in a workload review.
  """
  def get_answer(
        %Client{} = client,
        lens_alias,
        question_id,
        workload_id,
        milestone_number \\ nil,
        options \\ []
      ) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/answers/#{AWS.Util.encode_uri(question_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(milestone_number) do
        [{"MilestoneNumber", milestone_number} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Get a consolidated report of your workloads.

  You can optionally choose to include workloads that have been shared with you.
  """
  def get_consolidated_report(
        %Client{} = client,
        format,
        include_shared_resources \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/consolidatedReport"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include_shared_resources) do
        [{"IncludeSharedResources", include_shared_resources} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(format) do
        [{"Format", format} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Get an existing lens.
  """
  def get_lens(%Client{} = client, lens_alias, lens_version \\ nil, options \\ []) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(lens_version) do
        [{"LensVersion", lens_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Get lens review.
  """
  def get_lens_review(
        %Client{} = client,
        lens_alias,
        workload_id,
        milestone_number \\ nil,
        options \\ []
      ) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(milestone_number) do
        [{"MilestoneNumber", milestone_number} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Get lens review report.
  """
  def get_lens_review_report(
        %Client{} = client,
        lens_alias,
        workload_id,
        milestone_number \\ nil,
        options \\ []
      ) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/report"

    headers = []
    query_params = []

    query_params =
      if !is_nil(milestone_number) do
        [{"MilestoneNumber", milestone_number} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Get lens version differences.
  """
  def get_lens_version_difference(
        %Client{} = client,
        lens_alias,
        base_lens_version \\ nil,
        target_lens_version \\ nil,
        options \\ []
      ) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}/versionDifference"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target_lens_version) do
        [{"TargetLensVersion", target_lens_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(base_lens_version) do
        [{"BaseLensVersion", base_lens_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Get a milestone for an existing workload.
  """
  def get_milestone(%Client{} = client, milestone_number, workload_id, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/milestones/#{AWS.Util.encode_uri(milestone_number)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Get profile information.
  """
  def get_profile(%Client{} = client, profile_arn, profile_version \\ nil, options \\ []) do
    url_path = "/profiles/#{AWS.Util.encode_uri(profile_arn)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(profile_version) do
        [{"ProfileVersion", profile_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Get profile template.
  """
  def get_profile_template(%Client{} = client, options \\ []) do
    url_path = "/profileTemplate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Get review template.
  """
  def get_review_template(%Client{} = client, template_arn, options \\ []) do
    url_path = "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Get review template answer.
  """
  def get_review_template_answer(
        %Client{} = client,
        lens_alias,
        question_id,
        template_arn,
        options \\ []
      ) do
    url_path =
      "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/answers/#{AWS.Util.encode_uri(question_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Get a lens review associated with a review template.
  """
  def get_review_template_lens_review(%Client{} = client, lens_alias, template_arn, options \\ []) do
    url_path =
      "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Get an existing workload.
  """
  def get_workload(%Client{} = client, workload_id, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Import a new custom lens or update an existing custom lens.

  To update an existing custom lens, specify its ARN as the `LensAlias`. If no ARN
  is specified, a new custom lens is created.

  The new or updated lens will have a status of `DRAFT`. The lens cannot be
  applied to workloads or shared with other Amazon Web Services accounts until
  it's published with `CreateLensVersion`.

  Lenses are defined in JSON. For more information, see [JSON format specification](https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-format-specification.html)
  in the *Well-Architected Tool User Guide*.

  A custom lens cannot exceed 500 KB in size.

  ## Disclaimer

  Do not include or gather personal identifiable information (PII) of end users or
  other identifiable individuals in or via your custom lenses. If your custom lens
  or those shared with you and used in your account do include or collect PII you
  are responsible for: ensuring that the included PII is processed in accordance
  with applicable law, providing adequate privacy notices, and obtaining necessary
  consents for processing such data.
  """
  def import_lens(%Client{} = client, input, options \\ []) do
    url_path = "/importLens"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  List of answers for a particular workload and lens.
  """
  def list_answers(
        %Client{} = client,
        lens_alias,
        workload_id,
        max_results \\ nil,
        milestone_number \\ nil,
        next_token \\ nil,
        pillar_id \\ nil,
        question_priority \\ nil,
        options \\ []
      ) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/answers"

    headers = []
    query_params = []

    query_params =
      if !is_nil(question_priority) do
        [{"QuestionPriority", question_priority} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(pillar_id) do
        [{"PillarId", pillar_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(milestone_number) do
        [{"MilestoneNumber", milestone_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  List of Trusted Advisor check details by account related to the workload.
  """
  def list_check_details(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/checks"
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
      nil
    )
  end

  @doc """
  List of Trusted Advisor checks summarized for all accounts related to the
  workload.
  """
  def list_check_summaries(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/checkSummaries"
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
      nil
    )
  end

  @doc """
  List lens review improvements.
  """
  def list_lens_review_improvements(
        %Client{} = client,
        lens_alias,
        workload_id,
        max_results \\ nil,
        milestone_number \\ nil,
        next_token \\ nil,
        pillar_id \\ nil,
        question_priority \\ nil,
        options \\ []
      ) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/improvements"

    headers = []
    query_params = []

    query_params =
      if !is_nil(question_priority) do
        [{"QuestionPriority", question_priority} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(pillar_id) do
        [{"PillarId", pillar_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(milestone_number) do
        [{"MilestoneNumber", milestone_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  List lens reviews for a particular workload.
  """
  def list_lens_reviews(
        %Client{} = client,
        workload_id,
        max_results \\ nil,
        milestone_number \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(milestone_number) do
        [{"MilestoneNumber", milestone_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  List the lens shares associated with the lens.
  """
  def list_lens_shares(
        %Client{} = client,
        lens_alias,
        max_results \\ nil,
        next_token \\ nil,
        shared_with_prefix \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/lenses/#{AWS.Util.encode_uri(lens_alias)}/shares"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"Status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(shared_with_prefix) do
        [{"SharedWithPrefix", shared_with_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  List the available lenses.
  """
  def list_lenses(
        %Client{} = client,
        lens_name \\ nil,
        lens_status \\ nil,
        lens_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/lenses"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(lens_type) do
        [{"LensType", lens_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(lens_status) do
        [{"LensStatus", lens_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(lens_name) do
        [{"LensName", lens_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  List all milestones for an existing workload.
  """
  def list_milestones(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/milestonesSummaries"
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
      nil
    )
  end

  @doc """
  List lens notifications.
  """
  def list_notifications(%Client{} = client, input, options \\ []) do
    url_path = "/notifications"
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
      nil
    )
  end

  @doc """
  List profile notifications.
  """
  def list_profile_notifications(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        workload_id \\ nil,
        options \\ []
      ) do
    url_path = "/profileNotifications/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workload_id) do
        [{"WorkloadId", workload_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  List profile shares.
  """
  def list_profile_shares(
        %Client{} = client,
        profile_arn,
        max_results \\ nil,
        next_token \\ nil,
        shared_with_prefix \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/profiles/#{AWS.Util.encode_uri(profile_arn)}/shares"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"Status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(shared_with_prefix) do
        [{"SharedWithPrefix", shared_with_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  List profiles.
  """
  def list_profiles(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        profile_name_prefix \\ nil,
        profile_owner_type \\ nil,
        options \\ []
      ) do
    url_path = "/profileSummaries"
    headers = []
    query_params = []

    query_params =
      if !is_nil(profile_owner_type) do
        [{"ProfileOwnerType", profile_owner_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(profile_name_prefix) do
        [{"ProfileNamePrefix", profile_name_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  List the answers of a review template.
  """
  def list_review_template_answers(
        %Client{} = client,
        lens_alias,
        template_arn,
        max_results \\ nil,
        next_token \\ nil,
        pillar_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/answers"

    headers = []
    query_params = []

    query_params =
      if !is_nil(pillar_id) do
        [{"PillarId", pillar_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  List review templates.
  """
  def list_review_templates(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/reviewTemplates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  List the share invitations.

  `WorkloadNamePrefix`, `LensNamePrefix`, `ProfileNamePrefix`, and
  `TemplateNamePrefix` are mutually exclusive. Use the parameter that matches your
  `ShareResourceType`.
  """
  def list_share_invitations(
        %Client{} = client,
        lens_name_prefix \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        profile_name_prefix \\ nil,
        share_resource_type \\ nil,
        template_name_prefix \\ nil,
        workload_name_prefix \\ nil,
        options \\ []
      ) do
    url_path = "/shareInvitations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workload_name_prefix) do
        [{"WorkloadNamePrefix", workload_name_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(template_name_prefix) do
        [{"TemplateNamePrefix", template_name_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(share_resource_type) do
        [{"ShareResourceType", share_resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(profile_name_prefix) do
        [{"ProfileNamePrefix", profile_name_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(lens_name_prefix) do
        [{"LensNamePrefix", lens_name_prefix} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  List the tags for a resource.

  The WorkloadArn parameter can be a workload ARN, a custom lens ARN, a profile
  ARN, or review template ARN.
  """
  def list_tags_for_resource(%Client{} = client, workload_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(workload_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  List review template shares.
  """
  def list_template_shares(
        %Client{} = client,
        template_arn,
        max_results \\ nil,
        next_token \\ nil,
        shared_with_prefix \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/templates/shares/#{AWS.Util.encode_uri(template_arn)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"Status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(shared_with_prefix) do
        [{"SharedWithPrefix", shared_with_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  List the workload shares associated with the workload.
  """
  def list_workload_shares(
        %Client{} = client,
        workload_id,
        max_results \\ nil,
        next_token \\ nil,
        shared_with_prefix \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}/shares"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"Status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(shared_with_prefix) do
        [{"SharedWithPrefix", shared_with_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Paginated list of workloads.
  """
  def list_workloads(%Client{} = client, input, options \\ []) do
    url_path = "/workloadsSummaries"
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
      nil
    )
  end

  @doc """
  Adds one or more tags to the specified resource.

  The WorkloadArn parameter can be a workload ARN, a custom lens ARN, a profile
  ARN, or review template ARN.
  """
  def tag_resource(%Client{} = client, workload_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(workload_arn)}"
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
      nil
    )
  end

  @doc """
  Deletes specified tags from a resource.

  The WorkloadArn parameter can be a workload ARN, a custom lens ARN, a profile
  ARN, or review template ARN.

  To specify multiple tags, use separate **tagKeys** parameters, for example:

  `DELETE /tags/WorkloadArn?tagKeys=key1&tagKeys=key2`
  """
  def untag_resource(%Client{} = client, workload_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(workload_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Update the answer to a specific question in a workload review.
  """
  def update_answer(
        %Client{} = client,
        lens_alias,
        question_id,
        workload_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/answers/#{AWS.Util.encode_uri(question_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates whether the Amazon Web Services account is opted into organization
  sharing and discovery integration features.
  """
  def update_global_settings(%Client{} = client, input, options \\ []) do
    url_path = "/global-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Update lens review for a particular workload.
  """
  def update_lens_review(%Client{} = client, lens_alias, workload_id, input, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Update a profile.
  """
  def update_profile(%Client{} = client, profile_arn, input, options \\ []) do
    url_path = "/profiles/#{AWS.Util.encode_uri(profile_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Update a review template.
  """
  def update_review_template(%Client{} = client, template_arn, input, options \\ []) do
    url_path = "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Update a review template answer.
  """
  def update_review_template_answer(
        %Client{} = client,
        lens_alias,
        question_id,
        template_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/answers/#{AWS.Util.encode_uri(question_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Update a lens review associated with a review template.
  """
  def update_review_template_lens_review(
        %Client{} = client,
        lens_alias,
        template_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Update a workload or custom lens share invitation.

  This API operation can be called independently of any resource. Previous
  documentation implied that a workload ARN must be specified.
  """
  def update_share_invitation(%Client{} = client, share_invitation_id, input, options \\ []) do
    url_path = "/shareInvitations/#{AWS.Util.encode_uri(share_invitation_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Update an existing workload.
  """
  def update_workload(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{AWS.Util.encode_uri(workload_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Update a workload share.
  """
  def update_workload_share(%Client{} = client, share_id, workload_id, input, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/shares/#{AWS.Util.encode_uri(share_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Upgrade lens review for a particular workload.
  """
  def upgrade_lens_review(%Client{} = client, lens_alias, workload_id, input, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/upgrade"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Upgrade a profile.
  """
  def upgrade_profile_version(%Client{} = client, profile_arn, workload_id, input, options \\ []) do
    url_path =
      "/workloads/#{AWS.Util.encode_uri(workload_id)}/profiles/#{AWS.Util.encode_uri(profile_arn)}/upgrade"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Upgrade the lens review of a review template.
  """
  def upgrade_review_template_lens_review(
        %Client{} = client,
        lens_alias,
        template_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/reviewTemplates/#{AWS.Util.encode_uri(template_arn)}/lensReviews/#{AWS.Util.encode_uri(lens_alias)}/upgrade"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end
end
