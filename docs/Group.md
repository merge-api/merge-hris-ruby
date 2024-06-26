# MergeHRISClient::Group

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **created_at** | **Time** | The datetime that this object was created by Merge. | [optional][readonly] |
| **modified_at** | **Time** | The datetime that this object was modified by Merge. | [optional][readonly] |
| **parent_group** | **String** | The parent group for this group. | [optional] |
| **name** | **String** | The group name. | [optional] |
| **type** | [**GroupTypeEnum**](GroupTypeEnum.md) | The Group type returned directly from the third-party.  * &#x60;TEAM&#x60; - TEAM * &#x60;DEPARTMENT&#x60; - DEPARTMENT * &#x60;COST_CENTER&#x60; - COST_CENTER * &#x60;BUSINESS_UNIT&#x60; - BUSINESS_UNIT * &#x60;GROUP&#x60; - GROUP | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted in the third party platform. | [optional][readonly] |
| **is_commonly_used_as_team** | **Boolean** | Indicates whether the Group refers to a team in the third party platform. Note that this is an opinionated view based on how Merge observes most organizations representing teams in each third party platform. If your customer uses a platform different from most, there is a chance this will not be correct. | [optional] |
| **field_mappings** | **Object** |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Group.new(
  id: 134e0111-0f67-44f6-98f0-597000290bb3,
  remote_id: 800293,
  created_at: 2021-09-15T00:00Z,
  modified_at: 2021-10-16T00:00Z,
  parent_group: 2ef51b11-2c4e-4b02-8d1d-50592d9e96ef,
  name: COST_CENTER_US,
  type: COST_CENTER,
  remote_was_deleted: null,
  is_commonly_used_as_team: true,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/group&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

