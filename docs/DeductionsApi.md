# MergeHRISClient::DeductionsApi

All URIs are relative to *https://app.merge.dev/api/hris/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deductions_create**](DeductionsApi.md#deductions_create) | **POST** /deductions | 
[**deductions_destroy**](DeductionsApi.md#deductions_destroy) | **DELETE** /deductions/{id} | 
[**deductions_list**](DeductionsApi.md#deductions_list) | **GET** /deductions | 
[**deductions_partial_update**](DeductionsApi.md#deductions_partial_update) | **PATCH** /deductions/{id} | 
[**deductions_retrieve**](DeductionsApi.md#deductions_retrieve) | **GET** /deductions/{id} | 
[**deductions_update**](DeductionsApi.md#deductions_update) | **PUT** /deductions/{id} | 



## deductions_create

> Deduction deductions_create(opts)



Creates a `Deduction` object with the given values.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::DeductionsApi.new
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  deduction: MergeHRISClient::Deduction.new # Deduction | 
}

begin
  result = api_instance.deductions_create(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling DeductionsApi->deductions_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_link_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **deduction** | [**Deduction**](Deduction.md)|  | [optional] 

### Return type

[**Deduction**](Deduction.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## deductions_destroy

> AsyncTaskExecution deductions_destroy(id, opts)



Deletes a `Deduction` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::DeductionsApi.new
id = 'id_example' # String | 
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  result = api_instance.deductions_destroy(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling DeductionsApi->deductions_destroy: #{e}"
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


## deductions_list

> PaginatedDeductionList deductions_list(opts)



Returns a list of `Deduction` objects.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::DeductionsApi.new
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
  result = api_instance.deductions_list(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling DeductionsApi->deductions_list: #{e}"
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

[**PaginatedDeductionList**](PaginatedDeductionList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## deductions_partial_update

> Deduction deductions_partial_update(id, opts)



Updates a `Deduction` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::DeductionsApi.new
id = 'id_example' # String | 
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  patched_deduction: MergeHRISClient::PatchedDeduction.new # PatchedDeduction | 
}

begin
  result = api_instance.deductions_partial_update(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling DeductionsApi->deductions_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_link_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **patched_deduction** | [**PatchedDeduction**](PatchedDeduction.md)|  | [optional] 

### Return type

[**Deduction**](Deduction.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## deductions_retrieve

> Deduction deductions_retrieve(id, opts)



Returns a `Deduction` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::DeductionsApi.new
id = 'id_example' # String | 
opts = {
  x_link_token: 'x_link_token_example' # String | Token identifying the end user.
}

begin
  result = api_instance.deductions_retrieve(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling DeductionsApi->deductions_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_link_token** | **String**| Token identifying the end user. | [optional] 

### Return type

[**Deduction**](Deduction.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## deductions_update

> Deduction deductions_update(id, opts)



### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::DeductionsApi.new
id = 'id_example' # String | 
opts = {
  deduction: MergeHRISClient::Deduction.new # Deduction | 
}

begin
  result = api_instance.deductions_update(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling DeductionsApi->deductions_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **deduction** | [**Deduction**](Deduction.md)|  | [optional] 

### Return type

[**Deduction**](Deduction.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

