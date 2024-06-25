# MergeHRISClient::Earning

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **created_at** | **Time** | The datetime that this object was created by Merge. | [optional][readonly] |
| **modified_at** | **Time** | The datetime that this object was modified by Merge. | [optional][readonly] |
| **employee_payroll_run** | **String** |  | [optional] |
| **amount** | **Float** | The amount earned. | [optional] |
| **type** | [**EarningTypeEnum**](EarningTypeEnum.md) | The type of earning.  * &#x60;SALARY&#x60; - SALARY * &#x60;REIMBURSEMENT&#x60; - REIMBURSEMENT * &#x60;OVERTIME&#x60; - OVERTIME * &#x60;BONUS&#x60; - BONUS | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted in the third party platform. | [optional] |
| **field_mappings** | **Object** |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Earning.new(
  id: babbced6-3a81-4775-8da2-490dc6385259,
  remote_id: 52802,
  created_at: 2021-09-15T00:00Z,
  modified_at: 2021-10-16T00:00Z,
  employee_payroll_run: 35347df1-95e7-46e2-93cc-66f1191edca5,
  amount: 1002.34,
  type: SALARY,
  remote_was_deleted: null,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: null
)
```

