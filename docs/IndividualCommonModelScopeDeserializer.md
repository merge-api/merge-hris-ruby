# MergeHRISClient::IndividualCommonModelScopeDeserializer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_name** | **String** |  |  |
| **model_permissions** | [**Hash&lt;String, ModelPermissionDeserializer&gt;**](ModelPermissionDeserializer.md) |  | [optional] |
| **field_permissions** | [**FieldPermissionDeserializer**](FieldPermissionDeserializer.md) |  | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::IndividualCommonModelScopeDeserializer.new(
  model_name: null,
  model_permissions: null,
  field_permissions: null
)
```

