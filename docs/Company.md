# MergeHRISClient::Company

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **legal_name** | **String** | The company&#39;s legal name. | [optional] |
| **display_name** | **String** | The company&#39;s display name. | [optional] |
| **eins** | **Array&lt;String&gt;** | The company&#39;s Employer Identification Numbers. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Company.new(
  id: 1b998423-db0a-4037-a4cf-f79c60cb67b3,
  remote_id: 19202938,
  legal_name: Waystar Royco, Inc.,
  display_name: Waystar Royco,
  eins: [&quot;12-3456789&quot;,&quot;12-3451111&quot;,&quot;11-0011000&quot;],
  remote_was_deleted: null,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/companies&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

