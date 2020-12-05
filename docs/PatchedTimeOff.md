# MergeHRISClient::PatchedTimeOff

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**remote_id** | **String** | The third-party API ID of the matching object. | [optional] 
**created_at** | **DateTime** |  | [optional] [readonly] 
**modified_at** | **DateTime** |  | [optional] [readonly] 
**employee** | **String** | The employee requesting time off. | [optional] 
**approver** | **String** | The employee approving the time off request. | [optional] 
**status** | [**OneOfTimeOffStatusEnumBlankEnumNullEnum**](OneOfTimeOffStatusEnumBlankEnumNullEnum.md) | The status of this time off request. | [optional] 
**employee_note** | **String** | The status of this time off request. | [optional] 
**units** | [**OneOfUnitsEnumBlankEnumNullEnum**](OneOfUnitsEnumBlankEnumNullEnum.md) | The unit of time requested. | [optional] 
**amount** | **Float** | The number of time off units requested. | [optional] 
**request_type** | [**OneOfRequestTypeEnumBlankEnumNullEnum**](OneOfRequestTypeEnumBlankEnumNullEnum.md) | The type of time off request. | [optional] 

## Code Sample

```ruby
require 'MergeHRISClient'

instance = MergeHRISClient::PatchedTimeOff.new(id: null,
                                 remote_id: 19202938,
                                 created_at: null,
                                 modified_at: null,
                                 employee: d2f972d0-2526-434b-9409-4c3b468e08f0,
                                 approver: 9efbc633-3387-4306-aa55-e2c635e6bb4f,
                                 status: APPROVED,
                                 employee_note: Trip to Iowa. Miss those cornfields!,
                                 units: DAYS,
                                 amount: 13,
                                 request_type: VACATION)
```


