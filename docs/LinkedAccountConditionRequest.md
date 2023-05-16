# MergeHRISClient::LinkedAccountConditionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **condition_schema_id** | **String** | The ID indicating which condition schema to use for a specific condition. |  |
| **operator** | **String** | The operator for a specific condition. |  |
| **value** | [**AnyType**](.md) | The value for a specific condition. |  |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::LinkedAccountConditionRequest.new(
  condition_schema_id: null,
  operator: null,
  value: null
)
```

