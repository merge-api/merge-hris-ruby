# MergeHRISClient::AvailableActions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available_model_operations** | [**Array&lt;ModelOperation&gt;**](ModelOperation.md) |  | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::AvailableActions.new(
  available_model_operations: [{&quot;model_name&quot;:&quot;Candidate&quot;,&quot;available_operations&quot;:[&quot;FETCH&quot;,&quot;CREATE&quot;]}]
)
```
