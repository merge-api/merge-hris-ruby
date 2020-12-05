# MergeHRISClient::EmploymentsApi

All URIs are relative to *https://app.merge.dev/api/hris/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**employments_create**](EmploymentsApi.md#employments_create) | **POST** /employments | 
[**employments_destroy**](EmploymentsApi.md#employments_destroy) | **DELETE** /employments/{id} | 
[**employments_list**](EmploymentsApi.md#employments_list) | **GET** /employments | 
[**employments_partial_update**](EmploymentsApi.md#employments_partial_update) | **PATCH** /employments/{id} | 
[**employments_retrieve**](EmploymentsApi.md#employments_retrieve) | **GET** /employments/{id} | 
[**employments_update**](EmploymentsApi.md#employments_update) | **PUT** /employments/{id} | 



## employments_create

> Employment employments_create(opts)



Creates an `Employment` object with the given values.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::EmploymentsApi.new
opts = {
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  employment: MergeHRISClient::Employment.new # Employment | 
}

begin
  result = api_instance.employments_create(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EmploymentsApi->employments_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **employment** | [**Employment**](Employment.md)|  | [optional] 

### Return type

[**Employment**](Employment.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## employments_destroy

> AsyncTaskExecution employments_destroy(id, opts)



Deletes an `Employment` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::EmploymentsApi.new
id = 'id_example' # String | 
opts = {
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  result = api_instance.employments_destroy(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EmploymentsApi->employments_destroy: #{e}"
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


## employments_list

> PaginatedEmploymentList employments_list(opts)



Returns a list of `Employment` objects.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::EmploymentsApi.new
opts = {
  cursor: 56, # Integer | The pagination cursor value.
  linked_account_id: 'linked_account_id_example', # String | If provided, will only return objects associated with the given `linked_account_id`.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  result = api_instance.employments_list(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EmploymentsApi->employments_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **Integer**| The pagination cursor value. | [optional] 
 **linked_account_id** | **String**| If provided, will only return objects associated with the given &#x60;linked_account_id&#x60;. | [optional] 
 **remote_id** | **String**| The API provider&#39;s ID for the given object. | [optional] 

### Return type

[**PaginatedEmploymentList**](PaginatedEmploymentList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## employments_partial_update

> Employment employments_partial_update(id, opts)



Updates an `Employment` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::EmploymentsApi.new
id = 'id_example' # String | 
opts = {
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  patched_employment: MergeHRISClient::PatchedEmployment.new # PatchedEmployment | 
}

begin
  result = api_instance.employments_partial_update(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EmploymentsApi->employments_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **patched_employment** | [**PatchedEmployment**](PatchedEmployment.md)|  | [optional] 

### Return type

[**Employment**](Employment.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## employments_retrieve

> Employment employments_retrieve(id)



Returns an `Employment` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::EmploymentsApi.new
id = 'id_example' # String | 

begin
  result = api_instance.employments_retrieve(id)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EmploymentsApi->employments_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 

### Return type

[**Employment**](Employment.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## employments_update

> Employment employments_update(id, opts)



### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::EmploymentsApi.new
id = 'id_example' # String | 
opts = {
  employment: MergeHRISClient::Employment.new # Employment | 
}

begin
  result = api_instance.employments_update(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EmploymentsApi->employments_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **employment** | [**Employment**](Employment.md)|  | [optional] 

### Return type

[**Employment**](Employment.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

