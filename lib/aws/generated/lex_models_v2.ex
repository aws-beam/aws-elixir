# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LexModelsV2 do
  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-08-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "models-v2-lex",
      global?: false,
      protocol: "rest-json",
      service_id: "Lex Models V2",
      signature_version: "v4",
      signing_name: "lex",
      target_prefix: nil
    }
  end

  @doc """
  Builds a bot, its intents, and its slot types into a specific locale.

  A bot can be built into multiple locales. At runtime the locale is used to
  choose a specific build of the bot.
  """
  def build_bot_locale(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/"

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
      202
    )
  end

  @doc """
  Creates an Amazon Lex conversational bot.
  """
  def create_bot(%Client{} = client, input, options \\ []) do
    url_path = "/bots/"
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
      202
    )
  end

  @doc """
  Creates an alias for the specified version of a bot.

  Use an alias to enable you to change the version of a bot without updating
  applications that use the bot.

  For example, you can create an alias called "PROD" that your applications use to
  call the Amazon Lex bot.
  """
  def create_bot_alias(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{URI.encode(bot_id)}/botaliases/"
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
      202
    )
  end

  @doc """
  Creates a locale in the bot.

  The locale contains the intents and slot types that the bot uses in
  conversations with users in the specified language and locale. You must add a
  locale to a bot before you can add intents and slot types to the bot.
  """
  def create_bot_locale(%Client{} = client, bot_id, bot_version, input, options \\ []) do
    url_path = "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/"
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
      202
    )
  end

  @doc """
  Creates a new version of the bot based on the `DRAFT` version.

  If the `DRAFT` version of this resource hasn't changed since you created the
  last version, Amazon Lex doesn't create a new version, it returns the last
  created version.

  When you create the first version of a bot, Amazon Lex sets the version to 1.
  Subsequent versions increment by 1.
  """
  def create_bot_version(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{URI.encode(bot_id)}/botversions/"
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
      202
    )
  end

  @doc """
  Creates an intent.

  To define the interaction between the user and your bot, you define one or more
  intents. For example, for a pizza ordering bot you would create an `OrderPizza`
  intent.

  When you create an intent, you must provide a name. You can optionally provide
  the following:

    * Sample utterances. For example, "I want to order a pizza" and "Can
  I order a pizza." You can't provide utterances for built-in intents.

    * Information to be gathered. You specify slots for the information
  that you bot requests from the user. You can specify standard slot types, such
  as date and time, or custom slot types for your application.

    * How the intent is fulfilled. You can provide a Lambda function or
  configure the intent to return the intent information to your client
  application. If you use a Lambda function, Amazon Lex invokes the function when
  all of the intent information is available.

    * A confirmation prompt to send to the user to confirm an intent.
  For example, "Shall I order your pizza?"

    * A conclusion statement to send to the user after the intent is
  fulfilled. For example, "I ordered your pizza."

    * A follow-up prompt that asks the user for additional activity. For
  example, "Do you want a drink with your pizza?"
  """
  def create_intent(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/intents/"

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
  Creates a slot in an intent.

  A slot is a variable needed to fulfill an intent. For example, an `OrderPizza`
  intent might need slots for size, crust, and number of pizzas. For each slot,
  you define one or more utterances that Amazon Lex uses to elicit a response from
  the user.
  """
  def create_slot(
        %Client{} = client,
        bot_id,
        bot_version,
        intent_id,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/intents/#{URI.encode(intent_id)}/slots/"

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
  Creates a custom slot type

  To create a custom slot type, specify a name for the slot type and a set of
  enumeration values, the values that a slot of this type can assume.
  """
  def create_slot_type(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/slottypes/"

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
  Deletes all versions of a bot, including the `Draft` version.

  To delete a specific version, use the `DeleteBotVersion` operation.

  When you delete a bot, all of the resources contained in the bot are also
  deleted. Deleting a bot removes all locales, intents, slot, and slot types
  defined for the bot.

  If a bot has an alias, the `DeleteBot` operation returns a
  `ResourceInUseException` exception. If you want to delete the bot and the alias,
  set the `skipResourceInUseCheck` parameter to `true`.
  """
  def delete_bot(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{URI.encode(bot_id)}/"
    headers = []

    {query_params, input} =
      [
        {"skipResourceInUseCheck", "skipResourceInUseCheck"}
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
      202
    )
  end

  @doc """
  Deletes the specified bot alias.
  """
  def delete_bot_alias(%Client{} = client, bot_alias_id, bot_id, input, options \\ []) do
    url_path = "/bots/#{URI.encode(bot_id)}/botaliases/#{URI.encode(bot_alias_id)}/"
    headers = []

    {query_params, input} =
      [
        {"skipResourceInUseCheck", "skipResourceInUseCheck"}
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
      202
    )
  end

  @doc """
  Removes a locale from a bot.

  When you delete a locale, all intents, slots, and slot types defined for the
  locale are also deleted.
  """
  def delete_bot_locale(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/"

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
      202
    )
  end

  @doc """
  Deletes a specific version of a bot.

  To delete all version of a bot, use the `DeleteBot` operation.
  """
  def delete_bot_version(%Client{} = client, bot_id, bot_version, input, options \\ []) do
    url_path = "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/"
    headers = []

    {query_params, input} =
      [
        {"skipResourceInUseCheck", "skipResourceInUseCheck"}
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
      202
    )
  end

  @doc """
  Removes the specified intent.

  Deleting an intent also deletes the slots associated with the intent.
  """
  def delete_intent(
        %Client{} = client,
        bot_id,
        bot_version,
        intent_id,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/intents/#{URI.encode(intent_id)}/"

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
      204
    )
  end

  @doc """
  Deletes the specified slot from an intent.
  """
  def delete_slot(
        %Client{} = client,
        bot_id,
        bot_version,
        intent_id,
        locale_id,
        slot_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/intents/#{URI.encode(intent_id)}/slots/#{URI.encode(slot_id)}/"

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
      204
    )
  end

  @doc """
  Deletes a slot type from a bot locale.

  If a slot is using the slot type, Amazon Lex throws a `ResourceInUseException`
  exception. To avoid the exception, set the `skipResourceInUseCheck` parameter to
  `true`.
  """
  def delete_slot_type(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        slot_type_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/slottypes/#{URI.encode(slot_type_id)}/"

    headers = []

    {query_params, input} =
      [
        {"skipResourceInUseCheck", "skipResourceInUseCheck"}
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
      204
    )
  end

  @doc """
  Provides metadata information about a bot.
  """
  def describe_bot(%Client{} = client, bot_id, options \\ []) do
    url_path = "/bots/#{URI.encode(bot_id)}/"
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
  Get information about a specific bot alias.
  """
  def describe_bot_alias(%Client{} = client, bot_alias_id, bot_id, options \\ []) do
    url_path = "/bots/#{URI.encode(bot_id)}/botaliases/#{URI.encode(bot_alias_id)}/"
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
  Describes the settings that a bot has for a specific locale.
  """
  def describe_bot_locale(%Client{} = client, bot_id, bot_version, locale_id, options \\ []) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/"

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
  Provides metadata about a version of a bot.
  """
  def describe_bot_version(%Client{} = client, bot_id, bot_version, options \\ []) do
    url_path = "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/"
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
  Returns metadata about an intent.
  """
  def describe_intent(
        %Client{} = client,
        bot_id,
        bot_version,
        intent_id,
        locale_id,
        options \\ []
      ) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/intents/#{URI.encode(intent_id)}/"

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
  Gets metadata information about a slot.
  """
  def describe_slot(
        %Client{} = client,
        bot_id,
        bot_version,
        intent_id,
        locale_id,
        slot_id,
        options \\ []
      ) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/intents/#{URI.encode(intent_id)}/slots/#{URI.encode(slot_id)}/"

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
  Gets metadata information about a slot type.
  """
  def describe_slot_type(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        slot_type_id,
        options \\ []
      ) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/slottypes/#{URI.encode(slot_type_id)}/"

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
  Gets a list of aliases for the specified bot.
  """
  def list_bot_aliases(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{URI.encode(bot_id)}/botaliases/"
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
  Gets a list of locales for the specified bot.
  """
  def list_bot_locales(%Client{} = client, bot_id, bot_version, input, options \\ []) do
    url_path = "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/"
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
  Gets information about all of the versions of a bot.

  The `ListBotVersions` operation returns a summary of each version of a bot. For
  example, if a bot has three numbered versions, the `ListBotVersions` operation
  returns for summaries, one for each numbered version and one for the `DRAFT`
  version.

  The `ListBotVersions` operation always returns at least one version, the `DRAFT`
  version.
  """
  def list_bot_versions(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{URI.encode(bot_id)}/botversions/"
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
  Gets a list of available bots.
  """
  def list_bots(%Client{} = client, input, options \\ []) do
    url_path = "/bots/"
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
  Gets a list of built-in intents provided by Amazon Lex that you can use in your
  bot.

  To use a built-in intent as a the base for your own intent, include the built-in
  intent signature in the `parentIntentSignature` parameter when you call the
  `CreateIntent` operation. For more information, see `CreateIntent`.
  """
  def list_built_in_intents(%Client{} = client, locale_id, input, options \\ []) do
    url_path = "/builtins/locales/#{URI.encode(locale_id)}/intents/"
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
  Gets a list of built-in slot types that meet the specified criteria.
  """
  def list_built_in_slot_types(%Client{} = client, locale_id, input, options \\ []) do
    url_path = "/builtins/locales/#{URI.encode(locale_id)}/slottypes/"
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
  Get a list of intents that meet the specified criteria.
  """
  def list_intents(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/intents/"

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
  Gets a list of slot types that match the specified criteria.
  """
  def list_slot_types(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/slottypes/"

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
  Gets a list of slots that match the specified criteria.
  """
  def list_slots(
        %Client{} = client,
        bot_id,
        bot_version,
        intent_id,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/intents/#{URI.encode(intent_id)}/slots/"

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
  Gets a list of tags associated with a resource.

  Only bots, bot aliases, and bot channels can have tags associated with them.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
  Adds the specified tags to the specified resource.

  If a tag key already exists, the existing value is replaced with the new value.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
  Removes tags from a bot, bot alias, or bot channel.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
      200
    )
  end

  @doc """
  Updates the configuration of an existing bot.
  """
  def update_bot(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{URI.encode(bot_id)}/"
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
      202
    )
  end

  @doc """
  Updates the configuration of an existing bot alias.
  """
  def update_bot_alias(%Client{} = client, bot_alias_id, bot_id, input, options \\ []) do
    url_path = "/bots/#{URI.encode(bot_id)}/botaliases/#{URI.encode(bot_alias_id)}/"
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
      202
    )
  end

  @doc """
  Updates the settings that a bot has for a specific locale.
  """
  def update_bot_locale(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/"

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
      202
    )
  end

  @doc """
  Updates the settings for an intent.
  """
  def update_intent(
        %Client{} = client,
        bot_id,
        bot_version,
        intent_id,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/intents/#{URI.encode(intent_id)}/"

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
  Updates the settings for a slot.
  """
  def update_slot(
        %Client{} = client,
        bot_id,
        bot_version,
        intent_id,
        locale_id,
        slot_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/intents/#{URI.encode(intent_id)}/slots/#{URI.encode(slot_id)}/"

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
  Updates the configuration of an existing slot type.
  """
  def update_slot_type(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        slot_type_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{URI.encode(bot_id)}/botversions/#{URI.encode(bot_version)}/botlocales/#{
        URI.encode(locale_id)
      }/slottypes/#{URI.encode(slot_type_id)}/"

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
      202
    )
  end
end
