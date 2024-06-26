# MergeHRISClient::EmployerBenefit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **created_at** | **Time** | The datetime that this object was created by Merge. | [optional][readonly] |
| **modified_at** | **Time** | The datetime that this object was modified by Merge. | [optional][readonly] |
| **benefit_plan_type** | [**BenefitPlanTypeEnum**](BenefitPlanTypeEnum.md) | The type of benefit plan.  * &#x60;MEDICAL&#x60; - MEDICAL * &#x60;HEALTH_SAVINGS&#x60; - HEALTH_SAVINGS * &#x60;INSURANCE&#x60; - INSURANCE * &#x60;RETIREMENT&#x60; - RETIREMENT * &#x60;OTHER&#x60; - OTHER | [optional] |
| **name** | **String** | The employer benefit&#39;s name - typically the carrier or network name. | [optional] |
| **description** | **String** | The employer benefit&#39;s description. | [optional] |
| **deduction_code** | **String** | The employer benefit&#39;s deduction code. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted in the third party platform. | [optional][readonly] |
| **field_mappings** | **Object** |  | [optional][readonly] |
| **remote_data** | **Array&lt;Hash&lt;String, AnyType&gt;&gt;** |  | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::EmployerBenefit.new(
  id: null,
  remote_id: 19202939,
  created_at: 2021-09-15T00:00Z,
  modified_at: 2021-10-16T00:00Z,
  benefit_plan_type: MEDICAL,
  name: Kaiser Permanente Medical Plan,
  description: HDHP Silver Plan,
  deduction_code: COL,
  remote_was_deleted: null,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: null
)
```

