# MergeHRISClient::FieldMappingInstanceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model** | [**FieldMappingApiInstance**](FieldMappingApiInstance.md) |  |  |
| **warnings** | [**Array&lt;WarningValidationProblem&gt;**](WarningValidationProblem.md) |  |  |
| **errors** | [**Array&lt;ErrorValidationProblem&gt;**](ErrorValidationProblem.md) |  |  |
| **logs** | [**Array&lt;DebugModeLog&gt;**](DebugModeLog.md) |  | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::FieldMappingInstanceResponse.new(
  model: null,
  warnings: null,
  errors: null,
  logs: null
)
```

