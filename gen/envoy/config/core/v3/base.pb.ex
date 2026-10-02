defmodule Envoy.Config.Core.V3.HeaderValueOption.HeaderAppendAction do
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :APPEND_IF_EXISTS_OR_ADD, 0
  field :ADD_IF_ABSENT, 1
  field :OVERWRITE_IF_EXISTS_OR_ADD, 2
  field :OVERWRITE_IF_EXISTS, 3
end


defmodule Envoy.Config.Core.V3.HeaderValue do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string, deprecated: false
  field :value, 2, type: :string, deprecated: false
  field :raw_value, 3, type: :bytes, json_name: "rawValue", deprecated: false
end


defmodule Envoy.Config.Core.V3.HeaderValueOption do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :header, 1, type: Envoy.Config.Core.V3.HeaderValue, deprecated: false
  field :append, 2, type: Google.Protobuf.BoolValue, deprecated: true

  field :append_action, 3,
    type: Envoy.Config.Core.V3.HeaderValueOption.HeaderAppendAction,
    json_name: "appendAction",
    enum: true,
    deprecated: false

  field :keep_empty_value, 4, type: :bool, json_name: "keepEmptyValue"
end

