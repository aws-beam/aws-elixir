# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.FreeTier do
  @moduledoc """
  You can use the Amazon Web Services Free Tier API to query programmatically your
  Free Tier usage data.

  Free Tier tracks your monthly usage data for all free tier offers that are
  associated with your
  Amazon Web Services account. You can use the Free Tier API to filter and show
  only the data that you want.

  Service endpoint

  The Free Tier API provides the following endpoint:

    *
  https://freetier.us-east-1.api.aws

  For more information, see [Using the Amazon Web Services Free Tier](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-free-tier.html)
  in the *Billing User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      dimension_values() :: %{
        "Key" => list(any()),
        "MatchOptions" => list(list(any())()),
        "Values" => list(String.t()())
      }
      
  """
  @type dimension_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expression() :: %{
        "And" => list(expression()()),
        "Dimensions" => dimension_values(),
        "Not" => expression(),
        "Or" => list(expression()())
      }
      
  """
  @type expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      free_tier_usage() :: %{
        "actualUsageAmount" => float(),
        "description" => String.t(),
        "forecastedUsageAmount" => float(),
        "freeTierType" => String.t(),
        "limit" => float(),
        "operation" => String.t(),
        "region" => String.t(),
        "service" => String.t(),
        "unit" => String.t(),
        "usageType" => String.t()
      }
      
  """
  @type free_tier_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_free_tier_usage_request() :: %{
        optional("filter") => expression(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_free_tier_usage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_free_tier_usage_response() :: %{
        "freeTierUsages" => list(free_tier_usage()()),
        "nextToken" => String.t()
      }
      
  """
  @type get_free_tier_usage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @type get_free_tier_usage_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  def metadata do
    %{
      api_version: "2023-09-07",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "freetier",
      global?: false,
      protocol: "json",
      service_id: "FreeTier",
      signature_version: "v4",
      signing_name: "freetier",
      target_prefix: "AWSFreeTierService"
    }
  end

  @doc """
  Returns a list of all Free Tier usage objects that match your filters.
  """
  @spec get_free_tier_usage(map(), get_free_tier_usage_request(), list()) ::
          {:ok, get_free_tier_usage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_free_tier_usage_errors()}
  def get_free_tier_usage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetFreeTierUsage", input, options)
  end
end
