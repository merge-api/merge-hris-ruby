# MergeHRISClient::TimesheetEntryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee** | **String** | The employee the timesheet entry is for. | [optional] |
| **hours_worked** | **Float** | The number of hours logged by the employee. | [optional] |
| **start_time** | **Time** | The time at which the employee started work. | [optional] |
| **end_time** | **Time** | The time at which the employee ended work. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::TimesheetEntryRequest.new(
  employee: d2f972d0-2526-434b-9409-4c3b468e08f0,
  hours_worked: 10.0,
  start_time: 2020-11-10T00:00Z,
  end_time: 2020-11-10T00:10Z,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;}
)
```

