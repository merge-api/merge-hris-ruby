# OpenapiClient::PatchedDeduction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employee_payroll_run** | **String** | The deduction&#39;s employee payroll run. | [optional] 
**name** | **String** | The deduction&#39;s name. | [optional] 
**employee_deduction** | **Float** | The amount the employee is deducting. | [optional] 
**company_deduction** | **Float** | The amount the company is deducting. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PatchedDeduction.new(employee_payroll_run: 35347df1-95e7-46e2-93cc-66f1191edca5,
                                 name: Social Security,
                                 employee_deduction: 34.54,
                                 company_deduction: 78.78)
```


