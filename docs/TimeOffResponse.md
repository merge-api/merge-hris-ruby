# MergeHRISClient::TimeOffResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model** | [**TimeOff**](TimeOff.md) |  |  |
| **warnings** | [**Array&lt;WarningValidationProblem&gt;**](WarningValidationProblem.md) |  |  |
| **errors** | [**Array&lt;ErrorValidationProblem&gt;**](ErrorValidationProblem.md) |  |  |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::TimeOffResponse.new(
  model: null,
  warnings: null,
  errors: null
)
```

