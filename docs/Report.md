# MergeHRISClient::Report

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **name** | **String** | The report&#39;s name. | [optional] |
| **content** | **String** | The report&#39;s content JSON. | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Report.new(
  id: 9244fe3b-9055-4674-948f-50e1e45c49c6,
  name: Merge Employee Data,
  content: {&#39;title&#39;: &#39;this is my report&#39;, &#39;fields&#39;: [&#39;id&#39;: &#39;firstName&#39;, &#39;type&#39;: &#39;text&#39;, &#39;name&#39;: &#39;First Name&#39;], &#39;employees&#39;: [&#39;firstName&#39;: &#39;John&#39;, &#39;lastName&#39;: &#39;Doe&#39;, &#39;91&#39;: &#39;Jane Doe&#39;]}
)
```

