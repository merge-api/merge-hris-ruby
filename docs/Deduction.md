# MergeHRISClient::Deduction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **employee_payroll_run** | **String** |  | [optional] |
| **name** | **String** | The deduction&#39;s name. | [optional] |
| **employee_deduction** | **Float** | The amount the employee is deducting. | [optional] |
| **company_deduction** | **Float** | The amount the company is deducting. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted on the third-party. | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Deduction.new(
  id: 5fd439fc-1b64-4755-b275-64918936c365,
  employee_payroll_run: 35347df1-95e7-46e2-93cc-66f1191edca5,
  name: Social Security,
  employee_deduction: 34.54,
  company_deduction: 78.78,
  remote_data: [{&quot;path&quot;:&quot;/payroll-deduction&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_was_deleted: null
)
```

