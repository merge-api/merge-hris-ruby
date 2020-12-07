# MergeHRISClient::PatchedTeam

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**remote_id** | **String** | The third-party API ID of the matching object. | [optional] 
**name** | **String** | The team&#39;s name. | [optional] 

## Code Sample

```ruby
require 'MergeHRISClient'

instance = MergeHRISClient::PatchedTeam.new(id: null,
                                 remote_id: 19202938,
                                 name: Engineering)
```


