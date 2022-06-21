# MergeHRISClient::Earning

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **employee_payroll_run** | **String** |  | [optional] |
| **amount** | **Float** | The amount earned. | [optional] |
| **type** | [**EarningTypeEnum**](EarningTypeEnum.md) | The type of earning. | [optional] |
| **remote_data** | **Array&lt;Hash&lt;String, AnyType&gt;&gt;** |  | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Earning.new(
  id: babbced6-3a81-4775-8da2-490dc6385259,
  employee_payroll_run: 35347df1-95e7-46e2-93cc-66f1191edca5,
  amount: 1002.34,
  type: SALARY,
  remote_data: [{&quot;path&quot;:&quot;/payroll-earnings&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_was_deleted: null
)
```

