# MergeHRISClient::Company

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **legal_name** | **String** | The company&#39;s legal name. | [optional] |
| **display_name** | **String** | The company&#39;s display name. | [optional] |
| **eins** | **Array&lt;String&gt;** | The company&#39;s Employer Identification Numbers. | [optional] |
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
  remote_data: [{&quot;path&quot;:&quot;/companies&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

