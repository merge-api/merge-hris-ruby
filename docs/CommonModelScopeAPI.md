# MergeHRISClient::CommonModelScopeAPI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **common_models** | [**Array&lt;IndividualCommonModelScopeDeserializer&gt;**](IndividualCommonModelScopeDeserializer.md) | The common models you want to update the scopes for |  |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::CommonModelScopeAPI.new(
  common_models: [{&quot;model_name&quot;:&quot;Employee&quot;,&quot;model_permissions&quot;:{&quot;READ&quot;:{&quot;is_enabled&quot;:true},&quot;WRITE&quot;:{&quot;is_enabled&quot;:false}},&quot;field_permissions&quot;:{&quot;enabled_fields&quot;:[&quot;avatar&quot;,&quot;created_at&quot;,&quot;custom_fields&quot;,&quot;date_of_birth&quot;,&quot;first_name&quot;,&quot;gender&quot;,&quot;remote_created_at&quot;,&quot;remote_data&quot;],&quot;disabled_fields&quot;:[&quot;company&quot;,&quot;employments&quot;,&quot;groups&quot;,&quot;home_location&quot;,&quot;manager&quot;,&quot;work_location&quot;]}}]
)
```

