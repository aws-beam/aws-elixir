# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ManagedBlockchainQuery do
  @moduledoc """
  Amazon Managed Blockchain (AMB) Query provides you with convenient access to
  multi-blockchain network data, which makes
  it easier for you to extract contextual data related to blockchain activity.

  You can use AMB Query to
  read data from public blockchain networks, such as Bitcoin Mainnet and Ethereum
  Mainnet. You can
  also get information such as the current and historical balances of addresses,
  or you can get a
  list of blockchain transactions for a given time period. Additionally, you can
  get details of a
  given transaction, such as transaction events, which you can further analyze or
  use in business
  logic for your applications.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_asset_contract_input() :: %{
        required("contractIdentifier") => contract_identifier()
      }

  """
  @type get_asset_contract_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_contracts_output() :: %{
        "contracts" => list(asset_contract()()),
        "nextToken" => String.t()
      }

  """
  @type list_asset_contracts_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_token_balance_input_item() :: %{
        "atBlockchainInstant" => blockchain_instant(),
        "ownerIdentifier" => owner_identifier(),
        "tokenIdentifier" => token_identifier()
      }

  """
  @type batch_get_token_balance_input_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_asset_contract_output() :: %{
        "contractIdentifier" => contract_identifier(),
        "deployerAddress" => String.t(),
        "metadata" => contract_metadata(),
        "tokenStandard" => String.t()
      }

  """
  @type get_asset_contract_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contract_filter() :: %{
        "deployerAddress" => String.t(),
        "network" => String.t(),
        "tokenStandard" => String.t()
      }

  """
  @type contract_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      owner_filter() :: %{
        "address" => String.t()
      }

  """
  @type owner_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      blockchain_instant() :: %{
        "time" => [non_neg_integer()]
      }

  """
  @type blockchain_instant() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_token_balance_output_item() :: %{
        "atBlockchainInstant" => blockchain_instant(),
        "balance" => [String.t()],
        "lastUpdatedTime" => blockchain_instant(),
        "ownerIdentifier" => owner_identifier(),
        "tokenIdentifier" => token_identifier()
      }

  """
  @type batch_get_token_balance_output_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_token_balances_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("ownerFilter") => owner_filter(),
        required("tokenFilter") => token_filter()
      }

  """
  @type list_token_balances_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_transactions_input() :: %{
        optional("confirmationStatusFilter") => confirmation_status_filter(),
        optional("fromBlockchainInstant") => blockchain_instant(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("sort") => list_transactions_sort(),
        optional("toBlockchainInstant") => blockchain_instant(),
        required("address") => String.t(),
        required("network") => String.t()
      }

  """
  @type list_transactions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t(),
        "quotaCode" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t(),
        "serviceCode" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transaction_output_item() :: %{
        "confirmationStatus" => String.t(),
        "network" => String.t(),
        "transactionHash" => String.t(),
        "transactionTimestamp" => [non_neg_integer()]
      }

  """
  @type transaction_output_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_contract() :: %{
        "contractIdentifier" => contract_identifier(),
        "deployerAddress" => String.t(),
        "tokenStandard" => String.t()
      }

  """
  @type asset_contract() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_token_balance_output() :: %{
        "errors" => list(batch_get_token_balance_error_item()()),
        "tokenBalances" => list(batch_get_token_balance_output_item()())
      }

  """
  @type batch_get_token_balance_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_token_balance_output() :: %{
        "atBlockchainInstant" => blockchain_instant(),
        "balance" => [String.t()],
        "lastUpdatedTime" => blockchain_instant(),
        "ownerIdentifier" => owner_identifier(),
        "tokenIdentifier" => token_identifier()
      }

  """
  @type get_token_balance_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contract_metadata() :: %{
        "decimals" => [integer()],
        "name" => [String.t()],
        "symbol" => [String.t()]
      }

  """
  @type contract_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_token_balance_error_item() :: %{
        "atBlockchainInstant" => blockchain_instant(),
        "errorCode" => [String.t()],
        "errorMessage" => [String.t()],
        "errorType" => String.t(),
        "ownerIdentifier" => owner_identifier(),
        "tokenIdentifier" => token_identifier()
      }

  """
  @type batch_get_token_balance_error_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_transaction_output() :: %{
        "transaction" => transaction()
      }

  """
  @type get_transaction_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_transactions_sort() :: %{
        "sortBy" => String.t(),
        "sortOrder" => String.t()
      }

  """
  @type list_transactions_sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_transaction_input() :: %{
        required("network") => String.t(),
        required("transactionHash") => String.t()
      }

  """
  @type get_transaction_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      token_identifier() :: %{
        "contractAddress" => String.t(),
        "network" => String.t(),
        "tokenId" => String.t()
      }

  """
  @type token_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_token_balance_input() :: %{
        optional("getTokenBalanceInputs") => list(batch_get_token_balance_input_item()())
      }

  """
  @type batch_get_token_balance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_transaction_events_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        required("network") => String.t(),
        required("transactionHash") => String.t()
      }

  """
  @type list_transaction_events_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => String.t(),
        "reason" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      confirmation_status_filter() :: %{
        "include" => list(String.t()())
      }

  """
  @type confirmation_status_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t(),
        "quotaCode" => String.t(),
        "retryAfterSeconds" => [integer()],
        "serviceCode" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      token_balance() :: %{
        "atBlockchainInstant" => blockchain_instant(),
        "balance" => [String.t()],
        "lastUpdatedTime" => blockchain_instant(),
        "ownerIdentifier" => owner_identifier(),
        "tokenIdentifier" => token_identifier()
      }

  """
  @type token_balance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_asset_contracts_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        required("contractFilter") => contract_filter()
      }

  """
  @type list_asset_contracts_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      owner_identifier() :: %{
        "address" => String.t()
      }

  """
  @type owner_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contract_identifier() :: %{
        "contractAddress" => String.t(),
        "network" => String.t()
      }

  """
  @type contract_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_token_balance_input() :: %{
        optional("atBlockchainInstant") => blockchain_instant(),
        required("ownerIdentifier") => owner_identifier(),
        required("tokenIdentifier") => token_identifier()
      }

  """
  @type get_token_balance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_token_balances_output() :: %{
        "nextToken" => String.t(),
        "tokenBalances" => list(token_balance()())
      }

  """
  @type list_token_balances_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_transaction_events_output() :: %{
        "events" => list(transaction_event()()),
        "nextToken" => String.t()
      }

  """
  @type list_transaction_events_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transaction_event() :: %{
        "contractAddress" => String.t(),
        "eventType" => String.t(),
        "from" => String.t(),
        "network" => String.t(),
        "to" => String.t(),
        "tokenId" => String.t(),
        "transactionHash" => String.t(),
        "transactionId" => [String.t()],
        "value" => [String.t()],
        "voutIndex" => [integer()]
      }

  """
  @type transaction_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transaction() :: %{
        "blockHash" => String.t(),
        "blockNumber" => [String.t()],
        "confirmationStatus" => String.t(),
        "contractAddress" => String.t(),
        "cumulativeGasUsed" => [String.t()],
        "effectiveGasPrice" => [String.t()],
        "executionStatus" => String.t(),
        "from" => String.t(),
        "gasUsed" => [String.t()],
        "network" => String.t(),
        "numberOfTransactions" => [float()],
        "signatureR" => [String.t()],
        "signatureS" => [String.t()],
        "signatureV" => [integer()],
        "to" => String.t(),
        "transactionFee" => [String.t()],
        "transactionHash" => String.t(),
        "transactionId" => [String.t()],
        "transactionIndex" => [float()],
        "transactionTimestamp" => [non_neg_integer()]
      }

  """
  @type transaction() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_transactions_output() :: %{
        "nextToken" => String.t(),
        "transactions" => list(transaction_output_item()())
      }

  """
  @type list_transactions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      token_filter() :: %{
        "contractAddress" => String.t(),
        "network" => String.t(),
        "tokenId" => String.t()
      }

  """
  @type token_filter() :: %{String.t() => any()}

  @type batch_get_token_balance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_asset_contract_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_token_balance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_transaction_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type list_asset_contracts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_token_balances_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_transaction_events_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_transactions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  def metadata do
    %{
      api_version: "2023-05-04",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "managedblockchain-query",
      global?: false,
      protocol: "rest-json",
      service_id: "ManagedBlockchain Query",
      signature_version: "v4",
      signing_name: "managedblockchain-query",
      target_prefix: nil
    }
  end

  @doc """
  Gets the token balance for a batch of tokens by using the `BatchGetTokenBalance`
  action for every token in the request.

  Only the native tokens BTC and ETH, and the ERC-20,
  ERC-721, and ERC 1155 token standards are supported.
  """
  @spec batch_get_token_balance(map(), batch_get_token_balance_input(), list()) ::
          {:ok, batch_get_token_balance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_token_balance_errors()}
  def batch_get_token_balance(%Client{} = client, input, options \\ []) do
    url_path = "/batch-get-token-balance"
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
  Gets the information about a specific contract deployed on the blockchain.

    
  The Bitcoin blockchain networks do not support this
  operation.

    
  Metadata is currently only available for some `ERC-20` contracts.
  Metadata will be available for additional contracts in the future.
  """
  @spec get_asset_contract(map(), get_asset_contract_input(), list()) ::
          {:ok, get_asset_contract_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_asset_contract_errors()}
  def get_asset_contract(%Client{} = client, input, options \\ []) do
    url_path = "/get-asset-contract"
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
  Gets the balance of a specific token, including native tokens, for a given
  address (wallet or contract) on the blockchain.

  Only the native tokens BTC and ETH, and the ERC-20,
  ERC-721, and ERC 1155 token standards are supported.
  """
  @spec get_token_balance(map(), get_token_balance_input(), list()) ::
          {:ok, get_token_balance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_token_balance_errors()}
  def get_token_balance(%Client{} = client, input, options \\ []) do
    url_path = "/get-token-balance"
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
  Gets the details of a transaction.

  This action will return transaction details for all transactions
  that are *confirmed* on the blockchain, even if they have not reached
  [finality](https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality).
  """
  @spec get_transaction(map(), get_transaction_input(), list()) ::
          {:ok, get_transaction_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_transaction_errors()}
  def get_transaction(%Client{} = client, input, options \\ []) do
    url_path = "/get-transaction"
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
  Lists all the contracts for a given contract type deployed by an address
  (either a contract address or a wallet address).

  The Bitcoin blockchain networks do not support this
  operation.
  """
  @spec list_asset_contracts(map(), list_asset_contracts_input(), list()) ::
          {:ok, list_asset_contracts_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_asset_contracts_errors()}
  def list_asset_contracts(%Client{} = client, input, options \\ []) do
    url_path = "/list-asset-contracts"
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
  This action returns the following for a given blockchain network:

    *
  Lists all token balances owned by an address (either a contract
  address or a wallet address).

    *
  Lists all token balances for all tokens created by a contract.

    *
  Lists all token balances for a given token.

  You must always specify the network property of
  the `tokenFilter` when using this operation.
  """
  @spec list_token_balances(map(), list_token_balances_input(), list()) ::
          {:ok, list_token_balances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_token_balances_errors()}
  def list_token_balances(%Client{} = client, input, options \\ []) do
    url_path = "/list-token-balances"
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
  An array of `TransactionEvent` objects.

  Each object contains details
  about the transaction event.

  This action will return transaction details for all transactions
  that are *confirmed* on the blockchain, even if they have not reached
  [finality](https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality).
  """
  @spec list_transaction_events(map(), list_transaction_events_input(), list()) ::
          {:ok, list_transaction_events_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_transaction_events_errors()}
  def list_transaction_events(%Client{} = client, input, options \\ []) do
    url_path = "/list-transaction-events"
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
  Lists all of the transactions on a given wallet address or to a specific
  contract.
  """
  @spec list_transactions(map(), list_transactions_input(), list()) ::
          {:ok, list_transactions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_transactions_errors()}
  def list_transactions(%Client{} = client, input, options \\ []) do
    url_path = "/list-transactions"
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
end
