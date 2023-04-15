# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LexModelBuilding do
  @moduledoc """
  Amazon Lex Build-Time Actions

  Amazon Lex is an AWS service for building conversational voice and text
  interfaces.

  Use these actions to create, update, and delete conversational bots for new and
  existing client applications.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2017-04-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "models.lex",
      global?: false,
      protocol: "rest-json",
      service_id: "Lex Model Building Service",
      signature_version: "v4",
      signing_name: "lex",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new version of the bot based on the `$LATEST` version.

  If the `$LATEST` version of this resource hasn't changed since you created the
  last version, Amazon Lex doesn't create a new version. It returns the last
  created version.

  You can update only the `$LATEST` version of the bot. You can't update the
  numbered versions that you create with the `CreateBotVersion` operation.

  When you create the first version of a bot, Amazon Lex sets the version to 1.
  Subsequent versions increment by 1. For more information, see
  `versioning-intro`.

  This operation requires permission for the `lex:CreateBotVersion` action.
  """
  def create_bot_version(%Client{} = client, name, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(name)}/versions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateBotVersion",
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
  Creates a new version of an intent based on the `$LATEST` version of the intent.

  If the `$LATEST` version of this intent hasn't changed since you last updated
  it, Amazon Lex doesn't create a new version. It returns the last version you
  created.

  You can update only the `$LATEST` version of the intent. You can't update the
  numbered versions that you create with the `CreateIntentVersion` operation.

  When you create a version of an intent, Amazon Lex sets the version to 1.
  Subsequent versions increment by 1. For more information, see
  `versioning-intro`.

  This operation requires permissions to perform the `lex:CreateIntentVersion`
  action.
  """
  def create_intent_version(%Client{} = client, name, input, options \\ []) do
    url_path = "/intents/#{AWS.Util.encode_uri(name)}/versions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateIntentVersion",
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
  Creates a new version of a slot type based on the `$LATEST` version of the
  specified slot type.

  If the `$LATEST` version of this resource has not changed since the last version
  that you created, Amazon Lex doesn't create a new version. It returns the last
  version that you created.

  You can update only the `$LATEST` version of a slot type. You can't update the
  numbered versions that you create with the `CreateSlotTypeVersion` operation.

  When you create a version of a slot type, Amazon Lex sets the version to 1.
  Subsequent versions increment by 1. For more information, see
  `versioning-intro`.

  This operation requires permissions for the `lex:CreateSlotTypeVersion` action.
  """
  def create_slot_type_version(%Client{} = client, name, input, options \\ []) do
    url_path = "/slottypes/#{AWS.Util.encode_uri(name)}/versions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateSlotTypeVersion",
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
  Deletes all versions of the bot, including the `$LATEST` version.

  To delete a specific version of the bot, use the `DeleteBotVersion` operation.
  The `DeleteBot` operation doesn't immediately remove the bot schema. Instead, it
  is marked for deletion and removed later.

  Amazon Lex stores utterances indefinitely for improving the ability of your bot
  to respond to user inputs. These utterances are not removed when the bot is
  deleted. To remove the utterances, use the `DeleteUtterances` operation.

  If a bot has an alias, you can't delete it. Instead, the `DeleteBot` operation
  returns a `ResourceInUseException` exception that includes a reference to the
  alias that refers to the bot. To remove the reference to the bot, delete the
  alias. If you get the same exception again, delete the referring alias until the
  `DeleteBot` operation is successful.

  This operation requires permissions for the `lex:DeleteBot` action.
  """
  def delete_bot(%Client{} = client, name, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteBot",
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
  Deletes an alias for the specified bot.

  You can't delete an alias that is used in the association between a bot and a
  messaging channel. If an alias is used in a channel association, the `DeleteBot`
  operation returns a `ResourceInUseException` exception that includes a reference
  to the channel association that refers to the bot. You can remove the reference
  to the alias by deleting the channel association. If you get the same exception
  again, delete the referring association until the `DeleteBotAlias` operation is
  successful.
  """
  def delete_bot_alias(%Client{} = client, bot_name, name, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteBotAlias",
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
  Deletes the association between an Amazon Lex bot and a messaging platform.

  This operation requires permission for the `lex:DeleteBotChannelAssociation`
  action.
  """
  def delete_bot_channel_association(
        %Client{} = client,
        bot_alias,
        bot_name,
        name,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/#{AWS.Util.encode_uri(bot_alias)}/channels/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteBotChannelAssociation",
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
  Deletes a specific version of a bot.

  To delete all versions of a bot, use the `DeleteBot` operation.

  This operation requires permissions for the `lex:DeleteBotVersion` action.
  """
  def delete_bot_version(%Client{} = client, name, version, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(name)}/versions/#{AWS.Util.encode_uri(version)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteBotVersion",
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
  Deletes all versions of the intent, including the `$LATEST` version.

  To delete a specific version of the intent, use the `DeleteIntentVersion`
  operation.

  You can delete a version of an intent only if it is not referenced. To delete an
  intent that is referred to in one or more bots (see `how-it-works`), you must
  remove those references first.

  If you get the `ResourceInUseException` exception, it provides an example
  reference that shows where the intent is referenced. To remove the reference to
  the intent, either update the bot or delete it. If you get the same exception
  when you attempt to delete the intent again, repeat until the intent has no
  references and the call to `DeleteIntent` is successful.

  This operation requires permission for the `lex:DeleteIntent` action.
  """
  def delete_intent(%Client{} = client, name, input, options \\ []) do
    url_path = "/intents/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteIntent",
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
  Deletes a specific version of an intent.

  To delete all versions of a intent, use the `DeleteIntent` operation.

  This operation requires permissions for the `lex:DeleteIntentVersion` action.
  """
  def delete_intent_version(%Client{} = client, name, version, input, options \\ []) do
    url_path = "/intents/#{AWS.Util.encode_uri(name)}/versions/#{AWS.Util.encode_uri(version)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteIntentVersion",
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
  Deletes all versions of the slot type, including the `$LATEST` version.

  To delete a specific version of the slot type, use the `DeleteSlotTypeVersion`
  operation.

  You can delete a version of a slot type only if it is not referenced. To delete
  a slot type that is referred to in one or more intents, you must remove those
  references first.

  If you get the `ResourceInUseException` exception, the exception provides an
  example reference that shows the intent where the slot type is referenced. To
  remove the reference to the slot type, either update the intent or delete it. If
  you get the same exception when you attempt to delete the slot type again,
  repeat until the slot type has no references and the `DeleteSlotType` call is
  successful.

  This operation requires permission for the `lex:DeleteSlotType` action.
  """
  def delete_slot_type(%Client{} = client, name, input, options \\ []) do
    url_path = "/slottypes/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteSlotType",
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
  Deletes a specific version of a slot type.

  To delete all versions of a slot type, use the `DeleteSlotType` operation.

  This operation requires permissions for the `lex:DeleteSlotTypeVersion` action.
  """
  def delete_slot_type_version(%Client{} = client, name, version, input, options \\ []) do
    url_path = "/slottypes/#{AWS.Util.encode_uri(name)}/version/#{AWS.Util.encode_uri(version)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteSlotTypeVersion",
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
  stored for 15 days for use with the `GetUtterancesView` operation, and then
  stored indefinitely for use in improving the ability of your bot to respond to
  user input.

  Use the `DeleteUtterances` operation to manually delete stored utterances for a
  specific user. When you use the `DeleteUtterances` operation, utterances stored
  for improving your bot's ability to respond to user input are deleted
  immediately. Utterances stored for use with the `GetUtterancesView` operation
  are deleted after 15 days.

  This operation requires permissions for the `lex:DeleteUtterances` action.
  """
  def delete_utterances(%Client{} = client, bot_name, user_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_name)}/utterances/#{AWS.Util.encode_uri(user_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteUtterances",
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
  Returns metadata information for a specific bot.

  You must provide the bot name and the bot version or alias.

  This operation requires permissions for the `lex:GetBot` action.
  """
  def get_bot(%Client{} = client, name, version_or_alias, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(name)}/versions/#{AWS.Util.encode_uri(version_or_alias)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetBot",
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
  Returns information about an Amazon Lex bot alias.

  For more information about aliases, see `versioning-aliases`.

  This operation requires permissions for the `lex:GetBotAlias` action.
  """
  def get_bot_alias(%Client{} = client, bot_name, name, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetBotAlias",
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
  Returns a list of aliases for a specified Amazon Lex bot.

  This operation requires permissions for the `lex:GetBotAliases` action.
  """
  def get_bot_aliases(
        %Client{} = client,
        bot_name,
        max_results \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
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

    Request.request_rest(
      client,
      meta,
      "GetBotAliases",
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
  Returns information about the association between an Amazon Lex bot and a
  messaging platform.

  This operation requires permissions for the `lex:GetBotChannelAssociation`
  action.
  """
  def get_bot_channel_association(%Client{} = client, bot_alias, bot_name, name, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/#{AWS.Util.encode_uri(bot_alias)}/channels/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetBotChannelAssociation",
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
  Returns a list of all of the channels associated with the specified bot.

  The `GetBotChannelAssociations` operation requires permissions for the
  `lex:GetBotChannelAssociations` action.
  """
  def get_bot_channel_associations(
        %Client{} = client,
        bot_alias,
        bot_name,
        max_results \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/#{AWS.Util.encode_uri(bot_alias)}/channels/"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
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

    Request.request_rest(
      client,
      meta,
      "GetBotChannelAssociations",
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
  Gets information about all of the versions of a bot.

  The `GetBotVersions` operation returns a `BotMetadata` object for each version
  of a bot. For example, if a bot has three numbered versions, the
  `GetBotVersions` operation returns four `BotMetadata` objects in the response,
  one for each numbered version and one for the `$LATEST` version.

  The `GetBotVersions` operation always returns at least one version, the
  `$LATEST` version.

  This operation requires permissions for the `lex:GetBotVersions` action.
  """
  def get_bot_versions(
        %Client{} = client,
        name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/bots/#{AWS.Util.encode_uri(name)}/versions/"
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

    Request.request_rest(
      client,
      meta,
      "GetBotVersions",
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
  Returns bot information as follows:

    * If you provide the `nameContains` field, the response includes
  information for the `$LATEST` version of all bots whose name contains the
  specified string.

    * If you don't specify the `nameContains` field, the operation
  returns information about the `$LATEST` version of all of your bots.

  This operation requires permission for the `lex:GetBots` action.
  """
  def get_bots(
        %Client{} = client,
        max_results \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/bots/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
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

    Request.request_rest(
      client,
      meta,
      "GetBots",
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
  Returns information about a built-in intent.

  This operation requires permission for the `lex:GetBuiltinIntent` action.
  """
  def get_builtin_intent(%Client{} = client, signature, options \\ []) do
    url_path = "/builtins/intents/#{AWS.Util.encode_uri(signature)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetBuiltinIntent",
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
  Gets a list of built-in intents that meet the specified criteria.

  This operation requires permission for the `lex:GetBuiltinIntents` action.
  """
  def get_builtin_intents(
        %Client{} = client,
        locale \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        signature_contains \\ nil,
        options \\ []
      ) do
    url_path = "/builtins/intents/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(signature_contains) do
        [{"signatureContains", signature_contains} | query_params]
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
      if !is_nil(locale) do
        [{"locale", locale} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetBuiltinIntents",
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
  Gets a list of built-in slot types that meet the specified criteria.

  For a list of built-in slot types, see [Slot Type Reference](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference)
  in the *Alexa Skills Kit*.

  This operation requires permission for the `lex:GetBuiltInSlotTypes` action.
  """
  def get_builtin_slot_types(
        %Client{} = client,
        locale \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        signature_contains \\ nil,
        options \\ []
      ) do
    url_path = "/builtins/slottypes/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(signature_contains) do
        [{"signatureContains", signature_contains} | query_params]
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
      if !is_nil(locale) do
        [{"locale", locale} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetBuiltinSlotTypes",
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
  Exports the contents of a Amazon Lex resource in a specified format.
  """
  def get_export(%Client{} = client, export_type, name, resource_type, version, options \\ []) do
    url_path = "/exports/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(version) do
        [{"version", version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(export_type) do
        [{"exportType", export_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetExport",
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
  Gets information about an import job started with the `StartImport` operation.
  """
  def get_import(%Client{} = client, import_id, options \\ []) do
    url_path = "/imports/#{AWS.Util.encode_uri(import_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetImport",
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
  Returns information about an intent.

  In addition to the intent name, you must specify the intent version.

  This operation requires permissions to perform the `lex:GetIntent` action.
  """
  def get_intent(%Client{} = client, name, version, options \\ []) do
    url_path = "/intents/#{AWS.Util.encode_uri(name)}/versions/#{AWS.Util.encode_uri(version)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetIntent",
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
  Gets information about all of the versions of an intent.

  The `GetIntentVersions` operation returns an `IntentMetadata` object for each
  version of an intent. For example, if an intent has three numbered versions, the
  `GetIntentVersions` operation returns four `IntentMetadata` objects in the
  response, one for each numbered version and one for the `$LATEST` version.

  The `GetIntentVersions` operation always returns at least one version, the
  `$LATEST` version.

  This operation requires permissions for the `lex:GetIntentVersions` action.
  """
  def get_intent_versions(
        %Client{} = client,
        name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/intents/#{AWS.Util.encode_uri(name)}/versions/"
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

    Request.request_rest(
      client,
      meta,
      "GetIntentVersions",
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
  Returns intent information as follows:

    * If you specify the `nameContains` field, returns the `$LATEST`
  version of all intents that contain the specified string.

    * If you don't specify the `nameContains` field, returns information
  about the `$LATEST` version of all intents.

  The operation requires permission for the `lex:GetIntents` action.
  """
  def get_intents(
        %Client{} = client,
        max_results \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/intents/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
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

    Request.request_rest(
      client,
      meta,
      "GetIntents",
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
  Provides details about an ongoing or complete migration from an Amazon Lex V1
  bot to an Amazon Lex V2 bot.

  Use this operation to view the migration alerts and warnings related to the
  migration.
  """
  def get_migration(%Client{} = client, migration_id, options \\ []) do
    url_path = "/migrations/#{AWS.Util.encode_uri(migration_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetMigration",
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
  Gets a list of migrations between Amazon Lex V1 and Amazon Lex V2.
  """
  def get_migrations(
        %Client{} = client,
        max_results \\ nil,
        migration_status_equals \\ nil,
        next_token \\ nil,
        sort_by_attribute \\ nil,
        sort_by_order \\ nil,
        v1_bot_name_contains \\ nil,
        options \\ []
      ) do
    url_path = "/migrations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(v1_bot_name_contains) do
        [{"v1BotNameContains", v1_bot_name_contains} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by_order) do
        [{"sortByOrder", sort_by_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by_attribute) do
        [{"sortByAttribute", sort_by_attribute} | query_params]
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
      if !is_nil(migration_status_equals) do
        [{"migrationStatusEquals", migration_status_equals} | query_params]
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

    Request.request_rest(
      client,
      meta,
      "GetMigrations",
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
  Returns information about a specific version of a slot type.

  In addition to specifying the slot type name, you must specify the slot type
  version.

  This operation requires permissions for the `lex:GetSlotType` action.
  """
  def get_slot_type(%Client{} = client, name, version, options \\ []) do
    url_path = "/slottypes/#{AWS.Util.encode_uri(name)}/versions/#{AWS.Util.encode_uri(version)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetSlotType",
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
  Gets information about all versions of a slot type.

  The `GetSlotTypeVersions` operation returns a `SlotTypeMetadata` object for each
  version of a slot type. For example, if a slot type has three numbered versions,
  the `GetSlotTypeVersions` operation returns four `SlotTypeMetadata` objects in
  the response, one for each numbered version and one for the `$LATEST` version.

  The `GetSlotTypeVersions` operation always returns at least one version, the
  `$LATEST` version.

  This operation requires permissions for the `lex:GetSlotTypeVersions` action.
  """
  def get_slot_type_versions(
        %Client{} = client,
        name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/slottypes/#{AWS.Util.encode_uri(name)}/versions/"
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

    Request.request_rest(
      client,
      meta,
      "GetSlotTypeVersions",
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
  Returns slot type information as follows:

    * If you specify the `nameContains` field, returns the `$LATEST`
  version of all slot types that contain the specified string.

    * If you don't specify the `nameContains` field, returns information
  about the `$LATEST` version of all slot types.

  The operation requires permission for the `lex:GetSlotTypes` action.
  """
  def get_slot_types(
        %Client{} = client,
        max_results \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/slottypes/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
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

    Request.request_rest(
      client,
      meta,
      "GetSlotTypes",
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
  Use the `GetUtterancesView` operation to get information about the utterances
  that your users have made to your bot.

  You can use this list to tune the utterances that your bot responds to.

  For example, say that you have created a bot to order flowers. After your users
  have used your bot for a while, use the `GetUtterancesView` operation to see the
  requests that they have made and whether they have been successful. You might
  find that the utterance "I want flowers" is not being recognized. You could add
  this utterance to the `OrderFlowers` intent so that your bot recognizes that
  utterance.

  After you publish a new version of a bot, you can get information about the old
  version and the new so that you can compare the performance across the two
  versions.

  Utterance statistics are generated once a day. Data is available for the last 15
  days. You can request information for up to 5 versions of your bot in each
  request. Amazon Lex returns the most frequent utterances received by the bot in
  the last 15 days. The response contains information about a maximum of 100
  utterances for each version.

  If you set `childDirected` field to true when you created your bot, if you are
  using slot obfuscation with one or more slots, or if you opted out of
  participating in improving Amazon Lex, utterances are not available.

  This operation requires permissions for the `lex:GetUtterancesView` action.
  """
  def get_utterances_view(%Client{} = client, bot_name, bot_versions, status_type, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_name)}/utterances?view=aggregation"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status_type) do
        [{"status_type", status_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(bot_versions) do
        [{"bot_versions", bot_versions} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetUtterancesView",
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
  Gets a list of tags associated with the specified resource.

  Only bots, bot aliases, and bot channels can have tags associated with them.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListTagsForResource",
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
  Creates an Amazon Lex conversational bot or replaces an existing bot.

  When you create or update a bot you are only required to specify a name, a
  locale, and whether the bot is directed toward children under age 13. You can
  use this to add intents later, or to remove intents from an existing bot. When
  you create a bot with the minimum information, the bot is created or updated but
  Amazon Lex returns the ` response `FAILED`. You can build the bot after you add
  one or more intents. For more information about Amazon Lex bots, see
  `how-it-works`. `

  ```
  If you specify the name of an existing bot, the fields in the request replace
  the existing values in the `$LATEST` version of the bot. Amazon Lex removes any
  fields that you don't provide values for in the request, except for the
  `idleTTLInSeconds` and `privacySettings` fields, which are set to their default
  values. If you don't specify values for required fields, Amazon Lex throws an
  exception.

  This operation requires permissions for the `lex:PutBot` action. For more
  information, see `security-iam`.

  ```
  """
  def put_bot(%Client{} = client, name, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(name)}/versions/$LATEST"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "PutBot",
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
  Creates an alias for the specified version of the bot or replaces an alias for
  the specified bot.

  To change the version of the bot that the alias points to, replace the alias.
  For more information about aliases, see `versioning-aliases`.

  This operation requires permissions for the `lex:PutBotAlias` action.
  """
  def put_bot_alias(%Client{} = client, bot_name, name, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "PutBotAlias",
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
  Creates an intent or replaces an existing intent.

  To define the interaction between the user and your bot, you use one or more
  intents. For a pizza ordering bot, for example, you would create an `OrderPizza`
  intent.

  To create an intent or replace an existing intent, you must provide the
  following:

    * Intent name. For example, `OrderPizza`.

    * Sample utterances. For example, "Can I order a pizza, please." and
  "I want to order a pizza."

    * Information to be gathered. You specify slot types for the
  information that your bot will request from the user. You can specify standard
  slot types, such as a date or a time, or custom slot types such as the size and
  crust of a pizza.

    * How the intent will be fulfilled. You can provide a Lambda
  function or configure the intent to return the intent information to the client
  application. If you use a Lambda function, when all of the intent information is
  available, Amazon Lex invokes your Lambda function. If you configure your intent
  to return the intent information to the client application.

  You can specify other optional information in the request, such as:

    * A confirmation prompt to ask the user to confirm an intent. For
  example, "Shall I order your pizza?"

    * A conclusion statement to send to the user after the intent has
  been fulfilled. For example, "I placed your pizza order."

    * A follow-up prompt that asks the user for additional activity. For
  example, asking "Do you want to order a drink with your pizza?"

  If you specify an existing intent name to update the intent, Amazon Lex replaces
  the values in the `$LATEST` version of the intent with the values in the
  request. Amazon Lex removes fields that you don't provide in the request. If you
  don't specify the required fields, Amazon Lex throws an exception. When you
  update the `$LATEST` version of an intent, the `status` field of any bot that
  uses the `$LATEST` version of the intent is set to `NOT_BUILT`.

  For more information, see `how-it-works`.

  This operation requires permissions for the `lex:PutIntent` action.
  """
  def put_intent(%Client{} = client, name, input, options \\ []) do
    url_path = "/intents/#{AWS.Util.encode_uri(name)}/versions/$LATEST"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "PutIntent",
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
  Creates a custom slot type or replaces an existing custom slot type.

  To create a custom slot type, specify a name for the slot type and a set of
  enumeration values, which are the values that a slot of this type can assume.
  For more information, see `how-it-works`.

  If you specify the name of an existing slot type, the fields in the request
  replace the existing values in the `$LATEST` version of the slot type. Amazon
  Lex removes the fields that you don't provide in the request. If you don't
  specify required fields, Amazon Lex throws an exception. When you update the
  `$LATEST` version of a slot type, if a bot uses the `$LATEST` version of an
  intent that contains the slot type, the bot's `status` field is set to
  `NOT_BUILT`.

  This operation requires permissions for the `lex:PutSlotType` action.
  """
  def put_slot_type(%Client{} = client, name, input, options \\ []) do
    url_path = "/slottypes/#{AWS.Util.encode_uri(name)}/versions/$LATEST"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "PutSlotType",
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
  Starts a job to import a resource to Amazon Lex.
  """
  def start_import(%Client{} = client, input, options \\ []) do
    url_path = "/imports/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartImport",
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
  Starts migrating a bot from Amazon Lex V1 to Amazon Lex V2.

  Migrate your bot when you want to take advantage of the new features of Amazon
  Lex V2.

  For more information, see [Migrating a bot](https://docs.aws.amazon.com/lex/latest/dg/migrate.html) in the *Amazon Lex
  developer guide*.
  """
  def start_migration(%Client{} = client, input, options \\ []) do
    url_path = "/migrations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartMigration",
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
      "TagResource",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes tags from a bot, bot alias or bot channel.
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
      "UntagResource",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end
end
