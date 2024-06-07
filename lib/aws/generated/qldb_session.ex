# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.QLDBSession do
  @moduledoc """
  The transactional data APIs for Amazon QLDB

  Instead of interacting directly with this API, we recommend using the QLDB
  driver
  or the QLDB shell to execute data transactions on a ledger.

    
  If you are working with an AWS SDK, use the QLDB driver. The driver provides
  a high-level abstraction layer above this *QLDB Session* data
  plane and manages `SendCommand` API calls for you. For information and
  a list of supported programming languages, see [Getting started with the
  driver](https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html)
  in the *Amazon QLDB Developer
  Guide*.

    
  If you are working with the AWS Command Line Interface (AWS CLI), use the
  QLDB shell. The shell is a command line interface that uses the QLDB driver to
  interact with a ledger. For information, see [Accessing Amazon QLDB using the QLDB
  shell](https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      abort_transaction_request() :: %{}
      
  """
  @type abort_transaction_request() :: %{}

  @typedoc """

  ## Example:
      
      abort_transaction_result() :: %{
        "TimingInformation" => timing_information()
      }
      
  """
  @type abort_transaction_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      capacity_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type capacity_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      commit_transaction_request() :: %{
        "CommitDigest" => binary(),
        "TransactionId" => String.t()
      }
      
  """
  @type commit_transaction_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      commit_transaction_result() :: %{
        "CommitDigest" => binary(),
        "ConsumedIOs" => i_o_usage(),
        "TimingInformation" => timing_information(),
        "TransactionId" => String.t()
      }
      
  """
  @type commit_transaction_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      end_session_request() :: %{}
      
  """
  @type end_session_request() :: %{}

  @typedoc """

  ## Example:
      
      end_session_result() :: %{
        "TimingInformation" => timing_information()
      }
      
  """
  @type end_session_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_statement_request() :: %{
        "Parameters" => list(value_holder()()),
        "Statement" => String.t(),
        "TransactionId" => String.t()
      }
      
  """
  @type execute_statement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execute_statement_result() :: %{
        "ConsumedIOs" => i_o_usage(),
        "FirstPage" => page(),
        "TimingInformation" => timing_information()
      }
      
  """
  @type execute_statement_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fetch_page_request() :: %{
        "NextPageToken" => String.t(),
        "TransactionId" => String.t()
      }
      
  """
  @type fetch_page_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fetch_page_result() :: %{
        "ConsumedIOs" => i_o_usage(),
        "Page" => page(),
        "TimingInformation" => timing_information()
      }
      
  """
  @type fetch_page_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      i_o_usage() :: %{
        "ReadIOs" => float(),
        "WriteIOs" => float()
      }
      
  """
  @type i_o_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_session_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type invalid_session_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      occ_conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type occ_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      page() :: %{
        "NextPageToken" => String.t(),
        "Values" => list(value_holder()())
      }
      
  """
  @type page() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rate_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type rate_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_command_request() :: %{
        optional("AbortTransaction") => abort_transaction_request(),
        optional("CommitTransaction") => commit_transaction_request(),
        optional("EndSession") => end_session_request(),
        optional("ExecuteStatement") => execute_statement_request(),
        optional("FetchPage") => fetch_page_request(),
        optional("SessionToken") => String.t(),
        optional("StartSession") => start_session_request(),
        optional("StartTransaction") => start_transaction_request()
      }
      
  """
  @type send_command_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_command_result() :: %{
        "AbortTransaction" => abort_transaction_result(),
        "CommitTransaction" => commit_transaction_result(),
        "EndSession" => end_session_result(),
        "ExecuteStatement" => execute_statement_result(),
        "FetchPage" => fetch_page_result(),
        "StartSession" => start_session_result(),
        "StartTransaction" => start_transaction_result()
      }
      
  """
  @type send_command_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_session_request() :: %{
        "LedgerName" => String.t()
      }
      
  """
  @type start_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_session_result() :: %{
        "SessionToken" => String.t(),
        "TimingInformation" => timing_information()
      }
      
  """
  @type start_session_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_transaction_request() :: %{}
      
  """
  @type start_transaction_request() :: %{}

  @typedoc """

  ## Example:
      
      start_transaction_result() :: %{
        "TimingInformation" => timing_information(),
        "TransactionId" => String.t()
      }
      
  """
  @type start_transaction_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      timing_information() :: %{
        "ProcessingTimeMilliseconds" => float()
      }
      
  """
  @type timing_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      value_holder() :: %{
        "IonBinary" => binary(),
        "IonText" => String.t()
      }
      
  """
  @type value_holder() :: %{String.t() => any()}

  @type send_command_errors() ::
          rate_exceeded_exception()
          | occ_conflict_exception()
          | limit_exceeded_exception()
          | invalid_session_exception()
          | capacity_exceeded_exception()
          | bad_request_exception()

  def metadata do
    %{
      api_version: "2019-07-11",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "session.qldb",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "QLDB Session",
      signature_version: "v4",
      signing_name: "qldb",
      target_prefix: "QLDBSession"
    }
  end

  @doc """
  Sends a command to an Amazon QLDB ledger.

  Instead of interacting directly with this API, we recommend using the QLDB
  driver
  or the QLDB shell to execute data transactions on a ledger.

    
  If you are working with an AWS SDK, use the QLDB driver. The driver provides
  a high-level abstraction layer above this *QLDB Session* data
  plane and manages `SendCommand` API calls for you. For information and
  a list of supported programming languages, see [Getting started with the
  driver](https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html)
  in the *Amazon QLDB Developer
  Guide*.

    
  If you are working with the AWS Command Line Interface (AWS CLI), use the
  QLDB shell. The shell is a command line interface that uses the QLDB driver to
  interact with a ledger. For information, see [Accessing Amazon QLDB using the QLDB
  shell](https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html).
  """
  @spec send_command(map(), send_command_request(), list()) ::
          {:ok, send_command_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_command_errors()}
  def send_command(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendCommand", input, options)
  end
end
