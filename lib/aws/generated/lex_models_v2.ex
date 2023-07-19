# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LexModelsV2 do
  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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
  Create a batch of custom vocabulary items for a given bot locale's custom
  vocabulary.
  """
  def batch_create_custom_vocabulary_item(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/customvocabulary/DEFAULT/batchcreate"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Delete a batch of custom vocabulary items for a given bot locale's custom
  vocabulary.
  """
  def batch_delete_custom_vocabulary_item(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/customvocabulary/DEFAULT/batchdelete"

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
  Update a batch of custom vocabulary items for a given bot locale's custom
  vocabulary.
  """
  def batch_update_custom_vocabulary_item(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/customvocabulary/DEFAULT/batchupdate"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Builds a bot, its intents, and its slot types into a specific locale.

  A bot can be built into multiple locales. At runtime the locale is used to
  choose a specific build of the bot.
  """
  def build_bot_locale(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/"

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
  Creates an Amazon Lex conversational bot.
  """
  def create_bot(%Client{} = client, input, options \\ []) do
    url_path = "/bots/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Creates an alias for the specified version of a bot.

  Use an alias to enable you to change the version of a bot without updating
  applications that use the bot.

  For example, you can create an alias called "PROD" that your applications use to
  call the Amazon Lex bot.
  """
  def create_bot_alias(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/botaliases/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Creates a locale in the bot.

  The locale contains the intents and slot types that the bot uses in
  conversations with users in the specified language and locale. You must add a
  locale to a bot before you can add intents and slot types to the bot.
  """
  def create_bot_locale(%Client{} = client, bot_id, bot_version, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
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
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Creates a zip archive containing the contents of a bot or a bot locale.

  The archive contains a directory structure that contains JSON files that define
  the bot.

  You can create an archive that contains the complete definition of a bot, or you
  can specify that the archive contain only the definition of a single bot locale.

  For more information about exporting bots, and about the structure of the export
  archive, see [ Importing and exporting bots
  ](https://docs.aws.amazon.com/lexv2/latest/dg/importing-exporting.html)
  """
  def create_export(%Client{} = client, input, options \\ []) do
    url_path = "/exports/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
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
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a new resource policy with the specified policy statements.
  """
  def create_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/policy/#{AWS.Util.encode_uri(resource_arn)}/"
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
  Adds a new resource policy statement to a bot or bot alias.

  If a resource policy exists, the statement is added to the current resource
  policy. If a policy doesn't exist, a new policy is created.

  You can't create a resource policy statement that allows cross-account access.
  """
  def create_resource_policy_statement(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/policy/#{AWS.Util.encode_uri(resource_arn)}/statements/"
    headers = []

    {query_params, input} =
      [
        {"expectedRevisionId", "expectedRevisionId"}
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
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents/#{AWS.Util.encode_uri(intent_id)}/slots/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a custom slot type

  To create a custom slot type, specify a name for the slot type and a set of
  enumeration values, the values that a slot of this type can assume.
  """
  def create_slot_type(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/slottypes/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Create a report that describes the differences between the bot and the test set.
  """
  def create_test_set_discrepancy_report(%Client{} = client, test_set_id, input, options \\ []) do
    url_path = "/testsets/#{AWS.Util.encode_uri(test_set_id)}/testsetdiscrepancy"
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
  Gets a pre-signed S3 write URL that you use to upload the zip archive when
  importing a bot or a bot locale.
  """
  def create_upload_url(%Client{} = client, input, options \\ []) do
    url_path = "/createuploadurl/"
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
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/"
    headers = []

    {query_params, input} =
      [
        {"skipResourceInUseCheck", "skipResourceInUseCheck"}
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
      202
    )
  end

  @doc """
  Deletes the specified bot alias.
  """
  def delete_bot_alias(%Client{} = client, bot_alias_id, bot_id, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botaliases/#{AWS.Util.encode_uri(bot_alias_id)}/"

    headers = []

    {query_params, input} =
      [
        {"skipResourceInUseCheck", "skipResourceInUseCheck"}
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
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/"

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
      202
    )
  end

  @doc """
  Deletes a specific version of a bot.

  To delete all versions of a bot, use the
  [DeleteBot](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_DeleteBot.html)
  operation.
  """
  def delete_bot_version(%Client{} = client, bot_id, bot_version, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/"

    headers = []

    {query_params, input} =
      [
        {"skipResourceInUseCheck", "skipResourceInUseCheck"}
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
      202
    )
  end

  @doc """
  Removes a custom vocabulary from the specified locale in the specified bot.
  """
  def delete_custom_vocabulary(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/customvocabulary"

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
      202
    )
  end

  @doc """
  Removes a previous export and the associated files stored in an S3 bucket.
  """
  def delete_export(%Client{} = client, export_id, input, options \\ []) do
    url_path = "/exports/#{AWS.Util.encode_uri(export_id)}/"
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
      202
    )
  end

  @doc """
  Removes a previous import and the associated file stored in an S3 bucket.
  """
  def delete_import(%Client{} = client, import_id, input, options \\ []) do
    url_path = "/imports/#{AWS.Util.encode_uri(import_id)}/"
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
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents/#{AWS.Util.encode_uri(intent_id)}/"

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
  Removes an existing policy from a bot or bot alias.

  If the resource doesn't have a policy attached, Amazon Lex returns an exception.
  """
  def delete_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/policy/#{AWS.Util.encode_uri(resource_arn)}/"
    headers = []

    {query_params, input} =
      [
        {"expectedRevisionId", "expectedRevisionId"}
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
      204
    )
  end

  @doc """
  Deletes a policy statement from a resource policy.

  If you delete the last statement from a policy, the policy is deleted. If you
  specify a statement ID that doesn't exist in the policy, or if the bot or bot
  alias doesn't have a policy attached, Amazon Lex returns an exception.
  """
  def delete_resource_policy_statement(
        %Client{} = client,
        resource_arn,
        statement_id,
        input,
        options \\ []
      ) do
    url_path =
      "/policy/#{AWS.Util.encode_uri(resource_arn)}/statements/#{AWS.Util.encode_uri(statement_id)}/"

    headers = []

    {query_params, input} =
      [
        {"expectedRevisionId", "expectedRevisionId"}
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
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents/#{AWS.Util.encode_uri(intent_id)}/slots/#{AWS.Util.encode_uri(slot_id)}/"

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
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/slottypes/#{AWS.Util.encode_uri(slot_type_id)}/"

    headers = []

    {query_params, input} =
      [
        {"skipResourceInUseCheck", "skipResourceInUseCheck"}
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
      204
    )
  end

  @doc """
  The action to delete the selected test set.
  """
  def delete_test_set(%Client{} = client, test_set_id, input, options \\ []) do
    url_path = "/testsets/#{AWS.Util.encode_uri(test_set_id)}"
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
  Deletes stored utterances.

  Amazon Lex stores the utterances that users send to your bot. Utterances are
  stored for 15 days for use with the
  [ListAggregatedUtterances](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListAggregatedUtterances.html)
  operation, and then stored indefinitely for use in improving the ability of your
  bot to respond to user input..

  Use the `DeleteUtterances` operation to manually delete utterances for a
  specific session. When you use the `DeleteUtterances` operation, utterances
  stored for improving your bot's ability to respond to user input are deleted
  immediately. Utterances stored for use with the `ListAggregatedUtterances`
  operation are deleted after 15 days.
  """
  def delete_utterances(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/utterances/"
    headers = []

    {query_params, input} =
      [
        {"localeId", "localeId"},
        {"sessionId", "sessionId"}
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
      204
    )
  end

  @doc """
  Provides metadata information about a bot.
  """
  def describe_bot(%Client{} = client, bot_id, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get information about a specific bot alias.
  """
  def describe_bot_alias(%Client{} = client, bot_alias_id, bot_id, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botaliases/#{AWS.Util.encode_uri(bot_alias_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the settings that a bot has for a specific locale.
  """
  def describe_bot_locale(%Client{} = client, bot_id, bot_version, locale_id, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides metadata information about a bot recommendation.

  This information will enable you to get a description on the request inputs, to
  download associated transcripts after processing is complete, and to download
  intents and slot-types generated by the bot recommendation.
  """
  def describe_bot_recommendation(
        %Client{} = client,
        bot_id,
        bot_recommendation_id,
        bot_version,
        locale_id,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/botrecommendations/#{AWS.Util.encode_uri(bot_recommendation_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides metadata about a version of a bot.
  """
  def describe_bot_version(%Client{} = client, bot_id, bot_version, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides metadata information about a custom vocabulary.
  """
  def describe_custom_vocabulary_metadata(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/customvocabulary/DEFAULT/metadata"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specific export.
  """
  def describe_export(%Client{} = client, export_id, options \\ []) do
    url_path = "/exports/#{AWS.Util.encode_uri(export_id)}/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specific import.
  """
  def describe_import(%Client{} = client, import_id, options \\ []) do
    url_path = "/imports/#{AWS.Util.encode_uri(import_id)}/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
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
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents/#{AWS.Util.encode_uri(intent_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the resource policy and policy revision for a bot or bot alias.
  """
  def describe_resource_policy(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/policy/#{AWS.Util.encode_uri(resource_arn)}/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
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
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents/#{AWS.Util.encode_uri(intent_id)}/slots/#{AWS.Util.encode_uri(slot_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
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
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/slottypes/#{AWS.Util.encode_uri(slot_type_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets metadata information about the test execution.
  """
  def describe_test_execution(%Client{} = client, test_execution_id, options \\ []) do
    url_path = "/testexecutions/#{AWS.Util.encode_uri(test_execution_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets metadata information about the test set.
  """
  def describe_test_set(%Client{} = client, test_set_id, options \\ []) do
    url_path = "/testsets/#{AWS.Util.encode_uri(test_set_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets metadata information about the test set discrepancy report.
  """
  def describe_test_set_discrepancy_report(
        %Client{} = client,
        test_set_discrepancy_report_id,
        options \\ []
      ) do
    url_path = "/testsetdiscrepancy/#{AWS.Util.encode_uri(test_set_discrepancy_report_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets metadata information about the test set generation.
  """
  def describe_test_set_generation(%Client{} = client, test_set_generation_id, options \\ []) do
    url_path = "/testsetgenerations/#{AWS.Util.encode_uri(test_set_generation_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The pre-signed Amazon S3 URL to download the test execution result artifacts.
  """
  def get_test_execution_artifacts_url(%Client{} = client, test_execution_id, options \\ []) do
    url_path = "/testexecutions/#{AWS.Util.encode_uri(test_execution_id)}/artifacturl"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides a list of utterances that users have sent to the bot.

  Utterances are aggregated by the text of the utterance. For example, all
  instances where customers used the phrase "I want to order pizza" are aggregated
  into the same line in the response.

  You can see both detected utterances and missed utterances. A detected utterance
  is where the bot properly recognized the utterance and activated the associated
  intent. A missed utterance was not recognized by the bot and didn't activate an
  intent.

  Utterances can be aggregated for a bot alias or for a bot version, but not both
  at the same time.

  Utterances statistics are not generated under the following conditions:

    * The `childDirected` field was set to true when the bot was
  created.

    * You are using slot obfuscation with one or more slots.

    * You opted out of participating in improving Amazon Lex.
  """
  def list_aggregated_utterances(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/aggregatedutterances/"
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
  Gets a list of aliases for the specified bot.
  """
  def list_bot_aliases(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/botaliases/"
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
  Gets a list of locales for the specified bot.
  """
  def list_bot_locales(%Client{} = client, bot_id, bot_version, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/"

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
  Get a list of bot recommendations that meet the specified criteria.
  """
  def list_bot_recommendations(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/botrecommendations/"

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
  Gets information about all of the versions of a bot.

  The `ListBotVersions` operation returns a summary of each version of a bot. For
  example, if a bot has three numbered versions, the `ListBotVersions` operation
  returns for summaries, one for each numbered version and one for the `DRAFT`
  version.

  The `ListBotVersions` operation always returns at least one version, the `DRAFT`
  version.
  """
  def list_bot_versions(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/"
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
  Gets a list of available bots.
  """
  def list_bots(%Client{} = client, input, options \\ []) do
    url_path = "/bots/"
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
  Gets a list of built-in intents provided by Amazon Lex that you can use in your
  bot.

  To use a built-in intent as a the base for your own intent, include the built-in
  intent signature in the `parentIntentSignature` parameter when you call the
  `CreateIntent` operation. For more information, see
  [CreateIntent](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_CreateIntent.html).
  """
  def list_built_in_intents(%Client{} = client, locale_id, input, options \\ []) do
    url_path = "/builtins/locales/#{AWS.Util.encode_uri(locale_id)}/intents/"
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
  Gets a list of built-in slot types that meet the specified criteria.
  """
  def list_built_in_slot_types(%Client{} = client, locale_id, input, options \\ []) do
    url_path = "/builtins/locales/#{AWS.Util.encode_uri(locale_id)}/slottypes/"
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
  Paginated list of custom vocabulary items for a given bot locale's custom
  vocabulary.
  """
  def list_custom_vocabulary_items(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/customvocabulary/DEFAULT/list"

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
  Lists the exports for a bot, bot locale, or custom vocabulary.

  Exports are kept in the list for 7 days.
  """
  def list_exports(%Client{} = client, input, options \\ []) do
    url_path = "/exports/"
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
  Lists the imports for a bot, bot locale, or custom vocabulary.

  Imports are kept in the list for 7 days.
  """
  def list_imports(%Client{} = client, input, options \\ []) do
    url_path = "/imports/"
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
  Retrieves summary metrics for the intents in your bot.

  The following fields are required:

    * `metrics` – A list of
  [AnalyticsIntentMetric](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_AnalyticsIntentMetric.html)
  objects. In each object, use the `name` field to specify the metric to
  calculate, the `statistic` field to specify whether to calculate the `Sum`,
  `Average`, or `Max` number, and the `order` field to specify whether to sort the
  results in `Ascending` or `Descending` order.

    * `startDateTime` and `endDateTime` – Define a time range for which
  you want to retrieve results.

  Of the optional fields, you can organize the results in the following ways:

    * Use the `filters` field to filter the results, the `groupBy` field
  to specify categories by which to group the results, and the `binBy` field to
  specify time intervals by which to group the results.

    * Use the `maxResults` field to limit the number of results to
  return in a single response and the `nextToken` field to return the next batch
  of results if the response does not return the full set of results.

  Note that an `order` field exists in both `binBy` and `metrics`. You can specify
  only one `order` in a given request.
  """
  def list_intent_metrics(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/analytics/intentmetrics"
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
  Retrieves summary statistics for a path of intents that users take over sessions
  with your bot.

  The following fields are required:

    * `startDateTime` and `endDateTime` – Define a time range for which
  you want to retrieve results.

    * `intentPath` – Define an order of intents for which you want to
  retrieve metrics. Separate intents in the path with a forward slash. For
  example, populate the `intentPath` field with `/BookCar/BookHotel` to see
  details about how many times users invoked the `BookCar` and `BookHotel` intents
  in that order.

  Use the optional `filters` field to filter the results.
  """
  def list_intent_paths(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/analytics/intentpaths"
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
  Retrieves summary metrics for the intent stages in your bot.

  The following fields are required:

    * `metrics` – A list of
  [AnalyticsIntentStageMetric](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_AnalyticsIntentStageMetric.html)
  objects. In each object, use the `name` field to specify the metric to
  calculate, the `statistic` field to specify whether to calculate the `Sum`,
  `Average`, or `Max` number, and the `order` field to specify whether to sort the
  results in `Ascending` or `Descending` order.

    * `startDateTime` and `endDateTime` – Define a time range for which
  you want to retrieve results.

  Of the optional fields, you can organize the results in the following ways:

    * Use the `filters` field to filter the results, the `groupBy` field
  to specify categories by which to group the results, and the `binBy` field to
  specify time intervals by which to group the results.

    * Use the `maxResults` field to limit the number of results to
  return in a single response and the `nextToken` field to return the next batch
  of results if the response does not return the full set of results.

  Note that an `order` field exists in both `binBy` and `metrics`. You can only
  specify one `order` in a given request.
  """
  def list_intent_stage_metrics(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/analytics/intentstagemetrics"
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
  Get a list of intents that meet the specified criteria.
  """
  def list_intents(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents/"

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
  Gets a list of recommended intents provided by the bot recommendation that you
  can use in your bot.

  Intents in the response are ordered by relevance.
  """
  def list_recommended_intents(
        %Client{} = client,
        bot_id,
        bot_recommendation_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/botrecommendations/#{AWS.Util.encode_uri(bot_recommendation_id)}/intents"

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
  Retrieves a list of metadata for individual user sessions with your bot.

  The `startDateTime` and `endDateTime` fields are required. These fields define a
  time range for which you want to retrieve results. Of the optional fields, you
  can organize the results in the following ways:

    * Use the `filters` field to filter the results and the `sortBy`
  field to specify the values by which to sort the results.

    * Use the `maxResults` field to limit the number of results to
  return in a single response and the `nextToken` field to return the next batch
  of results if the response does not return the full set of results.
  """
  def list_session_analytics_data(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/analytics/sessions"
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
  Retrieves summary metrics for the user sessions with your bot.

  The following fields are required:

    * `metrics` – A list of
  [AnalyticsSessionMetric](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_AnalyticsSessionMetric.html)
  objects. In each object, use the `name` field to specify the metric to
  calculate, the `statistic` field to specify whether to calculate the `Sum`,
  `Average`, or `Max` number, and the `order` field to specify whether to sort the
  results in `Ascending` or `Descending` order.

    * `startDateTime` and `endDateTime` – Define a time range for which
  you want to retrieve results.

  Of the optional fields, you can organize the results in the following ways:

    * Use the `filters` field to filter the results, the `groupBy` field
  to specify categories by which to group the results, and the `binBy` field to
  specify time intervals by which to group the results.

    * Use the `maxResults` field to limit the number of results to
  return in a single response and the `nextToken` field to return the next batch
  of results if the response does not return the full set of results.

  Note that an `order` field exists in both `binBy` and `metrics`. Currently, you
  can specify it in either field, but not in both.
  """
  def list_session_metrics(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/analytics/sessionmetrics"
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
  Gets a list of slot types that match the specified criteria.
  """
  def list_slot_types(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/slottypes/"

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
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents/#{AWS.Util.encode_uri(intent_id)}/slots/"

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
  Gets a list of tags associated with a resource.

  Only bots, bot aliases, and bot channels can have tags associated with them.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of test execution result items.
  """
  def list_test_execution_result_items(
        %Client{} = client,
        test_execution_id,
        input,
        options \\ []
      ) do
    url_path = "/testexecutions/#{AWS.Util.encode_uri(test_execution_id)}/results"
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
  The list of test set executions.
  """
  def list_test_executions(%Client{} = client, input, options \\ []) do
    url_path = "/testexecutions"
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
  The list of test set records.
  """
  def list_test_set_records(%Client{} = client, test_set_id, input, options \\ []) do
    url_path = "/testsets/#{AWS.Util.encode_uri(test_set_id)}/records"
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
  The list of the test sets
  """
  def list_test_sets(%Client{} = client, input, options \\ []) do
    url_path = "/testsets"
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
  Retrieves a list of metadata for individual user utterances to your bot.

  The `startDateTime` and `endDateTime` fields are required. These fields define a
  time range for which you want to retrieve results. Of the optional fields, you
  can organize the results in the following ways:

    * Use the `filters` field to filter the results and the `sortBy`
  field to specify the values by which to sort the results.

    * Use the `maxResults` field to limit the number of results to
  return in a single response and the `nextToken` field to return the next batch
  of results if the response does not return the full set of results.
  """
  def list_utterance_analytics_data(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/analytics/utterances"
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
  Retrieves summary metrics for the utterances in your bot.

  The following fields are required:

    * `metrics` – A list of
  [AnalyticsUtteranceMetric](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_AnalyticsUtteranceMetric.html)
  objects. In each object, use the `name` field to specify the metric to
  calculate, the `statistic` field to specify whether to calculate the `Sum`,
  `Average`, or `Max` number, and the `order` field to specify whether to sort the
  results in `Ascending` or `Descending` order.

    * `startDateTime` and `endDateTime` – Define a time range for which
  you want to retrieve results.

  Of the optional fields, you can organize the results in the following ways:

    * Use the `filters` field to filter the results, the `groupBy` field
  to specify categories by which to group the results, and the `binBy` field to
  specify time intervals by which to group the results.

    * Use the `maxResults` field to limit the number of results to
  return in a single response and the `nextToken` field to return the next batch
  of results if the response does not return the full set of results.

  Note that an `order` field exists in both `binBy` and `metrics`. Currently, you
  can specify it in either field, but not in both.
  """
  def list_utterance_metrics(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/analytics/utterancemetrics"
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
  Search for associated transcripts that meet the specified criteria.
  """
  def search_associated_transcripts(
        %Client{} = client,
        bot_id,
        bot_recommendation_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/botrecommendations/#{AWS.Util.encode_uri(bot_recommendation_id)}/associatedtranscripts"

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
  Use this to provide your transcript data, and to start the bot recommendation
  process.
  """
  def start_bot_recommendation(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/botrecommendations/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Starts importing a bot, bot locale, or custom vocabulary from a zip archive that
  you uploaded to an S3 bucket.
  """
  def start_import(%Client{} = client, input, options \\ []) do
    url_path = "/imports/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  The action to start test set execution.
  """
  def start_test_execution(%Client{} = client, test_set_id, input, options \\ []) do
    url_path = "/testsets/#{AWS.Util.encode_uri(test_set_id)}/testexecutions"
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
  The action to start the generation of test set.
  """
  def start_test_set_generation(%Client{} = client, input, options \\ []) do
    url_path = "/testsetgenerations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Stop an already running Bot Recommendation request.
  """
  def stop_bot_recommendation(
        %Client{} = client,
        bot_id,
        bot_recommendation_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/botrecommendations/#{AWS.Util.encode_uri(bot_recommendation_id)}/stopbotrecommendation"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Adds the specified tags to the specified resource.

  If a tag key already exists, the existing value is replaced with the new value.
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
  Removes tags from a bot, bot alias, or bot channel.
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
  Updates the configuration of an existing bot.
  """
  def update_bot(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates the configuration of an existing bot alias.
  """
  def update_bot_alias(%Client{} = client, bot_alias_id, bot_id, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botaliases/#{AWS.Util.encode_uri(bot_alias_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates the settings that a bot has for a specific locale.
  """
  def update_bot_locale(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates an existing bot recommendation request.
  """
  def update_bot_recommendation(
        %Client{} = client,
        bot_id,
        bot_recommendation_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/botrecommendations/#{AWS.Util.encode_uri(bot_recommendation_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates the password used to protect an export zip archive.

  The password is not required. If you don't supply a password, Amazon Lex
  generates a zip file that is not protected by a password. This is the archive
  that is available at the pre-signed S3 URL provided by the
  [DescribeExport](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_DescribeExport.html)
  operation.
  """
  def update_export(%Client{} = client, export_id, input, options \\ []) do
    url_path = "/exports/#{AWS.Util.encode_uri(export_id)}/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
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
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents/#{AWS.Util.encode_uri(intent_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Replaces the existing resource policy for a bot or bot alias with a new one.

  If the policy doesn't exist, Amazon Lex returns an exception.
  """
  def update_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/policy/#{AWS.Util.encode_uri(resource_arn)}/"
    headers = []

    {query_params, input} =
      [
        {"expectedRevisionId", "expectedRevisionId"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents/#{AWS.Util.encode_uri(intent_id)}/slots/#{AWS.Util.encode_uri(slot_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/slottypes/#{AWS.Util.encode_uri(slot_type_id)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  The action to update the test set.
  """
  def update_test_set(%Client{} = client, test_set_id, input, options \\ []) do
    url_path = "/testsets/#{AWS.Util.encode_uri(test_set_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
