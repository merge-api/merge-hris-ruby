# MergeHRISClient::PatchedPayrollRun

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**remote_id** | **String** | The third-party API ID of the matching object. | [optional] 
**run_state** | [**OneOfRunStateEnumBlankEnumNullEnum**](OneOfRunStateEnumBlankEnumNullEnum.md) | The state of the payroll run | [optional] 
**run_type** | [**OneOfRunTypeEnumBlankEnumNullEnum**](OneOfRunTypeEnumBlankEnumNullEnum.md) | The type of the payroll run | [optional] 
**start_date** | **DateTime** | The day and time the payroll run started. | [optional] 
**end_date** | **DateTime** | The day and time the payroll run ended. | [optional] 
**check_date** | **DateTime** | The day and time the payroll run was checked. | [optional] 

## Code Sample

```ruby
require 'MergeHRISClient'

instance = MergeHRISClient::PatchedPayrollRun.new(id: 37336947-b3d4-4a4c-a310-ab6ab510e079,
                                 remote_id: 19202938,
                                 run_state: PAID,
                                 run_type: REGULAR,
                                 start_date: null,
                                 end_date: null,
                                 check_date: null)
```


