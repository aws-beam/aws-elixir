# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MigrationHubConfig do
  @moduledoc """
  The AWS Migration Hub home region APIs are available specifically for working
  with your Migration Hub home region.

  You can use these APIs to determine a home region, as well as to create and work
  with controls that describe the home region.

    * You must make API calls for write actions (create, notify,
  associate, disassociate, import, or put) while in your home region, or a
  `HomeRegionNotSetException` error is returned.

    * API calls for read actions (list, describe, stop, and delete) are
  permitted outside of your home region.

    * If you call a write API outside the home region, an
  `InvalidInputException` is returned.

    * You can call `GetHomeRegion` action to obtain the account's
  Migration Hub home region.

  For specific API usage, see the sections that follow in this AWS Migration Hub
  Home Region API reference.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2019-06-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "migrationhub-config",
      global?: false,
      protocol: "json",
      service_id: "MigrationHub Config",
      signature_version: "v4",
      signing_name: "mgh",
      target_prefix: "AWSMigrationHubMultiAccountService"
    }
  end

  @doc """
  This API sets up the home region for the calling account only.
  """
  def create_home_region_control(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateHomeRegionControl", input, options)
  end

  @doc """
  This API permits filtering on the `ControlId` and `HomeRegion` fields.
  """
  def describe_home_region_controls(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeHomeRegionControls", input, options)
  end

  @doc """
  Returns the calling account’s home region, if configured.

  This API is used by other AWS services to determine the regional endpoint for
  calling AWS Application Discovery Service and Migration Hub. You must call
  `GetHomeRegion` at least once before you call any other AWS Application
  Discovery Service and AWS Migration Hub APIs, to obtain the account's Migration
  Hub home region.
  """
  def get_home_region(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetHomeRegion", input, options)
  end
end
