# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.VPCLattice do
  @moduledoc """
  Amazon VPC Lattice is a fully managed application networking service that you
  use to connect, secure, and monitor all of your services across multiple
  accounts and virtual private clouds (VPCs).

  Amazon VPC Lattice interconnects your microservices and legacy services within a
  logical boundary, so that you can discover and manage them more efficiently. For
  more information, see the [Amazon VPC Lattice User Guide](https://docs.aws.amazon.com/vpc-lattice/latest/ug/)
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2022-11-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "vpc-lattice",
      global?: false,
      protocol: "rest-json",
      service_id: "VPC Lattice",
      signature_version: "v4",
      signing_name: "vpc-lattice",
      target_prefix: nil
    }
  end

  @doc """
  Updates the listener rules in a batch.

  You can use this operation to change the priority of listener rules. This can be
  useful when bulk updating or swapping rule priority.
  """
  def batch_update_rule(
        %Client{} = client,
        listener_identifier,
        service_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners/#{AWS.Util.encode_uri(listener_identifier)}/rules"

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
  Enables access logs to be sent to Amazon CloudWatch, Amazon S3, and Amazon
  Kinesis Data Firehose.

  The service network owner can use the access logs to audit the services in the
  network. The service network owner will only see access logs from clients and
  services that are associated with their service network. Access log entries
  represent traffic originated from VPCs associated with that network. For more
  information, see [Access logs](https://docs.aws.amazon.com/vpc-lattice/latest/ug/monitoring-access-logs.html)
  in the *Amazon VPC Lattice User Guide*.
  """
  def create_access_log_subscription(%Client{} = client, input, options \\ []) do
    url_path = "/accesslogsubscriptions"
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
  Creates a listener for a service.

  Before you start using your Amazon VPC Lattice service, you must add one or more
  listeners. A listener is a process that checks for connection requests to your
  services. For more information, see
  [Listeners](https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html) in
  the *Amazon VPC Lattice User Guide*.
  """
  def create_listener(%Client{} = client, service_identifier, input, options \\ []) do
    url_path = "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners"
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
  Creates a listener rule.

  Each listener has a default rule for checking connection requests, but you can
  define additional rules. Each rule consists of a priority, one or more actions,
  and one or more conditions. For more information, see [Listener rules](https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules)
  in the *Amazon VPC Lattice User Guide*.
  """
  def create_rule(
        %Client{} = client,
        listener_identifier,
        service_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners/#{AWS.Util.encode_uri(listener_identifier)}/rules"

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
  Creates a service.

  A service is any software application that can run on instances containers, or
  serverless functions within an account or virtual private cloud (VPC).

  For more information, see
  [Services](https://docs.aws.amazon.com/vpc-lattice/latest/ug/services.html) in
  the *Amazon VPC Lattice User Guide*.
  """
  def create_service(%Client{} = client, input, options \\ []) do
    url_path = "/services"
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
  Creates a service network.

  A service network is a logical boundary for a collection of services. You can
  associate services and VPCs with a service network.

  For more information, see [Service networks](https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html)
  in the *Amazon VPC Lattice User Guide*.
  """
  def create_service_network(%Client{} = client, input, options \\ []) do
    url_path = "/servicenetworks"
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
  Associates a service with a service network.

  You can't use this operation if the service and service network are already
  associated or if there is a disassociation or deletion in progress. If the
  association fails, you can retry the operation by deleting the association and
  recreating it.

  You cannot associate a service and service network that are shared with a
  caller. The caller must own either the service or the service network.

  As a result of this operation, the association is created in the service network
  account and the association owner account.
  """
  def create_service_network_service_association(%Client{} = client, input, options \\ []) do
    url_path = "/servicenetworkserviceassociations"
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
  Associates a VPC with a service network.

  When you associate a VPC with the service network, it enables all the resources
  within that VPC to be clients and communicate with other services in the service
  network. For more information, see [Manage VPC associations](https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-network-associations.html#service-network-vpc-associations)
  in the *Amazon VPC Lattice User Guide*.

  You can't use this operation if there is a disassociation in progress. If the
  association fails, retry by deleting the association and recreating it.

  As a result of this operation, the association gets created in the service
  network account and the VPC owner account.

  If you add a security group to the service network and VPC association, the
  association must continue to always have at least one security group. You can
  add or edit security groups at any time. However, to remove all security groups,
  you must first delete the association and recreate it without security groups.
  """
  def create_service_network_vpc_association(%Client{} = client, input, options \\ []) do
    url_path = "/servicenetworkvpcassociations"
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
  Creates a target group.

  A target group is a collection of targets, or compute resources, that run your
  application or service. A target group can only be used by a single service.

  For more information, see [Target groups](https://docs.aws.amazon.com/vpc-lattice/latest/ug/target-groups.html) in
  the *Amazon VPC Lattice User Guide*.
  """
  def create_target_group(%Client{} = client, input, options \\ []) do
    url_path = "/targetgroups"
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
  Deletes the specified access log subscription.
  """
  def delete_access_log_subscription(
        %Client{} = client,
        access_log_subscription_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/accesslogsubscriptions/#{AWS.Util.encode_uri(access_log_subscription_identifier)}"

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
  Deletes the specified auth policy.

  If an auth is set to `AWS_IAM` and the auth policy is deleted, all requests will
  be denied by default. If you are trying to remove the auth policy completely,
  you must set the auth_type to `NONE`. If auth is enabled on the resource, but no
  auth policy is set, all requests will be denied.
  """
  def delete_auth_policy(%Client{} = client, resource_identifier, input, options \\ []) do
    url_path = "/authpolicy/#{AWS.Util.encode_uri(resource_identifier)}"
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
  Deletes the specified listener.
  """
  def delete_listener(
        %Client{} = client,
        listener_identifier,
        service_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners/#{AWS.Util.encode_uri(listener_identifier)}"

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
  Deletes the specified resource policy.
  """
  def delete_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/resourcepolicy/#{AWS.Util.encode_uri(resource_arn)}"
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
  Deletes a listener rule.

  Each listener has a default rule for checking connection requests, but you can
  define additional rules. Each rule consists of a priority, one or more actions,
  and one or more conditions. You can delete additional listener rules, but you
  cannot delete the default rule.

  For more information, see [Listener rules](https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules)
  in the *Amazon VPC Lattice User Guide*.
  """
  def delete_rule(
        %Client{} = client,
        listener_identifier,
        rule_identifier,
        service_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners/#{AWS.Util.encode_uri(listener_identifier)}/rules/#{AWS.Util.encode_uri(rule_identifier)}"

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
  Deletes a service.

  A service can't be deleted if it's associated with a service network. If you
  delete a service, all resources related to the service, such as the resource
  policy, auth policy, listeners, listener rules, and access log subscriptions,
  are also deleted. For more information, see [Delete a service](https://docs.aws.amazon.com/vpc-lattice/latest/ug/services.html#delete-service)
  in the *Amazon VPC Lattice User Guide*.
  """
  def delete_service(%Client{} = client, service_identifier, input, options \\ []) do
    url_path = "/services/#{AWS.Util.encode_uri(service_identifier)}"
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
  Deletes a service network.

  You can only delete the service network if there is no service or VPC associated
  with it. If you delete a service network, all resources related to the service
  network, such as the resource policy, auth policy, and access log subscriptions,
  are also deleted. For more information, see [Delete a service network](https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html#delete-service-network)
  in the *Amazon VPC Lattice User Guide*.
  """
  def delete_service_network(%Client{} = client, service_network_identifier, input, options \\ []) do
    url_path = "/servicenetworks/#{AWS.Util.encode_uri(service_network_identifier)}"
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
  Deletes the association between a specified service and the specific service
  network.

  This request will fail if an association is still in progress.
  """
  def delete_service_network_service_association(
        %Client{} = client,
        service_network_service_association_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/servicenetworkserviceassociations/#{AWS.Util.encode_uri(service_network_service_association_identifier)}"

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
  Disassociates the VPC from the service network.

  You can't disassociate the VPC if there is a create or update association in
  progress.
  """
  def delete_service_network_vpc_association(
        %Client{} = client,
        service_network_vpc_association_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/servicenetworkvpcassociations/#{AWS.Util.encode_uri(service_network_vpc_association_identifier)}"

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
  Deletes a target group.

  You can't delete a target group if it is used in a listener rule or if the
  target group creation is in progress.
  """
  def delete_target_group(%Client{} = client, target_group_identifier, input, options \\ []) do
    url_path = "/targetgroups/#{AWS.Util.encode_uri(target_group_identifier)}"
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
  Deregisters the specified targets from the specified target group.
  """
  def deregister_targets(%Client{} = client, target_group_identifier, input, options \\ []) do
    url_path = "/targetgroups/#{AWS.Util.encode_uri(target_group_identifier)}/deregistertargets"
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
  Retrieves information about the specified access log subscription.
  """
  def get_access_log_subscription(
        %Client{} = client,
        access_log_subscription_identifier,
        options \\ []
      ) do
    url_path =
      "/accesslogsubscriptions/#{AWS.Util.encode_uri(access_log_subscription_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the auth policy for the specified service or service
  network.
  """
  def get_auth_policy(%Client{} = client, resource_identifier, options \\ []) do
    url_path = "/authpolicy/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the specified listener for the specified service.
  """
  def get_listener(%Client{} = client, listener_identifier, service_identifier, options \\ []) do
    url_path =
      "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners/#{AWS.Util.encode_uri(listener_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the resource policy.

  The resource policy is an IAM policy created on behalf of the resource owner
  when they share a resource.
  """
  def get_resource_policy(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/resourcepolicy/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about listener rules.

  You can also retrieve information about the default listener rule. For more
  information, see [Listener rules](https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules)
  in the *Amazon VPC Lattice User Guide*.
  """
  def get_rule(
        %Client{} = client,
        listener_identifier,
        rule_identifier,
        service_identifier,
        options \\ []
      ) do
    url_path =
      "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners/#{AWS.Util.encode_uri(listener_identifier)}/rules/#{AWS.Util.encode_uri(rule_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the specified service.
  """
  def get_service(%Client{} = client, service_identifier, options \\ []) do
    url_path = "/services/#{AWS.Util.encode_uri(service_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the specified service network.
  """
  def get_service_network(%Client{} = client, service_network_identifier, options \\ []) do
    url_path = "/servicenetworks/#{AWS.Util.encode_uri(service_network_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the specified association between a service network
  and a service.
  """
  def get_service_network_service_association(
        %Client{} = client,
        service_network_service_association_identifier,
        options \\ []
      ) do
    url_path =
      "/servicenetworkserviceassociations/#{AWS.Util.encode_uri(service_network_service_association_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the association between a service network and a VPC.
  """
  def get_service_network_vpc_association(
        %Client{} = client,
        service_network_vpc_association_identifier,
        options \\ []
      ) do
    url_path =
      "/servicenetworkvpcassociations/#{AWS.Util.encode_uri(service_network_vpc_association_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the specified target group.
  """
  def get_target_group(%Client{} = client, target_group_identifier, options \\ []) do
    url_path = "/targetgroups/#{AWS.Util.encode_uri(target_group_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all access log subscriptions for the specified service network or service.
  """
  def list_access_log_subscriptions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        resource_identifier,
        options \\ []
      ) do
    url_path = "/accesslogsubscriptions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_identifier) do
        [{"resourceIdentifier", resource_identifier} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the listeners for the specified service.
  """
  def list_listeners(
        %Client{} = client,
        service_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the rules for the listener.
  """
  def list_rules(
        %Client{} = client,
        listener_identifier,
        service_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners/#{AWS.Util.encode_uri(listener_identifier)}/rules"

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the associations between the service network and the service.

  You can filter the list either by service or service network. You must provide
  either the service network identifier or the service identifier.

  Every association in Amazon VPC Lattice is given a unique Amazon Resource Name
  (ARN), such as when a service network is associated with a VPC or when a service
  is associated with a service network. If the association is for a resource that
  is shared with another account, the association will include the local account
  ID as the prefix in the ARN for each account the resource is shared with.
  """
  def list_service_network_service_associations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        service_identifier \\ nil,
        service_network_identifier \\ nil,
        options \\ []
      ) do
    url_path = "/servicenetworkserviceassociations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(service_network_identifier) do
        [{"serviceNetworkIdentifier", service_network_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(service_identifier) do
        [{"serviceIdentifier", service_identifier} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the service network and VPC associations.

  You can filter the list either by VPC or service network. You must provide
  either the service network identifier or the VPC identifier.
  """
  def list_service_network_vpc_associations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        service_network_identifier \\ nil,
        vpc_identifier \\ nil,
        options \\ []
      ) do
    url_path = "/servicenetworkvpcassociations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(vpc_identifier) do
        [{"vpcIdentifier", vpc_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(service_network_identifier) do
        [{"serviceNetworkIdentifier", service_network_identifier} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the service networks owned by the caller account or shared with the caller
  account.

  Also includes the account ID in the ARN to show which account owns the service
  network.
  """
  def list_service_networks(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/servicenetworks"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the services owned by the caller account or shared with the caller
  account.
  """
  def list_services(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/services"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists your target groups.

  You can narrow your search by using the filters below in your request.
  """
  def list_target_groups(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        target_group_type \\ nil,
        vpc_identifier \\ nil,
        options \\ []
      ) do
    url_path = "/targetgroups"
    headers = []
    query_params = []

    query_params =
      if !is_nil(vpc_identifier) do
        [{"vpcIdentifier", vpc_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(target_group_type) do
        [{"targetGroupType", target_group_type} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the targets for the target group.

  By default, all targets are included. You can use this API to check the health
  status of targets. You can also ﬁlter the results by target.
  """
  def list_targets(%Client{} = client, target_group_identifier, input, options \\ []) do
    url_path = "/targetgroups/#{AWS.Util.encode_uri(target_group_identifier)}/listtargets"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
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
      200
    )
  end

  @doc """
  Creates or updates the auth policy.

  The policy string in JSON must not contain newlines or blank lines.
  """
  def put_auth_policy(%Client{} = client, resource_identifier, input, options \\ []) do
    url_path = "/authpolicy/#{AWS.Util.encode_uri(resource_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Attaches a resource-based permission policy to a service or service network.

  The policy must contain the same actions and condition statements as the Amazon
  Web Services Resource Access Manager permission for sharing services and service
  networks.
  """
  def put_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/resourcepolicy/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Registers the targets with the target group.

  If it's a Lambda target, you can only have one target in a target group.
  """
  def register_targets(%Client{} = client, target_group_identifier, input, options \\ []) do
    url_path = "/targetgroups/#{AWS.Util.encode_uri(target_group_identifier)}/registertargets"
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
  Adds the specified tags to the specified resource.
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
  Removes the specified tags from the specified resource.
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
  Updates the specified access log subscription.
  """
  def update_access_log_subscription(
        %Client{} = client,
        access_log_subscription_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/accesslogsubscriptions/#{AWS.Util.encode_uri(access_log_subscription_identifier)}"

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
  Updates the specified listener for the specified service.
  """
  def update_listener(
        %Client{} = client,
        listener_identifier,
        service_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners/#{AWS.Util.encode_uri(listener_identifier)}"

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
  Updates a rule for the listener.

  You can't modify a default listener rule. To modify a default listener rule, use
  `UpdateListener`.
  """
  def update_rule(
        %Client{} = client,
        listener_identifier,
        rule_identifier,
        service_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/services/#{AWS.Util.encode_uri(service_identifier)}/listeners/#{AWS.Util.encode_uri(listener_identifier)}/rules/#{AWS.Util.encode_uri(rule_identifier)}"

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
  Updates the specified service.
  """
  def update_service(%Client{} = client, service_identifier, input, options \\ []) do
    url_path = "/services/#{AWS.Util.encode_uri(service_identifier)}"
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
  Updates the specified service network.
  """
  def update_service_network(%Client{} = client, service_network_identifier, input, options \\ []) do
    url_path = "/servicenetworks/#{AWS.Util.encode_uri(service_network_identifier)}"
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
  Updates the service network and VPC association.

  If you add a security group to the service network and VPC association, the
  association must continue to always have at least one security group. You can
  add or edit security groups at any time. However, to remove all security groups,
  you must first delete the association and recreate it without security groups.
  """
  def update_service_network_vpc_association(
        %Client{} = client,
        service_network_vpc_association_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/servicenetworkvpcassociations/#{AWS.Util.encode_uri(service_network_vpc_association_identifier)}"

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
  Updates the specified target group.
  """
  def update_target_group(%Client{} = client, target_group_identifier, input, options \\ []) do
    url_path = "/targetgroups/#{AWS.Util.encode_uri(target_group_identifier)}"
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
