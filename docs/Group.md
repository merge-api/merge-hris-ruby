# MergeHRISClient::Group

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **parent_group** | **String** | The parent group for this group. | [optional] |
| **name** | **String** | The group name. | [optional] |
| **type** | [**GroupTypeEnum**](GroupTypeEnum.md) | The group type | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Group.new(
  id: 134e0111-0f67-44f6-98f0-597000290bb3,
  remote_id: 800293,
  parent_group: 2ef51b11-2c4e-4b02-8d1d-50592d9e96ef,
  name: COST_CENTER_US,
  type: COST_CENTER,
  remote_data: [{&quot;path&quot;:&quot;/group&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_was_deleted: null
)
```

