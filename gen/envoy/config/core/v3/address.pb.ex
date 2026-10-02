defmodule Envoy.Config.Core.V3.SocketAddress.Protocol do
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :TCP, 0
  field :UDP, 1
end

defmodule Envoy.Config.Core.V3.SocketAddress do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  oneof :port_specifier, 0

  field :protocol, 1,
    type: Envoy.Config.Core.V3.SocketAddress.Protocol,
    enum: true,
    deprecated: false

  field :address, 2, type: :string, deprecated: false
  field :port_value, 3, type: :uint32, json_name: "portValue", oneof: 0, deprecated: false
  field :named_port, 4, type: :string, json_name: "namedPort", oneof: 0
  field :resolver_name, 5, type: :string, json_name: "resolverName"
  field :ipv4_compat, 6, type: :bool, json_name: "ipv4Compat"
end
