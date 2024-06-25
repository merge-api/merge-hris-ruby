# MergeHRISClient::GroupsApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**groups_list**](GroupsApi.md#groups_list) | **GET** /groups |  |
| [**groups_retrieve**](GroupsApi.md#groups_retrieve) | **GET** /groups/{id} |  |


## groups_list

> <PaginatedGroupList> groups_list(x_account_token, opts)



Returns a list of `Group` objects.

### Examples

```ruby
require 'time'
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeHRISClient::GroupsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  is_commonly_used_as_team: 'is_commonly_used_as_team_example', # String | If provided, specifies whether to return only Group objects which refer to a team in the third party platform. Note that this is an opinionated view based on how a team may be represented in the third party platform.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge after this date time will be returned.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge before this date time will be returned.
  names: 'names_example', # String | If provided, will only return groups with these names. Multiple values can be separated by commas.
  page_size: 56, # Integer | Number of results to return per page.
  remote_fields: 'type', # String | Deprecated. Use show_enum_origins.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  show_enum_origins: 'type', # String | A comma separated list of enum field names for which you'd like the original values to be returned, instead of Merge's normalized enum values. [Learn more](https://help.merge.dev/en/articles/8950958-show_enum_origins-query-parameter)
  types: 'types_example' # String | If provided, will only return groups of these types. Multiple values can be separated by commas.
}

begin
  
  result = api_instance.groups_list(x_account_token, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling GroupsApi->groups_list: #{e}"
end
```

#### Using the groups_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedGroupList>, Integer, Hash)> groups_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.groups_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedGroupList>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling GroupsApi->groups_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **is_commonly_used_as_team** | **String** | If provided, specifies whether to return only Group objects which refer to a team in the third party platform. Note that this is an opinionated view based on how a team may be represented in the third party platform. | [optional] |
| **modified_after** | **Time** | If provided, only objects synced by Merge after this date time will be returned. | [optional] |
| **modified_before** | **Time** | If provided, only objects synced by Merge before this date time will be returned. | [optional] |
| **names** | **String** | If provided, will only return groups with these names. Multiple values can be separated by commas. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_fields** | **String** | Deprecated. Use show_enum_origins. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |
| **show_enum_origins** | **String** | A comma separated list of enum field names for which you&#39;d like the original values to be returned, instead of Merge&#39;s normalized enum values. [Learn more](https://help.merge.dev/en/articles/8950958-show_enum_origins-query-parameter) | [optional] |
| **types** | **String** | If provided, will only return groups of these types. Multiple values can be separated by commas. | [optional] |

### Return type

[**PaginatedGroupList**](PaginatedGroupList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## groups_retrieve

> <Group> groups_retrieve(x_account_token, id, opts)



Returns a `Group` object with the given `id`.

### Examples

```ruby
require 'time'
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeHRISClient::GroupsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  remote_fields: 'type', # String | Deprecated. Use show_enum_origins.
  show_enum_origins: 'type' # String | A comma separated list of enum field names for which you'd like the original values to be returned, instead of Merge's normalized enum values. [Learn more](https://help.merge.dev/en/articles/8950958-show_enum_origins-query-parameter)
}

begin
  
  result = api_instance.groups_retrieve(x_account_token, id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling GroupsApi->groups_retrieve: #{e}"
end
```

#### Using the groups_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Group>, Integer, Hash)> groups_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.groups_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Group>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling GroupsApi->groups_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **remote_fields** | **String** | Deprecated. Use show_enum_origins. | [optional] |
| **show_enum_origins** | **String** | A comma separated list of enum field names for which you&#39;d like the original values to be returned, instead of Merge&#39;s normalized enum values. [Learn more](https://help.merge.dev/en/articles/8950958-show_enum_origins-query-parameter) | [optional] |

### Return type

[**Group**](Group.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

