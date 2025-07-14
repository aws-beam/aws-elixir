# Description
Due to limitations on the size of HEX packages, aws-elixir can currently not be published with docs.
Hence the workflow would be:
```shell
mix hex.publish
./scripts/trim_docs.ex
mix hex.publish docs
```
