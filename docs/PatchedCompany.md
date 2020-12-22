# MergeHRISClient::PatchedCompany

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**remote_id** | **String** | The third-party API ID of the matching object. | [optional] 
**legal_name** | **String** | The company&#39;s legal name. | [optional] 
**display_name** | **String** | The company&#39;s display name. | [optional] 
**ei_ns** | **Array&lt;String&gt;** | The company&#39;s Employer Identification Numbers. | [optional] 

## Code Sample

```ruby
require 'MergeHRISClient'

instance = MergeHRISClient::PatchedCompany.new(id: 1b998423-db0a-4037-a4cf-f79c60cb67b3,
                                 remote_id: 19202938,
                                 legal_name: We Love Integrations Inc.,
                                 display_name: We Love Integrations,
                                 ei_ns: null)
```


