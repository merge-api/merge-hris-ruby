# OpenapiClient::PatchedCompany

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**remote_id** | **String** | The third-party API ID of the matching object. | [optional] 
**created_at** | **DateTime** |  | [optional] [readonly] 
**modified_at** | **DateTime** |  | [optional] [readonly] 
**legal_name** | **String** | The company&#39;s legal name. | [optional] 
**display_name** | **String** | The company&#39;s display name. | [optional] 
**ei_ns** | [**Array&lt;PatchedEIN&gt;**](PatchedEIN.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PatchedCompany.new(id: null,
                                 remote_id: 19202938,
                                 created_at: null,
                                 modified_at: null,
                                 legal_name: We Love Integrations Inc.,
                                 display_name: We Love Integrations,
                                 ei_ns: null)
```


