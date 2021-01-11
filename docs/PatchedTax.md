# MergeHRISClient::PatchedTax

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**employee_payroll_run** | **String** | The tax&#39;s employee payroll run. | [optional] 
**name** | **String** | The deduction&#39;s name. | [optional] 
**amount** | **Float** | The tax amount. | [optional] 
**employer_tax** | **Boolean** | Whether or not the employer is responsible for paying the tax. | [optional] 

## Code Sample

```ruby
require 'MergeHRISClient'

instance = MergeHRISClient::PatchedTax.new(id: e3a825fd-c38d-4095-a717-df98c4cb9ebc,
                                 employee_payroll_run: 35347df1-95e7-46e2-93cc-66f1191edca5,
                                 name: California State Income Tax,
                                 amount: 100.25,
                                 employer_tax: false)
```


