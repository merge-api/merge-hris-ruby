# MergeHRISClient::FieldMappingApiInstance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **is_integration_wide** | **Boolean** |  | [optional][readonly] |
| **target_field** | [**FieldMappingApiInstanceTargetField**](FieldMappingApiInstanceTargetField.md) |  | [optional] |
| **remote_field** | [**FieldMappingApiInstanceRemoteField**](FieldMappingApiInstanceRemoteField.md) |  | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::FieldMappingApiInstance.new(
  id: 3fa85f64-5717-4562-b3fc-2c963f66afa6,
  is_integration_wide: null,
  target_field: null,
  remote_field: null
)
```

