# MergeHRISClient::Deduction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **created_at** | **Time** | The datetime that this object was created by Merge. | [optional][readonly] |
| **modified_at** | **Time** | The datetime that this object was modified by Merge. | [optional][readonly] |
| **employee_payroll_run** | **String** |  | [optional] |
| **name** | **String** | The deduction&#39;s name. | [optional] |
| **employee_deduction** | **Float** | The amount of money that is withheld from an employee&#39;s gross pay by the employee. | [optional] |
| **company_deduction** | **Float** | The amount of money that is withheld on behalf of an employee by the company. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted in the third party platform. | [optional] |
| **field_mappings** | **Object** |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Deduction.new(
  id: 5fd439fc-1b64-4755-b275-64918936c365,
  remote_id: 93478612,
  created_at: 2021-09-15T00:00Z,
  modified_at: 2021-10-16T00:00Z,
  employee_payroll_run: 35347df1-95e7-46e2-93cc-66f1191edca5,
  name: Social Security,
  employee_deduction: 34.54,
  company_deduction: 78.78,
  remote_was_deleted: null,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/payroll-deduction&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

