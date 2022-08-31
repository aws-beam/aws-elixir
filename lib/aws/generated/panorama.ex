# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Panorama do
  @moduledoc """
  AWS Panorama

  ## Overview

  This is the *AWS Panorama API Reference*.

  For an introduction to the service, see [What is AWS Panorama?](https://docs.aws.amazon.com/panorama/latest/dev/panorama-welcome.html)
  in the *AWS Panorama Developer Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2019-07-24",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "panorama",
      global?: false,
      protocol: "rest-json",
      service_id: "Panorama",
      signature_version: "v4",
      signing_name: "panorama",
      target_prefix: nil
    }
  end

  @doc """
  Creates an application instance and deploys it to a device.
  """
  def create_application_instance(%Client{} = client, input, options \\ []) do
    url_path = "/application-instances"
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
      200
    )
  end

  @doc """
  Creates a job to run on one or more devices.
  """
  def create_job_for_devices(%Client{} = client, input, options \\ []) do
    url_path = "/jobs"
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
      200
    )
  end

  @doc """
  Creates a camera stream node.
  """
  def create_node_from_template_job(%Client{} = client, input, options \\ []) do
    url_path = "/packages/template-job"
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
      200
    )
  end

  @doc """
  Creates a package and storage location in an Amazon S3 access point.
  """
  def create_package(%Client{} = client, input, options \\ []) do
    url_path = "/packages"
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
      200
    )
  end

  @doc """
  Imports a node package.
  """
  def create_package_import_job(%Client{} = client, input, options \\ []) do
    url_path = "/packages/import-jobs"
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
      200
    )
  end

  @doc """
  Deletes a device.
  """
  def delete_device(%Client{} = client, device_id, input, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}"
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
      200
    )
  end

  @doc """
  Deletes a package.

  To delete a package, you need permission to call `s3:DeleteObject` in addition
  to permissions for the AWS Panorama API.
  """
  def delete_package(%Client{} = client, package_id, input, options \\ []) do
    url_path = "/packages/#{AWS.Util.encode_uri(package_id)}"
    headers = []

    {query_params, input} =
      [
        {"ForceDelete", "ForceDelete"}
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
      200
    )
  end

  @doc """
  Deregisters a package version.
  """
  def deregister_package_version(
        %Client{} = client,
        package_id,
        package_version,
        patch_version,
        input,
        options \\ []
      ) do
    url_path =
      "/packages/#{AWS.Util.encode_uri(package_id)}/versions/#{AWS.Util.encode_uri(package_version)}/patch/#{AWS.Util.encode_uri(patch_version)}"

    headers = []

    {query_params, input} =
      [
        {"OwnerAccount", "OwnerAccount"},
        {"UpdatedLatestPatchVersion", "UpdatedLatestPatchVersion"}
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
      200
    )
  end

  @doc """
  Returns information about an application instance on a device.
  """
  def describe_application_instance(%Client{} = client, application_instance_id, options \\ []) do
    url_path = "/application-instances/#{AWS.Util.encode_uri(application_instance_id)}"
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
      200
    )
  end

  @doc """
  Returns information about an application instance's configuration manifest.
  """
  def describe_application_instance_details(
        %Client{} = client,
        application_instance_id,
        options \\ []
      ) do
    url_path = "/application-instances/#{AWS.Util.encode_uri(application_instance_id)}/details"
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
      200
    )
  end

  @doc """
  Returns information about a device.
  """
  def describe_device(%Client{} = client, device_id, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}"
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
      200
    )
  end

  @doc """
  Returns information about a device job.
  """
  def describe_device_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
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
      200
    )
  end

  @doc """
  Returns information about a node.
  """
  def describe_node(%Client{} = client, node_id, owner_account \\ nil, options \\ []) do
    url_path = "/nodes/#{AWS.Util.encode_uri(node_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(owner_account) do
        [{"OwnerAccount", owner_account} | query_params]
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
      200
    )
  end

  @doc """
  Returns information about a job to create a camera stream node.
  """
  def describe_node_from_template_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/packages/template-job/#{AWS.Util.encode_uri(job_id)}"
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
      200
    )
  end

  @doc """
  Returns information about a package.
  """
  def describe_package(%Client{} = client, package_id, options \\ []) do
    url_path = "/packages/metadata/#{AWS.Util.encode_uri(package_id)}"
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
      200
    )
  end

  @doc """
  Returns information about a package import job.
  """
  def describe_package_import_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/packages/import-jobs/#{AWS.Util.encode_uri(job_id)}"
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
      200
    )
  end

  @doc """
  Returns information about a package version.
  """
  def describe_package_version(
        %Client{} = client,
        package_id,
        package_version,
        owner_account \\ nil,
        patch_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/packages/metadata/#{AWS.Util.encode_uri(package_id)}/versions/#{AWS.Util.encode_uri(package_version)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(patch_version) do
        [{"PatchVersion", patch_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(owner_account) do
        [{"OwnerAccount", owner_account} | query_params]
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
      200
    )
  end

  @doc """
  Returns a list of application instance dependencies.
  """
  def list_application_instance_dependencies(
        %Client{} = client,
        application_instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/application-instances/#{AWS.Util.encode_uri(application_instance_id)}/package-dependencies"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      200
    )
  end

  @doc """
  Returns a list of application node instances.
  """
  def list_application_instance_node_instances(
        %Client{} = client,
        application_instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/application-instances/#{AWS.Util.encode_uri(application_instance_id)}/node-instances"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      200
    )
  end

  @doc """
  Returns a list of application instances.
  """
  def list_application_instances(
        %Client{} = client,
        device_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        status_filter \\ nil,
        options \\ []
      ) do
    url_path = "/application-instances"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status_filter) do
        [{"statusFilter", status_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(device_id) do
        [{"deviceId", device_id} | query_params]
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
      200
    )
  end

  @doc """
  Returns a list of devices.
  """
  def list_devices(
        %Client{} = client,
        device_aggregated_status_filter \\ nil,
        max_results \\ nil,
        name_filter \\ nil,
        next_token \\ nil,
        sort_by \\ nil,
        sort_order \\ nil,
        options \\ []
      ) do
    url_path = "/devices"
    headers = []
    query_params = []

    query_params =
      if !is_nil(sort_order) do
        [{"SortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by) do
        [{"SortBy", sort_by} | query_params]
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
      if !is_nil(name_filter) do
        [{"NameFilter", name_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(device_aggregated_status_filter) do
        [{"DeviceAggregatedStatusFilter", device_aggregated_status_filter} | query_params]
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
      200
    )
  end

  @doc """
  Returns a list of jobs.
  """
  def list_devices_jobs(
        %Client{} = client,
        device_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/jobs"
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

    query_params =
      if !is_nil(device_id) do
        [{"DeviceId", device_id} | query_params]
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
      200
    )
  end

  @doc """
  Returns a list of camera stream node jobs.
  """
  def list_node_from_template_jobs(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/packages/template-job"
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
      200
    )
  end

  @doc """
  Returns a list of nodes.
  """
  def list_nodes(
        %Client{} = client,
        category \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        owner_account \\ nil,
        package_name \\ nil,
        package_version \\ nil,
        patch_version \\ nil,
        options \\ []
      ) do
    url_path = "/nodes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(patch_version) do
        [{"patchVersion", patch_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(package_version) do
        [{"packageVersion", package_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(package_name) do
        [{"packageName", package_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(owner_account) do
        [{"ownerAccount", owner_account} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(category) do
        [{"category", category} | query_params]
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
      200
    )
  end

  @doc """
  Returns a list of package import jobs.
  """
  def list_package_import_jobs(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/packages/import-jobs"
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
      200
    )
  end

  @doc """
  Returns a list of packages.
  """
  def list_packages(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/packages"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      200
    )
  end

  @doc """
  Returns a list of tags for a resource.
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
      200
    )
  end

  @doc """
  Creates a device and returns a configuration archive.

  The configuration archive is a ZIP file that contains a provisioning certificate
  that is valid for 5 minutes. Name the configuration archive
  `certificates-omni_*device-name*.zip` and transfer it to the device within 5
  minutes. Use the included USB storage device and connect it to the USB 3.0 port
  next to the HDMI output.
  """
  def provision_device(%Client{} = client, input, options \\ []) do
    url_path = "/devices"
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
      200
    )
  end

  @doc """
  Registers a package version.
  """
  def register_package_version(
        %Client{} = client,
        package_id,
        package_version,
        patch_version,
        input,
        options \\ []
      ) do
    url_path =
      "/packages/#{AWS.Util.encode_uri(package_id)}/versions/#{AWS.Util.encode_uri(package_version)}/patch/#{AWS.Util.encode_uri(patch_version)}"

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
      200
    )
  end

  @doc """
  Removes an application instance.
  """
  def remove_application_instance(
        %Client{} = client,
        application_instance_id,
        input,
        options \\ []
      ) do
    url_path = "/application-instances/#{AWS.Util.encode_uri(application_instance_id)}"
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
      200
    )
  end

  @doc """
  Tags a resource.
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
      200
    )
  end

  @doc """
  Removes tags from a resource.
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
      200
    )
  end

  @doc """
  Updates a device's metadata.
  """
  def update_device_metadata(%Client{} = client, device_id, input, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(device_id)}"
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
      200
    )
  end
end
