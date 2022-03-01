# MergeHRISClient::IgnoreCommonModelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | [**ReasonEnum**](ReasonEnum.md) |  |  |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::IgnoreCommonModelRequest.new(
  reason: GENERAL_CUSTOMER_REQUEST,
  message: deletion request by user id 51903790-7dfe-4053-8d63-5a10cc4ffd39
)
```

