# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LexModelBuilding do
  @moduledoc """
  Amazon Lex Build-Time Actions

  Amazon Lex is an AWS service for building conversational voice and text
  interfaces. Use these actions to create, update, and delete conversational
  bots for new and existing client applications.
  """

  @doc """
  Creates a new version of the bot based on the `$LATEST` version. If the
  `$LATEST` version of this resource hasn't changed since you created the
  last version, Amazon Lex doesn't create a new version. It returns the last
  created version.

  <note> You can update only the `$LATEST` version of the bot. You can't
  update the numbered versions that you create with the `CreateBotVersion`
  operation.

  </note> When you create the first version of a bot, Amazon Lex sets the
  version to 1. Subsequent versions increment by 1. For more information, see
  `versioning-intro`.

  This operation requires permission for the `lex:CreateBotVersion` action.
  """
  def create_bot_version(client, name, input, options \\ []) do
    path_ = "/bots/#{URI.encode(name)}/versions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a new version of an intent based on the `$LATEST` version of the
  intent. If the `$LATEST` version of this intent hasn't changed since you
  last updated it, Amazon Lex doesn't create a new version. It returns the
  last version you created.

  <note> You can update only the `$LATEST` version of the intent. You can't
  update the numbered versions that you create with the `CreateIntentVersion`
  operation.

  </note> When you create a version of an intent, Amazon Lex sets the version
  to 1. Subsequent versions increment by 1. For more information, see
  `versioning-intro`.

  This operation requires permissions to perform the
  `lex:CreateIntentVersion` action.
  """
  def create_intent_version(client, name, input, options \\ []) do
    path_ = "/intents/#{URI.encode(name)}/versions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a new version of a slot type based on the `$LATEST` version of the
  specified slot type. If the `$LATEST` version of this resource has not
  changed since the last version that you created, Amazon Lex doesn't create
  a new version. It returns the last version that you created.

  <note> You can update only the `$LATEST` version of a slot type. You can't
  update the numbered versions that you create with the
  `CreateSlotTypeVersion` operation.

  </note> When you create a version of a slot type, Amazon Lex sets the
  version to 1. Subsequent versions increment by 1. For more information, see
  `versioning-intro`.

  This operation requires permissions for the `lex:CreateSlotTypeVersion`
  action.
  """
  def create_slot_type_version(client, name, input, options \\ []) do
    path_ = "/slottypes/#{URI.encode(name)}/versions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Deletes all versions of the bot, including the `$LATEST` version. To delete
  a specific version of the bot, use the `DeleteBotVersion` operation. The
  `DeleteBot` operation doesn't immediately remove the bot schema. Instead,
  it is marked for deletion and removed later.

  Amazon Lex stores utterances indefinitely for improving the ability of your
  bot to respond to user inputs. These utterances are not removed when the
  bot is deleted. To remove the utterances, use the `DeleteUtterances`
  operation.

  If a bot has an alias, you can't delete it. Instead, the `DeleteBot`
  operation returns a `ResourceInUseException` exception that includes a
  reference to the alias that refers to the bot. To remove the reference to
  the bot, delete the alias. If you get the same exception again, delete the
  referring alias until the `DeleteBot` operation is successful.

  This operation requires permissions for the `lex:DeleteBot` action.
  """
  def delete_bot(client, name, input, options \\ []) do
    path_ = "/bots/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes an alias for the specified bot.

  You can't delete an alias that is used in the association between a bot and
  a messaging channel. If an alias is used in a channel association, the
  `DeleteBot` operation returns a `ResourceInUseException` exception that
  includes a reference to the channel association that refers to the bot. You
  can remove the reference to the alias by deleting the channel association.
  If you get the same exception again, delete the referring association until
  the `DeleteBotAlias` operation is successful.
  """
  def delete_bot_alias(client, bot_name, name, input, options \\ []) do
    path_ = "/bots/#{URI.encode(bot_name)}/aliases/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the association between an Amazon Lex bot and a messaging platform.

  This operation requires permission for the
  `lex:DeleteBotChannelAssociation` action.
  """
  def delete_bot_channel_association(client, bot_alias, bot_name, name, input, options \\ []) do
    path_ = "/bots/#{URI.encode(bot_name)}/aliases/#{URI.encode(bot_alias)}/channels/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes a specific version of a bot. To delete all versions of a bot, use
  the `DeleteBot` operation.

  This operation requires permissions for the `lex:DeleteBotVersion` action.
  """
  def delete_bot_version(client, name, version, input, options \\ []) do
    path_ = "/bots/#{URI.encode(name)}/versions/#{URI.encode(version)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes all versions of the intent, including the `$LATEST` version. To
  delete a specific version of the intent, use the `DeleteIntentVersion`
  operation.

  You can delete a version of an intent only if it is not referenced. To
  delete an intent that is referred to in one or more bots (see
  `how-it-works`), you must remove those references first.

  <note> If you get the `ResourceInUseException` exception, it provides an
  example reference that shows where the intent is referenced. To remove the
  reference to the intent, either update the bot or delete it. If you get the
  same exception when you attempt to delete the intent again, repeat until
  the intent has no references and the call to `DeleteIntent` is successful.

  </note> This operation requires permission for the `lex:DeleteIntent`
  action.
  """
  def delete_intent(client, name, input, options \\ []) do
    path_ = "/intents/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes a specific version of an intent. To delete all versions of a
  intent, use the `DeleteIntent` operation.

  This operation requires permissions for the `lex:DeleteIntentVersion`
  action.
  """
  def delete_intent_version(client, name, version, input, options \\ []) do
    path_ = "/intents/#{URI.encode(name)}/versions/#{URI.encode(version)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes all versions of the slot type, including the `$LATEST` version. To
  delete a specific version of the slot type, use the `DeleteSlotTypeVersion`
  operation.

  You can delete a version of a slot type only if it is not referenced. To
  delete a slot type that is referred to in one or more intents, you must
  remove those references first.

  <note> If you get the `ResourceInUseException` exception, the exception
  provides an example reference that shows the intent where the slot type is
  referenced. To remove the reference to the slot type, either update the
  intent or delete it. If you get the same exception when you attempt to
  delete the slot type again, repeat until the slot type has no references
  and the `DeleteSlotType` call is successful.

  </note> This operation requires permission for the `lex:DeleteSlotType`
  action.
  """
  def delete_slot_type(client, name, input, options \\ []) do
    path_ = "/slottypes/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes a specific version of a slot type. To delete all versions of a slot
  type, use the `DeleteSlotType` operation.

  This operation requires permissions for the `lex:DeleteSlotTypeVersion`
  action.
  """
  def delete_slot_type_version(client, name, version, input, options \\ []) do
    path_ = "/slottypes/#{URI.encode(name)}/version/#{URI.encode(version)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes stored utterances.

  Amazon Lex stores the utterances that users send to your bot. Utterances
  are stored for 15 days for use with the `GetUtterancesView` operation, and
  then stored indefinitely for use in improving the ability of your bot to
  respond to user input.

  Use the `DeleteUtterances` operation to manually delete stored utterances
  for a specific user. When you use the `DeleteUtterances` operation,
  utterances stored for improving your bot's ability to respond to user input
  are deleted immediately. Utterances stored for use with the
  `GetUtterancesView` operation are deleted after 15 days.

  This operation requires permissions for the `lex:DeleteUtterances` action.
  """
  def delete_utterances(client, bot_name, user_id, input, options \\ []) do
    path_ = "/bots/#{URI.encode(bot_name)}/utterances/#{URI.encode(user_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Returns metadata information for a specific bot. You must provide the bot
  name and the bot version or alias.

  This operation requires permissions for the `lex:GetBot` action.
  """
  def get_bot(client, name, version_or_alias, options \\ []) do
    path_ = "/bots/#{URI.encode(name)}/versions/#{URI.encode(version_or_alias)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns information about an Amazon Lex bot alias. For more information
  about aliases, see `versioning-aliases`.

  This operation requires permissions for the `lex:GetBotAlias` action.
  """
  def get_bot_alias(client, bot_name, name, options \\ []) do
    path_ = "/bots/#{URI.encode(bot_name)}/aliases/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of aliases for a specified Amazon Lex bot.

  This operation requires permissions for the `lex:GetBotAliases` action.
  """
  def get_bot_aliases(client, bot_name, max_results \\ nil, name_contains \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/bots/#{URI.encode(bot_name)}/aliases/"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(name_contains) do
      [{"nameContains", name_contains} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns information about the association between an Amazon Lex bot and a
  messaging platform.

  This operation requires permissions for the `lex:GetBotChannelAssociation`
  action.
  """
  def get_bot_channel_association(client, bot_alias, bot_name, name, options \\ []) do
    path_ = "/bots/#{URI.encode(bot_name)}/aliases/#{URI.encode(bot_alias)}/channels/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all of the channels associated with the specified bot.

  The `GetBotChannelAssociations` operation requires permissions for the
  `lex:GetBotChannelAssociations` action.
  """
  def get_bot_channel_associations(client, bot_alias, bot_name, max_results \\ nil, name_contains \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/bots/#{URI.encode(bot_name)}/aliases/#{URI.encode(bot_alias)}/channels/"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(name_contains) do
      [{"nameContains", name_contains} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets information about all of the versions of a bot.

  The `GetBotVersions` operation returns a `BotMetadata` object for each
  version of a bot. For example, if a bot has three numbered versions, the
  `GetBotVersions` operation returns four `BotMetadata` objects in the
  response, one for each numbered version and one for the `$LATEST` version.

  The `GetBotVersions` operation always returns at least one version, the
  `$LATEST` version.

  This operation requires permissions for the `lex:GetBotVersions` action.
  """
  def get_bot_versions(client, name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/bots/#{URI.encode(name)}/versions/"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns bot information as follows:

  <ul> <li> If you provide the `nameContains` field, the response includes
  information for the `$LATEST` version of all bots whose name contains the
  specified string.

  </li> <li> If you don't specify the `nameContains` field, the operation
  returns information about the `$LATEST` version of all of your bots.

  </li> </ul> This operation requires permission for the `lex:GetBots`
  action.
  """
  def get_bots(client, max_results \\ nil, name_contains \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/bots/"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(name_contains) do
      [{"nameContains", name_contains} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns information about a built-in intent.

  This operation requires permission for the `lex:GetBuiltinIntent` action.
  """
  def get_builtin_intent(client, signature, options \\ []) do
    path_ = "/builtins/intents/#{URI.encode(signature)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets a list of built-in intents that meet the specified criteria.

  This operation requires permission for the `lex:GetBuiltinIntents` action.
  """
  def get_builtin_intents(client, locale \\ nil, max_results \\ nil, next_token \\ nil, signature_contains \\ nil, options \\ []) do
    path_ = "/builtins/intents/"
    headers = []
    query_ = []
    query_ = if !is_nil(signature_contains) do
      [{"signatureContains", signature_contains} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(locale) do
      [{"locale", locale} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets a list of built-in slot types that meet the specified criteria.

  For a list of built-in slot types, see [Slot Type
  Reference](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference)
  in the *Alexa Skills Kit*.

  This operation requires permission for the `lex:GetBuiltInSlotTypes`
  action.
  """
  def get_builtin_slot_types(client, locale \\ nil, max_results \\ nil, next_token \\ nil, signature_contains \\ nil, options \\ []) do
    path_ = "/builtins/slottypes/"
    headers = []
    query_ = []
    query_ = if !is_nil(signature_contains) do
      [{"signatureContains", signature_contains} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(locale) do
      [{"locale", locale} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Exports the contents of a Amazon Lex resource in a specified format.
  """
  def get_export(client, export_type, name, resource_type, version, options \\ []) do
    path_ = "/exports/"
    headers = []
    query_ = []
    query_ = if !is_nil(version) do
      [{"version", version} | query_]
    else
      query_
    end
    query_ = if !is_nil(resource_type) do
      [{"resourceType", resource_type} | query_]
    else
      query_
    end
    query_ = if !is_nil(name) do
      [{"name", name} | query_]
    else
      query_
    end
    query_ = if !is_nil(export_type) do
      [{"exportType", export_type} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets information about an import job started with the `StartImport`
  operation.
  """
  def get_import(client, import_id, options \\ []) do
    path_ = "/imports/#{URI.encode(import_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns information about an intent. In addition to the intent name, you
  must specify the intent version.

  This operation requires permissions to perform the `lex:GetIntent` action.
  """
  def get_intent(client, name, version, options \\ []) do
    path_ = "/intents/#{URI.encode(name)}/versions/#{URI.encode(version)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets information about all of the versions of an intent.

  The `GetIntentVersions` operation returns an `IntentMetadata` object for
  each version of an intent. For example, if an intent has three numbered
  versions, the `GetIntentVersions` operation returns four `IntentMetadata`
  objects in the response, one for each numbered version and one for the
  `$LATEST` version.

  The `GetIntentVersions` operation always returns at least one version, the
  `$LATEST` version.

  This operation requires permissions for the `lex:GetIntentVersions` action.
  """
  def get_intent_versions(client, name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/intents/#{URI.encode(name)}/versions/"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns intent information as follows:

  <ul> <li> If you specify the `nameContains` field, returns the `$LATEST`
  version of all intents that contain the specified string.

  </li> <li> If you don't specify the `nameContains` field, returns
  information about the `$LATEST` version of all intents.

  </li> </ul> The operation requires permission for the `lex:GetIntents`
  action.
  """
  def get_intents(client, max_results \\ nil, name_contains \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/intents/"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(name_contains) do
      [{"nameContains", name_contains} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns information about a specific version of a slot type. In addition to
  specifying the slot type name, you must specify the slot type version.

  This operation requires permissions for the `lex:GetSlotType` action.
  """
  def get_slot_type(client, name, version, options \\ []) do
    path_ = "/slottypes/#{URI.encode(name)}/versions/#{URI.encode(version)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets information about all versions of a slot type.

  The `GetSlotTypeVersions` operation returns a `SlotTypeMetadata` object for
  each version of a slot type. For example, if a slot type has three numbered
  versions, the `GetSlotTypeVersions` operation returns four
  `SlotTypeMetadata` objects in the response, one for each numbered version
  and one for the `$LATEST` version.

  The `GetSlotTypeVersions` operation always returns at least one version,
  the `$LATEST` version.

  This operation requires permissions for the `lex:GetSlotTypeVersions`
  action.
  """
  def get_slot_type_versions(client, name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/slottypes/#{URI.encode(name)}/versions/"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns slot type information as follows:

  <ul> <li> If you specify the `nameContains` field, returns the `$LATEST`
  version of all slot types that contain the specified string.

  </li> <li> If you don't specify the `nameContains` field, returns
  information about the `$LATEST` version of all slot types.

  </li> </ul> The operation requires permission for the `lex:GetSlotTypes`
  action.
  """
  def get_slot_types(client, max_results \\ nil, name_contains \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/slottypes/"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(name_contains) do
      [{"nameContains", name_contains} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Use the `GetUtterancesView` operation to get information about the
  utterances that your users have made to your bot. You can use this list to
  tune the utterances that your bot responds to.

  For example, say that you have created a bot to order flowers. After your
  users have used your bot for a while, use the `GetUtterancesView` operation
  to see the requests that they have made and whether they have been
  successful. You might find that the utterance "I want flowers" is not being
  recognized. You could add this utterance to the `OrderFlowers` intent so
  that your bot recognizes that utterance.

  After you publish a new version of a bot, you can get information about the
  old version and the new so that you can compare the performance across the
  two versions.

  Utterance statistics are generated once a day. Data is available for the
  last 15 days. You can request information for up to 5 versions of your bot
  in each request. Amazon Lex returns the most frequent utterances received
  by the bot in the last 15 days. The response contains information about a
  maximum of 100 utterances for each version.

  If you set `childDirected` field to true when you created your bot, or if
  you opted out of participating in improving Amazon Lex, utterances are not
  available.

  This operation requires permissions for the `lex:GetUtterancesView` action.
  """
  def get_utterances_view(client, bot_name, bot_versions, status_type, options \\ []) do
    path_ = "/bots/#{URI.encode(bot_name)}/utterances?view=aggregation"
    headers = []
    query_ = []
    query_ = if !is_nil(status_type) do
      [{"status_type", status_type} | query_]
    else
      query_
    end
    query_ = if !is_nil(bot_versions) do
      [{"bot_versions", bot_versions} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets a list of tags associated with the specified resource. Only bots, bot
  aliases, and bot channels can have tags associated with them.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Creates an Amazon Lex conversational bot or replaces an existing bot. When
  you create or update a bot you are only required to specify a name, a
  locale, and whether the bot is directed toward children under age 13. You
  can use this to add intents later, or to remove intents from an existing
  bot. When you create a bot with the minimum information, the bot is created
  or updated but Amazon Lex returns the <code/> response `FAILED`. You can
  build the bot after you add one or more intents. For more information about
  Amazon Lex bots, see `how-it-works`.

  If you specify the name of an existing bot, the fields in the request
  replace the existing values in the `$LATEST` version of the bot. Amazon Lex
  removes any fields that you don't provide values for in the request, except
  for the `idleTTLInSeconds` and `privacySettings` fields, which are set to
  their default values. If you don't specify values for required fields,
  Amazon Lex throws an exception.

  This operation requires permissions for the `lex:PutBot` action. For more
  information, see `security-iam`.
  """
  def put_bot(client, name, input, options \\ []) do
    path_ = "/bots/#{URI.encode(name)}/versions/$LATEST"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates an alias for the specified version of the bot or replaces an alias
  for the specified bot. To change the version of the bot that the alias
  points to, replace the alias. For more information about aliases, see
  `versioning-aliases`.

  This operation requires permissions for the `lex:PutBotAlias` action.
  """
  def put_bot_alias(client, bot_name, name, input, options \\ []) do
    path_ = "/bots/#{URI.encode(bot_name)}/aliases/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates an intent or replaces an existing intent.

  To define the interaction between the user and your bot, you use one or
  more intents. For a pizza ordering bot, for example, you would create an
  `OrderPizza` intent.

  To create an intent or replace an existing intent, you must provide the
  following:

  <ul> <li> Intent name. For example, `OrderPizza`.

  </li> <li> Sample utterances. For example, "Can I order a pizza, please."
  and "I want to order a pizza."

  </li> <li> Information to be gathered. You specify slot types for the
  information that your bot will request from the user. You can specify
  standard slot types, such as a date or a time, or custom slot types such as
  the size and crust of a pizza.

  </li> <li> How the intent will be fulfilled. You can provide a Lambda
  function or configure the intent to return the intent information to the
  client application. If you use a Lambda function, when all of the intent
  information is available, Amazon Lex invokes your Lambda function. If you
  configure your intent to return the intent information to the client
  application.

  </li> </ul> You can specify other optional information in the request, such
  as:

  <ul> <li> A confirmation prompt to ask the user to confirm an intent. For
  example, "Shall I order your pizza?"

  </li> <li> A conclusion statement to send to the user after the intent has
  been fulfilled. For example, "I placed your pizza order."

  </li> <li> A follow-up prompt that asks the user for additional activity.
  For example, asking "Do you want to order a drink with your pizza?"

  </li> </ul> If you specify an existing intent name to update the intent,
  Amazon Lex replaces the values in the `$LATEST` version of the intent with
  the values in the request. Amazon Lex removes fields that you don't provide
  in the request. If you don't specify the required fields, Amazon Lex throws
  an exception. When you update the `$LATEST` version of an intent, the
  `status` field of any bot that uses the `$LATEST` version of the intent is
  set to `NOT_BUILT`.

  For more information, see `how-it-works`.

  This operation requires permissions for the `lex:PutIntent` action.
  """
  def put_intent(client, name, input, options \\ []) do
    path_ = "/intents/#{URI.encode(name)}/versions/$LATEST"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a custom slot type or replaces an existing custom slot type.

  To create a custom slot type, specify a name for the slot type and a set of
  enumeration values, which are the values that a slot of this type can
  assume. For more information, see `how-it-works`.

  If you specify the name of an existing slot type, the fields in the request
  replace the existing values in the `$LATEST` version of the slot type.
  Amazon Lex removes the fields that you don't provide in the request. If you
  don't specify required fields, Amazon Lex throws an exception. When you
  update the `$LATEST` version of a slot type, if a bot uses the `$LATEST`
  version of an intent that contains the slot type, the bot's `status` field
  is set to `NOT_BUILT`.

  This operation requires permissions for the `lex:PutSlotType` action.
  """
  def put_slot_type(client, name, input, options \\ []) do
    path_ = "/slottypes/#{URI.encode(name)}/versions/$LATEST"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Starts a job to import a resource to Amazon Lex.
  """
  def start_import(client, input, options \\ []) do
    path_ = "/imports/"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Adds the specified tags to the specified resource. If a tag key already
  exists, the existing value is replaced with the new value.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Removes tags from a bot, bot alias or bot channel.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"tagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "lex"}
    host = build_host("models.lex", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    {client, fun} = Application.get_env(:aws_elixir, :http_client, {Aws.Internal.HttpClient, :request})
    apply(client, fun, [method, url, payload, headers, options, success_status_code])
  end



  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: encode!(input), else: ""
  end

  defp encode!(input) do
    {encoder, fun} = Application.get_env(:aws_elixir, :json_encoder, {Poison, :encode!})
    apply(encoder, fun, [input])
  end
end
