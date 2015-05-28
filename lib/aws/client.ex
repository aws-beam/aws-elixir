defmodule AWS.Client do
  defstruct access_key_id: nil,
            secret_access_key: nil,
            session_token: nil,
            region: nil,
            endpoint: nil,
            service: nil
end
