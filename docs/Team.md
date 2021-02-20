# MergeHRISClient::Team

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The team&#39;s name. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Team.new(
  id: 13a72919-9fae-4f54-81ca-ddfd8712a1ba,
  remote_id: 19202938,
  name: Engineering,
  remote_data: [{&quot;path&quot;:&quot;/teams&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

