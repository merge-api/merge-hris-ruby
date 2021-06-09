# MergeHRISClient::TimeOffBalanceApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**time_off_balance_list**](TimeOffBalanceApi.md#time_off_balance_list) | **GET** /time-off-balance |  |
| [**time_off_balance_retrieve**](TimeOffBalanceApi.md#time_off_balance_retrieve) | **GET** /time-off-balance/{id} |  |


## time_off_balance_list

> <PaginatedTimeOffBalanceList> time_off_balance_list(x_account_token, opts)



Returns a list of `TimeOffBalance` objects.

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

api_instance = MergeHRISClient::TimeOffBalanceApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  employee_id: 'employee_id_example', # String | If provided, will only return time off balances for this employee.
  expand: 'employee', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  
  result = api_instance.time_off_balance_list(x_account_token, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling TimeOffBalanceApi->time_off_balance_list: #{e}"
end
```

#### Using the time_off_balance_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedTimeOffBalanceList>, Integer, Hash)> time_off_balance_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.time_off_balance_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedTimeOffBalanceList>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling TimeOffBalanceApi->time_off_balance_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **employee_id** | **String** | If provided, will only return time off balances for this employee. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |

### Return type

[**PaginatedTimeOffBalanceList**](PaginatedTimeOffBalanceList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## time_off_balance_retrieve

> <TimeOffBalance> time_off_balance_retrieve(x_account_token, id, opts)



Returns an `TimeOffBalance` object with the given `id`.

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

api_instance = MergeHRISClient::TimeOffBalanceApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'employee', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.time_off_balance_retrieve(x_account_token, id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling TimeOffBalanceApi->time_off_balance_retrieve: #{e}"
end
```

#### Using the time_off_balance_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TimeOffBalance>, Integer, Hash)> time_off_balance_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.time_off_balance_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TimeOffBalance>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling TimeOffBalanceApi->time_off_balance_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |

### Return type

[**TimeOffBalance**](TimeOffBalance.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

