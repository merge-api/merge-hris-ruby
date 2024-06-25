# MergeHRISClient::TimeOffBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **created_at** | **Time** | The datetime that this object was created by Merge. | [optional][readonly] |
| **modified_at** | **Time** | The datetime that this object was modified by Merge. | [optional][readonly] |
| **employee** | **String** | The employee the balance belongs to. | [optional] |
| **balance** | **Float** | The current remaining PTO balance, always measured in terms of hours. | [optional] |
| **used** | **Float** | The amount of PTO used in terms of hours. | [optional] |
| **policy_type** | [**PolicyTypeEnum**](PolicyTypeEnum.md) | The policy type of this time off balance.  * &#x60;VACATION&#x60; - VACATION * &#x60;SICK&#x60; - SICK * &#x60;PERSONAL&#x60; - PERSONAL * &#x60;JURY_DUTY&#x60; - JURY_DUTY * &#x60;VOLUNTEER&#x60; - VOLUNTEER * &#x60;BEREAVEMENT&#x60; - BEREAVEMENT | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted in the third party platform. | [optional][readonly] |
| **field_mappings** | **Object** |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::TimeOffBalance.new(
  id: 91b2b905-e866-40c8-8be2-efe53827a0aa,
  remote_id: 19202938,
  created_at: 2021-09-15T00:00Z,
  modified_at: 2021-10-16T00:00Z,
  employee: d2f972d0-2526-434b-9409-4c3b468e08f0,
  balance: 60.0,
  used: 45.0,
  policy_type: VACATION,
  remote_was_deleted: null,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/leave&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

