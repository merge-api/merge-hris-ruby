# MergeHRISClient::Company

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **created_at** | **Time** | The datetime that this object was created by Merge. | [optional][readonly] |
| **modified_at** | **Time** | The datetime that this object was modified by Merge. | [optional][readonly] |
| **legal_name** | **String** | The company&#39;s legal name. | [optional] |
| **display_name** | **String** | The company&#39;s display name. | [optional] |
| **eins** | **Array&lt;String&gt;** | The company&#39;s Employer Identification Numbers. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted in the third party platform. | [optional][readonly] |
| **field_mappings** | **Object** |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Company.new(
  id: 1b998423-db0a-4037-a4cf-f79c60cb67b3,
  remote_id: 19202938,
  created_at: 2021-09-15T00:00Z,
  modified_at: 2021-10-16T00:00Z,
  legal_name: Waystar Royco, Inc.,
  display_name: Waystar Royco,
  eins: [&quot;12-3456789&quot;,&quot;12-3451111&quot;,&quot;11-0011000&quot;],
  remote_was_deleted: null,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/companies&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

