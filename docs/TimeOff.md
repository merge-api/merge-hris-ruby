# MergeHRISClient::TimeOff

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **employee** | **String** |  | [optional] |
| **approver** | **String** |  | [optional] |
| **status** | [**TimeOffStatusEnum**](TimeOffStatusEnum.md) | The status of this time off request. | [optional] |
| **employee_note** | **String** | The employee note for this time off request. | [optional] |
| **units** | [**UnitsEnum**](UnitsEnum.md) | The unit of time requested. | [optional] |
| **amount** | **Float** | The number of time off units requested. | [optional] |
| **request_type** | [**RequestTypeEnum**](RequestTypeEnum.md) | The type of time off request. | [optional] |
| **start_time** | **Time** | The day and time of the start of the time requested off. | [optional] |
| **end_time** | **Time** | The day and time of the end of the time requested off. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::TimeOff.new(
  id: 91b2b905-e866-40c8-8be2-efe53827a0aa,
  remote_id: 19202938,
  employee: d2f972d0-2526-434b-9409-4c3b468e08f0,
  approver: 9efbc633-3387-4306-aa55-e2c635e6bb4f,
  status: APPROVED,
  employee_note: Moving into the new apartment Kendall Roy gave me!,
  units: DAYS,
  amount: 3,
  request_type: VACATION,
  start_time: 2020-11-10T00:00Z,
  end_time: 2020-11-17T00:00Z,
  remote_data: [{&quot;path&quot;:&quot;/leave&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

