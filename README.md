# AWS clients for Elixir

[![Build Status](https://travis-ci.org/jkakar/aws-elixir.svg?branch=master)](https://travis-ci.org/jkakar/aws-elixir)

Here is an example:

```elixir
client = %AWS.Client{access_key_id: "<access-key-id>",
                     secret_access_key: "<secret-access-key>",
                     region: "us-east-1",
                     endpoint: "amazonaws.com"}
{:ok, output, response} = AWS.Kinesis.list_streams(client, %{})
IO.puts inspect(output)
```

This outputs:

```elixir
%{"HasMoreStreams" => false, "StreamNames" => []}
```

## Features

* Code is generated using the JSON descriptions of AWS services used to build
  the [AWS SDK for the Go programming language](https://github.com/awslabs/aws-sdk-go/tree/master/apis) library by [aws-codegen](https://github.com/jkakar/aws-codegen).
* Code is readable with fairly complete documentation.
* Support for AWS services that use the `json` and `rest-json` protocols.
* Request data is encoded from maps to JSON and response data is decoded from
  JSON to maps.  The data you work with is almost exactly what's expected by
  remote APIs and what's returned by them.
* The `HTTPoison` response received for each request is returned alongside the
  response data.

## Integrate with Mix

To use AWS clients for Elixir in your Mix projects add it as a dependency:

```elixir
def deps do
  [{:aws, "~> 0.0.1"}]
end
```

After adding `aws` as a dependency, run `mix deps.get` to install it.

## License

Copyright 2015 Jamshed Kakar <jkakar@kakar.ca>. See `LICENSE` file for details.
