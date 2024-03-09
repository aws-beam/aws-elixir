# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Tnb do
  @moduledoc """
  Amazon Web Services Telco Network Builder (TNB) is a network automation service
  that helps you deploy and manage telecom networks.

  AWS TNB helps you with the lifecycle management of your telecommunication
  network functions throughout planning, deployment, and post-deployment
  activities.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2008-10-21",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "tnb",
      global?: false,
      protocol: "rest-json",
      service_id: "tnb",
      signature_version: "v4",
      signing_name: "tnb",
      target_prefix: nil
    }
  end

  @doc """
  Cancels a network operation.

  A network operation is any operation that is done to your network, such as
  network instance instantiation or termination.
  """
  def cancel_sol_network_operation(%Client{} = client, ns_lcm_op_occ_id, input, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_lcm_op_occs/#{AWS.Util.encode_uri(ns_lcm_op_occ_id)}/cancel"
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
      202
    )
  end

  @doc """
  Creates a function package.

  A function package is a .zip file in CSAR (Cloud Service Archive) format that
  contains a network function (an ETSI standard telecommunication application) and
  function package descriptor that uses the TOSCA standard to describe how the
  network functions should run on your network. For more information, see
  [Function packages](https://docs.aws.amazon.com/tnb/latest/ug/function-packages.html) in
  the *Amazon Web Services Telco Network Builder User Guide*.

  Creating a function package is the first step for creating a network in AWS TNB.
  This request creates an empty container with an ID. The next step is to upload
  the actual CSAR zip file into that empty container. To upload function package
  content, see
  [PutSolFunctionPackageContent](https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolFunctionPackageContent.html).
  """
  def create_sol_function_package(%Client{} = client, input, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages"
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
      201
    )
  end

  @doc """
  Creates a network instance.

  A network instance is a single network created in Amazon Web Services TNB that
  can be deployed and on which life-cycle operations (like terminate, update, and
  delete) can be performed. Creating a network instance is the third step after
  creating a network package. For more information about network instances,
  [Network instances](https://docs.aws.amazon.com/tnb/latest/ug/network-instances.html) in
  the *Amazon Web Services Telco Network Builder User Guide*.

  Once you create a network instance, you can instantiate it. To instantiate a
  network, see
  [InstantiateSolNetworkInstance](https://docs.aws.amazon.com/tnb/latest/APIReference/API_InstantiateSolNetworkInstance.html).
  """
  def create_sol_network_instance(%Client{} = client, input, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances"
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
      201
    )
  end

  @doc """
  Creates a network package.

  A network package is a .zip file in CSAR (Cloud Service Archive) format defines
  the function packages you want to deploy and the Amazon Web Services
  infrastructure you want to deploy them on. For more information, see [Network instances](https://docs.aws.amazon.com/tnb/latest/ug/network-instances.html) in
  the *Amazon Web Services Telco Network Builder User Guide*.

  A network package consists of a network service descriptor (NSD) file (required)
  and any additional files (optional), such as scripts specific to your needs. For
  example, if you have multiple function packages in your network package, you can
  use the NSD to define which network functions should run in certain VPCs,
  subnets, or EKS clusters.

  This request creates an empty network package container with an ID. Once you
  create a network package, you can upload the network package content using
  [PutSolNetworkPackageContent](https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolNetworkPackageContent.html).
  """
  def create_sol_network_package(%Client{} = client, input, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors"
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
      201
    )
  end

  @doc """
  Deletes a function package.

  A function package is a .zip file in CSAR (Cloud Service Archive) format that
  contains a network function (an ETSI standard telecommunication application) and
  function package descriptor that uses the TOSCA standard to describe how the
  network functions should run on your network.

  To delete a function package, the package must be in a disabled state. To
  disable a function package, see
  [UpdateSolFunctionPackage](https://docs.aws.amazon.com/tnb/latest/APIReference/API_UpdateSolFunctionPackage.html).
  """
  def delete_sol_function_package(%Client{} = client, vnf_pkg_id, input, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}"
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
      204
    )
  end

  @doc """
  Deletes a network instance.

  A network instance is a single network created in Amazon Web Services TNB that
  can be deployed and on which life-cycle operations (like terminate, update, and
  delete) can be performed.

  To delete a network instance, the instance must be in a stopped or terminated
  state. To terminate a network instance, see
  [TerminateSolNetworkInstance](https://docs.aws.amazon.com/tnb/latest/APIReference/API_TerminateSolNetworkInstance.html).
  """
  def delete_sol_network_instance(%Client{} = client, ns_instance_id, input, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances/#{AWS.Util.encode_uri(ns_instance_id)}"
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
      204
    )
  end

  @doc """
  Deletes network package.

  A network package is a .zip file in CSAR (Cloud Service Archive) format defines
  the function packages you want to deploy and the Amazon Web Services
  infrastructure you want to deploy them on.

  To delete a network package, the package must be in a disable state. To disable
  a network package, see
  [UpdateSolNetworkPackage](https://docs.aws.amazon.com/tnb/latest/APIReference/API_UpdateSolNetworkPackage.html).
  """
  def delete_sol_network_package(%Client{} = client, nsd_info_id, input, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}"
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
      204
    )
  end

  @doc """
  Gets the details of a network function instance, including the instantation
  state and metadata from the function package descriptor in the network function
  package.

  A network function instance is a function in a function package .
  """
  def get_sol_function_instance(%Client{} = client, vnf_instance_id, options \\ []) do
    url_path = "/sol/vnflcm/v1/vnf_instances/#{AWS.Util.encode_uri(vnf_instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the details of an individual function package, such as the operational
  state and whether the package is in use.

  A function package is a .zip file in CSAR (Cloud Service Archive) format that
  contains a network function (an ETSI standard telecommunication application) and
  function package descriptor that uses the TOSCA standard to describe how the
  network functions should run on your network..
  """
  def get_sol_function_package(%Client{} = client, vnf_pkg_id, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the contents of a function package.

  A function package is a .zip file in CSAR (Cloud Service Archive) format that
  contains a network function (an ETSI standard telecommunication application) and
  function package descriptor that uses the TOSCA standard to describe how the
  network functions should run on your network.
  """
  def get_sol_function_package_content(%Client{} = client, vnf_pkg_id, accept, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}/package_content"
    headers = []

    headers =
      if !is_nil(accept) do
        [{"Accept", accept} | headers]
      else
        headers
      end

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a function package descriptor in a function package.

  A function package descriptor is a .yaml file in a function package that uses
  the TOSCA standard to describe how the network function in the function package
  should run on your network.

  A function package is a .zip file in CSAR (Cloud Service Archive) format that
  contains a network function (an ETSI standard telecommunication application) and
  function package descriptor that uses the TOSCA standard to describe how the
  network functions should run on your network.
  """
  def get_sol_function_package_descriptor(%Client{} = client, vnf_pkg_id, accept, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}/vnfd"
    headers = []

    headers =
      if !is_nil(accept) do
        [{"Accept", accept} | headers]
      else
        headers
      end

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the details of the network instance.

  A network instance is a single network created in Amazon Web Services TNB that
  can be deployed and on which life-cycle operations (like terminate, update, and
  delete) can be performed.
  """
  def get_sol_network_instance(%Client{} = client, ns_instance_id, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances/#{AWS.Util.encode_uri(ns_instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the details of a network operation, including the tasks involved in the
  network operation and the status of the tasks.

  A network operation is any operation that is done to your network, such as
  network instance instantiation or termination.
  """
  def get_sol_network_operation(%Client{} = client, ns_lcm_op_occ_id, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_lcm_op_occs/#{AWS.Util.encode_uri(ns_lcm_op_occ_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the details of a network package.

  A network package is a .zip file in CSAR (Cloud Service Archive) format defines
  the function packages you want to deploy and the Amazon Web Services
  infrastructure you want to deploy them on.
  """
  def get_sol_network_package(%Client{} = client, nsd_info_id, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the contents of a network package.

  A network package is a .zip file in CSAR (Cloud Service Archive) format defines
  the function packages you want to deploy and the Amazon Web Services
  infrastructure you want to deploy them on.
  """
  def get_sol_network_package_content(%Client{} = client, nsd_info_id, accept, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}/nsd_content"
    headers = []

    headers =
      if !is_nil(accept) do
        [{"Accept", accept} | headers]
      else
        headers
      end

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the content of the network service descriptor.

  A network service descriptor is a .yaml file in a network package that uses the
  TOSCA standard to describe the network functions you want to deploy and the
  Amazon Web Services infrastructure you want to deploy the network functions on.
  """
  def get_sol_network_package_descriptor(%Client{} = client, nsd_info_id, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}/nsd"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Instantiates a network instance.

  A network instance is a single network created in Amazon Web Services TNB that
  can be deployed and on which life-cycle operations (like terminate, update, and
  delete) can be performed.

  Before you can instantiate a network instance, you have to create a network
  instance. For more information, see
  [CreateSolNetworkInstance](https://docs.aws.amazon.com/tnb/latest/APIReference/API_CreateSolNetworkInstance.html).
  """
  def instantiate_sol_network_instance(%Client{} = client, ns_instance_id, input, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances/#{AWS.Util.encode_uri(ns_instance_id)}/instantiate"
    headers = []

    {query_params, input} =
      [
        {"dryRun", "dry_run"}
      ]
      |> Request.build_params(input)

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
      201
    )
  end

  @doc """
  Lists network function instances.

  A network function instance is a function in a function package .
  """
  def list_sol_function_instances(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sol/vnflcm/v1/vnf_instances"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextpage_opaque_marker", next_token} | query_params]
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
  Lists information about function packages.

  A function package is a .zip file in CSAR (Cloud Service Archive) format that
  contains a network function (an ETSI standard telecommunication application) and
  function package descriptor that uses the TOSCA standard to describe how the
  network functions should run on your network.
  """
  def list_sol_function_packages(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextpage_opaque_marker", next_token} | query_params]
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
  Lists your network instances.

  A network instance is a single network created in Amazon Web Services TNB that
  can be deployed and on which life-cycle operations (like terminate, update, and
  delete) can be performed.
  """
  def list_sol_network_instances(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sol/nslcm/v1/ns_instances"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextpage_opaque_marker", next_token} | query_params]
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
  Lists details for a network operation, including when the operation started and
  the status of the operation.

  A network operation is any operation that is done to your network, such as
  network instance instantiation or termination.
  """
  def list_sol_network_operations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sol/nslcm/v1/ns_lcm_op_occs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextpage_opaque_marker", next_token} | query_params]
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
  Lists network packages.

  A network package is a .zip file in CSAR (Cloud Service Archive) format defines
  the function packages you want to deploy and the Amazon Web Services
  infrastructure you want to deploy them on.
  """
  def list_sol_network_packages(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sol/nsd/v1/ns_descriptors"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextpage_opaque_marker", next_token} | query_params]
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
  Lists tags for AWS TNB resources.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Uploads the contents of a function package.

  A function package is a .zip file in CSAR (Cloud Service Archive) format that
  contains a network function (an ETSI standard telecommunication application) and
  function package descriptor that uses the TOSCA standard to describe how the
  network functions should run on your network.
  """
  def put_sol_function_package_content(%Client{} = client, vnf_pkg_id, input, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}/package_content"

    {headers, input} =
      [
        {"contentType", "Content-Type"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Uploads the contents of a network package.

  A network package is a .zip file in CSAR (Cloud Service Archive) format defines
  the function packages you want to deploy and the Amazon Web Services
  infrastructure you want to deploy them on.
  """
  def put_sol_network_package_content(%Client{} = client, nsd_info_id, input, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}/nsd_content"

    {headers, input} =
      [
        {"contentType", "Content-Type"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Tags an AWS TNB resource.

  A tag is a label that you assign to an Amazon Web Services resource. Each tag
  consists of a key and an optional value. You can use tags to search and filter
  your resources or track your Amazon Web Services costs.
  """
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
  Terminates a network instance.

  A network instance is a single network created in Amazon Web Services TNB that
  can be deployed and on which life-cycle operations (like terminate, update, and
  delete) can be performed.

  You must terminate a network instance before you can delete it.
  """
  def terminate_sol_network_instance(%Client{} = client, ns_instance_id, input, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances/#{AWS.Util.encode_uri(ns_instance_id)}/terminate"
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
      201
    )
  end

  @doc """
  Untags an AWS TNB resource.

  A tag is a label that you assign to an Amazon Web Services resource. Each tag
  consists of a key and an optional value. You can use tags to search and filter
  your resources or track your Amazon Web Services costs.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
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
  Updates the operational state of function package.

  A function package is a .zip file in CSAR (Cloud Service Archive) format that
  contains a network function (an ETSI standard telecommunication application) and
  function package descriptor that uses the TOSCA standard to describe how the
  network functions should run on your network.
  """
  def update_sol_function_package(%Client{} = client, vnf_pkg_id, input, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}"
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
  Update a network instance.

  A network instance is a single network created in Amazon Web Services TNB that
  can be deployed and on which life-cycle operations (like terminate, update, and
  delete) can be performed.
  """
  def update_sol_network_instance(%Client{} = client, ns_instance_id, input, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances/#{AWS.Util.encode_uri(ns_instance_id)}/update"
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
      201
    )
  end

  @doc """
  Updates the operational state of a network package.

  A network package is a .zip file in CSAR (Cloud Service Archive) format defines
  the function packages you want to deploy and the Amazon Web Services
  infrastructure you want to deploy them on.

  A network service descriptor is a .yaml file in a network package that uses the
  TOSCA standard to describe the network functions you want to deploy and the
  Amazon Web Services infrastructure you want to deploy the network functions on.
  """
  def update_sol_network_package(%Client{} = client, nsd_info_id, input, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}"
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
  Validates function package content.

  This can be used as a dry run before uploading function package content with
  [PutSolFunctionPackageContent](https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolFunctionPackageContent.html).

  A function package is a .zip file in CSAR (Cloud Service Archive) format that
  contains a network function (an ETSI standard telecommunication application) and
  function package descriptor that uses the TOSCA standard to describe how the
  network functions should run on your network.
  """
  def validate_sol_function_package_content(%Client{} = client, vnf_pkg_id, input, options \\ []) do
    url_path =
      "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}/package_content/validate"

    {headers, input} =
      [
        {"contentType", "Content-Type"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Validates network package content.

  This can be used as a dry run before uploading network package content with
  [PutSolNetworkPackageContent](https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolNetworkPackageContent.html).

  A network package is a .zip file in CSAR (Cloud Service Archive) format defines
  the function packages you want to deploy and the Amazon Web Services
  infrastructure you want to deploy them on.
  """
  def validate_sol_network_package_content(%Client{} = client, nsd_info_id, input, options \\ []) do
    url_path =
      "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}/nsd_content/validate"

    {headers, input} =
      [
        {"contentType", "Content-Type"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
