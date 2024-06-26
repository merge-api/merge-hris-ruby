# MergeHRISClient::LinkedAccountCommonModelScopeDeserializerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **common_models** | [**Array&lt;IndividualCommonModelScopeDeserializerRequest&gt;**](IndividualCommonModelScopeDeserializerRequest.md) | The common models you want to update the scopes for |  |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::LinkedAccountCommonModelScopeDeserializerRequest.new(
  common_models: [{&quot;model_name&quot;:&quot;Employee&quot;,&quot;model_permissions&quot;:{&quot;READ&quot;:{&quot;is_enabled&quot;:true},&quot;WRITE&quot;:{&quot;is_enabled&quot;:false}},&quot;field_permissions&quot;:{&quot;enabled_fields&quot;:[&quot;avatar&quot;,&quot;home_location&quot;],&quot;disabled_fields&quot;:[&quot;work_location&quot;]}},{&quot;model_name&quot;:&quot;Benefit&quot;,&quot;model_permissions&quot;:{&quot;WRITE&quot;:{&quot;is_enabled&quot;:false}}}]
)
```

