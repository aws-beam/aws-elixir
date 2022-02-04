# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Connect do
  @moduledoc """
  Amazon Connect is a cloud-based contact center solution that you use to set up
  and manage a customer contact center and provide reliable customer engagement at
  any scale.

  Amazon Connect provides metrics and real-time reporting that enable you to
  optimize contact routing. You can also resolve customer issues more efficiently
  by getting customers in touch with the appropriate agents.

  There are limits to the number of Amazon Connect resources that you can create.
  There are also limits to the number of requests that you can make per second.
  For more information, see [Amazon Connect Service Quotas](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
  in the *Amazon Connect Administrator Guide*.

  You can connect programmatically to an Amazon Web Services service by using an
  endpoint. For a list of Amazon Connect endpoints, see [Amazon Connect Endpoints](https://docs.aws.amazon.com/general/latest/gr/connect_region.html).

  Working with contact flows? Check out the [Amazon Connect Flow language](https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-08-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "connect",
      global?: false,
      protocol: "rest-json",
      service_id: "Connect",
      signature_version: "v4",
      signing_name: "connect",
      target_prefix: nil
    }
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Associates an approved origin to an Amazon Connect instance.
  """
  def associate_approved_origin(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/approved-origin"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Allows the specified Amazon Connect instance to access the specified Amazon Lex
  or Amazon Lex V2 bot.
  """
  def associate_bot(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/bot"
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
      nil
    )
  end

  @doc """
  Associates an existing vocabulary as the default.

  Contact Lens for Amazon Connect uses the vocabulary in post-call and real-time
  analysis sessions for the given language.
  """
  def associate_default_vocabulary(
        %Client{} = client,
        instance_id,
        language_code,
        input,
        options \\ []
      ) do
    url_path =
      "/default-vocabulary/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(language_code)}"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Associates a storage resource type for the first time. You can only associate
  one type of storage configuration in a single call. This means, for example,
  that you can't define an instance with multiple S3 buckets for storing chat
  transcripts.

  This API does not create a resource that doesn't exist. It only associates it to
  the instance. Ensure that the resource being specified in the storage
  configuration, like an S3 bucket, exists when being used for association.
  """
  def associate_instance_storage_config(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/storage-config"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Allows the specified Amazon Connect instance to access the specified Lambda
  function.
  """
  def associate_lambda_function(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lambda-function"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Allows the specified Amazon Connect instance to access the specified Amazon Lex
  bot.
  """
  def associate_lex_bot(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lex-bot"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Associates a set of quick connects with a queue.
  """
  def associate_queue_quick_connects(
        %Client{} = client,
        instance_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/associate-quick-connects"

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
      nil
    )
  end

  @doc """
  Associates a set of queues with a routing profile.
  """
  def associate_routing_profile_queues(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/associate-queues"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Associates a security key to the instance.
  """
  def associate_security_key(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/security-key"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Creates an agent status for the specified Amazon Connect instance.
  """
  def create_agent_status(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/agent-status/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  Creates a contact flow for the specified Amazon Connect instance.

  You can also create and update contact flows using the [Amazon Connect Flow language](https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html).
  """
  def create_contact_flow(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/contact-flows/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  Creates a contact flow module for the specified Amazon Connect instance.
  """
  def create_contact_flow_module(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/contact-flow-modules/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Creates hours of operation.
  """
  def create_hours_of_operation(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/hours-of-operations/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Initiates an Amazon Connect instance with all the supported channels enabled. It
  does not attach any storage, such as Amazon Simple Storage Service (Amazon S3)
  or Amazon Kinesis. It also does not allow for any configurations on features,
  such as Contact Lens for Amazon Connect.

  Amazon Connect enforces a limit on the total number of instances that you can
  create or delete in 30 days. If you exceed this limit, you will get an error
  message indicating there has been an excessive number of attempts at creating or
  deleting instances. You must wait 30 days before you can restart creating and
  deleting instances in your account.
  """
  def create_instance(%Client{} = client, input, options \\ []) do
    url_path = "/instance"
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
      nil
    )
  end

  @doc """
  Creates an Amazon Web Services resource association with an Amazon Connect
  instance.
  """
  def create_integration_association(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Creates a new queue for the specified Amazon Connect instance.
  """
  def create_queue(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/queues/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  Creates a quick connect for the specified Amazon Connect instance.
  """
  def create_quick_connect(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/quick-connects/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  Creates a new routing profile.
  """
  def create_routing_profile(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Creates a security profile.
  """
  def create_security_profile(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  Creates a use case for an integration association.
  """
  def create_use_case(
        %Client{} = client,
        instance_id,
        integration_association_id,
        input,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations/#{AWS.Util.encode_uri(integration_association_id)}/use-cases"

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
      nil
    )
  end

  @doc """
  Creates a user account for the specified Amazon Connect instance.

  For information about how to create user accounts using the Amazon Connect
  console, see [Add Users](https://docs.aws.amazon.com/connect/latest/adminguide/user-management.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def create_user(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/users/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  Creates a new user hierarchy group.
  """
  def create_user_hierarchy_group(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/user-hierarchy-groups/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  Creates a custom vocabulary associated with your Amazon Connect instance.

  You can set a custom vocabulary to be your default vocabulary for a given
  language. Contact Lens for Amazon Connect uses the default vocabulary in
  post-call and real-time contact analysis sessions for that language.
  """
  def create_vocabulary(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/vocabulary/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  Deletes a contact flow for the specified Amazon Connect instance.
  """
  def delete_contact_flow(%Client{} = client, contact_flow_id, instance_id, input, options \\ []) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}"

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
      nil
    )
  end

  @doc """
  Deletes the specified contact flow module.
  """
  def delete_contact_flow_module(
        %Client{} = client,
        contact_flow_module_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact-flow-modules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_module_id)}"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Deletes an hours of operation.
  """
  def delete_hours_of_operation(
        %Client{} = client,
        hours_of_operation_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/hours-of-operations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hours_of_operation_id)}"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Deletes the Amazon Connect instance.

  Amazon Connect enforces a limit on the total number of instances that you can
  create or delete in 30 days. If you exceed this limit, you will get an error
  message indicating there has been an excessive number of attempts at creating or
  deleting instances. You must wait 30 days before you can restart creating and
  deleting instances in your account.
  """
  def delete_instance(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  Deletes an Amazon Web Services resource association from an Amazon Connect
  instance.

  The association must not have any use cases associated with it.
  """
  def delete_integration_association(
        %Client{} = client,
        instance_id,
        integration_association_id,
        input,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations/#{AWS.Util.encode_uri(integration_association_id)}"

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
      nil
    )
  end

  @doc """
  Deletes a quick connect.
  """
  def delete_quick_connect(
        %Client{} = client,
        instance_id,
        quick_connect_id,
        input,
        options \\ []
      ) do
    url_path =
      "/quick-connects/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(quick_connect_id)}"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Deletes a security profile.
  """
  def delete_security_profile(
        %Client{} = client,
        instance_id,
        security_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/security-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(security_profile_id)}"

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
      nil
    )
  end

  @doc """
  Deletes a use case from an integration association.
  """
  def delete_use_case(
        %Client{} = client,
        instance_id,
        integration_association_id,
        use_case_id,
        input,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations/#{AWS.Util.encode_uri(integration_association_id)}/use-cases/#{AWS.Util.encode_uri(use_case_id)}"

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
      nil
    )
  end

  @doc """
  Deletes a user account from the specified Amazon Connect instance.

  For information about what happens to a user's data when their account is
  deleted, see [Delete Users from Your Amazon Connect Instance](https://docs.aws.amazon.com/connect/latest/adminguide/delete-users.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def delete_user(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path = "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}"
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
      nil
    )
  end

  @doc """
  Deletes an existing user hierarchy group.

  It must not be associated with any agents or have any active child groups.
  """
  def delete_user_hierarchy_group(
        %Client{} = client,
        hierarchy_group_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/user-hierarchy-groups/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hierarchy_group_id)}"

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
      nil
    )
  end

  @doc """
  Deletes the vocabulary that has the given identifier.
  """
  def delete_vocabulary(%Client{} = client, instance_id, vocabulary_id, input, options \\ []) do
    url_path =
      "/vocabulary-remove/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(vocabulary_id)}"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Describes an agent status.
  """
  def describe_agent_status(%Client{} = client, agent_status_id, instance_id, options \\ []) do
    url_path =
      "/agent-status/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(agent_status_id)}"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Describes the specified contact.

  Contact information remains available in Amazon Connect for 24 months, and then
  it is deleted.
  """
  def describe_contact(%Client{} = client, contact_id, instance_id, options \\ []) do
    url_path = "/contacts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}"
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
      nil
    )
  end

  @doc """
  Describes the specified contact flow.

  You can also create and update contact flows using the [Amazon Connect Flow language](https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html).
  """
  def describe_contact_flow(%Client{} = client, contact_flow_id, instance_id, options \\ []) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}"

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
      nil
    )
  end

  @doc """
  Describes the specified contact flow module.
  """
  def describe_contact_flow_module(
        %Client{} = client,
        contact_flow_module_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/contact-flow-modules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_module_id)}"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Describes the hours of operation.
  """
  def describe_hours_of_operation(
        %Client{} = client,
        hours_of_operation_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/hours-of-operations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hours_of_operation_id)}"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Returns the current state of the specified instance identifier. It tracks the
  instance while it is being created and returns an error status, if applicable.

  If an instance is not created successfully, the instance status reason field
  returns details relevant to the reason. The instance in a failed state is
  returned only for 24 hours after the CreateInstance API was invoked.
  """
  def describe_instance(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Describes the specified instance attribute.
  """
  def describe_instance_attribute(%Client{} = client, attribute_type, instance_id, options \\ []) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/attribute/#{AWS.Util.encode_uri(attribute_type)}"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Retrieves the current storage configurations for the specified resource type,
  association ID, and instance ID.
  """
  def describe_instance_storage_config(
        %Client{} = client,
        association_id,
        instance_id,
        resource_type,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/storage-config/#{AWS.Util.encode_uri(association_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Describes the specified queue.
  """
  def describe_queue(%Client{} = client, instance_id, queue_id, options \\ []) do
    url_path = "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}"
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
      nil
    )
  end

  @doc """
  Describes the quick connect.
  """
  def describe_quick_connect(%Client{} = client, instance_id, quick_connect_id, options \\ []) do
    url_path =
      "/quick-connects/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(quick_connect_id)}"

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
      nil
    )
  end

  @doc """
  Describes the specified routing profile.
  """
  def describe_routing_profile(%Client{} = client, instance_id, routing_profile_id, options \\ []) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Gets basic information about the security profle.
  """
  def describe_security_profile(
        %Client{} = client,
        instance_id,
        security_profile_id,
        options \\ []
      ) do
    url_path =
      "/security-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(security_profile_id)}"

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
      nil
    )
  end

  @doc """
  Describes the specified user account.

  You can find the instance ID in the console (it’s the final part of the ARN).
  The console does not display the user IDs. Instead, list the users and note the
  IDs provided in the output.
  """
  def describe_user(%Client{} = client, instance_id, user_id, options \\ []) do
    url_path = "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}"
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
      nil
    )
  end

  @doc """
  Describes the specified hierarchy group.
  """
  def describe_user_hierarchy_group(
        %Client{} = client,
        hierarchy_group_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/user-hierarchy-groups/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hierarchy_group_id)}"

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
      nil
    )
  end

  @doc """
  Describes the hierarchy structure of the specified Amazon Connect instance.
  """
  def describe_user_hierarchy_structure(%Client{} = client, instance_id, options \\ []) do
    url_path = "/user-hierarchy-structure/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  Describes the specified vocabulary.
  """
  def describe_vocabulary(%Client{} = client, instance_id, vocabulary_id, options \\ []) do
    url_path =
      "/vocabulary/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(vocabulary_id)}"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Revokes access to integrated applications from Amazon Connect.
  """
  def disassociate_approved_origin(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/approved-origin"
    headers = []

    {query_params, input} =
      [
        {"Origin", "origin"}
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Revokes authorization from the specified instance to access the specified Amazon
  Lex or Amazon Lex V2 bot.
  """
  def disassociate_bot(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/bot"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Removes the storage type configurations for the specified resource type and
  association ID.
  """
  def disassociate_instance_storage_config(
        %Client{} = client,
        association_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/storage-config/#{AWS.Util.encode_uri(association_id)}"

    headers = []

    {query_params, input} =
      [
        {"ResourceType", "resourceType"}
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Remove the Lambda function from the dropdown options available in the relevant
  contact flow blocks.
  """
  def disassociate_lambda_function(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lambda-function"
    headers = []

    {query_params, input} =
      [
        {"FunctionArn", "functionArn"}
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Revokes authorization from the specified instance to access the specified Amazon
  Lex bot.
  """
  def disassociate_lex_bot(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lex-bot"
    headers = []

    {query_params, input} =
      [
        {"BotName", "botName"},
        {"LexRegion", "lexRegion"}
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Disassociates a set of quick connects from a queue.
  """
  def disassociate_queue_quick_connects(
        %Client{} = client,
        instance_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/disassociate-quick-connects"

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
      nil
    )
  end

  @doc """
  Disassociates a set of queues from a routing profile.
  """
  def disassociate_routing_profile_queues(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/disassociate-queues"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Deletes the specified security key.
  """
  def disassociate_security_key(
        %Client{} = client,
        association_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/security-key/#{AWS.Util.encode_uri(association_id)}"

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
      nil
    )
  end

  @doc """
  Retrieves the contact attributes for the specified contact.
  """
  def get_contact_attributes(%Client{} = client, initial_contact_id, instance_id, options \\ []) do
    url_path =
      "/contact/attributes/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(initial_contact_id)}"

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
      nil
    )
  end

  @doc """
  Gets the real-time metric data from the specified Amazon Connect instance.

  For a description of each metric, see [Real-time Metrics Definitions](https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def get_current_metric_data(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/metrics/current/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  Retrieves a token for federation.

  This API doesn't support root users. If you try to invoke GetFederationToken
  with root credentials, an error message similar to the following one appears:

  `Provided identity: Principal: .... User: .... cannot be used for federation
  with Amazon Connect`
  """
  def get_federation_token(%Client{} = client, instance_id, options \\ []) do
    url_path = "/user/federate/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  Gets historical metric data from the specified Amazon Connect instance.

  For a description of each historical metric, see [Historical Metrics Definitions](https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def get_metric_data(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/metrics/historical/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Lists agent statuses.
  """
  def list_agent_statuses(
        %Client{} = client,
        instance_id,
        agent_status_types \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/agent-status/#{AWS.Util.encode_uri(instance_id)}"
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

    query_params =
      if !is_nil(agent_status_types) do
        [{"AgentStatusTypes", agent_status_types} | query_params]
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Returns a paginated list of all approved origins associated with the instance.
  """
  def list_approved_origins(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/approved-origins"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  For the specified version of Amazon Lex, returns a paginated list of all the
  Amazon Lex bots currently associated with the instance.
  """
  def list_bots(
        %Client{} = client,
        instance_id,
        lex_version,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/bots"
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

    query_params =
      if !is_nil(lex_version) do
        [{"lexVersion", lex_version} | query_params]
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
      nil
    )
  end

  @doc """
  Provides information about the contact flow modules for the specified Amazon
  Connect instance.
  """
  def list_contact_flow_modules(
        %Client{} = client,
        instance_id,
        contact_flow_module_state \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/contact-flow-modules-summary/#{AWS.Util.encode_uri(instance_id)}"
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

    query_params =
      if !is_nil(contact_flow_module_state) do
        [{"state", contact_flow_module_state} | query_params]
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
      nil
    )
  end

  @doc """
  Provides information about the contact flows for the specified Amazon Connect
  instance.

  You can also create and update contact flows using the [Amazon Connect Flow language](https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html).

  For more information about contact flows, see [Contact Flows](https://docs.aws.amazon.com/connect/latest/adminguide/concepts-contact-flows.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def list_contact_flows(
        %Client{} = client,
        instance_id,
        contact_flow_types \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/contact-flows-summary/#{AWS.Util.encode_uri(instance_id)}"
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

    query_params =
      if !is_nil(contact_flow_types) do
        [{"contactFlowTypes", contact_flow_types} | query_params]
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  For the specified `referenceTypes`, returns a list of references associated with
  the contact.
  """
  def list_contact_references(
        %Client{} = client,
        contact_id,
        instance_id,
        next_token \\ nil,
        reference_types,
        options \\ []
      ) do
    url_path =
      "/contact/references/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(reference_types) do
        [{"referenceTypes", reference_types} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
      nil
    )
  end

  @doc """
  Lists the default vocabularies for the specified Amazon Connect instance.
  """
  def list_default_vocabularies(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/default-vocabulary-summary/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  Provides information about the hours of operation for the specified Amazon
  Connect instance.

  For more information about hours of operation, see [Set the Hours of Operation for a
  Queue](https://docs.aws.amazon.com/connect/latest/adminguide/set-hours-operation.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def list_hours_of_operations(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/hours-of-operations-summary/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Returns a paginated list of all attribute types for the given instance.
  """
  def list_instance_attributes(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/attributes"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Returns a paginated list of storage configs for the identified instance and
  resource type.
  """
  def list_instance_storage_configs(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        resource_type,
        options \\ []
      ) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/storage-configs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Return a list of instances which are in active state, creation-in-progress
  state, and failed state. Instances that aren't successfully created (they are in
  a failed state) are returned only for 24 hours after the CreateInstance API was
  invoked.
  """
  def list_instances(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/instance"
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
      nil
    )
  end

  @doc """
  Provides summary information about the Amazon Web Services resource associations
  for the specified Amazon Connect instance.
  """
  def list_integration_associations(
        %Client{} = client,
        instance_id,
        integration_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations"
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

    query_params =
      if !is_nil(integration_type) do
        [{"integrationType", integration_type} | query_params]
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Returns a paginated list of all Lambda functions that display in the dropdown
  options in the relevant contact flow blocks.
  """
  def list_lambda_functions(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lambda-functions"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Returns a paginated list of all the Amazon Lex bots currently associated with
  the instance.
  """
  def list_lex_bots(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lex-bots"
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
      nil
    )
  end

  @doc """
  Provides information about the phone numbers for the specified Amazon Connect
  instance.

  For more information about phone numbers, see [Set Up Phone Numbers for Your Contact
  Center](https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def list_phone_numbers(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        phone_number_country_codes \\ nil,
        phone_number_types \\ nil,
        options \\ []
      ) do
    url_path = "/phone-numbers-summary/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(phone_number_types) do
        [{"phoneNumberTypes", phone_number_types} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(phone_number_country_codes) do
        [{"phoneNumberCountryCodes", phone_number_country_codes} | query_params]
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Provides information about the prompts for the specified Amazon Connect
  instance.
  """
  def list_prompts(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/prompts-summary/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Lists the quick connects associated with a queue.
  """
  def list_queue_quick_connects(
        %Client{} = client,
        instance_id,
        queue_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/quick-connects"

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
      nil
    )
  end

  @doc """
  Provides information about the queues for the specified Amazon Connect instance.

  If you do not specify a `QueueTypes` parameter, both standard and agent queues
  are returned. This might cause an unexpected truncation of results if you have
  more than 1000 agents and you limit the number of results of the API call in
  code.

  For more information about queues, see [Queues: Standard and Agent](https://docs.aws.amazon.com/connect/latest/adminguide/concepts-queues-standard-and-agent.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def list_queues(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        queue_types \\ nil,
        options \\ []
      ) do
    url_path = "/queues-summary/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(queue_types) do
        [{"queueTypes", queue_types} | query_params]
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Provides information about the quick connects for the specified Amazon Connect
  instance.
  """
  def list_quick_connects(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        quick_connect_types \\ nil,
        options \\ []
      ) do
    url_path = "/quick-connects/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(quick_connect_types) do
        [{"QuickConnectTypes", quick_connect_types} | query_params]
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the queues associated with a routing profile.
  """
  def list_routing_profile_queues(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/queues"

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
      nil
    )
  end

  @doc """
  Provides summary information about the routing profiles for the specified Amazon
  Connect instance.

  For more information about routing profiles, see [Routing Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing.html)
  and [Create a Routing Profile](https://docs.aws.amazon.com/connect/latest/adminguide/routing-profiles.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def list_routing_profiles(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/routing-profiles-summary/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Returns a paginated list of all security keys associated with the instance.
  """
  def list_security_keys(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/security-keys"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Lists the permissions granted to a security profile.
  """
  def list_security_profile_permissions(
        %Client{} = client,
        instance_id,
        security_profile_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/security-profiles-permissions/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(security_profile_id)}"

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
      nil
    )
  end

  @doc """
  Provides summary information about the security profiles for the specified
  Amazon Connect instance.

  For more information about security profiles, see [Security Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def list_security_profiles(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/security-profiles-summary/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  Lists the tags for the specified resource.

  For sample policies that use tags, see [Amazon Connect Identity-Based Policy Examples](https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html)
  in the *Amazon Connect Administrator Guide*.
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
      nil
    )
  end

  @doc """
  Lists the use cases for the integration association.
  """
  def list_use_cases(
        %Client{} = client,
        instance_id,
        integration_association_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations/#{AWS.Util.encode_uri(integration_association_id)}/use-cases"

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
      nil
    )
  end

  @doc """
  Provides summary information about the hierarchy groups for the specified Amazon
  Connect instance.

  For more information about agent hierarchies, see [Set Up Agent Hierarchies](https://docs.aws.amazon.com/connect/latest/adminguide/agent-hierarchy.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def list_user_hierarchy_groups(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/user-hierarchy-groups-summary/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  Provides summary information about the users for the specified Amazon Connect
  instance.
  """
  def list_users(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/users-summary/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  When a contact is being recorded, and the recording has been suspended using
  SuspendContactRecording, this API resumes recording the call.

  Only voice recordings are supported at this time.
  """
  def resume_contact_recording(%Client{} = client, input, options \\ []) do
    url_path = "/contact/resume-recording"
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
      nil
    )
  end

  @doc """
  Searches for vocabularies within a specific Amazon Connect instance using
  `State`, `NameStartsWith`, and `LanguageCode`.
  """
  def search_vocabularies(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/vocabulary-summary/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  Initiates a contact flow to start a new chat for the customer.

  Response of this API provides a token required to obtain credentials from the
  [CreateParticipantConnection](https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html) API in the Amazon Connect Participant Service.

  When a new chat contact is successfully created, clients must subscribe to the
  participant’s connection for the created chat within 5 minutes. This is achieved
  by invoking
  [CreateParticipantConnection](https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html)
  with WEBSOCKET and CONNECTION_CREDENTIALS.

  A 429 error occurs in the following situations:

    * API rate limit is exceeded. API TPS throttling returns a
  `TooManyRequests` exception.

    * The [quota for concurrent active chats](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
  is exceeded. Active chat throttling returns a `LimitExceededException`.

  If you use the `ChatDurationInMinutes` parameter and receive a 400 error, your
  account may not support the ability to configure custom chat durations. For more
  information, contact Amazon Web Services Support.

  For more information about chat, see
  [Chat](https://docs.aws.amazon.com/connect/latest/adminguide/chat.html) in the
  *Amazon Connect Administrator Guide*.
  """
  def start_chat_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/chat"
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
      nil
    )
  end

  @doc """
  Starts recording the contact when the agent joins the call.

  StartContactRecording is a one-time action. For example, if you use
  StopContactRecording to stop recording an ongoing call, you can't use
  StartContactRecording to restart it. For scenarios where the recording has
  started and you want to suspend and resume it, such as when collecting sensitive
  information (for example, a credit card number), use SuspendContactRecording and
  ResumeContactRecording.

  You can use this API to override the recording behavior configured in the [Set recording
  behavior](https://docs.aws.amazon.com/connect/latest/adminguide/set-recording-behavior.html)
  block.

  Only voice recordings are supported at this time.
  """
  def start_contact_recording(%Client{} = client, input, options \\ []) do
    url_path = "/contact/start-recording"
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
      nil
    )
  end

  @doc """
  Initiates real-time message streaming for a new chat contact.

  For more information about message streaming, see [Enable real-time chat message streaming](https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def start_contact_streaming(%Client{} = client, input, options \\ []) do
    url_path = "/contact/start-streaming"
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
      nil
    )
  end

  @doc """
  Places an outbound call to a contact, and then initiates the contact flow.

  It performs the actions in the contact flow that's specified (in
  `ContactFlowId`).

  Agents do not initiate the outbound API, which means that they do not dial the
  contact. If the contact flow places an outbound call to a contact, and then puts
  the contact in queue, the call is then routed to the agent, like any other
  inbound case.

  There is a 60-second dialing timeout for this operation. If the call is not
  connected after 60 seconds, it fails.

  UK numbers with a 447 prefix are not allowed by default. Before you can dial
  these UK mobile numbers, you must submit a service quota increase request. For
  more information, see [Amazon Connect Service Quotas](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
  in the *Amazon Connect Administrator Guide*.

  Campaign calls are not allowed by default. Before you can make a call with
  `TrafficType` = `CAMPAIGN`, you must submit a service quota increase request.
  For more information, see [Amazon Connect Service Quotas](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def start_outbound_voice_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/outbound-voice"
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
      nil
    )
  end

  @doc """
  Initiates a contact flow to start a new task.
  """
  def start_task_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/task"
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
      nil
    )
  end

  @doc """
  Ends the specified contact.
  """
  def stop_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/stop"
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
      nil
    )
  end

  @doc """
  Stops recording a call when a contact is being recorded.

  StopContactRecording is a one-time action. If you use StopContactRecording to
  stop recording an ongoing call, you can't use StartContactRecording to restart
  it. For scenarios where the recording has started and you want to suspend it for
  sensitive information (for example, to collect a credit card number), and then
  restart it, use SuspendContactRecording and ResumeContactRecording.

  Only voice recordings are supported at this time.
  """
  def stop_contact_recording(%Client{} = client, input, options \\ []) do
    url_path = "/contact/stop-recording"
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
      nil
    )
  end

  @doc """
  Ends message streaming on a specified contact.

  To restart message streaming on that contact, call the
  [StartContactStreaming](https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html)
  API.
  """
  def stop_contact_streaming(%Client{} = client, input, options \\ []) do
    url_path = "/contact/stop-streaming"
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
      nil
    )
  end

  @doc """
  When a contact is being recorded, this API suspends recording the call.

  For example, you might suspend the call recording while collecting sensitive
  information, such as a credit card number. Then use ResumeContactRecording to
  restart recording.

  The period of time that the recording is suspended is filled with silence in the
  final recording.

  Only voice recordings are supported at this time.
  """
  def suspend_contact_recording(%Client{} = client, input, options \\ []) do
    url_path = "/contact/suspend-recording"
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
      nil
    )
  end

  @doc """
  Adds the specified tags to the specified resource.

  The supported resource types are users, routing profiles, queues, quick
  connects, contact flows, agent status, and hours of operation.

  For sample policies that use tags, see [Amazon Connect Identity-Based Policy Examples](https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html)
  in the *Amazon Connect Administrator Guide*.
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
      nil
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

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Updates agent status.
  """
  def update_agent_status(%Client{} = client, agent_status_id, instance_id, input, options \\ []) do
    url_path =
      "/agent-status/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(agent_status_id)}"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Adds or updates user-defined contact information associated with the specified
  contact. At least one field to be updated must be present in the request.

  You can add or update user-defined contact information for both ongoing and
  completed contacts.
  """
  def update_contact(%Client{} = client, contact_id, instance_id, input, options \\ []) do
    url_path = "/contacts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}"
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
      nil
    )
  end

  @doc """
  Creates or updates user-defined contact attributes associated with the specified
  contact.

  You can create or update user-defined attributes for both ongoing and completed
  contacts. For example, while the call is active, you can update the customer's
  name or the reason the customer called. You can add notes about steps that the
  agent took during the call that display to the next agent that takes the call.
  You can also update attributes for a contact using data from your CRM
  application and save the data with the contact in Amazon Connect. You could also
  flag calls for additional analysis, such as legal review or to identify abusive
  callers.

  Contact attributes are available in Amazon Connect for 24 months, and are then
  deleted. For information about CTR retention and the maximum size of the CTR
  attributes section, see [Feature specifications](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits)
  in the *Amazon Connect Administrator Guide*.

  **Important:** You cannot use the operation to update attributes for contacts
  that occurred prior to the release of the API, which was September 12, 2018. You
  can update attributes only for contacts that started after the release of the
  API. If you attempt to update attributes for a contact that occurred prior to
  the release of the API, a 400 error is returned. This applies also to queued
  callbacks that were initiated prior to the release of the API but are still
  active in your instance.
  """
  def update_contact_attributes(%Client{} = client, input, options \\ []) do
    url_path = "/contact/attributes"
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
      nil
    )
  end

  @doc """
  Updates the specified contact flow.

  You can also create and update contact flows using the [Amazon Connect Flow language](https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html).
  """
  def update_contact_flow_content(
        %Client{} = client,
        contact_flow_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}/content"

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
      nil
    )
  end

  @doc """
  Updates metadata about specified contact flow.
  """
  def update_contact_flow_metadata(
        %Client{} = client,
        contact_flow_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}/metadata"

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
      nil
    )
  end

  @doc """
  Updates specified contact flow module for the specified Amazon Connect instance.
  """
  def update_contact_flow_module_content(
        %Client{} = client,
        contact_flow_module_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact-flow-modules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_module_id)}/content"

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
      nil
    )
  end

  @doc """
  Updates metadata about specified contact flow module.
  """
  def update_contact_flow_module_metadata(
        %Client{} = client,
        contact_flow_module_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact-flow-modules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_module_id)}/metadata"

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
      nil
    )
  end

  @doc """
  The name of the contact flow.

  You can also create and update contact flows using the [Amazon Connect Flow language](https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html).
  """
  def update_contact_flow_name(
        %Client{} = client,
        contact_flow_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}/name"

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
      nil
    )
  end

  @doc """
  Updates the scheduled time of a task contact that is already scheduled.
  """
  def update_contact_schedule(%Client{} = client, input, options \\ []) do
    url_path = "/contact/schedule"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Updates the hours of operation.
  """
  def update_hours_of_operation(
        %Client{} = client,
        hours_of_operation_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/hours-of-operations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hours_of_operation_id)}"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Updates the value for the specified attribute type.
  """
  def update_instance_attribute(
        %Client{} = client,
        attribute_type,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/attribute/#{AWS.Util.encode_uri(attribute_type)}"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Updates an existing configuration for a resource type. This API is idempotent.
  """
  def update_instance_storage_config(
        %Client{} = client,
        association_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/storage-config/#{AWS.Util.encode_uri(association_id)}"

    headers = []

    {query_params, input} =
      [
        {"ResourceType", "resourceType"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Updates the hours of operation for the specified queue.
  """
  def update_queue_hours_of_operation(
        %Client{} = client,
        instance_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/hours-of-operation"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Updates the maximum number of contacts allowed in a queue before it is
  considered full.
  """
  def update_queue_max_contacts(%Client{} = client, instance_id, queue_id, input, options \\ []) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/max-contacts"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Updates the name and description of a queue. At least `Name` or `Description`
  must be provided.
  """
  def update_queue_name(%Client{} = client, instance_id, queue_id, input, options \\ []) do
    url_path = "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/name"
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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Updates the outbound caller ID name, number, and outbound whisper flow for a
  specified queue.
  """
  def update_queue_outbound_caller_config(
        %Client{} = client,
        instance_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/outbound-caller-config"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Updates the status of the queue.
  """
  def update_queue_status(%Client{} = client, instance_id, queue_id, input, options \\ []) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/status"

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
      nil
    )
  end

  @doc """
  Updates the configuration settings for the specified quick connect.
  """
  def update_quick_connect_config(
        %Client{} = client,
        instance_id,
        quick_connect_id,
        input,
        options \\ []
      ) do
    url_path =
      "/quick-connects/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(quick_connect_id)}/config"

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
      nil
    )
  end

  @doc """
  Updates the name and description of a quick connect.

  The request accepts the following data in JSON format. At least `Name` or
  `Description` must be provided.
  """
  def update_quick_connect_name(
        %Client{} = client,
        instance_id,
        quick_connect_id,
        input,
        options \\ []
      ) do
    url_path =
      "/quick-connects/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(quick_connect_id)}/name"

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
      nil
    )
  end

  @doc """
  Updates the channels that agents can handle in the Contact Control Panel (CCP)
  for a routing profile.
  """
  def update_routing_profile_concurrency(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/concurrency"

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
      nil
    )
  end

  @doc """
  Updates the default outbound queue of a routing profile.
  """
  def update_routing_profile_default_outbound_queue(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/default-outbound-queue"

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
      nil
    )
  end

  @doc """
  Updates the name and description of a routing profile.

  The request accepts the following data in JSON format. At least `Name` or
  `Description` must be provided.
  """
  def update_routing_profile_name(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/name"

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
      nil
    )
  end

  @doc """
  Updates the properties associated with a set of queues for a routing profile.
  """
  def update_routing_profile_queues(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/queues"

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
      nil
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Updates a security profile.
  """
  def update_security_profile(
        %Client{} = client,
        instance_id,
        security_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/security-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(security_profile_id)}"

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
      nil
    )
  end

  @doc """
  Assigns the specified hierarchy group to the specified user.
  """
  def update_user_hierarchy(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/hierarchy"

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
      nil
    )
  end

  @doc """
  Updates the name of the user hierarchy group.
  """
  def update_user_hierarchy_group_name(
        %Client{} = client,
        hierarchy_group_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/user-hierarchy-groups/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hierarchy_group_id)}/name"

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
      nil
    )
  end

  @doc """
  Updates the user hierarchy structure: add, remove, and rename user hierarchy
  levels.
  """
  def update_user_hierarchy_structure(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/user-hierarchy-structure/#{AWS.Util.encode_uri(instance_id)}"
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
      nil
    )
  end

  @doc """
  Updates the identity information for the specified user.

  We strongly recommend limiting who has the ability to invoke
  `UpdateUserIdentityInfo`. Someone with that ability can change the login
  credentials of other users by changing their email address. This poses a
  security risk to your organization. They can change the email address of a user
  to the attacker's email address, and then reset the password through email. For
  more information, see [Best Practices for Security Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html)
  in the *Amazon Connect Administrator Guide*.
  """
  def update_user_identity_info(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/identity-info"

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
      nil
    )
  end

  @doc """
  Updates the phone configuration settings for the specified user.
  """
  def update_user_phone_config(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/phone-config"

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
      nil
    )
  end

  @doc """
  Assigns the specified routing profile to the specified user.
  """
  def update_user_routing_profile(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/routing-profile"

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
      nil
    )
  end

  @doc """
  Assigns the specified security profiles to the specified user.
  """
  def update_user_security_profiles(
        %Client{} = client,
        instance_id,
        user_id,
        input,
        options \\ []
      ) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/security-profiles"

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
      nil
    )
  end
end
