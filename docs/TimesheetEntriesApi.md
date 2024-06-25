# MergeHRISClient::TimesheetEntriesApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**timesheet_entries_create**](TimesheetEntriesApi.md#timesheet_entries_create) | **POST** /timesheet-entries |  |
| [**timesheet_entries_list**](TimesheetEntriesApi.md#timesheet_entries_list) | **GET** /timesheet-entries |  |
| [**timesheet_entries_meta_post_retrieve**](TimesheetEntriesApi.md#timesheet_entries_meta_post_retrieve) | **GET** /timesheet-entries/meta/post |  |
| [**timesheet_entries_retrieve**](TimesheetEntriesApi.md#timesheet_entries_retrieve) | **GET** /timesheet-entries/{id} |  |


## timesheet_entries_create

> <TimesheetEntryResponse> timesheet_entries_create(x_account_token, timesheet_entry_endpoint_request, opts)



Creates a `TimesheetEntry` object with the given values.

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

api_instance = MergeHRISClient::TimesheetEntriesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
timesheet_entry_endpoint_request = MergeHRISClient::TimesheetEntryEndpointRequest.new({model: MergeHRISClient::TimesheetEntryRequest.new}) # TimesheetEntryEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.timesheet_entries_create(x_account_token, timesheet_entry_endpoint_request, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling TimesheetEntriesApi->timesheet_entries_create: #{e}"
end
```

#### Using the timesheet_entries_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TimesheetEntryResponse>, Integer, Hash)> timesheet_entries_create_with_http_info(x_account_token, timesheet_entry_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.timesheet_entries_create_with_http_info(x_account_token, timesheet_entry_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TimesheetEntryResponse>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling TimesheetEntriesApi->timesheet_entries_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **timesheet_entry_endpoint_request** | [**TimesheetEntryEndpointRequest**](TimesheetEntryEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**TimesheetEntryResponse**](TimesheetEntryResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## timesheet_entries_list

> <PaginatedTimesheetEntryList> timesheet_entries_list(x_account_token, opts)



Returns a list of `TimesheetEntry` objects.

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

api_instance = MergeHRISClient::TimesheetEntriesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  employee_id: 'employee_id_example', # String | If provided, will only return timesheet entries for this employee.
  ended_after: 'ended_after_example', # String | If provided, will only return timesheet entries ended after this datetime.
  ended_before: 'ended_before_example', # String | If provided, will only return timesheet entries ended before this datetime.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge after this date time will be returned.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge before this date time will be returned.
  order_by: '-start_time', # String | Overrides the default ordering for this endpoint. Possible values include: start_time, -start_time.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  started_after: 'started_after_example', # String | If provided, will only return timesheet entries started after this datetime.
  started_before: 'started_before_example' # String | If provided, will only return timesheet entries started before this datetime.
}

begin
  
  result = api_instance.timesheet_entries_list(x_account_token, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling TimesheetEntriesApi->timesheet_entries_list: #{e}"
end
```

#### Using the timesheet_entries_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedTimesheetEntryList>, Integer, Hash)> timesheet_entries_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.timesheet_entries_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedTimesheetEntryList>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling TimesheetEntriesApi->timesheet_entries_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **employee_id** | **String** | If provided, will only return timesheet entries for this employee. | [optional] |
| **ended_after** | **String** | If provided, will only return timesheet entries ended after this datetime. | [optional] |
| **ended_before** | **String** | If provided, will only return timesheet entries ended before this datetime. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, only objects synced by Merge after this date time will be returned. | [optional] |
| **modified_before** | **Time** | If provided, only objects synced by Merge before this date time will be returned. | [optional] |
| **order_by** | **String** | Overrides the default ordering for this endpoint. Possible values include: start_time, -start_time. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |
| **started_after** | **String** | If provided, will only return timesheet entries started after this datetime. | [optional] |
| **started_before** | **String** | If provided, will only return timesheet entries started before this datetime. | [optional] |

### Return type

[**PaginatedTimesheetEntryList**](PaginatedTimesheetEntryList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## timesheet_entries_meta_post_retrieve

> <MetaResponse> timesheet_entries_meta_post_retrieve(x_account_token)



Returns metadata for `TimesheetEntry` POSTs.

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

api_instance = MergeHRISClient::TimesheetEntriesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.timesheet_entries_meta_post_retrieve(x_account_token)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling TimesheetEntriesApi->timesheet_entries_meta_post_retrieve: #{e}"
end
```

#### Using the timesheet_entries_meta_post_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> timesheet_entries_meta_post_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.timesheet_entries_meta_post_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling TimesheetEntriesApi->timesheet_entries_meta_post_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |

### Return type

[**MetaResponse**](MetaResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## timesheet_entries_retrieve

> <TimesheetEntry> timesheet_entries_retrieve(x_account_token, id, opts)



Returns a `TimesheetEntry` object with the given `id`.

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

api_instance = MergeHRISClient::TimesheetEntriesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.timesheet_entries_retrieve(x_account_token, id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling TimesheetEntriesApi->timesheet_entries_retrieve: #{e}"
end
```

#### Using the timesheet_entries_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TimesheetEntry>, Integer, Hash)> timesheet_entries_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.timesheet_entries_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TimesheetEntry>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling TimesheetEntriesApi->timesheet_entries_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |

### Return type

[**TimesheetEntry**](TimesheetEntry.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

