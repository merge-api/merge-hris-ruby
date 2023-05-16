# MergeHRISClient::Earning

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **employee_payroll_run** | **String** |  | [optional] |
| **amount** | **Float** | The amount earned. | [optional] |
| **type** | [**EarningTypeEnum**](EarningTypeEnum.md) | The type of earning.  * &#x60;SALARY&#x60; - SALARY * &#x60;REIMBURSEMENT&#x60; - REIMBURSEMENT * &#x60;OVERTIME&#x60; - OVERTIME * &#x60;BONUS&#x60; - BONUS | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Earning.new(
  id: babbced6-3a81-4775-8da2-490dc6385259,
  remote_id: 52802,
  employee_payroll_run: 35347df1-95e7-46e2-93cc-66f1191edca5,
  amount: 1002.34,
  type: SALARY,
  remote_was_deleted: null,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  modified_at: 2021-10-16T00:00Z,
  remote_data: null
)
```

