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
  """

  defmodule ServiceMetadata do
    @moduledoc """
    It is a struct containing AWS service metadata.

    Each service module has a function that returns its metadata.
    """

    defstruct abbreviation: nil,
              api_version: nil,
              content_type: nil,
              credential_scope: nil,
              endpoint_prefix: nil,
              global?: nil,
              protocol: nil,
              service_id: nil,
              signature_version: nil,
              signing_name: nil,
              target_prefix: nil
  end
end
