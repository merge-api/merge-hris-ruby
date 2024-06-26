# MergeHRISClient::RemoteFieldAPI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  |  |
| **remote_key_name** | **String** |  |  |
| **remote_endpoint_info** | [**RemoteEndpointInfo**](RemoteEndpointInfo.md) |  |  |
| **example_values** | [**Array&lt;AnyType&gt;**](AnyType.md) |  | [optional] |
| **advanced_metadata** | [**AdvancedMetadata**](AdvancedMetadata.md) |  |  |
| **coverage** | [**OneOfintegerdouble**](OneOfintegerdouble.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::RemoteFieldAPI.new(
  schema: {&quot;type&quot;:&quot;string&quot;},
  remote_key_name: example_remote_key_name,
  remote_endpoint_info: null,
  example_values: [&quot;example&quot;],
  advanced_metadata: null,
  coverage: 0.33
)
```

