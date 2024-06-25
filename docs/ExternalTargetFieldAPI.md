# MergeHRISClient::ExternalTargetFieldAPI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional][readonly] |
| **description** | **String** |  | [optional][readonly] |
| **is_mapped** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::ExternalTargetFieldAPI.new(
  name: example_target_field_name,
  description: this is a example description of a target field,
  is_mapped: true
)
```

