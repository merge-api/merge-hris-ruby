# MergeHRISClient::LinkedAccountSelectiveSyncConfigurationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linked_account_conditions** | [**Array&lt;LinkedAccountConditionRequest&gt;**](LinkedAccountConditionRequest.md) | The conditions belonging to a selective sync. |  |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::LinkedAccountSelectiveSyncConfigurationRequest.new(
  linked_account_conditions: null
)
```

