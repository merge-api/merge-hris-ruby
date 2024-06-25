# MergeHRISClient::RemoteEndpointInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | **String** |  |  |
| **url_path** | **String** |  |  |
| **field_traversal_path** | [**Array&lt;AnyType&gt;**](AnyType.md) |  |  |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::RemoteEndpointInfo.new(
  method: GET,
  url_path: /example-url-path,
  field_traversal_path: [&quot;example_key_name&quot;]
)
```

