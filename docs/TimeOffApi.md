# MergeHRISClient::TimeOffApi

All URIs are relative to *https://app.merge.dev/api/hris/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**time_off_create**](TimeOffApi.md#time_off_create) | **POST** /time-off | 
[**time_off_destroy**](TimeOffApi.md#time_off_destroy) | **DELETE** /time-off/{id} | 
[**time_off_list**](TimeOffApi.md#time_off_list) | **GET** /time-off | 
[**time_off_partial_update**](TimeOffApi.md#time_off_partial_update) | **PATCH** /time-off/{id} | 
[**time_off_retrieve**](TimeOffApi.md#time_off_retrieve) | **GET** /time-off/{id} | 
[**time_off_update**](TimeOffApi.md#time_off_update) | **PUT** /time-off/{id} | 



## time_off_create

> TimeOff time_off_create(opts)



Creates a `TimeOff` object with the given values.

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

api_instance = MergeHRISClient::TimeOffApi.new
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  time_off: MergeHRISClient::TimeOff.new # TimeOff | 
}

begin
  result = api_instance.time_off_create(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling TimeOffApi->time_off_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_link_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **time_off** | [**TimeOff**](TimeOff.md)|  | [optional] 

### Return type

[**TimeOff**](TimeOff.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## time_off_destroy

> AsyncTaskExecution time_off_destroy(id, opts)



Deletes an `TimeOff` object with the given `id`.

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

api_instance = MergeHRISClient::TimeOffApi.new
id = 'id_example' # String | 
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  result = api_instance.time_off_destroy(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling TimeOffApi->time_off_destroy: #{e}"
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


## time_off_list

> PaginatedTimeOffList time_off_list(opts)



Returns a list of `TimeOff` objects.

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

api_instance = MergeHRISClient::TimeOffApi.new
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  cursor: 56, # Integer | The pagination cursor value.
  expand: 'expand_example', # String | Which relations should be returned in expanded form.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  result = api_instance.time_off_list(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling TimeOffApi->time_off_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_link_token** | **String**| Token identifying the end user. | [optional] 
 **cursor** | **Integer**| The pagination cursor value. | [optional] 
 **expand** | **String**| Which relations should be returned in expanded form. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**PaginatedTimeOffList**](PaginatedTimeOffList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## time_off_partial_update

> TimeOff time_off_partial_update(id, opts)



Updates an `TimeOff` object with the given `id`.

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

api_instance = MergeHRISClient::TimeOffApi.new
id = 'id_example' # String | 
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  patched_time_off: MergeHRISClient::PatchedTimeOff.new # PatchedTimeOff | 
}

begin
  result = api_instance.time_off_partial_update(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling TimeOffApi->time_off_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_link_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **patched_time_off** | [**PatchedTimeOff**](PatchedTimeOff.md)|  | [optional] 

### Return type

[**TimeOff**](TimeOff.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## time_off_retrieve

> TimeOff time_off_retrieve(id, opts)



Returns an `TimeOff` object with the given `id`.

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

api_instance = MergeHRISClient::TimeOffApi.new
id = 'id_example' # String | 
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  expand: 'expand_example' # String | Which relations should be returned in expanded form.
}

begin
  result = api_instance.time_off_retrieve(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling TimeOffApi->time_off_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_link_token** | **String**| Token identifying the end user. | [optional] 
 **expand** | **String**| Which relations should be returned in expanded form. | [optional] 

### Return type

[**TimeOff**](TimeOff.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## time_off_update

> TimeOff time_off_update(id, opts)



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

api_instance = MergeHRISClient::TimeOffApi.new
id = 'id_example' # String | 
opts = {
  time_off: MergeHRISClient::TimeOff.new # TimeOff | 
}

begin
  result = api_instance.time_off_update(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling TimeOffApi->time_off_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **time_off** | [**TimeOff**](TimeOff.md)|  | [optional] 

### Return type

[**TimeOff**](TimeOff.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

