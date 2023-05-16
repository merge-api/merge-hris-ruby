# MergeHRISClient::CommonModelScopes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_level_scopes** | [**CommonModelScopeData**](CommonModelScopeData.md) |  | [optional] |
| **scope_overrides** | [**Array&lt;CommonModelScopeData&gt;**](CommonModelScopeData.md) |  |  |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::CommonModelScopes.new(
  organization_level_scopes: null,
  scope_overrides: [{&quot;linked_account_id&quot;:&quot;c640b80b-fac9-409f-aa19-1f9221aec445&quot;,&quot;common_models&quot;:[{&quot;model_name&quot;:&quot;Employee&quot;,&quot;model_id&quot;:&quot;hris.Employee&quot;,&quot;enabled_actions&quot;:[&quot;READ&quot;,&quot;WRITE&quot;],&quot;is_disabled&quot;:false,&quot;disabled_fields&quot;:[&quot;employment&quot;]},{&quot;model_name&quot;:&quot;Employment&quot;,&quot;model_id&quot;:&quot;hris.Employment&quot;,&quot;enabled_actions&quot;:[],&quot;is_disabled&quot;:true,&quot;disabled_fields&quot;:[]}]}]
)
```

