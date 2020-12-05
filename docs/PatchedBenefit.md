# MergeHRISClient::PatchedBenefit

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**remote_id** | **String** | The third-party API ID of the matching object. | [optional] 
**created_at** | **DateTime** |  | [optional] [readonly] 
**modified_at** | **DateTime** |  | [optional] [readonly] 
**employee** | **String** | The employee on the plan. | [optional] 
**provider_name** | **String** | The name of the benefit provider. | [optional] 
**benefit_plan_type** | [**OneOfBenefitPlanTypeEnumBlankEnumNullEnum**](OneOfBenefitPlanTypeEnumBlankEnumNullEnum.md) | The type of benefit plan | [optional] 
**employee_contribution** | **Float** | The employee&#39;s contribution. | [optional] 
**company_contribution** | **Float** | The company&#39;s contribution. | [optional] 

## Code Sample

```ruby
require 'MergeHRISClient'

instance = MergeHRISClient::PatchedBenefit.new(id: null,
                                 remote_id: 19202938,
                                 created_at: null,
                                 modified_at: null,
                                 employee: d2f972d0-2526-434b-9409-4c3b468e08f0,
                                 provider_name: Blue Shield of California,
                                 benefit_plan_type: MEDICAL,
                                 employee_contribution: 23.65,
                                 company_contribution: 150.0)
```


