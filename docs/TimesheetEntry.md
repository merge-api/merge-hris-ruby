# MergeHRISClient::TimesheetEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **created_at** | **Time** | The datetime that this object was created by Merge. | [optional][readonly] |
| **modified_at** | **Time** | The datetime that this object was modified by Merge. | [optional][readonly] |
| **employee** | **String** | The employee the timesheet entry is for. | [optional] |
| **hours_worked** | **Float** | The number of hours logged by the employee. | [optional] |
| **start_time** | **Time** | The time at which the employee started work. | [optional] |
| **end_time** | **Time** | The time at which the employee ended work. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted in the third party platform. | [optional][readonly] |
| **field_mappings** | **Object** |  | [optional][readonly] |
| **remote_data** | **Array&lt;Hash&lt;String, AnyType&gt;&gt;** |  | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::TimesheetEntry.new(
  id: 91b2b905-e866-40c8-8be2-efe53827a0aa,
  remote_id: 19202938,
  created_at: 2021-09-15T00:00Z,
  modified_at: 2021-10-16T00:00Z,
  employee: d2f972d0-2526-434b-9409-4c3b468e08f0,
  hours_worked: 10.0,
  start_time: 2020-11-10T00:00Z,
  end_time: 2020-11-10T00:10Z,
  remote_was_deleted: null,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/dependent&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

