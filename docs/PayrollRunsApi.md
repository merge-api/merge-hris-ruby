# MergeHRISClient::PayrollRunsApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**payroll_runs_list**](PayrollRunsApi.md#payroll_runs_list) | **GET** /payroll-runs |  |
| [**payroll_runs_retrieve**](PayrollRunsApi.md#payroll_runs_retrieve) | **GET** /payroll-runs/{id} |  |


## payroll_runs_list

> <PaginatedPayrollRunList> payroll_runs_list(x_account_token, opts)



Returns a list of `PayrollRun` objects.

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

api_instance = MergeHRISClient::PayrollRunsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  ended_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return payroll runs ended after this datetime.
  ended_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return payroll runs ended before this datetime.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge after this date time will be returned.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge before this date time will be returned.
  page_size: 56, # Integer | Number of results to return per page.
  remote_fields: 'run_state', # String | Deprecated. Use show_enum_origins.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  run_type: 'CORRECTION', # String | If provided, will only return PayrollRun's with this status. Options: ('REGULAR', 'OFF_CYCLE', 'CORRECTION', 'TERMINATION', 'SIGN_ON_BONUS')  * `REGULAR` - REGULAR * `OFF_CYCLE` - OFF_CYCLE * `CORRECTION` - CORRECTION * `TERMINATION` - TERMINATION * `SIGN_ON_BONUS` - SIGN_ON_BONUS
  show_enum_origins: 'run_state', # String | Which fields should be returned in non-normalized form.
  started_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return payroll runs started after this datetime.
  started_before: Time.parse('2013-10-20T19:20:30+01:00') # Time | If provided, will only return payroll runs started before this datetime.
}

begin
  
  result = api_instance.payroll_runs_list(x_account_token, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling PayrollRunsApi->payroll_runs_list: #{e}"
end
```

#### Using the payroll_runs_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedPayrollRunList>, Integer, Hash)> payroll_runs_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.payroll_runs_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedPayrollRunList>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling PayrollRunsApi->payroll_runs_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **ended_after** | **Time** | If provided, will only return payroll runs ended after this datetime. | [optional] |
| **ended_before** | **Time** | If provided, will only return payroll runs ended before this datetime. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, only objects synced by Merge after this date time will be returned. | [optional] |
| **modified_before** | **Time** | If provided, only objects synced by Merge before this date time will be returned. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_fields** | **String** | Deprecated. Use show_enum_origins. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |
| **run_type** | **String** | If provided, will only return PayrollRun&#39;s with this status. Options: (&#39;REGULAR&#39;, &#39;OFF_CYCLE&#39;, &#39;CORRECTION&#39;, &#39;TERMINATION&#39;, &#39;SIGN_ON_BONUS&#39;)  * &#x60;REGULAR&#x60; - REGULAR * &#x60;OFF_CYCLE&#x60; - OFF_CYCLE * &#x60;CORRECTION&#x60; - CORRECTION * &#x60;TERMINATION&#x60; - TERMINATION * &#x60;SIGN_ON_BONUS&#x60; - SIGN_ON_BONUS | [optional] |
| **show_enum_origins** | **String** | Which fields should be returned in non-normalized form. | [optional] |
| **started_after** | **Time** | If provided, will only return payroll runs started after this datetime. | [optional] |
| **started_before** | **Time** | If provided, will only return payroll runs started before this datetime. | [optional] |

### Return type

[**PaginatedPayrollRunList**](PaginatedPayrollRunList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## payroll_runs_retrieve

> <PayrollRun> payroll_runs_retrieve(x_account_token, id, opts)



Returns a `PayrollRun` object with the given `id`.

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

api_instance = MergeHRISClient::PayrollRunsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  remote_fields: 'run_state', # String | Deprecated. Use show_enum_origins.
  show_enum_origins: 'run_state' # String | Which fields should be returned in non-normalized form.
}

begin
  
  result = api_instance.payroll_runs_retrieve(x_account_token, id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling PayrollRunsApi->payroll_runs_retrieve: #{e}"
end
```

#### Using the payroll_runs_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayrollRun>, Integer, Hash)> payroll_runs_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.payroll_runs_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayrollRun>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling PayrollRunsApi->payroll_runs_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **remote_fields** | **String** | Deprecated. Use show_enum_origins. | [optional] |
| **show_enum_origins** | **String** | Which fields should be returned in non-normalized form. | [optional] |

### Return type

[**PayrollRun**](PayrollRun.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

