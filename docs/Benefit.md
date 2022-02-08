# MergeHRISClient::Benefit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **employee** | **String** |  | [optional] |
| **provider_name** | **String** | The name of the benefit provider. | [optional] |
| **benefit_plan_type** | [**BenefitPlanTypeEnum**](BenefitPlanTypeEnum.md) | The type of benefit plan | [optional] |
| **employee_contribution** | **Float** | The employee&#39;s contribution. | [optional] |
| **company_contribution** | **Float** | The company&#39;s contribution. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Benefit.new(
  id: 3fe5ae7a-f1ba-4529-b7af-84e86dc6d232,
  remote_id: 19202938,
  employee: d2f972d0-2526-434b-9409-4c3b468e08f0,
  provider_name: Blue Shield of California,
  benefit_plan_type: MEDICAL,
  employee_contribution: 23.65,
  company_contribution: 150.0,
  remote_data: [{&quot;path&quot;:&quot;/benefits&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

