
defmodule Example.Route53 do
  @xmlns "https://route53.amazonaws.com/doc/2013-04-01/"
  def update_rr(client, zoneid, changes) do
    req_payload = %{
      {"ChangeResourceRecordSetsRequest", %{xmlns: @xmlns}} => %{
        "ChangeBatch" => %{
          "Comment" => "add ip",
          "Changes" => [
            %{
              "Change" =>
                Enum.map(changes, fn change ->
                  %{
                    "Action" => change.action,
                    "ResourceRecordSet" => %{
                      "Name" => change.name,
                      "Type" => change.type,
                      "TTL" => change.ttl,
                      "ResourceRecords" => %{
                        "ResourceRecord" =>
                          Enum.map(change.records, fn value ->
                            %{"Value" => value}
                          end)
                      }
                    }
                  }
                end)
            }
          ]
        }
      }
    }

    AWS.Route53.change_resource_record_sets(client, zoneid, req_payload)
  end

  def go() do
    client = AWS.Client.create("us-east-1")
    zoneid = "ZZZZZZ"
    fqdn = "sub.example.com"
    new_iplist = ["127.0.0.1", "127.0.0.2"]

    changes = [
      %{action: "UPSERT", name: fqdn, type: "A", ttl: 300, records: new_iplist}
    ]

    update_rr(client, zoneid, changes)
  end
end
