# MergeHRISClient::EmployeePayrollRunsApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**employee_payroll_runs_list**](EmployeePayrollRunsApi.md#employee_payroll_runs_list) | **GET** /employee-payroll-runs | 
[**employee_payroll_runs_retrieve**](EmployeePayrollRunsApi.md#employee_payroll_runs_retrieve) | **GET** /employee-payroll-runs/{id} | 



## employee_payroll_runs_list

> PaginatedEmployeePayrollRunList employee_payroll_runs_list(x_account_token, opts)



Returns a list of `EmployeePayrollRun` objects.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = MergeHRISClient::EmployeePayrollRunsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  created_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects created after this datetime.
  created_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  employee_id: 'employee_id_example', # String | If provided, will only return employee payroll runs for this employee.
  expand: 'employee,payroll_run', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  modified_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects modified after this datetime.
  modified_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  payroll_run_id: 'payroll_run_id_example', # String | If provided, will only return employee payroll runs for this employee.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  result = api_instance.employee_payroll_runs_list(x_account_token, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EmployeePayrollRunsApi->employee_payroll_runs_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_account_token** | **String**| Token identifying the end user. | 
 **created_after** | **DateTime**| If provided, will only return objects created after this datetime. | [optional] 
 **created_before** | **DateTime**| If provided, will only return objects created before this datetime. | [optional] 
 **cursor** | **String**| The pagination cursor value. | [optional] 
 **employee_id** | [**String**](.md)| If provided, will only return employee payroll runs for this employee. | [optional] 
 **expand** | **String**| Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] 
 **modified_after** | **DateTime**| If provided, will only return objects modified after this datetime. | [optional] 
 **modified_before** | **DateTime**| If provided, will only return objects modified before this datetime. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 
 **payroll_run_id** | [**String**](.md)| If provided, will only return employee payroll runs for this employee. | [optional] 
 **remote_id** | **String**| The API provider&#39;s ID for the given object. | [optional] 

### Return type

[**PaginatedEmployeePayrollRunList**](PaginatedEmployeePayrollRunList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## employee_payroll_runs_retrieve

> EmployeePayrollRun employee_payroll_runs_retrieve(x_account_token, id, opts)



Returns an `EmployeePayrollRun` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = MergeHRISClient::EmployeePayrollRunsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = 'id_example' # String | 
opts = {
  expand: 'employee,payroll_run' # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
}

begin
  result = api_instance.employee_payroll_runs_retrieve(x_account_token, id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EmployeePayrollRunsApi->employee_payroll_runs_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_account_token** | **String**| Token identifying the end user. | 
 **id** | [**String**](.md)|  | 
 **expand** | **String**| Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] 

### Return type

[**EmployeePayrollRun**](EmployeePayrollRun.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

