# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53Profiles do
  @moduledoc """

  With Amazon Route 53 Profiles you can share Route 53 configurations with VPCs
  and AWS accounts
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      profile() :: %{
        "Arn" => String.t() | atom(),
        "ClientToken" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "ModificationTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "OwnerId" => String.t() | atom(),
        "ShareStatus" => list(any()),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }

  """
  @type profile() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_profile_request() :: %{}

  """
  @type delete_profile_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_profiles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_profile_response() :: %{
        "Profile" => profile()
      }

  """
  @type delete_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_profile_request() :: %{
        optional("Tags") => list(tag()),
        required("Name") => String.t() | atom(),
        required("ProfileId") => String.t() | atom(),
        required("ResourceId") => String.t() | atom()
      }

  """
  @type associate_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_profile_resource_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ResourceType") => String.t() | atom()
      }

  """
  @type list_profile_resource_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_resource_to_profile_request() :: %{
        optional("ResourceProperties") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("ProfileId") => String.t() | atom(),
        required("ResourceArn") => String.t() | atom()
      }

  """
  @type associate_resource_to_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_resource_from_profile_request() :: %{}

  """
  @type disassociate_resource_from_profile_request() :: %{}

  @typedoc """

  ## Example:

      update_profile_resource_association_response() :: %{
        "ProfileResourceAssociation" => profile_resource_association()
      }

  """
  @type update_profile_resource_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_service_error_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_service_error_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_profile_resource_association_request() :: %{
        optional("Name") => String.t() | atom(),
        optional("ResourceProperties") => String.t() | atom()
      }

  """
  @type update_profile_resource_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_profile_association_request() :: %{}

  """
  @type get_profile_association_request() :: %{}

  @typedoc """

  ## Example:

      list_profile_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ProfileId") => String.t() | atom(),
        optional("ResourceId") => String.t() | atom()
      }

  """
  @type list_profile_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_resource_to_profile_response() :: %{
        "ProfileResourceAssociation" => profile_resource_association()
      }

  """
  @type associate_resource_to_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_profile_resource_association_response() :: %{
        "ProfileResourceAssociation" => profile_resource_association()
      }

  """
  @type get_profile_resource_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_profile_request() :: %{
        optional("Tags") => list(tag()),
        required("ClientToken") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_profile_response() :: %{
        "ProfileAssociation" => profile_association()
      }

  """
  @type disassociate_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_resource_from_profile_response() :: %{
        "ProfileResourceAssociation" => profile_resource_association()
      }

  """
  @type disassociate_resource_from_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceType" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_profile_response() :: %{
        "ProfileAssociation" => profile_association()
      }

  """
  @type associate_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_profile_response() :: %{
        "Profile" => profile()
      }

  """
  @type get_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_next_token_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type invalid_next_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_profile_response() :: %{
        "Profile" => profile()
      }

  """
  @type create_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_profile_associations_response() :: %{
        "NextToken" => String.t() | atom(),
        "ProfileAssociations" => list(profile_association())
      }

  """
  @type list_profile_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_profile_request() :: %{}

  """
  @type disassociate_profile_request() :: %{}

  @typedoc """

  ## Example:

      list_profile_resource_associations_response() :: %{
        "NextToken" => String.t() | atom(),
        "ProfileResourceAssociations" => list(profile_resource_association())
      }

  """
  @type list_profile_resource_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      profile_resource_association() :: %{
        "CreationTime" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "ModificationTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "OwnerId" => String.t() | atom(),
        "ProfileId" => String.t() | atom(),
        "ResourceArn" => String.t() | atom(),
        "ResourceProperties" => String.t() | atom(),
        "ResourceType" => String.t() | atom(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }

  """
  @type profile_resource_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_exists_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceType" => String.t() | atom()
      }

  """
  @type resource_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "FieldName" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type invalid_parameter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_profile_resource_association_request() :: %{}

  """
  @type get_profile_resource_association_request() :: %{}

  @typedoc """

  ## Example:

      profile_association() :: %{
        "CreationTime" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "ModificationTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "OwnerId" => String.t() | atom(),
        "ProfileId" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }

  """
  @type profile_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_profile_request() :: %{}

  """
  @type get_profile_request() :: %{}

  @typedoc """

  ## Example:

      list_profiles_response() :: %{
        "NextToken" => String.t() | atom(),
        "ProfileSummaries" => list(profile_summary())
      }

  """
  @type list_profiles_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceType" => String.t() | atom()
      }

  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      profile_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ShareStatus" => list(any())
      }

  """
  @type profile_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_profile_association_response() :: %{
        "ProfileAssociation" => profile_association()
      }

  """
  @type get_profile_association_response() :: %{(String.t() | atom()) => any()}

  @type associate_profile_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_exists_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_resource_to_profile_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_error_exception()

  @type create_profile_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()

  @type delete_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_profile_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type disassociate_resource_from_profile_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_error_exception()

  @type get_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_profile_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_profile_resource_association_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_profile_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_next_token_exception()

  @type list_profile_resource_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type list_profiles_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_next_token_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_profile_resource_association_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_error_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "route53profiles",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Route53Profiles",
      signature_version: "v4",
      signing_name: "route53profiles",
      target_prefix: nil
    }
  end

  @doc """

  Associates a Route 53 Profiles profile with a VPC.

  A VPC can have only one Profile associated with it, but a Profile can be
  associated with 1000 of VPCs (and you can request a higher quota).
  For more information, see
  [https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities).
  """
  @spec associate_profile(map(), associate_profile_request(), list()) ::
          {:ok, associate_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_profile_errors()}
  def associate_profile(%Client{} = client, input, options \\ []) do
    url_path = "/profileassociation"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Associates a DNS reource configuration to a Route 53 Profile.
  """
  @spec associate_resource_to_profile(map(), associate_resource_to_profile_request(), list()) ::
          {:ok, associate_resource_to_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_resource_to_profile_errors()}
  def associate_resource_to_profile(%Client{} = client, input, options \\ []) do
    url_path = "/profileresourceassociation"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Creates an empty Route 53 Profile.
  """
  @spec create_profile(map(), create_profile_request(), list()) ::
          {:ok, create_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_profile_errors()}
  def create_profile(%Client{} = client, input, options \\ []) do
    url_path = "/profile"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Deletes the specified Route 53 Profile.

  Before you can delete a profile, you must first disassociate it from all VPCs.
  """
  @spec delete_profile(map(), String.t() | atom(), delete_profile_request(), list()) ::
          {:ok, delete_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_profile_errors()}
  def delete_profile(%Client{} = client, profile_id, input, options \\ []) do
    url_path = "/profile/#{AWS.Util.encode_uri(profile_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Dissociates a specified Route 53 Profile from the specified VPC.
  """
  @spec disassociate_profile(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          disassociate_profile_request(),
          list()
        ) ::
          {:ok, disassociate_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_profile_errors()}
  def disassociate_profile(%Client{} = client, profile_id, resource_id, input, options \\ []) do
    url_path =
      "/profileassociation/Profileid/#{AWS.Util.encode_uri(profile_id)}/resourceid/#{AWS.Util.encode_uri(resource_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Dissoaciated a specified resource, from the Route 53 Profile.
  """
  @spec disassociate_resource_from_profile(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          disassociate_resource_from_profile_request(),
          list()
        ) ::
          {:ok, disassociate_resource_from_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_resource_from_profile_errors()}
  def disassociate_resource_from_profile(
        %Client{} = client,
        profile_id,
        resource_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/profileresourceassociation/profileid/#{AWS.Util.encode_uri(profile_id)}/resourcearn/#{AWS.Util.encode_uri(resource_arn)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Returns information about a specified Route 53 Profile, such as whether whether
  the Profile is shared, and the current status of the Profile.
  """
  @spec get_profile(map(), String.t() | atom(), list()) ::
          {:ok, get_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_profile_errors()}
  def get_profile(%Client{} = client, profile_id, options \\ []) do
    url_path = "/profile/#{AWS.Util.encode_uri(profile_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Retrieves a Route 53 Profile association for a VPC.

  A VPC can have only one Profile association, but a Profile can be associated
  with up to 5000 VPCs.
  """
  @spec get_profile_association(map(), String.t() | atom(), list()) ::
          {:ok, get_profile_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_profile_association_errors()}
  def get_profile_association(%Client{} = client, profile_association_id, options \\ []) do
    url_path = "/profileassociation/#{AWS.Util.encode_uri(profile_association_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Returns information about a specified Route 53 Profile resource association.
  """
  @spec get_profile_resource_association(map(), String.t() | atom(), list()) ::
          {:ok, get_profile_resource_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_profile_resource_association_errors()}
  def get_profile_resource_association(
        %Client{} = client,
        profile_resource_association_id,
        options \\ []
      ) do
    url_path =
      "/profileresourceassociation/#{AWS.Util.encode_uri(profile_resource_association_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Lists all the VPCs that the specified Route 53 Profile is associated with.
  """
  @spec list_profile_associations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_profile_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_profile_associations_errors()}
  def list_profile_associations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        profile_id \\ nil,
        resource_id \\ nil,
        options \\ []
      ) do
    url_path = "/profileassociations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_id) do
        [{"resourceId", resource_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(profile_id) do
        [{"profileId", profile_id} | query_params]
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

  Lists all the resource associations for the specified Route 53 Profile.
  """
  @spec list_profile_resource_associations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_profile_resource_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_profile_resource_associations_errors()}
  def list_profile_resource_associations(
        %Client{} = client,
        profile_id,
        max_results \\ nil,
        next_token \\ nil,
        resource_type \\ nil,
        options \\ []
      ) do
    url_path = "/profileresourceassociations/profileid/#{AWS.Util.encode_uri(profile_id)}"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Lists all the Route 53 Profiles associated with your Amazon Web Services
  account.
  """
  @spec list_profiles(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_profiles_errors()}
  def list_profiles(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/profiles"
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

  Lists the tags that you associated with the specified resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Adds one or more tags to a specified resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """

  Removes one or more tags from a specified resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """

  Updates the specified Route 53 Profile resourse association.
  """
  @spec update_profile_resource_association(
          map(),
          String.t() | atom(),
          update_profile_resource_association_request(),
          list()
        ) ::
          {:ok, update_profile_resource_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_profile_resource_association_errors()}
  def update_profile_resource_association(
        %Client{} = client,
        profile_resource_association_id,
        input,
        options \\ []
      ) do
    url_path =
      "/profileresourceassociation/#{AWS.Util.encode_uri(profile_resource_association_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
