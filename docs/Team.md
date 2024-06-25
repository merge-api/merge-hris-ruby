# MergeHRISClient::Team

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **created_at** | **Time** | The datetime that this object was created by Merge. | [optional][readonly] |
| **modified_at** | **Time** | The datetime that this object was modified by Merge. | [optional][readonly] |
| **name** | **String** | The team&#39;s name. | [optional] |
| **parent_team** | **String** | The team&#39;s parent team. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted in the third party platform. | [optional][readonly] |
| **field_mappings** | **Object** |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Team.new(
  id: 13a72919-9fae-4f54-81ca-ddfd8712a1ba,
  remote_id: 19202938,
  created_at: 2021-09-15T00:00Z,
  modified_at: 2021-10-16T00:00Z,
  name: Engineering,
  parent_team: 1b998423-db0a-4037-a4cf-f79c60cb67b3,
  remote_was_deleted: null,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/teams&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

