# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.QLDB do
  @moduledoc """
  The control plane for Amazon QLDB
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2019-01-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "qldb",
      global?: false,
      protocol: "rest-json",
      service_id: "QLDB",
      signature_version: "v4",
      signing_name: "qldb",
      target_prefix: nil
    }
  end

  @doc """
  Ends a given Amazon QLDB journal stream.

  Before a stream can be canceled, its current status must be `ACTIVE`.

  You can't restart a stream after you cancel it. Canceled QLDB stream resources
  are subject to a 7-day retention period, so they are automatically deleted after
  this limit expires.
  """
  def cancel_journal_kinesis_stream(
        %Client{} = client,
        ledger_name,
        stream_id,
        input,
        options \\ []
      ) do
    url_path =
      "/ledgers/#{AWS.Util.encode_uri(ledger_name)}/journal-kinesis-streams/#{AWS.Util.encode_uri(stream_id)}"

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
      nil
    )
  end

  @doc """
  Creates a new ledger in your AWS account in the current Region.
  """
  def create_ledger(%Client{} = client, input, options \\ []) do
    url_path = "/ledgers"
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
  Deletes a ledger and all of its contents.

  This action is irreversible.

  If deletion protection is enabled, you must first disable it before you can
  delete the ledger. You can disable it by calling the `UpdateLedger` operation to
  set the flag to `false`.
  """
  def delete_ledger(%Client{} = client, name, input, options \\ []) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(name)}"
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
      nil
    )
  end

  @doc """
  Returns detailed information about a given Amazon QLDB journal stream.

  The output includes the Amazon Resource Name (ARN), stream name, current status,
  creation time, and the parameters of the original stream creation request.

  This action does not return any expired journal streams. For more information,
  see [Expiration for terminal streams](https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration)
  in the *Amazon QLDB Developer Guide*.
  """
  def describe_journal_kinesis_stream(%Client{} = client, ledger_name, stream_id, options \\ []) do
    url_path =
      "/ledgers/#{AWS.Util.encode_uri(ledger_name)}/journal-kinesis-streams/#{AWS.Util.encode_uri(stream_id)}"

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
  Returns information about a journal export job, including the ledger name,
  export ID, creation time, current status, and the parameters of the original
  export creation request.

  This action does not return any expired export jobs. For more information, see
  [Export job expiration](https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration)
  in the *Amazon QLDB Developer Guide*.

  If the export job with the given `ExportId` doesn't exist, then throws
  `ResourceNotFoundException`.

  If the ledger with the given `Name` doesn't exist, then throws
  `ResourceNotFoundException`.
  """
  def describe_journal_s3_export(%Client{} = client, export_id, name, options \\ []) do
    url_path =
      "/ledgers/#{AWS.Util.encode_uri(name)}/journal-s3-exports/#{AWS.Util.encode_uri(export_id)}"

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
  Returns information about a ledger, including its state and when it was created.
  """
  def describe_ledger(%Client{} = client, name, options \\ []) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(name)}"
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
  Exports journal contents within a date and time range from a ledger into a
  specified Amazon Simple Storage Service (Amazon S3) bucket.

  The data is written as files in Amazon Ion format.

  If the ledger with the given `Name` doesn't exist, then throws
  `ResourceNotFoundException`.

  If the ledger with the given `Name` is in `CREATING` status, then throws
  `ResourcePreconditionNotMetException`.

  You can initiate up to two concurrent journal export requests for each ledger.
  Beyond this limit, journal export requests throw `LimitExceededException`.
  """
  def export_journal_to_s3(%Client{} = client, name, input, options \\ []) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(name)}/journal-s3-exports"
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
  Returns a block object at a specified address in a journal.

  Also returns a proof of the specified block for verification if
  `DigestTipAddress` is provided.

  For information about the data contents in a block, see [Journal contents](https://docs.aws.amazon.com/qldb/latest/developerguide/journal-contents.html)
  in the *Amazon QLDB Developer Guide*.

  If the specified ledger doesn't exist or is in `DELETING` status, then throws
  `ResourceNotFoundException`.

  If the specified ledger is in `CREATING` status, then throws
  `ResourcePreconditionNotMetException`.

  If no block exists with the specified address, then throws
  `InvalidParameterException`.
  """
  def get_block(%Client{} = client, name, input, options \\ []) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(name)}/block"
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
  Returns the digest of a ledger at the latest committed block in the journal.

  The response includes a 256-bit hash value and a block address.
  """
  def get_digest(%Client{} = client, name, input, options \\ []) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(name)}/digest"
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
  Returns a revision data object for a specified document ID and block address.

  Also returns a proof of the specified revision for verification if
  `DigestTipAddress` is provided.
  """
  def get_revision(%Client{} = client, name, input, options \\ []) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(name)}/revision"
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
  Returns an array of all Amazon QLDB journal stream descriptors for a given
  ledger.

  The output of each stream descriptor includes the same details that are returned
  by `DescribeJournalKinesisStream`.

  This action does not return any expired journal streams. For more information,
  see [Expiration for terminal streams](https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration)
  in the *Amazon QLDB Developer Guide*.

  This action returns a maximum of `MaxResults` items. It is paginated so that you
  can retrieve all the items by calling `ListJournalKinesisStreamsForLedger`
  multiple times.
  """
  def list_journal_kinesis_streams_for_ledger(
        %Client{} = client,
        ledger_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(ledger_name)}/journal-kinesis-streams"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
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
  Returns an array of journal export job descriptions for all ledgers that are
  associated with the current AWS account and Region.

  This action returns a maximum of `MaxResults` items, and is paginated so that
  you can retrieve all the items by calling `ListJournalS3Exports` multiple times.

  This action does not return any expired export jobs. For more information, see
  [Export job expiration](https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration)
  in the *Amazon QLDB Developer Guide*.
  """
  def list_journal_s3_exports(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/journal-s3-exports"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
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
  Returns an array of journal export job descriptions for a specified ledger.

  This action returns a maximum of `MaxResults` items, and is paginated so that
  you can retrieve all the items by calling `ListJournalS3ExportsForLedger`
  multiple times.

  This action does not return any expired export jobs. For more information, see
  [Export job expiration](https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration)
  in the *Amazon QLDB Developer Guide*.
  """
  def list_journal_s3_exports_for_ledger(
        %Client{} = client,
        name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(name)}/journal-s3-exports"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
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
  Returns an array of ledger summaries that are associated with the current AWS
  account and Region.

  This action returns a maximum of 100 items and is paginated so that you can
  retrieve all the items by calling `ListLedgers` multiple times.
  """
  def list_ledgers(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/ledgers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next_token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
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
  Returns all tags for a specified Amazon QLDB resource.
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
      nil
    )
  end

  @doc """
  Creates a journal stream for a given Amazon QLDB ledger.

  The stream captures every document revision that is committed to the ledger's
  journal and delivers the data to a specified Amazon Kinesis Data Streams
  resource.
  """
  def stream_journal_to_kinesis(%Client{} = client, ledger_name, input, options \\ []) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(ledger_name)}/journal-kinesis-streams"
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
  Adds one or more tags to a specified Amazon QLDB resource.

  A resource can have up to 50 tags. If you try to create more than 50 tags for a
  resource, your request fails and returns an error.
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
      nil
    )
  end

  @doc """
  Removes one or more tags from a specified Amazon QLDB resource.

  You can specify up to 50 tag keys to remove.
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
      nil
    )
  end

  @doc """
  Updates properties on a ledger.
  """
  def update_ledger(%Client{} = client, name, input, options \\ []) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(name)}"
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
  Updates the permissions mode of a ledger.

  Before you switch to the `STANDARD` permissions mode, you must first create all
  required IAM policies and table tags to avoid disruption to your users. To learn
  more, see [Migrating to the standard permissions mode](https://docs.aws.amazon.com/qldb/latest/developerguide/ledger-management.basics.html#ledger-mgmt.basics.update-permissions.migrating)
  in the *Amazon QLDB Developer Guide*.
  """
  def update_ledger_permissions_mode(%Client{} = client, name, input, options \\ []) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(name)}/permissions-mode"
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
end
