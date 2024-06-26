# MergeHRISClient::PatchedEditFieldMappingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_field_traversal_path** | [**Array&lt;AnyType&gt;**](AnyType.md) | The field traversal path of the remote field listed when you hit the GET /remote-fields endpoint. | [optional] |
| **remote_method** | **String** | The method of the remote endpoint where the remote field is coming from. | [optional] |
| **remote_url_path** | **String** | The path of the remote endpoint where the remote field is coming from. | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::PatchedEditFieldMappingRequest.new(
  remote_field_traversal_path: [&quot;example_remote_field_name&quot;],
  remote_method: GET,
  remote_url_path: /example-url-path
)
```

