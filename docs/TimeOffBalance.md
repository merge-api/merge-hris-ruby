# MergeHRISClient::TimeOffBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **employee** | **String** | The employee the balance belongs to. | [optional] |
| **balance** | **Float** | The current PTO balance in terms of hours. | [optional] |
| **used** | **Float** | The amount of PTO used in terms of hours. | [optional] |
| **policy_type** | [**PolicyTypeEnum**](PolicyTypeEnum.md) | The policy type of this time off balance. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::TimeOffBalance.new(
  id: 91b2b905-e866-40c8-8be2-efe53827a0aa,
  remote_id: 19202938,
  employee: d2f972d0-2526-434b-9409-4c3b468e08f0,
  balance: 60.0,
  used: 45.0,
  policy_type: VACATION,
  remote_data: [{&quot;path&quot;:&quot;/leave&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

