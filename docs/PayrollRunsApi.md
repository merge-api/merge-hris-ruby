# MergeHRISClient::PayrollRunsApi

All URIs are relative to *https://app.merge.dev/api/hris/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**payroll_runs_create**](PayrollRunsApi.md#payroll_runs_create) | **POST** /payroll-runs | 
[**payroll_runs_destroy**](PayrollRunsApi.md#payroll_runs_destroy) | **DELETE** /payroll-runs/{id} | 
[**payroll_runs_list**](PayrollRunsApi.md#payroll_runs_list) | **GET** /payroll-runs | 
[**payroll_runs_partial_update**](PayrollRunsApi.md#payroll_runs_partial_update) | **PATCH** /payroll-runs/{id} | 
[**payroll_runs_retrieve**](PayrollRunsApi.md#payroll_runs_retrieve) | **GET** /payroll-runs/{id} | 
[**payroll_runs_update**](PayrollRunsApi.md#payroll_runs_update) | **PUT** /payroll-runs/{id} | 



## payroll_runs_create

> PayrollRun payroll_runs_create(opts)



Creates a `PayrollRun` object with the given values.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::PayrollRunsApi.new
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  payroll_run: MergeHRISClient::PayrollRun.new # PayrollRun | 
}

begin
  result = api_instance.payroll_runs_create(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling PayrollRunsApi->payroll_runs_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_link_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **payroll_run** | [**PayrollRun**](PayrollRun.md)|  | [optional] 

### Return type

[**PayrollRun**](PayrollRun.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## payroll_runs_destroy

> AsyncTaskExecution payroll_runs_destroy(id, opts)



Deletes a `PayrollRun` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::PayrollRunsApi.new
id = 'id_example' # String | 
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  result = api_instance.payroll_runs_destroy(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling PayrollRunsApi->payroll_runs_destroy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_link_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 

### Return type

[**AsyncTaskExecution**](AsyncTaskExecution.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## payroll_runs_list

> PaginatedPayrollRunList payroll_runs_list(opts)



Returns a list of `PayrollRun` objects.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::PayrollRunsApi.new
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  created_after: 'created_after_example', # String | If provided, will only return objects created after this datetime.
  created_before: 'created_before_example', # String | If provided, will only return objects created before this datetime.
  cursor: 56, # Integer | The pagination cursor value.
  linked_account_id: 'linked_account_id_example', # String | If provided, will only return objects associated with the given `linked_account_id`.
  modified_after: 'modified_after_example', # String | If provided, will only return objects modified after this datetime.
  modified_before: 'modified_before_example', # String | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  result = api_instance.payroll_runs_list(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling PayrollRunsApi->payroll_runs_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_link_token** | **String**| Token identifying the end user. | [optional] 
 **created_after** | **String**| If provided, will only return objects created after this datetime. | [optional] 
 **created_before** | **String**| If provided, will only return objects created before this datetime. | [optional] 
 **cursor** | **Integer**| The pagination cursor value. | [optional] 
 **linked_account_id** | **String**| If provided, will only return objects associated with the given &#x60;linked_account_id&#x60;. | [optional] 
 **modified_after** | **String**| If provided, will only return objects modified after this datetime. | [optional] 
 **modified_before** | **String**| If provided, will only return objects modified before this datetime. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 
 **remote_id** | **String**| The API provider&#39;s ID for the given object. | [optional] 

### Return type

[**PaginatedPayrollRunList**](PaginatedPayrollRunList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## payroll_runs_partial_update

> PayrollRun payroll_runs_partial_update(id, opts)



Updates a `PayrollRun` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::PayrollRunsApi.new
id = 'id_example' # String | 
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  patched_payroll_run: MergeHRISClient::PatchedPayrollRun.new # PatchedPayrollRun | 
}

begin
  result = api_instance.payroll_runs_partial_update(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling PayrollRunsApi->payroll_runs_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_link_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **patched_payroll_run** | [**PatchedPayrollRun**](PatchedPayrollRun.md)|  | [optional] 

### Return type

[**PayrollRun**](PayrollRun.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## payroll_runs_retrieve

> PayrollRun payroll_runs_retrieve(id, opts)



Returns a `PayrollRun` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::PayrollRunsApi.new
id = 'id_example' # String | 
opts = {
  x_link_token: 'x_link_token_example' # String | Token identifying the end user.
}

begin
  result = api_instance.payroll_runs_retrieve(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling PayrollRunsApi->payroll_runs_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_link_token** | **String**| Token identifying the end user. | [optional] 

### Return type

[**PayrollRun**](PayrollRun.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## payroll_runs_update

> PayrollRun payroll_runs_update(id, opts)



### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::PayrollRunsApi.new
id = 'id_example' # String | 
opts = {
  payroll_run: MergeHRISClient::PayrollRun.new # PayrollRun | 
}

begin
  result = api_instance.payroll_runs_update(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling PayrollRunsApi->payroll_runs_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **payroll_run** | [**PayrollRun**](PayrollRun.md)|  | [optional] 

### Return type

[**PayrollRun**](PayrollRun.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

