# MergeHRISClient::EmploymentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **job_title** | **String** | The position&#39;s title. | [optional] |
| **pay_rate** | **Float** | The position&#39;s pay rate in dollars. | [optional] |
| **pay_period** | [**PayPeriodEnum**](PayPeriodEnum.md) | The time period this pay rate encompasses. | [optional] |
| **pay_frequency** | [**PayFrequencyEnum**](PayFrequencyEnum.md) | The position&#39;s pay frequency. | [optional] |
| **pay_currency** | [**PayCurrencyEnum**](PayCurrencyEnum.md) | The position&#39;s currency code. | [optional] |
| **flsa_status** | [**FlsaStatusEnum**](FlsaStatusEnum.md) | The position&#39;s FLSA status. | [optional] |
| **effective_date** | **Time** | The position&#39;s effective date. | [optional] |
| **employment_type** | [**EmploymentTypeEnum**](EmploymentTypeEnum.md) | The position&#39;s type of employment. | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::EmploymentRequest.new(
  remote_id: 19202938,
  job_title: Software Engineer,
  pay_rate: 80000.00,
  pay_period: YEAR,
  pay_frequency: BIWEEKLY,
  pay_currency: USD,
  flsa_status: EXEMPT,
  effective_date: null,
  employment_type: FULL TIME
)
```

