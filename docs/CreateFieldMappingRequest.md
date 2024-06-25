# MergeHRISClient::CreateFieldMappingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_field_name** | **String** | The name of the target field you want this remote field to map to. |  |
| **target_field_description** | **String** | The description of the target field you want this remote field to map to. |  |
| **remote_field_traversal_path** | [**Array&lt;AnyType&gt;**](AnyType.md) | The field traversal path of the remote field listed when you hit the GET /remote-fields endpoint. |  |
| **remote_method** | **String** | The method of the remote endpoint where the remote field is coming from. |  |
| **remote_url_path** | **String** | The path of the remote endpoint where the remote field is coming from. |  |
| **common_model_name** | **String** | The name of the Common Model that the remote field corresponds to in a given category. |  |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::CreateFieldMappingRequest.new(
  target_field_name: example_target_field_name,
  target_field_description: this is a example description of the target field,
  remote_field_traversal_path: [&quot;example_remote_field&quot;],
  remote_method: GET,
  remote_url_path: /example-url-path,
  common_model_name: ExampleCommonModel
)
```

