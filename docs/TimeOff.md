# MergeHRISClient::TimeOff

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **employee** | **String** | The employee requesting time off. | [optional] |
| **approver** | **String** | The Merge ID of the employee with the ability to approve the time off request. | [optional] |
| **status** | [**TimeOffStatusEnum**](TimeOffStatusEnum.md) | The status of this time off request.  * &#x60;REQUESTED&#x60; - REQUESTED * &#x60;APPROVED&#x60; - APPROVED * &#x60;DECLINED&#x60; - DECLINED * &#x60;CANCELLED&#x60; - CANCELLED * &#x60;DELETED&#x60; - DELETED | [optional] |
| **employee_note** | **String** | The employee note for this time off request. | [optional] |
| **units** | [**UnitsEnum**](UnitsEnum.md) | The measurement that the third-party integration uses to count time requested.  * &#x60;HOURS&#x60; - HOURS * &#x60;DAYS&#x60; - DAYS | [optional] |
| **amount** | **Float** | The time off quantity measured by the prescribed “units”. | [optional] |
| **request_type** | [**RequestTypeEnum**](RequestTypeEnum.md) | The type of time off request.  * &#x60;VACATION&#x60; - VACATION * &#x60;SICK&#x60; - SICK * &#x60;PERSONAL&#x60; - PERSONAL * &#x60;JURY_DUTY&#x60; - JURY_DUTY * &#x60;VOLUNTEER&#x60; - VOLUNTEER * &#x60;BEREAVEMENT&#x60; - BEREAVEMENT | [optional] |
| **start_time** | **Time** | The day and time of the start of the time requested off. | [optional] |
| **end_time** | **Time** | The day and time of the end of the time requested off. | [optional] |
| **remote_was_deleted** | **Boolean** |  | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
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
  remote_was_deleted: null,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/leave&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

