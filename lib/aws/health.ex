# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Health do
  @moduledoc """
  AWS Health

  The AWS Health API provides programmatic access to the AWS Health
  information that is presented in the [AWS Personal Health
  Dashboard](https://phd.aws.amazon.com/phd/home#/). You can get information
  about events that affect your AWS resources:

  <ul> <li> `DescribeEvents`: Summary information about events.

  </li> <li> `DescribeEventDetails`: Detailed information about one or more
  events.

  </li> <li> `DescribeAffectedEntities`: Information about AWS resources that
  are affected by one or more events.

  </li> </ul> In addition, these operations provide information about event
  types and summary counts of events or affected entities:

  <ul> <li> `DescribeEventTypes`: Information about the kinds of events that
  AWS Health tracks.

  </li> <li> `DescribeEventAggregates`: A count of the number of events that
  meet specified criteria.

  </li> <li> `DescribeEntityAggregates`: A count of the number of affected
  entities that meet specified criteria.

  </li> </ul> The Health API requires a Business or Enterprise support plan
  from [AWS Support](http://aws.amazon.com/premiumsupport/). Calling the
  Health API from an account that does not have a Business or Enterprise
  support plan causes a `SubscriptionRequiredException`.

  For authentication of requests, AWS Health uses the [Signature Version 4
  Signing
  Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  See the [AWS Health User
  Guide](https://docs.aws.amazon.com/health/latest/ug/what-is-aws-health.html)
  for information about how to use the API.

  **Service Endpoint**

  The HTTP endpoint for the AWS Health API is:

  <ul> <li> https://health.us-east-1.amazonaws.com

  </li> </ul>
  """

  @doc """
  Returns a list of entities that have been affected by the specified events,
  based on the specified filter criteria. Entities can refer to individual
  customer resources, groups of customer resources, or any other construct,
  depending on the AWS service. Events that have impact beyond that of the
  affected entities, or where the extent of impact is unknown, include at
  least one entity indicating this.

  At least one event ARN is required. Results are sorted by the
  `lastUpdatedTime` of the entity, starting with the most recent.
  """
  def describe_affected_entities(client, input, options \\ []) do
    request(client, "DescribeAffectedEntities", input, options)
  end

  @doc """
  Returns the number of entities that are affected by each of the specified
  events. If no events are specified, the counts of all affected entities are
  returned.
  """
  def describe_entity_aggregates(client, input, options \\ []) do
    request(client, "DescribeEntityAggregates", input, options)
  end

  @doc """
  Returns the number of events of each event type (issue, scheduled change,
  and account notification). If no filter is specified, the counts of all
  events in each category are returned.
  """
  def describe_event_aggregates(client, input, options \\ []) do
    request(client, "DescribeEventAggregates", input, options)
  end

  @doc """
  Returns detailed information about one or more specified events.
  Information includes standard event data (region, service, etc., as
  returned by `DescribeEvents`), a detailed event description, and possible
  additional metadata that depends upon the nature of the event. Affected
  entities are not included; to retrieve those, use the
  `DescribeAffectedEntities` operation.

  If a specified event cannot be retrieved, an error message is returned for
  that event.
  """
  def describe_event_details(client, input, options \\ []) do
    request(client, "DescribeEventDetails", input, options)
  end

  @doc """
  Returns the event types that meet the specified filter criteria. If no
  filter criteria are specified, all event types are returned, in no
  particular order.
  """
  def describe_event_types(client, input, options \\ []) do
    request(client, "DescribeEventTypes", input, options)
  end

  @doc """
  Returns information about events that meet the specified filter criteria.
  Events are returned in a summary form and do not include the detailed
  description, any additional metadata that depends on the event type, or any
  affected resources. To retrieve that information, use the
  `DescribeEventDetails` and `DescribeAffectedEntities` operations.

  If no filter criteria are specified, all events are returned. Results are
  sorted by `lastModifiedTime`, starting with the most recent.
  """
  def describe_events(client, input, options \\ []) do
    request(client, "DescribeEvents", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "health"}
    host = get_host("health", client)
    url = get_url(host, client)

    headers = if client.session_token do
      [{"X-Amz-Security-Token", client.session_token}]
    else
      []
    end

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSHealth_20160804.#{action}"} | headers]

    payload = Poison.Encoder.encode(input, %{})
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}
    
      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
