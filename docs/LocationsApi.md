# MergeHRISClient::LocationsApi

All URIs are relative to *https://app.merge.dev/api/hris/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**locations_create**](LocationsApi.md#locations_create) | **POST** /locations | 
[**locations_destroy**](LocationsApi.md#locations_destroy) | **DELETE** /locations/{id} | 
[**locations_list**](LocationsApi.md#locations_list) | **GET** /locations | 
[**locations_partial_update**](LocationsApi.md#locations_partial_update) | **PATCH** /locations/{id} | 
[**locations_retrieve**](LocationsApi.md#locations_retrieve) | **GET** /locations/{id} | 
[**locations_update**](LocationsApi.md#locations_update) | **PUT** /locations/{id} | 



## locations_create

> Location locations_create(opts)



Creates a `Location` object with the given values.

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

api_instance = MergeHRISClient::LocationsApi.new
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  location: MergeHRISClient::Location.new # Location | 
}

begin
  result = api_instance.locations_create(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling LocationsApi->locations_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_link_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **location** | [**Location**](Location.md)|  | [optional] 

### Return type

[**Location**](Location.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## locations_destroy

> AsyncTaskExecution locations_destroy(id, opts)



Deletes a `Location` object with the given `id`.

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

api_instance = MergeHRISClient::LocationsApi.new
id = 'id_example' # String | 
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  result = api_instance.locations_destroy(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling LocationsApi->locations_destroy: #{e}"
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


## locations_list

> PaginatedLocationList locations_list(opts)



Returns a list of `Location` objects.

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

api_instance = MergeHRISClient::LocationsApi.new
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  cursor: 56, # Integer | The pagination cursor value.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  result = api_instance.locations_list(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling LocationsApi->locations_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_link_token** | **String**| Token identifying the end user. | [optional] 
 **cursor** | **Integer**| The pagination cursor value. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**PaginatedLocationList**](PaginatedLocationList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## locations_partial_update

> Location locations_partial_update(id, opts)



Updates a `Location` object with the given `id`.

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

api_instance = MergeHRISClient::LocationsApi.new
id = 'id_example' # String | 
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  patched_location: MergeHRISClient::PatchedLocation.new # PatchedLocation | 
}

begin
  result = api_instance.locations_partial_update(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling LocationsApi->locations_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_link_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **patched_location** | [**PatchedLocation**](PatchedLocation.md)|  | [optional] 

### Return type

[**Location**](Location.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## locations_retrieve

> Location locations_retrieve(id, opts)



Returns a `Location` object with the given `id`.

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

api_instance = MergeHRISClient::LocationsApi.new
id = 'id_example' # String | 
opts = {
  x_link_token: 'x_link_token_example' # String | Token identifying the end user.
}

begin
  result = api_instance.locations_retrieve(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling LocationsApi->locations_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_link_token** | **String**| Token identifying the end user. | [optional] 

### Return type

[**Location**](Location.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## locations_update

> Location locations_update(id, opts)



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

api_instance = MergeHRISClient::LocationsApi.new
id = 'id_example' # String | 
opts = {
  location: MergeHRISClient::Location.new # Location | 
}

begin
  result = api_instance.locations_update(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling LocationsApi->locations_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **location** | [**Location**](Location.md)|  | [optional] 

### Return type

[**Location**](Location.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

