# MergeHRISClient::PatchedDocument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**employee** | **String** | The employee this document belongs to. | [optional] 
**file_name** | **String** | The document&#39;s filename. | [optional] 
**file_url** | **String** | The URL from which the document can be retrieved. | [optional] 

## Code Sample

```ruby
require 'MergeHRISClient'

instance = MergeHRISClient::PatchedDocument.new(id: 1dc27860-396c-4d9a-9896-d914e3577ada,
                                 employee: d2f972d0-2526-434b-9409-4c3b468e08f0,
                                 file_name: Merge Company Secrets,
                                 file_url: http://alturl.com/p749b)
```


