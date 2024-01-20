# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.B2bi do
  @moduledoc """
  This is the *Amazon Web Services B2B Data Interchange API Reference*.

  It provides descriptions, API request parameters, and the XML response for each
  of the B2BI API actions.

  B2BI enables automated exchange of EDI (electronic data interchange) based
  business-critical transactions at cloud scale, with elasticity and pay-as-you-go
  pricing. Businesses use EDI documents to exchange transactional data with
  trading partners, such as suppliers and end customers, using standardized
  formats such as X12.

  Rather than actually running a command, you can use the
  `--generate-cli-skeleton` parameter with any API call to generate and display a
  parameter template. You can then use the generated template to customize and use
  as input on a later command. For details, see [Generate and use a parameter skeleton
  file](https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-skeleton.html#cli-usage-skeleton-generate).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "AWS B2BI",
      api_version: "2022-06-23",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "b2bi",
      global?: false,
      protocol: "json",
      service_id: "b2bi",
      signature_version: "v4",
      signing_name: "b2bi",
      target_prefix: "B2BI"
    }
  end

  @doc """
  Instantiates a capability based on the specified parameters.

  A trading capability contains the information required to transform incoming EDI
  documents into JSON or XML outputs.
  """
  def create_capability(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCapability", input, options)
  end

  @doc """
  Creates a partnership between a customer and a trading partner, based on the
  supplied parameters.

  A partnership represents the connection between you and your trading partner. It
  ties together a profile and one or more trading capabilities.
  """
  def create_partnership(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePartnership", input, options)
  end

  @doc """
  Creates a customer profile.

  You can have up to five customer profiles, each representing a distinct private
  network. A profile is the mechanism used to create the concept of a private
  network.
  """
  def create_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateProfile", input, options)
  end

  @doc """
  Creates a transformer.

  A transformer describes how to process the incoming EDI documents and extract
  the necessary information to the output file.
  """
  def create_transformer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTransformer", input, options)
  end

  @doc """
  Deletes the specified capability.

  A trading capability contains the information required to transform incoming EDI
  documents into JSON or XML outputs.
  """
  def delete_capability(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCapability", input, options)
  end

  @doc """
  Deletes the specified partnership.

  A partnership represents the connection between you and your trading partner. It
  ties together a profile and one or more trading capabilities.
  """
  def delete_partnership(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePartnership", input, options)
  end

  @doc """
  Deletes the specified profile.

  A profile is the mechanism used to create the concept of a private network.
  """
  def delete_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteProfile", input, options)
  end

  @doc """
  Deletes the specified transformer.

  A transformer describes how to process the incoming EDI documents and extract
  the necessary information to the output file.
  """
  def delete_transformer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTransformer", input, options)
  end

  @doc """
  Retrieves the details for the specified capability.

  A trading capability contains the information required to transform incoming EDI
  documents into JSON or XML outputs.
  """
  def get_capability(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCapability", input, options)
  end

  @doc """
  Retrieves the details for a partnership, based on the partner and profile IDs
  specified.

  A partnership represents the connection between you and your trading partner. It
  ties together a profile and one or more trading capabilities.
  """
  def get_partnership(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPartnership", input, options)
  end

  @doc """
  Retrieves the details for the profile specified by the profile ID.

  A profile is the mechanism used to create the concept of a private network.
  """
  def get_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetProfile", input, options)
  end

  @doc """
  Retrieves the details for the transformer specified by the transformer ID.

  A transformer describes how to process the incoming EDI documents and extract
  the necessary information to the output file.
  """
  def get_transformer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTransformer", input, options)
  end

  @doc """
  Returns the details of the transformer run, based on the Transformer job ID.
  """
  def get_transformer_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTransformerJob", input, options)
  end

  @doc """
  Lists the capabilities associated with your Amazon Web Services account for your
  current or specified region.

  A trading capability contains the information required to transform incoming EDI
  documents into JSON or XML outputs.
  """
  def list_capabilities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCapabilities", input, options)
  end

  @doc """
  Lists the partnerships associated with your Amazon Web Services account for your
  current or specified region.

  A partnership represents the connection between you and your trading partner. It
  ties together a profile and one or more trading capabilities.
  """
  def list_partnerships(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPartnerships", input, options)
  end

  @doc """
  Lists the profiles associated with your Amazon Web Services account for your
  current or specified region.

  A profile is the mechanism used to create the concept of a private network.
  """
  def list_profiles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListProfiles", input, options)
  end

  @doc """
  Lists all of the tags associated with the Amazon Resource Name (ARN) that you
  specify.

  The resource can be a capability, partnership, profile, or transformer.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists the available transformers.

  A transformer describes how to process the incoming EDI documents and extract
  the necessary information to the output file.
  """
  def list_transformers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTransformers", input, options)
  end

  @doc """
  Runs a job, using a transformer, to parse input EDI (electronic data
  interchange) file into the output structures used by Amazon Web Services B2BI
  Data Interchange.

  If you only want to transform EDI (electronic data interchange) documents, you
  don't need to create profiles, partnerships or capabilities. Just create and
  configure a transformer, and then run the `StartTransformerJob` API to process
  your files.
  """
  def start_transformer_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartTransformerJob", input, options)
  end

  @doc """
  Attaches a key-value pair to a resource, as identified by its Amazon Resource
  Name (ARN).

  Resources are capability, partnership, profile, transformers and other entities.

  There is no response returned from this call.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Maps the input file according to the provided template file.

  The API call downloads the file contents from the Amazon S3 location, and passes
  the contents in as a string, to the `inputFileContent` parameter.
  """
  def test_mapping(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TestMapping", input, options)
  end

  @doc """
  Parses the input EDI (electronic data interchange) file.

  The input file has a file size limit of 250 KB.
  """
  def test_parsing(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TestParsing", input, options)
  end

  @doc """
  Detaches a key-value pair from the specified resource, as identified by its
  Amazon Resource Name (ARN).

  Resources are capability, partnership, profile, transformers and other entities.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates some of the parameters for a capability, based on the specified
  parameters.

  A trading capability contains the information required to transform incoming EDI
  documents into JSON or XML outputs.
  """
  def update_capability(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCapability", input, options)
  end

  @doc """
  Updates some of the parameters for a partnership between a customer and trading
  partner.

  A partnership represents the connection between you and your trading partner. It
  ties together a profile and one or more trading capabilities.
  """
  def update_partnership(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePartnership", input, options)
  end

  @doc """
  Updates the specified parameters for a profile.

  A profile is the mechanism used to create the concept of a private network.
  """
  def update_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateProfile", input, options)
  end

  @doc """
  Updates the specified parameters for a transformer.

  A transformer describes how to process the incoming EDI documents and extract
  the necessary information to the output file.
  """
  def update_transformer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTransformer", input, options)
  end
end
