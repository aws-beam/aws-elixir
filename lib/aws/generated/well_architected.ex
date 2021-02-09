# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WellArchitected do
  @moduledoc """
  AWS Well-Architected Tool

  This is the *AWS Well-Architected Tool API Reference*.

  The AWS Well-Architected Tool API provides programmatic access to the [AWS Well-Architected Tool](http://aws.amazon.com/well-architected-tool) in the [AWS Management Console](https://console.aws.amazon.com/wellarchitected). For
  information about the AWS Well-Architected Tool, see the [AWS Well-Architected Tool User
  Guide](https://docs.aws.amazon.com/wellarchitected/latest/userguide/intro.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
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
  """
  def associate_lenses(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{URI.encode(workload_id)}/associateLenses"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Create a milestone for an existing workload.
  """
  def create_milestone(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{URI.encode(workload_id)}/milestones"
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
  Create a new workload.

  The owner of a workload can share the workload with other AWS accounts and IAM
  users in the same AWS Region. Only the owner of a workload can delete it.

  For more information, see [Defining a Workload](https://docs.aws.amazon.com/wellarchitected/latest/userguide/define-workload.html)
  in the *AWS Well-Architected Tool User Guide*.
  """
  def create_workload(%Client{} = client, input, options \\ []) do
    url_path = "/workloads"
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
  Create a workload share.

  The owner of a workload can share it with other AWS accounts and IAM users in
  the same AWS Region. Shared access to a workload is not removed until the
  workload invitation is deleted.

  For more information, see [Sharing a Workload](https://docs.aws.amazon.com/wellarchitected/latest/userguide/workloads-sharing.html)
  in the *AWS Well-Architected Tool User Guide*.
  """
  def create_workload_share(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{URI.encode(workload_id)}/shares"
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
  Delete an existing workload.
  """
  def delete_workload(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{URI.encode(workload_id)}"
    headers = []

    {query_params, input} =
      [
        {"ClientRequestToken", "ClientRequestToken"}
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
  Delete a workload share.
  """
  def delete_workload_share(%Client{} = client, share_id, workload_id, input, options \\ []) do
    url_path = "/workloads/#{URI.encode(workload_id)}/shares/#{URI.encode(share_id)}"
    headers = []

    {query_params, input} =
      [
        {"ClientRequestToken", "ClientRequestToken"}
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
  Disassociate a lens from a workload.

  The AWS Well-Architected Framework lens (`wellarchitected`) cannot be removed
  from a workload.
  """
  def disassociate_lenses(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{URI.encode(workload_id)}/disassociateLenses"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Get lens review.
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
      "/workloads/#{URI.encode(workload_id)}/lensReviews/#{URI.encode(lens_alias)}/answers/#{
        URI.encode(question_id)
      }"

    headers = []
    query_params = []

    query_params =
      if !is_nil(milestone_number) do
        [{"MilestoneNumber", milestone_number} | query_params]
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
  Get lens review.
  """
  def get_lens_review(
        %Client{} = client,
        lens_alias,
        workload_id,
        milestone_number \\ nil,
        options \\ []
      ) do
    url_path = "/workloads/#{URI.encode(workload_id)}/lensReviews/#{URI.encode(lens_alias)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(milestone_number) do
        [{"MilestoneNumber", milestone_number} | query_params]
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
      "/workloads/#{URI.encode(workload_id)}/lensReviews/#{URI.encode(lens_alias)}/report"

    headers = []
    query_params = []

    query_params =
      if !is_nil(milestone_number) do
        [{"MilestoneNumber", milestone_number} | query_params]
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
  Get lens version differences.
  """
  def get_lens_version_difference(
        %Client{} = client,
        lens_alias,
        base_lens_version,
        options \\ []
      ) do
    url_path = "/lenses/#{URI.encode(lens_alias)}/versionDifference"
    headers = []
    query_params = []

    query_params =
      if !is_nil(base_lens_version) do
        [{"BaseLensVersion", base_lens_version} | query_params]
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
  Get a milestone for an existing workload.
  """
  def get_milestone(%Client{} = client, milestone_number, workload_id, options \\ []) do
    url_path = "/workloads/#{URI.encode(workload_id)}/milestones/#{URI.encode(milestone_number)}"
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
      nil
    )
  end

  @doc """
  Get an existing workload.
  """
  def get_workload(%Client{} = client, workload_id, options \\ []) do
    url_path = "/workloads/#{URI.encode(workload_id)}"
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
      nil
    )
  end

  @doc """
  List of answers.
  """
  def list_answers(
        %Client{} = client,
        lens_alias,
        workload_id,
        max_results \\ nil,
        milestone_number \\ nil,
        next_token \\ nil,
        pillar_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/workloads/#{URI.encode(workload_id)}/lensReviews/#{URI.encode(lens_alias)}/answers"

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
        options \\ []
      ) do
    url_path =
      "/workloads/#{URI.encode(workload_id)}/lensReviews/#{URI.encode(lens_alias)}/improvements"

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
  List lens reviews.
  """
  def list_lens_reviews(
        %Client{} = client,
        workload_id,
        max_results \\ nil,
        milestone_number \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/workloads/#{URI.encode(workload_id)}/lensReviews"
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
  List the available lenses.
  """
  def list_lenses(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
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
  List all milestones for an existing workload.
  """
  def list_milestones(%Client{} = client, workload_id, input, options \\ []) do
    url_path = "/workloads/#{URI.encode(workload_id)}/milestonesSummaries"
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
  List lens notifications.
  """
  def list_notifications(%Client{} = client, input, options \\ []) do
    url_path = "/notifications"
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
  List the workload invitations.
  """
  def list_share_invitations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
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
  List the workload shares associated with the workload.
  """
  def list_workload_shares(
        %Client{} = client,
        workload_id,
        max_results \\ nil,
        next_token \\ nil,
        shared_with_prefix \\ nil,
        options \\ []
      ) do
    url_path = "/workloads/#{URI.encode(workload_id)}/shares"
    headers = []
    query_params = []

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
  List workloads.

  Paginated.
  """
  def list_workloads(%Client{} = client, input, options \\ []) do
    url_path = "/workloadsSummaries"
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
  Update the answer.
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
      "/workloads/#{URI.encode(workload_id)}/lensReviews/#{URI.encode(lens_alias)}/answers/#{
        URI.encode(question_id)
      }"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Update lens review.
  """
  def update_lens_review(%Client{} = client, lens_alias, workload_id, input, options \\ []) do
    url_path = "/workloads/#{URI.encode(workload_id)}/lensReviews/#{URI.encode(lens_alias)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Update a workload invitation.
  """
  def update_share_invitation(%Client{} = client, share_invitation_id, input, options \\ []) do
    url_path = "/shareInvitations/#{URI.encode(share_invitation_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
    url_path = "/workloads/#{URI.encode(workload_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
    url_path = "/workloads/#{URI.encode(workload_id)}/shares/#{URI.encode(share_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Upgrade lens review.
  """
  def upgrade_lens_review(%Client{} = client, lens_alias, workload_id, input, options \\ []) do
    url_path =
      "/workloads/#{URI.encode(workload_id)}/lensReviews/#{URI.encode(lens_alias)}/upgrade"

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
      nil
    )
  end
end