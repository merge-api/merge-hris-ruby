# MergeHRISClient::AdvancedMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **display_name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **is_required** | **Boolean** |  | [optional] |
| **is_custom** | **Boolean** |  | [optional] |
| **field_choices** | [**Array&lt;AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::AdvancedMetadata.new(
  id: null,
  display_name: null,
  description: null,
  is_required: null,
  is_custom: null,
  field_choices: null
)
```

