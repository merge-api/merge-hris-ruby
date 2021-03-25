# MergeHRISClient::Earning

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **employee_payroll_run** | **String** | The earning&#39;s employee payroll run. | [optional] |
| **amount** | **Float** | The amount earned. | [optional] |
| **type** | [**TypeEnum**](TypeEnum.md) | The type of earning. | [optional] |
| **remote_data** | **Array&lt;Hash&lt;String, AnyType&gt;&gt;** |  | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Earning.new(
  id: babbced6-3a81-4775-8da2-490dc6385259,
  employee_payroll_run: 35347df1-95e7-46e2-93cc-66f1191edca5,
  amount: 1002.34,
  type: SALARY,
  remote_data: [{&quot;path&quot;:&quot;/payroll-earnings&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

