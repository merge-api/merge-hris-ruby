# MergeHRISClient::Tax

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **employee_payroll_run** | **String** |  | [optional] |
| **name** | **String** | The tax&#39;s name. | [optional] |
| **amount** | **Float** | The tax amount. | [optional] |
| **employer_tax** | **Boolean** | Whether or not the employer is responsible for paying the tax. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Tax.new(
  id: e3a825fd-c38d-4095-a717-df98c4cb9ebc,
  employee_payroll_run: 35347df1-95e7-46e2-93cc-66f1191edca5,
  name: California State Income Tax,
  amount: 100.25,
  employer_tax: false,
  remote_was_deleted: null
)
```

