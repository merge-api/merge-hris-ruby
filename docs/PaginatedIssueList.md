# MergeHRISClient::PaginatedIssueList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** |  | [optional] |
| **previous** | **String** |  | [optional] |
| **results** | [**Array&lt;Issue&gt;**](Issue.md) |  | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::PaginatedIssueList.new(
  _next: null,
  previous: null,
  results: null
)
```

