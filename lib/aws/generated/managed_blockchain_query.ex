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
  Lists all the transaction events for an address on the blockchain.

  This operation is only supported on the Bitcoin networks.
  """
  def list_filtered_transaction_events(%Client{} = client, input, options \\ []) do
    url_path = "/list-filtered-transaction-events"
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
  Lists all the transaction events for a transaction

  This action will return transaction details for all transactions
  that are *confirmed* on the blockchain, even if they have not reached
  [finality](https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality).
  """
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
  Lists all the transaction events for a transaction.
  """
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
