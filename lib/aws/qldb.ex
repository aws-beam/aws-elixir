# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.QLDB do
  @moduledoc """
  The control plane for Amazon QLDB
  """

  @doc """
  Ends a given Amazon QLDB journal stream. Before a stream can be canceled,
  its current status must be `ACTIVE`.

  You can't restart a stream after you cancel it. Canceled QLDB stream
  resources are subject to a 7-day retention period, so they are
  automatically deleted after this limit expires.
  """
  def cancel_journal_kinesis_stream(client, ledger_name, stream_id, input, options \\ []) do
    path_ = "/ledgers/#{URI.encode(ledger_name)}/journal-kinesis-streams/#{URI.encode(stream_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new ledger in your AWS account.
  """
  def create_ledger(client, input, options \\ []) do
    path_ = "/ledgers"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a ledger and all of its contents. This action is irreversible.

  If deletion protection is enabled, you must first disable it before you can
  delete the ledger using the QLDB API or the AWS Command Line Interface (AWS
  CLI). You can disable it by calling the `UpdateLedger` operation to set the
  flag to `false`. The QLDB console disables deletion protection for you when
  you use it to delete a ledger.
  """
  def delete_ledger(client, name, input, options \\ []) do
    path_ = "/ledgers/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns detailed information about a given Amazon QLDB journal stream. The
  output includes the Amazon Resource Name (ARN), stream name, current
  status, creation time, and the parameters of your original stream creation
  request.
  """
  def describe_journal_kinesis_stream(client, ledger_name, stream_id, options \\ []) do
    path_ = "/ledgers/#{URI.encode(ledger_name)}/journal-kinesis-streams/#{URI.encode(stream_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns information about a journal export job, including the ledger name,
  export ID, when it was created, current status, and its start and end time
  export parameters.

  This action does not return any expired export jobs. For more information,
  see [Export Job
  Expiration](https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration)
  in the *Amazon QLDB Developer Guide*.

  If the export job with the given `ExportId` doesn't exist, then throws
  `ResourceNotFoundException`.

  If the ledger with the given `Name` doesn't exist, then throws
  `ResourceNotFoundException`.
  """
  def describe_journal_s3_export(client, export_id, name, options \\ []) do
    path_ = "/ledgers/#{URI.encode(name)}/journal-s3-exports/#{URI.encode(export_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns information about a ledger, including its state and when it was
  created.
  """
  def describe_ledger(client, name, options \\ []) do
    path_ = "/ledgers/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Exports journal contents within a date and time range from a ledger into a
  specified Amazon Simple Storage Service (Amazon S3) bucket. The data is
  written as files in Amazon Ion format.

  If the ledger with the given `Name` doesn't exist, then throws
  `ResourceNotFoundException`.

  If the ledger with the given `Name` is in `CREATING` status, then throws
  `ResourcePreconditionNotMetException`.

  You can initiate up to two concurrent journal export requests for each
  ledger. Beyond this limit, journal export requests throw
  `LimitExceededException`.
  """
  def export_journal_to_s3(client, name, input, options \\ []) do
    path_ = "/ledgers/#{URI.encode(name)}/journal-s3-exports"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a block object at a specified address in a journal. Also returns a
  proof of the specified block for verification if `DigestTipAddress` is
  provided.

  For information about the data contents in a block, see [Journal
  contents](https://docs.aws.amazon.com/qldb/latest/developerguide/journal-contents.html)
  in the *Amazon QLDB Developer Guide*.

  If the specified ledger doesn't exist or is in `DELETING` status, then
  throws `ResourceNotFoundException`.

  If the specified ledger is in `CREATING` status, then throws
  `ResourcePreconditionNotMetException`.

  If no block exists with the specified address, then throws
  `InvalidParameterException`.
  """
  def get_block(client, name, input, options \\ []) do
    path_ = "/ledgers/#{URI.encode(name)}/block"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns the digest of a ledger at the latest committed block in the
  journal. The response includes a 256-bit hash value and a block address.
  """
  def get_digest(client, name, input, options \\ []) do
    path_ = "/ledgers/#{URI.encode(name)}/digest"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a revision data object for a specified document ID and block
  address. Also returns a proof of the specified revision for verification if
  `DigestTipAddress` is provided.
  """
  def get_revision(client, name, input, options \\ []) do
    path_ = "/ledgers/#{URI.encode(name)}/revision"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns an array of all Amazon QLDB journal stream descriptors for a given
  ledger. The output of each stream descriptor includes the same details that
  are returned by `DescribeJournalKinesisStream`.

  This action returns a maximum of `MaxResults` items. It is paginated so
  that you can retrieve all the items by calling
  `ListJournalKinesisStreamsForLedger` multiple times.
  """
  def list_journal_kinesis_streams_for_ledger(client, ledger_name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/ledgers/#{URI.encode(ledger_name)}/journal-kinesis-streams"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next_token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max_results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns an array of journal export job descriptions for all ledgers that
  are associated with the current AWS account and Region.

  This action returns a maximum of `MaxResults` items, and is paginated so
  that you can retrieve all the items by calling `ListJournalS3Exports`
  multiple times.

  This action does not return any expired export jobs. For more information,
  see [Export Job
  Expiration](https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration)
  in the *Amazon QLDB Developer Guide*.
  """
  def list_journal_s3_exports(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/journal-s3-exports"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next_token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max_results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns an array of journal export job descriptions for a specified ledger.

  This action returns a maximum of `MaxResults` items, and is paginated so
  that you can retrieve all the items by calling
  `ListJournalS3ExportsForLedger` multiple times.

  This action does not return any expired export jobs. For more information,
  see [Export Job
  Expiration](https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration)
  in the *Amazon QLDB Developer Guide*.
  """
  def list_journal_s3_exports_for_ledger(client, name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/ledgers/#{URI.encode(name)}/journal-s3-exports"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next_token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max_results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns an array of ledger summaries that are associated with the current
  AWS account and Region.

  This action returns a maximum of 100 items and is paginated so that you can
  retrieve all the items by calling `ListLedgers` multiple times.
  """
  def list_ledgers(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/ledgers"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next_token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max_results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns all tags for a specified Amazon QLDB resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Creates a journal stream for a given Amazon QLDB ledger. The stream
  captures every document revision that is committed to the ledger's journal
  and delivers the data to a specified Amazon Kinesis Data Streams resource.
  """
  def stream_journal_to_kinesis(client, ledger_name, input, options \\ []) do
    path_ = "/ledgers/#{URI.encode(ledger_name)}/journal-kinesis-streams"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds one or more tags to a specified Amazon QLDB resource.

  A resource can have up to 50 tags. If you try to create more than 50 tags
  for a resource, your request fails and returns an error.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes one or more tags from a specified Amazon QLDB resource. You can
  specify up to 50 tag keys to remove.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"TagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates properties on a ledger.
  """
  def update_ledger(client, name, input, options \\ []) do
    path_ = "/ledgers/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "qldb"}
    host = build_host("qldb", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case AWS.HTTP.request(method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when status_code in [200, 202, 204] ->
        body = if(body != "", do: AWS.JSON.decode!(body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

      error = {:error, _reason} -> error
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case AWS.HTTP.request(method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
        body = if(body != "", do: AWS.JSON.decode!(body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

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

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
