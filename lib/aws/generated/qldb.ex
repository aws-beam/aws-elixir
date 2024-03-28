# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.QLDB do
  @moduledoc """
  The resource management API for Amazon QLDB
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_revision_response() :: %{
        "Proof" => value_holder(),
        "Revision" => value_holder()
      }

  """
  @type get_revision_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_journal_s3_exports_for_ledger_response() :: %{
        "JournalS3Exports" => list(journal_s3_export_description()()),
        "NextToken" => String.t()
      }

  """
  @type list_journal_s3_exports_for_ledger_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_journal_to_s3_request() :: %{
        optional("OutputFormat") => list(any()),
        required("ExclusiveEndTime") => non_neg_integer(),
        required("InclusiveStartTime") => non_neg_integer(),
        required("RoleArn") => String.t(),
        required("S3ExportConfiguration") => s3_export_configuration()
      }

  """
  @type export_journal_to_s3_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_journal_kinesis_stream_request() :: %{}

  """
  @type cancel_journal_kinesis_stream_request() :: %{}

  @typedoc """

  ## Example:

      list_journal_kinesis_streams_for_ledger_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_journal_kinesis_streams_for_ledger_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_precondition_not_met_exception() :: %{
        "Message" => String.t(),
        "ResourceName" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type resource_precondition_not_met_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_ledger_response() :: %{
        "Arn" => String.t(),
        "CreationDateTime" => non_neg_integer(),
        "DeletionProtection" => boolean(),
        "EncryptionDescription" => ledger_encryption_description(),
        "Name" => String.t(),
        "PermissionsMode" => list(any()),
        "State" => list(any())
      }

  """
  @type describe_ledger_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      journal_kinesis_stream_description() :: %{
        "Arn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "ErrorCause" => list(any()),
        "ExclusiveEndTime" => non_neg_integer(),
        "InclusiveStartTime" => non_neg_integer(),
        "KinesisConfiguration" => kinesis_configuration(),
        "LedgerName" => String.t(),
        "RoleArn" => String.t(),
        "Status" => list(any()),
        "StreamId" => String.t(),
        "StreamName" => String.t()
      }

  """
  @type journal_kinesis_stream_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_in_use_exception() :: %{
        "Message" => String.t(),
        "ResourceName" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_revision_request() :: %{
        optional("DigestTipAddress") => value_holder(),
        required("BlockAddress") => value_holder(),
        required("DocumentId") => String.t()
      }

  """
  @type get_revision_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_block_request() :: %{
        optional("DigestTipAddress") => value_holder(),
        required("BlockAddress") => value_holder()
      }

  """
  @type get_block_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_encryption_configuration() :: %{
        "KmsKeyArn" => String.t(),
        "ObjectEncryptionType" => list(any())
      }

  """
  @type s3_encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ledger_summary() :: %{
        "CreationDateTime" => non_neg_integer(),
        "Name" => String.t(),
        "State" => list(any())
      }

  """
  @type ledger_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ledgers_response() :: %{
        "Ledgers" => list(ledger_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_ledgers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_digest_request() :: %{}

  """
  @type get_digest_request() :: %{}

  @typedoc """

  ## Example:

      update_ledger_request() :: %{
        optional("DeletionProtection") => boolean(),
        optional("KmsKey") => String.t()
      }

  """
  @type update_ledger_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      journal_s3_export_description() :: %{
        "ExclusiveEndTime" => non_neg_integer(),
        "ExportCreationTime" => non_neg_integer(),
        "ExportId" => String.t(),
        "InclusiveStartTime" => non_neg_integer(),
        "LedgerName" => String.t(),
        "OutputFormat" => list(any()),
        "RoleArn" => String.t(),
        "S3ExportConfiguration" => s3_export_configuration(),
        "Status" => list(any())
      }

  """
  @type journal_s3_export_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_ledger_response() :: %{
        "Arn" => String.t(),
        "CreationDateTime" => non_neg_integer(),
        "DeletionProtection" => boolean(),
        "KmsKeyArn" => String.t(),
        "Name" => String.t(),
        "PermissionsMode" => list(any()),
        "State" => list(any())
      }

  """
  @type create_ledger_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_journal_kinesis_streams_for_ledger_response() :: %{
        "NextToken" => String.t(),
        "Streams" => list(journal_kinesis_stream_description()())
      }

  """
  @type list_journal_kinesis_streams_for_ledger_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_digest_response() :: %{
        "Digest" => binary(),
        "DigestTipAddress" => value_holder()
      }

  """
  @type get_digest_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream_journal_to_kinesis_request() :: %{
        optional("ExclusiveEndTime") => non_neg_integer(),
        optional("Tags") => map(),
        required("InclusiveStartTime") => non_neg_integer(),
        required("KinesisConfiguration") => kinesis_configuration(),
        required("RoleArn") => String.t(),
        required("StreamName") => String.t()
      }

  """
  @type stream_journal_to_kinesis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_ledger_request() :: %{}

  """
  @type delete_ledger_request() :: %{}

  @typedoc """

  ## Example:

      s3_export_configuration() :: %{
        "Bucket" => String.t(),
        "EncryptionConfiguration" => s3_encryption_configuration(),
        "Prefix" => String.t()
      }

  """
  @type s3_export_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_journal_kinesis_stream_response() :: %{
        "StreamId" => String.t()
      }

  """
  @type cancel_journal_kinesis_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceName" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_ledger_response() :: %{
        "Arn" => String.t(),
        "CreationDateTime" => non_neg_integer(),
        "DeletionProtection" => boolean(),
        "EncryptionDescription" => ledger_encryption_description(),
        "Name" => String.t(),
        "State" => list(any())
      }

  """
  @type update_ledger_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kinesis_configuration() :: %{
        "AggregationEnabled" => boolean(),
        "StreamArn" => String.t()
      }

  """
  @type kinesis_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_ledger_permissions_mode_response() :: %{
        "Arn" => String.t(),
        "Name" => String.t(),
        "PermissionsMode" => list(any())
      }

  """
  @type update_ledger_permissions_mode_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_journal_s3_exports_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_journal_s3_exports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_journal_s3_export_response() :: %{
        "ExportDescription" => journal_s3_export_description()
      }

  """
  @type describe_journal_s3_export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_block_response() :: %{
        "Block" => value_holder(),
        "Proof" => value_holder()
      }

  """
  @type get_block_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_journal_s3_exports_for_ledger_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_journal_s3_exports_for_ledger_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_journal_s3_exports_response() :: %{
        "JournalS3Exports" => list(journal_s3_export_description()()),
        "NextToken" => String.t()
      }

  """
  @type list_journal_s3_exports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      value_holder() :: %{
        "IonText" => String.t()
      }

  """
  @type value_holder() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream_journal_to_kinesis_response() :: %{
        "StreamId" => String.t()
      }

  """
  @type stream_journal_to_kinesis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "Message" => String.t(),
        "ParameterName" => String.t()
      }

  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      create_ledger_request() :: %{
        optional("DeletionProtection") => boolean(),
        optional("KmsKey") => String.t(),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("PermissionsMode") => list(any())
      }

  """
  @type create_ledger_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_journal_to_s3_response() :: %{
        "ExportId" => String.t()
      }

  """
  @type export_journal_to_s3_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_journal_kinesis_stream_response() :: %{
        "Stream" => journal_kinesis_stream_description()
      }

  """
  @type describe_journal_kinesis_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_ledger_request() :: %{}

  """
  @type describe_ledger_request() :: %{}

  @typedoc """

  ## Example:

      describe_journal_s3_export_request() :: %{}

  """
  @type describe_journal_s3_export_request() :: %{}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "Message" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_ledger_permissions_mode_request() :: %{
        required("PermissionsMode") => list(any())
      }

  """
  @type update_ledger_permissions_mode_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_already_exists_exception() :: %{
        "Message" => String.t(),
        "ResourceName" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ledger_encryption_description() :: %{
        "EncryptionStatus" => list(any()),
        "InaccessibleKmsKeyDateTime" => non_neg_integer(),
        "KmsKeyArn" => String.t()
      }

  """
  @type ledger_encryption_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_journal_kinesis_stream_request() :: %{}

  """
  @type describe_journal_kinesis_stream_request() :: %{}

  @typedoc """

  ## Example:

      list_ledgers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_ledgers_request() :: %{String.t() => any()}

  @type cancel_journal_kinesis_stream_errors() ::
          invalid_parameter_exception()
          | resource_not_found_exception()
          | resource_precondition_not_met_exception()

  @type create_ledger_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | resource_in_use_exception()

  @type delete_ledger_errors() ::
          invalid_parameter_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | resource_precondition_not_met_exception()

  @type describe_journal_kinesis_stream_errors() ::
          invalid_parameter_exception()
          | resource_not_found_exception()
          | resource_precondition_not_met_exception()

  @type describe_journal_s3_export_errors() :: resource_not_found_exception()

  @type describe_ledger_errors() :: invalid_parameter_exception() | resource_not_found_exception()

  @type export_journal_to_s3_errors() ::
          resource_not_found_exception() | resource_precondition_not_met_exception()

  @type get_block_errors() ::
          invalid_parameter_exception()
          | resource_not_found_exception()
          | resource_precondition_not_met_exception()

  @type get_digest_errors() ::
          invalid_parameter_exception()
          | resource_not_found_exception()
          | resource_precondition_not_met_exception()

  @type get_revision_errors() ::
          invalid_parameter_exception()
          | resource_not_found_exception()
          | resource_precondition_not_met_exception()

  @type list_journal_kinesis_streams_for_ledger_errors() ::
          invalid_parameter_exception()
          | resource_not_found_exception()
          | resource_precondition_not_met_exception()

  @type list_tags_for_resource_errors() ::
          invalid_parameter_exception() | resource_not_found_exception()

  @type stream_journal_to_kinesis_errors() ::
          invalid_parameter_exception()
          | resource_not_found_exception()
          | resource_precondition_not_met_exception()

  @type tag_resource_errors() :: invalid_parameter_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: invalid_parameter_exception() | resource_not_found_exception()

  @type update_ledger_errors() :: invalid_parameter_exception() | resource_not_found_exception()

  @type update_ledger_permissions_mode_errors() ::
          invalid_parameter_exception() | resource_not_found_exception()

  def metadata do
    %{
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

  Before a stream can be canceled, its current
  status must be `ACTIVE`.

  You can't restart a stream after you cancel it. Canceled QLDB stream resources
  are
  subject to a 7-day retention period, so they are automatically deleted after
  this limit
  expires.
  """
  @spec cancel_journal_kinesis_stream(
          map(),
          String.t(),
          String.t(),
          cancel_journal_kinesis_stream_request(),
          list()
        ) ::
          {:ok, cancel_journal_kinesis_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_journal_kinesis_stream_errors()}
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
      200
    )
  end

  @doc """
  Creates a new ledger in your Amazon Web Services account in the current Region.
  """
  @spec create_ledger(map(), create_ledger_request(), list()) ::
          {:ok, create_ledger_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_ledger_errors()}
  def create_ledger(%Client{} = client, input, options \\ []) do
    url_path = "/ledgers"
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
      200
    )
  end

  @doc """
  Deletes a ledger and all of its contents.

  This action is irreversible.

  If deletion protection is enabled, you must first disable it before you can
  delete the
  ledger. You can disable it by calling the `UpdateLedger` operation to set this
  parameter to `false`.
  """
  @spec delete_ledger(map(), String.t(), delete_ledger_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_ledger_errors()}
  def delete_ledger(%Client{} = client, name, input, options \\ []) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

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
      200
    )
  end

  @doc """
  Returns detailed information about a given Amazon QLDB journal stream.

  The output
  includes the Amazon Resource Name (ARN), stream name, current status, creation
  time, and
  the parameters of the original stream creation request.

  This action does not return any expired journal streams. For more information,
  see
  [Expiration for terminal streams](https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration)
  in the *Amazon QLDB Developer
  Guide*.
  """
  @spec describe_journal_kinesis_stream(map(), String.t(), String.t(), list()) ::
          {:ok, describe_journal_kinesis_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_journal_kinesis_stream_errors()}
  def describe_journal_kinesis_stream(%Client{} = client, ledger_name, stream_id, options \\ []) do
    url_path =
      "/ledgers/#{AWS.Util.encode_uri(ledger_name)}/journal-kinesis-streams/#{AWS.Util.encode_uri(stream_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a journal export job, including the ledger name,
  export ID,
  creation time, current status, and the parameters of the original export
  creation
  request.

  This action does not return any expired export jobs. For more information, see
  [Export job expiration](https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration)
  in the *Amazon QLDB Developer
  Guide*.

  If the export job with the given `ExportId` doesn't exist, then throws
  `ResourceNotFoundException`.

  If the ledger with the given `Name` doesn't exist, then throws
  `ResourceNotFoundException`.
  """
  @spec describe_journal_s3_export(map(), String.t(), String.t(), list()) ::
          {:ok, describe_journal_s3_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_journal_s3_export_errors()}
  def describe_journal_s3_export(%Client{} = client, export_id, name, options \\ []) do
    url_path =
      "/ledgers/#{AWS.Util.encode_uri(name)}/journal-s3-exports/#{AWS.Util.encode_uri(export_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a ledger, including its state, permissions mode,
  encryption at
  rest settings, and when it was created.
  """
  @spec describe_ledger(map(), String.t(), list()) ::
          {:ok, describe_ledger_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_ledger_errors()}
  def describe_ledger(%Client{} = client, name, options \\ []) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Exports journal contents within a date and time range from a ledger into a
  specified
  Amazon Simple Storage Service (Amazon S3) bucket.

  A journal export job can write the data objects in either the text
  or binary representation of Amazon Ion format, or in *JSON Lines* text
  format.

  If the ledger with the given `Name` doesn't exist, then throws
  `ResourceNotFoundException`.

  If the ledger with the given `Name` is in `CREATING` status, then
  throws `ResourcePreconditionNotMetException`.

  You can initiate up to two concurrent journal export requests for each ledger.
  Beyond
  this limit, journal export requests throw `LimitExceededException`.
  """
  @spec export_journal_to_s3(map(), String.t(), export_journal_to_s3_request(), list()) ::
          {:ok, export_journal_to_s3_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, export_journal_to_s3_errors()}
  def export_journal_to_s3(%Client{} = client, name, input, options \\ []) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(name)}/journal-s3-exports"
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
      200
    )
  end

  @doc """
  Returns a block object at a specified address in a journal.

  Also returns a proof of the
  specified block for verification if `DigestTipAddress` is provided.

  For information about the data contents in a block, see [Journal contents](https://docs.aws.amazon.com/qldb/latest/developerguide/journal-contents.html)
  in the
  *Amazon QLDB Developer Guide*.

  If the specified ledger doesn't exist or is in `DELETING` status, then throws
  `ResourceNotFoundException`.

  If the specified ledger is in `CREATING` status, then throws
  `ResourcePreconditionNotMetException`.

  If no block exists with the specified address, then throws
  `InvalidParameterException`.
  """
  @spec get_block(map(), String.t(), get_block_request(), list()) ::
          {:ok, get_block_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_block_errors()}
  def get_block(%Client{} = client, name, input, options \\ []) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(name)}/block"
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
      200
    )
  end

  @doc """
  Returns the digest of a ledger at the latest committed block in the journal.

  The
  response includes a 256-bit hash value and a block address.
  """
  @spec get_digest(map(), String.t(), get_digest_request(), list()) ::
          {:ok, get_digest_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_digest_errors()}
  def get_digest(%Client{} = client, name, input, options \\ []) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(name)}/digest"
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
      200
    )
  end

  @doc """
  Returns a revision data object for a specified document ID and block address.

  Also
  returns a proof of the specified revision for verification if `DigestTipAddress`
  is provided.
  """
  @spec get_revision(map(), String.t(), get_revision_request(), list()) ::
          {:ok, get_revision_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_revision_errors()}
  def get_revision(%Client{} = client, name, input, options \\ []) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(name)}/revision"
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
      200
    )
  end

  @doc """
  Returns all Amazon QLDB journal streams for a given ledger.

  This action does not return any expired journal streams. For more information,
  see
  [Expiration for terminal streams](https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration)
  in the *Amazon QLDB Developer
  Guide*.

  This action returns a maximum of `MaxResults` items. It is paginated so that
  you can retrieve all the items by calling `ListJournalKinesisStreamsForLedger`
  multiple times.
  """
  @spec list_journal_kinesis_streams_for_ledger(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_journal_kinesis_streams_for_ledger_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_journal_kinesis_streams_for_ledger_errors()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns all journal export jobs for all ledgers that are associated with the
  current
  Amazon Web Services account and Region.

  This action returns a maximum of `MaxResults` items, and is paginated so that
  you can retrieve all the items by calling `ListJournalS3Exports` multiple
  times.

  This action does not return any expired export jobs. For more information, see
  [Export job expiration](https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration)
  in the *Amazon QLDB Developer
  Guide*.
  """
  @spec list_journal_s3_exports(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_journal_s3_exports_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns all journal export jobs for a specified ledger.

  This action returns a maximum of `MaxResults` items, and is paginated so that
  you can retrieve all the items by calling `ListJournalS3ExportsForLedger`
  multiple times.

  This action does not return any expired export jobs. For more information, see
  [Export job expiration](https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration)
  in the *Amazon QLDB Developer
  Guide*.
  """
  @spec list_journal_s3_exports_for_ledger(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_journal_s3_exports_for_ledger_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns all ledgers that are associated with the current Amazon Web Services
  account and
  Region.

  This action returns a maximum of `MaxResults` items and is paginated so that
  you can retrieve all the items by calling `ListLedgers` multiple times.
  """
  @spec list_ledgers(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_ledgers_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns all tags for a specified Amazon QLDB resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates a journal stream for a given Amazon QLDB ledger.

  The stream captures every
  document revision that is committed to the ledger's journal and delivers the
  data to a
  specified Amazon Kinesis Data Streams resource.
  """
  @spec stream_journal_to_kinesis(map(), String.t(), stream_journal_to_kinesis_request(), list()) ::
          {:ok, stream_journal_to_kinesis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stream_journal_to_kinesis_errors()}
  def stream_journal_to_kinesis(%Client{} = client, ledger_name, input, options \\ []) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(ledger_name)}/journal-kinesis-streams"
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
      200
    )
  end

  @doc """
  Adds one or more tags to a specified Amazon QLDB resource.

  A resource can have up to 50 tags. If you try to create more than 50 tags for a
  resource, your request fails and returns an error.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      200
    )
  end

  @doc """
  Removes one or more tags from a specified Amazon QLDB resource.

  You can specify up to 50
  tag keys to remove.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      200
    )
  end

  @doc """
  Updates properties on a ledger.
  """
  @spec update_ledger(map(), String.t(), update_ledger_request(), list()) ::
          {:ok, update_ledger_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_ledger_errors()}
  def update_ledger(%Client{} = client, name, input, options \\ []) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(name)}"
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
      200
    )
  end

  @doc """
  Updates the permissions mode of a ledger.

  Before you switch to the `STANDARD` permissions mode, you must first
  create all required IAM policies and table tags to avoid disruption to your
  users. To
  learn more, see [Migrating to the standard permissions mode](https://docs.aws.amazon.com/qldb/latest/developerguide/ledger-management.basics.html#ledger-mgmt.basics.update-permissions.migrating)
  in the *Amazon QLDB
  Developer Guide*.
  """
  @spec update_ledger_permissions_mode(
          map(),
          String.t(),
          update_ledger_permissions_mode_request(),
          list()
        ) ::
          {:ok, update_ledger_permissions_mode_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_ledger_permissions_mode_errors()}
  def update_ledger_permissions_mode(%Client{} = client, name, input, options \\ []) do
    url_path = "/ledgers/#{AWS.Util.encode_uri(name)}/permissions-mode"
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
      200
    )
  end
end
