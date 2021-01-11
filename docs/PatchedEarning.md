# MergeHRISClient::PatchedEarning

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**employee_payroll_run** | **String** | The earning&#39;s employee payroll run. | [optional] 
**amount** | **Float** | The amount earned. | [optional] 
**type** | [**TypeEnum**](TypeEnum.md) | The type of earning. | [optional] 

## Code Sample

```ruby
require 'MergeHRISClient'

instance = MergeHRISClient::PatchedEarning.new(id: babbced6-3a81-4775-8da2-490dc6385259,
                                 employee_payroll_run: 35347df1-95e7-46e2-93cc-66f1191edca5,
                                 amount: 1002.34,
                                 type: SALARY)
```


