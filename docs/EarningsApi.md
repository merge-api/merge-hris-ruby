# MergeHRISClient::EarningsApi

All URIs are relative to *https://app.merge.dev/api/hris/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**earnings_create**](EarningsApi.md#earnings_create) | **POST** /earnings | 
[**earnings_destroy**](EarningsApi.md#earnings_destroy) | **DELETE** /earnings/{id} | 
[**earnings_list**](EarningsApi.md#earnings_list) | **GET** /earnings | 
[**earnings_partial_update**](EarningsApi.md#earnings_partial_update) | **PATCH** /earnings/{id} | 
[**earnings_retrieve**](EarningsApi.md#earnings_retrieve) | **GET** /earnings/{id} | 
[**earnings_update**](EarningsApi.md#earnings_update) | **PUT** /earnings/{id} | 



## earnings_create

> Earning earnings_create(opts)



Creates an `Earning` object with the given values.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::EarningsApi.new
opts = {
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  earning: MergeHRISClient::Earning.new # Earning | 
}

begin
  result = api_instance.earnings_create(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EarningsApi->earnings_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **earning** | [**Earning**](Earning.md)|  | [optional] 

### Return type

[**Earning**](Earning.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## earnings_destroy

> AsyncTaskExecution earnings_destroy(id, opts)



Deletes an `Earning` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::EarningsApi.new
id = 'id_example' # String | 
opts = {
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  result = api_instance.earnings_destroy(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EarningsApi->earnings_destroy: #{e}"
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


## earnings_list

> PaginatedEarningList earnings_list(opts)



Returns a list of `Earning` objects.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::EarningsApi.new
opts = {
  cursor: 56, # Integer | The pagination cursor value.
  linked_account_id: 'linked_account_id_example', # String | If provided, will only return objects associated with the given `linked_account_id`.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  result = api_instance.earnings_list(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EarningsApi->earnings_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **Integer**| The pagination cursor value. | [optional] 
 **linked_account_id** | **String**| If provided, will only return objects associated with the given &#x60;linked_account_id&#x60;. | [optional] 
 **remote_id** | **String**| The API provider&#39;s ID for the given object. | [optional] 

### Return type

[**PaginatedEarningList**](PaginatedEarningList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## earnings_partial_update

> Earning earnings_partial_update(id, opts)



Updates an `Earning` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::EarningsApi.new
id = 'id_example' # String | 
opts = {
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  patched_earning: MergeHRISClient::PatchedEarning.new # PatchedEarning | 
}

begin
  result = api_instance.earnings_partial_update(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EarningsApi->earnings_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **patched_earning** | [**PatchedEarning**](PatchedEarning.md)|  | [optional] 

### Return type

[**Earning**](Earning.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## earnings_retrieve

> Earning earnings_retrieve(id)



Returns an `Earning` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::EarningsApi.new
id = 'id_example' # String | 

begin
  result = api_instance.earnings_retrieve(id)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EarningsApi->earnings_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 

### Return type

[**Earning**](Earning.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## earnings_update

> Earning earnings_update(id, opts)



### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::EarningsApi.new
id = 'id_example' # String | 
opts = {
  earning: MergeHRISClient::Earning.new # Earning | 
}

begin
  result = api_instance.earnings_update(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling EarningsApi->earnings_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **earning** | [**Earning**](Earning.md)|  | [optional] 

### Return type

[**Earning**](Earning.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

