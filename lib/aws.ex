defmodule AWS do
  @moduledoc """
  AWS provides an API to talk with Amazon Web Services.

  Each module in this project corresponds with an AWS service,
  and they can be used by calling the functions of those
  modules. For example, "AWS DynamoDB" operations can be found
  in `AWS.DynamoDB` module.

  First we need to setup a `AWS.Client` structure with credentials
  and details about the region we want to use.

      client = %AWS.Client{
        access_key_id: "<access-key-id>",
        secret_access_key: "<secret-access-key>",
        region: "us-east-1"
      }

  Alternatively you can create a `client` with `AWS.Client.create/3`.
  Check more options for configuration at `AWS.Client` docs.

  So we pass this client struct to our service modules:

      {:ok, result, _http_response} = AWS.Kinesis.list_streams(client, %{})

  The second argument in this case is the `input` which is a map with
  the parameters for [this operation](https://docs.aws.amazon.com/kinesis/latest/APIReference/API_ListStreams.html).

  Another example is the upload of a given file to `AWS.S3` using `AWS.S3.put_object/5`:

      client = AWS.Client.create("your-access-key-id", "your-secret-access-key", "us-east-1")
      file =  File.read!("./tmp/your-file.txt")
      md5 = :crypto.hash(:md5, file) |> Base.encode64()

      AWS.S3.put_object(client, "your-bucket-name", "foo/your-file-on-s3.txt", %{"Body" => file, "ContentMD5" => md5})

  You can find more details about those parameters in the [AWS API reference](https://docs.aws.amazon.com/index.html).

  ## Custom HTTP client and JSON/XML parsers

  You can customize your HTTP client or the module responsible for parsing
  and encoding JSON or XML by using options for the `AWS.Client`.

  By default, AWS Elixir uses hackney for the HTTP client, Jason for JSON,
  and a custom module for XML that is written on top of xmlerl.
  For more details, check `AWS.Client` documentation.

  ## Telemetry

  The following events are published:

    * `[:aws, :request, :start]` - emitted at the beginning of the request to AWS.
      * Measurement: `%{system_time: System.system_time()}`
      * Metadata: `%{client: AWS.Client.t(), service: AWS.ServiceMetadata.t(), action: String.t(), input: map()}`

    * `[:aws, :request, :stop]` - emitted at the end of the request to AWS.
      * Measurement: `%{duration: native_time}`
      * Metadata: `%{client: AWS.Client.t(), service: AWS.ServiceMetadata.t(), action: String.t(), input: map()}`

    * `[:aws, :request, :exception]` - emitted when an exception has been raised.
      * Measurement: `%{system_time: System.system_time()}`
      * Metadata: `%{client: AWS.Client.t(), service: AWS.ServiceMetadata.t(), action: String.t(), input: map(),
        kind: Exception.kind(), reason: term(), stacktrace: Exception.stacktrace()}`
  """
end
