# MergeHRISClient::EndUserDetailsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_user_email_address** | **String** |  |  |
| **end_user_organization_name** | **String** |  |  |
| **end_user_origin_id** | **String** |  |  |
| **categories** | [**Array&lt;CategoriesEnum&gt;**](CategoriesEnum.md) |  | [optional] |
| **integration** | **String** |  | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::EndUserDetailsRequest.new(
  end_user_email_address: null,
  end_user_organization_name: null,
  end_user_origin_id: null,
  categories: null,
  integration: null
)
```

