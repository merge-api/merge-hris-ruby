# MergeHRISClient::DeductionsApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**deductions_list**](DeductionsApi.md#deductions_list) | **GET** /deductions |  |
| [**deductions_retrieve**](DeductionsApi.md#deductions_retrieve) | **GET** /deductions/{id} |  |


## deductions_list

> <PaginatedDeductionList> deductions_list(x_account_token, opts)



Returns a list of `Deduction` objects.

### Examples

```ruby
require 'time'
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = MergeHRISClient::DeductionsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  employee_payroll_run_id: 'employee_payroll_run_id_example', # String | If provided, will only return deductions for this employee payroll run.
  include_deleted_data: true, # Boolean | Whether to include data that was deleted in the third-party service.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  
  result = api_instance.deductions_list(x_account_token, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling DeductionsApi->deductions_list: #{e}"
end
```

#### Using the deductions_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedDeductionList>, Integer, Hash)> deductions_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.deductions_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedDeductionList>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling DeductionsApi->deductions_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **employee_payroll_run_id** | **String** | If provided, will only return deductions for this employee payroll run. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was deleted in the third-party service. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |

### Return type

[**PaginatedDeductionList**](PaginatedDeductionList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## deductions_retrieve

> <Deduction> deductions_retrieve(x_account_token, id, opts)



Returns a `Deduction` object with the given `id`.

### Examples

```ruby
require 'time'
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = MergeHRISClient::DeductionsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.deductions_retrieve(x_account_token, id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling DeductionsApi->deductions_retrieve: #{e}"
end
```

#### Using the deductions_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Deduction>, Integer, Hash)> deductions_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.deductions_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Deduction>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling DeductionsApi->deductions_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |

### Return type

[**Deduction**](Deduction.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

