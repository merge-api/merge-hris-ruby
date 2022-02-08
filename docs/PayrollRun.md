# MergeHRISClient::PayrollRun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **run_state** | [**RunStateEnum**](RunStateEnum.md) | The state of the payroll run | [optional] |
| **run_type** | [**RunTypeEnum**](RunTypeEnum.md) | The type of the payroll run | [optional] |
| **start_date** | **Time** | The day and time the payroll run started. | [optional] |
| **end_date** | **Time** | The day and time the payroll run ended. | [optional] |
| **check_date** | **Time** | The day and time the payroll run was checked. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::PayrollRun.new(
  id: 37336947-b3d4-4a4c-a310-ab6ab510e079,
  remote_id: 19202938,
  run_state: PAID,
  run_type: REGULAR,
  start_date: 2020-11-08T00:00Z,
  end_date: 2020-11-15T00:00Z,
  check_date: 2020-11-15T00:00Z,
  remote_data: [{&quot;path&quot;:&quot;/payroll&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

