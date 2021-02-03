# MergeHRISClient::TimeOff

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **employee** | **String** | The employee requesting time off. | [optional] |
| **approver** | **String** | The employee approving the time off request. | [optional] |
| **status** | [**TimeOffStatusEnum**](TimeOffStatusEnum.md) | The status of this time off request. | [optional] |
| **employee_note** | **String** | The status of this time off request. | [optional] |
| **units** | [**UnitsEnum**](UnitsEnum.md) | The unit of time requested. | [optional] |
| **amount** | **Float** | The number of time off units requested. | [optional] |
| **request_type** | [**RequestTypeEnum**](RequestTypeEnum.md) | The type of time off request. | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::TimeOff.new(
  id: 91b2b905-e866-40c8-8be2-efe53827a0aa,
  remote_id: 19202938,
  employee: d2f972d0-2526-434b-9409-4c3b468e08f0,
  approver: 9efbc633-3387-4306-aa55-e2c635e6bb4f,
  status: APPROVED,
  employee_note: Trip to Iowa. Miss those cornfields!,
  units: DAYS,
  amount: 13,
  request_type: VACATION
)
```

