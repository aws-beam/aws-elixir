defmodule AWS do
  defmodule ServiceMetadata do
    @moduledoc false

    # It keeps the metadata of a Web Service.
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
