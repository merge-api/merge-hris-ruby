# MergeHRISClient::PatchedTeam

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**remote_id** | **String** | The third-party API ID of the matching object. | [optional] 
**created_at** | **DateTime** |  | [optional] [readonly] 
**modified_at** | **DateTime** |  | [optional] [readonly] 
**name** | **String** | The team&#39;s name. | [optional] 

## Code Sample

```ruby
require 'MergeHRISClient'

instance = MergeHRISClient::PatchedTeam.new(id: null,
                                 remote_id: 19202938,
                                 created_at: null,
                                 modified_at: null,
                                 name: Engineering)
```


