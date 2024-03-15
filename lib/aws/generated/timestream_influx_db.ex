# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TimestreamInfluxDB do
  @moduledoc """
  Amazon Timestream for InfluxDB is a managed time-series database engine that
  makes it easy for application developers and DevOps teams to run InfluxDB
  databases on AWS for near real-time time-series applications using open-source
  APIs.

  With Amazon Timestream for InfluxDB, it is easy to set up, operate, and scale
  time-series workloads that can answer queries with single-digit millisecond
  query response time.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2023-01-27",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "timestream-influxdb",
      global?: false,
      protocol: "json",
      service_id: "Timestream InfluxDB",
      signature_version: "v4",
      signing_name: "timestream-influxdb",
      target_prefix: "AmazonTimestreamInfluxDB"
    }
  end

  @doc """
  Creates a new Timestream for InfluxDB DB instance.
  """
  def create_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDbInstance", input, options)
  end

  @doc """
  Creates a new Timestream for InfluxDB DB parameter group to associate with DB
  instances.
  """
  def create_db_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDbParameterGroup", input, options)
  end

  @doc """
  Deletes a Timestream for InfluxDB DB instance.
  """
  def delete_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDbInstance", input, options)
  end

  @doc """
  Returns a Timestream for InfluxDB DB instance.
  """
  def get_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDbInstance", input, options)
  end

  @doc """
  Returns a Timestream for InfluxDB DB parameter group.
  """
  def get_db_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDbParameterGroup", input, options)
  end

  @doc """
  Returns a list of Timestream for InfluxDB DB instances.
  """
  def list_db_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDbInstances", input, options)
  end

  @doc """
  Returns a list of Timestream for InfluxDB DB parameter groups.
  """
  def list_db_parameter_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDbParameterGroups", input, options)
  end

  @doc """
  A list of tags applied to the resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Tags are composed of a Key/Value pairs.

  You can use tags to categorize and track your Timestream for InfluxDB resources.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes the tag from the specified resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates a Timestream for InfluxDB DB instance.
  """
  def update_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDbInstance", input, options)
  end
end
