# AWS SDK for Elixir

[![Build Status](https://travis-ci.org/jkakar/aws-elixir.svg?branch=master)](https://travis-ci.org/jkakar/aws-elixir)

## Features

* Generated using the same JSON descriptions of AWS services used to build
  the [AWS SDK for Go](https://github.com/awslabs/aws-sdk-go/tree/master/apis).
* Supports AWS services that use `json` and `rest-json` protocols.

## Example

Listing Amazon Kinesis streams

```elixir
iex> client = %AWS.Client{access_key_id: "<access-key-id>",
                     secret_access_key: "<secret-access-key>",
                     region: "us-east-1",
                     endpoint: "amazonaws.com"}

iex> {:ok, result, resp} = AWS.Kinesis.list_streams(client, %{})

iex> IO.inspect result
%{"HasMoreStreams" => false, "StreamNames" => []}
```

## Usage

* Add it as a Mix dependency in the project.

  ```elixir
  def deps do
    [{:aws, "~> 0.0.6"}]
  end
  ```

* Run `mix deps.get` to install.


## Development

Code is generated using the [aws-codegen](https://github.com/jkakar/aws-codegen) library, from the JSON descriptions of AWS services provided by Amazon.

## Documentation

* Run `MIX_ENV=docs mix docs`
* Open `docs/index.html`

## Tests

```
mix test
```

## License

&copy; 2015 Jamshed Kakar <jkakar@kakar.ca>. See `LICENSE` file for details.
