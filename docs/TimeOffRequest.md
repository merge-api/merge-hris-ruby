# MergeHRISClient::TimeOffRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee** | **String** | The employee requesting time off. | [optional] |
| **approver** | **String** | The Merge ID of the employee with the ability to approve the time off request. | [optional] |
| **status** | [**TimeOffStatusEnum**](TimeOffStatusEnum.md) | The status of this time off request.  * &#x60;REQUESTED&#x60; - REQUESTED * &#x60;APPROVED&#x60; - APPROVED * &#x60;DECLINED&#x60; - DECLINED * &#x60;CANCELLED&#x60; - CANCELLED * &#x60;DELETED&#x60; - DELETED | [optional] |
| **employee_note** | **String** | The employee note for this time off request. | [optional] |
| **units** | [**UnitsEnum**](UnitsEnum.md) | The measurement that the third-party integration uses to count time requested.  * &#x60;HOURS&#x60; - HOURS * &#x60;DAYS&#x60; - DAYS | [optional] |
| **amount** | **Float** | The time off quantity measured by the prescribed “units”. | [optional] |
| **request_type** | [**RequestTypeEnum**](RequestTypeEnum.md) | The type of time off request.  * &#x60;VACATION&#x60; - VACATION * &#x60;SICK&#x60; - SICK * &#x60;PERSONAL&#x60; - PERSONAL * &#x60;JURY_DUTY&#x60; - JURY_DUTY * &#x60;VOLUNTEER&#x60; - VOLUNTEER * &#x60;BEREAVEMENT&#x60; - BEREAVEMENT | [optional] |
| **start_time** | **Time** | The day and time of the start of the time requested off. | [optional] |
| **end_time** | **Time** | The day and time of the end of the time requested off. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::TimeOffRequest.new(
  employee: d2f972d0-2526-434b-9409-4c3b468e08f0,
  approver: 9efbc633-3387-4306-aa55-e2c635e6bb4f,
  status: APPROVED,
  employee_note: Moving into the new apartment Kendall Roy gave me!,
  units: DAYS,
  amount: 3,
  request_type: VACATION,
  start_time: 2020-11-10T00:00Z,
  end_time: 2020-11-17T00:00Z,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;}
)
```

