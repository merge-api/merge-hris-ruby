# MergeHRISClient::Benefit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **created_at** | **Time** | The datetime that this object was created by Merge. | [optional][readonly] |
| **modified_at** | **Time** | The datetime that this object was modified by Merge. | [optional][readonly] |
| **employee** | **String** | The employee on the plan. | [optional] |
| **provider_name** | **String** | The name of the benefit provider. | [optional] |
| **benefit_plan_type** | **String** | The type of benefit plan | [optional] |
| **employee_contribution** | **Float** | The employee&#39;s contribution. | [optional] |
| **company_contribution** | **Float** | The company&#39;s contribution. | [optional] |
| **start_date** | **Time** | The day and time the benefit started. | [optional] |
| **end_date** | **Time** | The day and time the benefit ended. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted in the third party platform. | [optional][readonly] |
| **employer_benefit** | **String** | The employer benefit plan the employee is enrolled in. | [optional] |
| **field_mappings** | **Object** |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Benefit.new(
  id: 3fe5ae7a-f1ba-4529-b7af-84e86dc6d232,
  remote_id: 19202938,
  created_at: 2021-09-15T00:00Z,
  modified_at: 2021-10-16T00:00Z,
  employee: d2f972d0-2526-434b-9409-4c3b468e08f0,
  provider_name: Blue Shield of California,
  benefit_plan_type: null,
  employee_contribution: 23.65,
  company_contribution: 150.0,
  start_date: null,
  end_date: null,
  remote_was_deleted: null,
  employer_benefit: null,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/benefits&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

