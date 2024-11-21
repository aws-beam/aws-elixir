# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SocialMessaging do
  @moduledoc """

  *Amazon Web Services End User Messaging Social*, also referred to as Social
  messaging, is a messaging service that enables
  application developers to incorporate WhatsApp into their existing workflows.

  The *Amazon Web Services End User Messaging Social API* provides information
  about the
  *Amazon Web Services End User Messaging Social API* resources, including
  supported HTTP methods, parameters, and schemas.

  The *Amazon Web Services End User Messaging Social API* provides programmatic
  access to options that are unique to the WhatsApp Business Platform.

  If you're new to the *Amazon Web Services End User Messaging Social API*, it's
  also helpful to review [What is Amazon Web Services End User Messaging
  Social](https://docs.aws.amazon.com/sms-voice/latest/userguide/what-is-service.html)
  in the *Amazon Web Services End User Messaging Social User Guide*. The
  *Amazon Web Services End User Messaging Social User Guide* provides tutorials,
  code samples, and procedures that demonstrate how to use
  *Amazon Web Services End User Messaging Social API* features programmatically
  and how to integrate functionality into applications.
  The guide also provides key information, such as integration with other Amazon
  Web Services
  services, and the quotas that apply to use of the service.

  ## Regional availability

  The *Amazon Web Services End User Messaging Social API* is available across
  several Amazon Web Services Regions and it provides a dedicated endpoint for
  each of these Regions. For a list of
  all the Regions and endpoints where the API is currently available, see [Amazon Web Services Service
  Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#pinpoint_region)
  and [Amazon Web Services End User Messaging endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/end-user-messaging.html)
  in the Amazon Web Services General Reference. To learn more about Amazon Web
  Services Regions, see
  [Managing Amazon Web Services
  Regions](https://docs.aws.amazon.com/general/latest/gr/rande-manage.html) in the
  Amazon Web Services General
  Reference.

  In each Region, Amazon Web Services maintains multiple Availability Zones. These
  Availability Zones are physically isolated from each other, but are united by
  private,
  low-latency, high-throughput, and highly redundant network connections. These
  Availability
  Zones enable us to provide very high levels of availability and redundancy,
  while also
  minimizing latency. To learn more about the number of Availability Zones that
  are available
  in each Region, see [Amazon Web Services Global Infrastructure.](https://aws.amazon.com/about-aws/global-infrastructure/)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_linked_whats_app_business_account_output() :: %{
        "account" => linked_whats_app_business_account()
      }

  """
  @type get_linked_whats_app_business_account_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_whats_app_message_output() :: %{
        "messageId" => [String.t()]
      }

  """
  @type send_whats_app_message_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_whats_app_business_account_output() :: %{
        "signupCallbackResult" => whats_app_signup_callback_result(),
        "statusCode" => [integer()]
      }

  """
  @type associate_whats_app_business_account_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_whats_app_message_media_output() :: %{
        "fileSize" => [float()],
        "mimeType" => [String.t()]
      }

  """
  @type get_whats_app_message_media_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dependency_exception() :: %{
        "message" => String.t()
      }

  """
  @type dependency_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      whats_app_signup_callback_result() :: %{
        "associateInProgressToken" => String.t(),
        "linkedAccountsWithIncompleteSetup" => map()
      }

  """
  @type whats_app_signup_callback_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_linked_whats_app_business_account_phone_number_output() :: %{
        "linkedWhatsAppBusinessAccountId" => String.t(),
        "phoneNumber" => whats_app_phone_number_detail()
      }

  """
  @type get_linked_whats_app_business_account_phone_number_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_by_meta_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_by_meta_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_whats_app_message_media_input() :: %{
        required("mediaId") => String.t(),
        required("originationPhoneNumberId") => String.t()
      }

  """
  @type delete_whats_app_message_media_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_whats_app_business_account_event_destinations_input() :: %{
        required("eventDestinations") => list(whats_app_business_account_event_destination()()),
        required("id") => String.t()
      }

  """
  @type put_whats_app_business_account_event_destinations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      linked_whats_app_business_account_summary() :: %{
        "arn" => String.t(),
        "eventDestinations" => list(whats_app_business_account_event_destination()()),
        "id" => String.t(),
        "linkDate" => non_neg_integer(),
        "registrationStatus" => list(any()),
        "wabaId" => String.t(),
        "wabaName" => String.t()
      }

  """
  @type linked_whats_app_business_account_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_linked_whats_app_business_accounts_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_linked_whats_app_business_accounts_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_service_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "statusCode" => [integer()],
        "tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_whats_app_business_account_input() :: %{
        optional("setupFinalization") => whats_app_setup_finalization(),
        optional("signupCallback") => whats_app_signup_callback()
      }

  """
  @type associate_whats_app_business_account_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_file() :: %{
        "bucketName" => [String.t()],
        "key" => [String.t()]
      }

  """
  @type s3_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_whats_app_business_account_input() :: %{
        required("id") => String.t()
      }

  """
  @type disassociate_whats_app_business_account_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_linked_whats_app_business_account_input() :: %{
        required("id") => String.t()
      }

  """
  @type get_linked_whats_app_business_account_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      linked_whats_app_business_account() :: %{
        "arn" => String.t(),
        "eventDestinations" => list(whats_app_business_account_event_destination()()),
        "id" => String.t(),
        "linkDate" => non_neg_integer(),
        "phoneNumbers" => list(whats_app_phone_number_summary()()),
        "registrationStatus" => list(any()),
        "wabaId" => String.t(),
        "wabaName" => String.t()
      }

  """
  @type linked_whats_app_business_account() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "key" => [String.t()],
        "value" => [String.t()]
      }

  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      waba_phone_number_setup_finalization() :: %{
        "dataLocalizationRegion" => String.t(),
        "id" => String.t(),
        "tags" => list(tag()()),
        "twoFactorPin" => String.t()
      }

  """
  @type waba_phone_number_setup_finalization() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttled_request_exception() :: %{
        "message" => String.t()
      }

  """
  @type throttled_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameters_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_parameters_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_whats_app_message_input() :: %{
        required("message") => binary(),
        required("metaApiVersion") => [String.t()],
        required("originationPhoneNumberId") => String.t()
      }

  """
  @type send_whats_app_message_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      whats_app_setup_finalization() :: %{
        "associateInProgressToken" => String.t(),
        "phoneNumberParent" => String.t(),
        "phoneNumbers" => list(waba_phone_number_setup_finalization()()),
        "waba" => waba_setup_finalization()
      }

  """
  @type whats_app_setup_finalization() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("resourceArn") => String.t(),
        required("tags") => list(tag()())
      }

  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      post_whats_app_message_media_output() :: %{
        "mediaId" => String.t()
      }

  """
  @type post_whats_app_message_media_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_whats_app_business_account_event_destinations_output() :: %{}

  """
  @type put_whats_app_business_account_event_destinations_output() :: %{}

  @typedoc """

  ## Example:

      get_whats_app_message_media_input() :: %{
        optional("destinationS3File") => s3_file(),
        optional("destinationS3PresignedUrl") => s3_presigned_url(),
        optional("metadataOnly") => [boolean()],
        required("mediaId") => String.t(),
        required("originationPhoneNumberId") => String.t()
      }

  """
  @type get_whats_app_message_media_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{
        "statusCode" => [integer()]
      }

  """
  @type tag_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_whats_app_message_media_output() :: %{
        "success" => [boolean()]
      }

  """
  @type delete_whats_app_message_media_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("resourceArn") => String.t(),
        required("tagKeys") => list([String.t()]())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_whats_app_business_account_output() :: %{}

  """
  @type disassociate_whats_app_business_account_output() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{
        required("resourceArn") => String.t()
      }

  """
  @type list_tags_for_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{
        "statusCode" => [integer()]
      }

  """
  @type untag_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      linked_whats_app_business_account_id_meta_data() :: %{
        "accountName" => String.t(),
        "registrationStatus" => list(any()),
        "unregisteredWhatsAppPhoneNumbers" => list(whats_app_phone_number_detail()())
      }

  """
  @type linked_whats_app_business_account_id_meta_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      whats_app_phone_number_detail() :: %{
        "arn" => String.t(),
        "displayPhoneNumber" => String.t(),
        "displayPhoneNumberName" => String.t(),
        "metaPhoneNumberId" => String.t(),
        "phoneNumber" => String.t(),
        "phoneNumberId" => String.t(),
        "qualityRating" => String.t()
      }

  """
  @type whats_app_phone_number_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      whats_app_phone_number_summary() :: %{
        "arn" => String.t(),
        "displayPhoneNumber" => String.t(),
        "displayPhoneNumberName" => String.t(),
        "metaPhoneNumberId" => String.t(),
        "phoneNumber" => String.t(),
        "phoneNumberId" => String.t(),
        "qualityRating" => String.t()
      }

  """
  @type whats_app_phone_number_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      whats_app_business_account_event_destination() :: %{
        "eventDestinationArn" => String.t()
      }

  """
  @type whats_app_business_account_event_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      whats_app_signup_callback() :: %{
        "accessToken" => [String.t()]
      }

  """
  @type whats_app_signup_callback() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      post_whats_app_message_media_input() :: %{
        optional("sourceS3File") => s3_file(),
        optional("sourceS3PresignedUrl") => s3_presigned_url(),
        required("originationPhoneNumberId") => String.t()
      }

  """
  @type post_whats_app_message_media_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_linked_whats_app_business_accounts_output() :: %{
        "linkedAccounts" => list(linked_whats_app_business_account_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_linked_whats_app_business_accounts_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_presigned_url() :: %{
        "headers" => map(),
        "url" => [String.t()]
      }

  """
  @type s3_presigned_url() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_linked_whats_app_business_account_phone_number_input() :: %{
        required("id") => String.t()
      }

  """
  @type get_linked_whats_app_business_account_phone_number_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      waba_setup_finalization() :: %{
        "eventDestinations" => list(whats_app_business_account_event_destination()()),
        "id" => String.t(),
        "tags" => list(tag()())
      }

  """
  @type waba_setup_finalization() :: %{String.t() => any()}

  @type associate_whats_app_business_account_errors() ::
          invalid_parameters_exception() | throttled_request_exception() | dependency_exception()

  @type delete_whats_app_message_media_errors() ::
          invalid_parameters_exception()
          | throttled_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | access_denied_by_meta_exception()
          | dependency_exception()

  @type disassociate_whats_app_business_account_errors() ::
          invalid_parameters_exception()
          | throttled_request_exception()
          | resource_not_found_exception()
          | dependency_exception()

  @type get_linked_whats_app_business_account_errors() ::
          invalid_parameters_exception()
          | throttled_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | dependency_exception()

  @type get_linked_whats_app_business_account_phone_number_errors() ::
          invalid_parameters_exception()
          | throttled_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | dependency_exception()

  @type get_whats_app_message_media_errors() ::
          invalid_parameters_exception()
          | throttled_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | access_denied_by_meta_exception()
          | dependency_exception()

  @type list_linked_whats_app_business_accounts_errors() ::
          invalid_parameters_exception()
          | throttled_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_tags_for_resource_errors() ::
          invalid_parameters_exception()
          | throttled_request_exception()
          | internal_service_exception()

  @type post_whats_app_message_media_errors() ::
          invalid_parameters_exception()
          | throttled_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | access_denied_by_meta_exception()
          | dependency_exception()

  @type put_whats_app_business_account_event_destinations_errors() ::
          invalid_parameters_exception()
          | throttled_request_exception()
          | internal_service_exception()

  @type send_whats_app_message_errors() ::
          invalid_parameters_exception()
          | throttled_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | dependency_exception()

  @type tag_resource_errors() ::
          invalid_parameters_exception()
          | throttled_request_exception()
          | internal_service_exception()

  @type untag_resource_errors() ::
          invalid_parameters_exception()
          | throttled_request_exception()
          | internal_service_exception()

  def metadata do
    %{
      api_version: "2024-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "social-messaging",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SocialMessaging",
      signature_version: "v4",
      signing_name: "social-messaging",
      target_prefix: nil
    }
  end

  @doc """
  This is only used through the Amazon Web Services console during sign-up to
  associate your WhatsApp Business Account to your Amazon Web Services account.
  """
  @spec associate_whats_app_business_account(
          map(),
          associate_whats_app_business_account_input(),
          list()
        ) ::
          {:ok, associate_whats_app_business_account_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_whats_app_business_account_errors()}
  def associate_whats_app_business_account(%Client{} = client, input, options \\ []) do
    url_path = "/v1/whatsapp/signup"
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
  Delete a media object from the WhatsApp service.

  If the object is still in an Amazon S3 bucket you should delete it from there
  too.
  """
  @spec delete_whats_app_message_media(map(), delete_whats_app_message_media_input(), list()) ::
          {:ok, delete_whats_app_message_media_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_whats_app_message_media_errors()}
  def delete_whats_app_message_media(%Client{} = client, input, options \\ []) do
    url_path = "/v1/whatsapp/media"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"mediaId", "mediaId"},
        {"originationPhoneNumberId", "originationPhoneNumberId"}
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
      200
    )
  end

  @doc """
  Disassociate a WhatsApp Business Account (WABA) from your Amazon Web Services
  account.
  """
  @spec disassociate_whats_app_business_account(
          map(),
          disassociate_whats_app_business_account_input(),
          list()
        ) ::
          {:ok, disassociate_whats_app_business_account_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_whats_app_business_account_errors()}
  def disassociate_whats_app_business_account(%Client{} = client, input, options \\ []) do
    url_path = "/v1/whatsapp/waba/disassociate"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"id", "id"}
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
      200
    )
  end

  @doc """
  Get the details of your linked WhatsApp Business Account.
  """
  @spec get_linked_whats_app_business_account(map(), String.t(), list()) ::
          {:ok, get_linked_whats_app_business_account_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_linked_whats_app_business_account_errors()}
  def get_linked_whats_app_business_account(%Client{} = client, id, options \\ []) do
    url_path = "/v1/whatsapp/waba/details"
    headers = []
    query_params = []

    query_params =
      if !is_nil(id) do
        [{"id", id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Use your WhatsApp phone number id to get the WABA account id and phone number
  details.
  """
  @spec get_linked_whats_app_business_account_phone_number(map(), String.t(), list()) ::
          {:ok, get_linked_whats_app_business_account_phone_number_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_linked_whats_app_business_account_phone_number_errors()}
  def get_linked_whats_app_business_account_phone_number(%Client{} = client, id, options \\ []) do
    url_path = "/v1/whatsapp/waba/phone/details"
    headers = []
    query_params = []

    query_params =
      if !is_nil(id) do
        [{"id", id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a media file from the WhatsApp service.

  On successful completion the media file is
  retrieved from Meta and stored in the specified Amazon S3 bucket. Use either
  `destinationS3File` or `destinationS3PresignedUrl` for the
  destination. If both are used then an `InvalidParameterException` is
  returned.
  """
  @spec get_whats_app_message_media(map(), get_whats_app_message_media_input(), list()) ::
          {:ok, get_whats_app_message_media_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_whats_app_message_media_errors()}
  def get_whats_app_message_media(%Client{} = client, input, options \\ []) do
    url_path = "/v1/whatsapp/media/get"
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
  List all WhatsApp Business Accounts linked to your Amazon Web Services account.
  """
  @spec list_linked_whats_app_business_accounts(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_linked_whats_app_business_accounts_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_linked_whats_app_business_accounts_errors()}
  def list_linked_whats_app_business_accounts(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/whatsapp/waba/list"
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
  List all tags associated with a resource, such as a phone number or WABA.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/list"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Upload a media file to the WhatsApp service.

  Only the specified
  `originationPhoneNumberId` has the permissions to send the media file when
  using
  [SendWhatsAppMessage](https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_SendWhatsAppMessage.html).
  You must use either `sourceS3File`
  or `sourceS3PresignedUrl` for the source. If both or neither are specified then
  an
  `InvalidParameterException` is returned.
  """
  @spec post_whats_app_message_media(map(), post_whats_app_message_media_input(), list()) ::
          {:ok, post_whats_app_message_media_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, post_whats_app_message_media_errors()}
  def post_whats_app_message_media(%Client{} = client, input, options \\ []) do
    url_path = "/v1/whatsapp/media"
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
  Add an event destination to log event data from WhatsApp for a WhatsApp Business
  Account (WABA).

  A WABA can only have one event destination at a time. All resources associated
  with the WABA use the same event destination.
  """
  @spec put_whats_app_business_account_event_destinations(
          map(),
          put_whats_app_business_account_event_destinations_input(),
          list()
        ) ::
          {:ok, put_whats_app_business_account_event_destinations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_whats_app_business_account_event_destinations_errors()}
  def put_whats_app_business_account_event_destinations(%Client{} = client, input, options \\ []) do
    url_path = "/v1/whatsapp/waba/eventdestinations"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Send a WhatsApp message.

  For examples of sending a message using the Amazon Web Services
  CLI, see [Sending messages](https://docs.aws.amazon.com/social-messaging/latest/userguide/send-message.html)
  in the
  *
  *Amazon Web Services End User Messaging Social User Guide*
  *.
  """
  @spec send_whats_app_message(map(), send_whats_app_message_input(), list()) ::
          {:ok, send_whats_app_message_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_whats_app_message_errors()}
  def send_whats_app_message(%Client{} = client, input, options \\ []) do
    url_path = "/v1/whatsapp/send"
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
  Adds or overwrites only the specified tags for the specified resource.

  When you specify
  an existing tag key, the value is overwritten with the new value.
  """
  @spec tag_resource(map(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v1/tags/tag-resource"
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
  Removes the specified tags from a resource.
  """
  @spec untag_resource(map(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v1/tags/untag-resource"
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
end
