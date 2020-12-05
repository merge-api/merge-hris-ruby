# MergeHRISClient::EmployeePayrollRunsApi

All URIs are relative to *https://app.merge.dev/api/hris/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**employee_payroll_runs_create**](EmployeePayrollRunsApi.md#employee_payroll_runs_create) | **POST** /employee-payroll-runs | 
[**employee_payroll_runs_destroy**](EmployeePayrollRunsApi.md#employee_payroll_runs_destroy) | **DELETE** /employee-payroll-runs/{id} | 
[**employee_payroll_runs_list**](EmployeePayrollRunsApi.md#employee_payroll_runs_list) | **GET** /employee-payroll-runs | 
[**employee_payroll_runs_partial_update**](EmployeePayrollRunsApi.md#employee_payroll_runs_partial_update) | **PATCH** /employee-payroll-runs/{id} | 
[**employee_payroll_runs_retrieve**](EmployeePayrollRunsApi.md#employee_payroll_runs_retrieve) | **GET** /employee-payroll-runs/{id} | 
[**employee_payroll_runs_update**](EmployeePayrollRunsApi.md#employee_payroll_runs_update) | **PUT** /employee-payroll-runs/{id} | 



## employee_payroll_runs_create

> EmployeePayrollRun employee_payroll_runs_create(opts)



Creates an `EmployeePayrollRun` object with the given values.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::EmployeePayrollRunsApi.new
opts = {
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  employee_payroll_run: MergeHRISClient::EmployeePayrollRun.new # EmployeePayrollRun | 
}

begin
  result = api_instance.employee_payroll_runs_create(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EmployeePayrollRunsApi->employee_payroll_runs_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **employee_payroll_run** | [**EmployeePayrollRun**](EmployeePayrollRun.md)|  | [optional] 

### Return type

[**EmployeePayrollRun**](EmployeePayrollRun.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## employee_payroll_runs_destroy

> AsyncTaskExecution employee_payroll_runs_destroy(id, opts)



Deletes an `EmployeePayrollRun` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::EmployeePayrollRunsApi.new
id = 'id_example' # String | 
opts = {
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  result = api_instance.employee_payroll_runs_destroy(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EmployeePayrollRunsApi->employee_payroll_runs_destroy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 

### Return type

[**AsyncTaskExecution**](AsyncTaskExecution.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## employee_payroll_runs_list

> PaginatedEmployeePayrollRunList employee_payroll_runs_list(opts)



Returns a list of `EmployeePayrollRun` objects.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::EmployeePayrollRunsApi.new
opts = {
  cursor: 56, # Integer | The pagination cursor value.
  expand: 'expand_example', # String | Which relations should be returned in expanded form.
  linked_account_id: 'linked_account_id_example', # String | If provided, will only return objects associated with the given `linked_account_id`.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  result = api_instance.employee_payroll_runs_list(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EmployeePayrollRunsApi->employee_payroll_runs_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **Integer**| The pagination cursor value. | [optional] 
 **expand** | **String**| Which relations should be returned in expanded form. | [optional] 
 **linked_account_id** | **String**| If provided, will only return objects associated with the given &#x60;linked_account_id&#x60;. | [optional] 
 **remote_id** | **String**| The API provider&#39;s ID for the given object. | [optional] 

### Return type

[**PaginatedEmployeePayrollRunList**](PaginatedEmployeePayrollRunList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## employee_payroll_runs_partial_update

> EmployeePayrollRun employee_payroll_runs_partial_update(id, opts)



Updates an `EmployeePayrollRun` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::EmployeePayrollRunsApi.new
id = 'id_example' # String | 
opts = {
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  patched_employee_payroll_run: MergeHRISClient::PatchedEmployeePayrollRun.new # PatchedEmployeePayrollRun | 
}

begin
  result = api_instance.employee_payroll_runs_partial_update(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EmployeePayrollRunsApi->employee_payroll_runs_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **patched_employee_payroll_run** | [**PatchedEmployeePayrollRun**](PatchedEmployeePayrollRun.md)|  | [optional] 

### Return type

[**EmployeePayrollRun**](EmployeePayrollRun.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## employee_payroll_runs_retrieve

> EmployeePayrollRun employee_payroll_runs_retrieve(id, opts)



Returns an `EmployeePayrollRun` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::EmployeePayrollRunsApi.new
id = 'id_example' # String | 
opts = {
  expand: 'expand_example' # String | Which relations should be returned in expanded form.
}

begin
  result = api_instance.employee_payroll_runs_retrieve(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EmployeePayrollRunsApi->employee_payroll_runs_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **expand** | **String**| Which relations should be returned in expanded form. | [optional] 

### Return type

[**EmployeePayrollRun**](EmployeePayrollRun.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## employee_payroll_runs_update

> EmployeePayrollRun employee_payroll_runs_update(id, opts)



### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::EmployeePayrollRunsApi.new
id = 'id_example' # String | 
opts = {
  employee_payroll_run: MergeHRISClient::EmployeePayrollRun.new # EmployeePayrollRun | 
}

begin
  result = api_instance.employee_payroll_runs_update(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EmployeePayrollRunsApi->employee_payroll_runs_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **employee_payroll_run** | [**EmployeePayrollRun**](EmployeePayrollRun.md)|  | [optional] 

### Return type

[**EmployeePayrollRun**](EmployeePayrollRun.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

