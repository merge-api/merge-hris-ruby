# MergeHRISClient::PayGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **created_at** | **Time** | The datetime that this object was created by Merge. | [optional][readonly] |
| **modified_at** | **Time** | The datetime that this object was modified by Merge. | [optional][readonly] |
| **pay_group_name** | **String** | The pay group name. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted in the third party platform. | [optional][readonly] |
| **field_mappings** | **Object** |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::PayGroup.new(
  id: fd1e0fb5-8f92-4ec9-9f32-179cf732867d,
  remote_id: 800293,
  created_at: 2021-09-15T00:00Z,
  modified_at: 2021-10-16T00:00Z,
  pay_group_name: contractor,
  remote_was_deleted: null,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/pay-group&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

