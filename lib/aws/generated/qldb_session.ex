# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.QLDBSession do
  @moduledoc """
  The transactional data APIs for Amazon QLDB

  Instead of interacting directly with this API, we recommend using the QLDB
  driver or the QLDB shell to execute data transactions on a ledger.

     If you are working with an AWS SDK, use the QLDB driver. The driver
  provides a high-level abstraction layer above this *QLDB Session* data plane and
  manages `SendCommand` API calls for you. For information and a list of supported
  programming languages, see [Getting started with the driver](https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html)
  in the *Amazon QLDB Developer Guide*.

     If you are working with the AWS Command Line Interface (AWS CLI),
  use the QLDB shell. The shell is a command line interface that uses the QLDB
  driver to interact with a ledger. For information, see [Accessing Amazon QLDB using the QLDB
  shell](https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "QLDB Session",
      api_version: "2019-07-11",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "session.qldb",
      global?: false,
      protocol: "json",
      service_id: "QLDB Session",
      signature_version: "v4",
      signing_name: "qldb",
      target_prefix: "QLDBSession"
    }
  end

  @doc """
  Sends a command to an Amazon QLDB ledger.

  Instead of interacting directly with this API, we recommend using the QLDB
  driver or the QLDB shell to execute data transactions on a ledger.

     If you are working with an AWS SDK, use the QLDB driver. The driver
  provides a high-level abstraction layer above this *QLDB Session* data plane and
  manages `SendCommand` API calls for you. For information and a list of supported
  programming languages, see [Getting started with the driver](https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html)
  in the *Amazon QLDB Developer Guide*.

     If you are working with the AWS Command Line Interface (AWS CLI),
  use the QLDB shell. The shell is a command line interface that uses the QLDB
  driver to interact with a ledger. For information, see [Accessing Amazon QLDB using the QLDB
  shell](https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html).
  """
  def send_command(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SendCommand", input, options)
  end
end
