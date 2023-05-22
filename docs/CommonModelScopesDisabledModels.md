# MergeHRISClient::CommonModelScopesDisabledModels

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_name** | **String** |  |  |
| **model_id** | **String** |  |  |
| **enabled_actions** | [**Array&lt;CommonModelScopesDisabledModelsEnabledActionsEnum&gt;**](CommonModelScopesDisabledModelsEnabledActionsEnum.md) |  |  |
| **is_disabled** | **Boolean** |  |  |
| **disabled_fields** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::CommonModelScopesDisabledModels.new(
  model_name: null,
  model_id: null,
  enabled_actions: null,
  is_disabled: null,
  disabled_fields: null
)
```

