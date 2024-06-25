# MergeHRISClient::BankInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **created_at** | **Time** | The datetime that this object was created by Merge. | [optional][readonly] |
| **modified_at** | **Time** | The datetime that this object was modified by Merge. | [optional][readonly] |
| **employee** | **String** | The employee with this bank account. | [optional] |
| **account_number** | **String** | The account number. | [optional] |
| **routing_number** | **String** | The routing number. | [optional] |
| **bank_name** | **String** | The bank name. | [optional] |
| **account_type** | [**AccountTypeEnum**](AccountTypeEnum.md) | The bank account type  * &#x60;SAVINGS&#x60; - SAVINGS * &#x60;CHECKING&#x60; - CHECKING | [optional] |
| **remote_created_at** | **Time** | When the matching bank object was created in the third party system. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted in the third party platform. | [optional][readonly] |
| **field_mappings** | **Object** |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::BankInfo.new(
  id: fd1e0fb5-8f92-4ec9-9f32-179cf732867d,
  remote_id: 123234,
  created_at: 2021-09-15T00:00Z,
  modified_at: 2021-10-16T00:00Z,
  employee: a3617eb4-dfe3-426f-921e-a65fc1661e10,
  account_number: 439291590,
  routing_number: 089690059,
  bank_name: Chase,
  account_type: CHECKING,
  remote_created_at: 2021-12-06T10:11:26Z,
  remote_was_deleted: null,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/bank-info&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

