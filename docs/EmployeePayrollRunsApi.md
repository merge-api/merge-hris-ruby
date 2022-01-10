# MergeHRISClient::EmployeePayrollRunsApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**employee_payroll_runs_list**](EmployeePayrollRunsApi.md#employee_payroll_runs_list) | **GET** /employee-payroll-runs |  |
| [**employee_payroll_runs_retrieve**](EmployeePayrollRunsApi.md#employee_payroll_runs_retrieve) | **GET** /employee-payroll-runs/{id} |  |


## employee_payroll_runs_list

> <PaginatedEmployeePayrollRunList> employee_payroll_runs_list(x_account_token, opts)



Returns a list of `EmployeePayrollRun` objects.

### Examples

```ruby
require 'time'
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = MergeHRISClient::EmployeePayrollRunsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  employee_id: 'employee_id_example', # String | If provided, will only return employee payroll runs for this employee.
  ended_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return employee payroll runs ended after this datetime.
  ended_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return employee payroll runs ended before this datetime.
  expand: 'employee', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was deleted in the third-party service.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  payroll_run_id: 'payroll_run_id_example', # String | If provided, will only return employee payroll runs for this employee.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  started_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return employee payroll runs started after this datetime.
  started_before: Time.parse('2013-10-20T19:20:30+01:00') # Time | If provided, will only return employee payroll runs started before this datetime.
}

begin
  
  result = api_instance.employee_payroll_runs_list(x_account_token, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling EmployeePayrollRunsApi->employee_payroll_runs_list: #{e}"
end
```

#### Using the employee_payroll_runs_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedEmployeePayrollRunList>, Integer, Hash)> employee_payroll_runs_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.employee_payroll_runs_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedEmployeePayrollRunList>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling EmployeePayrollRunsApi->employee_payroll_runs_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **employee_id** | **String** | If provided, will only return employee payroll runs for this employee. | [optional] |
| **ended_after** | **Time** | If provided, will only return employee payroll runs ended after this datetime. | [optional] |
| **ended_before** | **Time** | If provided, will only return employee payroll runs ended before this datetime. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was deleted in the third-party service. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **payroll_run_id** | **String** | If provided, will only return employee payroll runs for this employee. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |
| **started_after** | **Time** | If provided, will only return employee payroll runs started after this datetime. | [optional] |
| **started_before** | **Time** | If provided, will only return employee payroll runs started before this datetime. | [optional] |

### Return type

[**PaginatedEmployeePayrollRunList**](PaginatedEmployeePayrollRunList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## employee_payroll_runs_retrieve

> <EmployeePayrollRun> employee_payroll_runs_retrieve(x_account_token, id, opts)



Returns an `EmployeePayrollRun` object with the given `id`.

### Examples

```ruby
require 'time'
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = MergeHRISClient::EmployeePayrollRunsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'employee', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.employee_payroll_runs_retrieve(x_account_token, id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling EmployeePayrollRunsApi->employee_payroll_runs_retrieve: #{e}"
end
```

#### Using the employee_payroll_runs_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeePayrollRun>, Integer, Hash)> employee_payroll_runs_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.employee_payroll_runs_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeePayrollRun>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling EmployeePayrollRunsApi->employee_payroll_runs_retrieve_with_http_info: #{e}"
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

[**EmployeePayrollRun**](EmployeePayrollRun.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

