# MergeHRISClient::Report

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**name** | **String** | The report&#39;s name. | [optional] 
**content** | **String** | The report&#39;s content JSON. | [optional] 

## Code Sample

```ruby
require 'MergeHRISClient'

instance = MergeHRISClient::Report.new(id: 9244fe3b-9055-4674-948f-50e1e45c49c6,
                                 name: Dan&#39;s Employee Review,
                                 content: While Dan is a tremendous employee, somebody should probably be reviewing the documentation he writes, as he likes to fill them with little jokes to amuse himself.)
```


