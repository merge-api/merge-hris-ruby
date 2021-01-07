# MergeHRISClient::BenefitsApi

All URIs are relative to *https://app.merge.dev/api/hris/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**benefits_create**](BenefitsApi.md#benefits_create) | **POST** /benefits | 
[**benefits_destroy**](BenefitsApi.md#benefits_destroy) | **DELETE** /benefits/{id} | 
[**benefits_list**](BenefitsApi.md#benefits_list) | **GET** /benefits | 
[**benefits_partial_update**](BenefitsApi.md#benefits_partial_update) | **PATCH** /benefits/{id} | 
[**benefits_retrieve**](BenefitsApi.md#benefits_retrieve) | **GET** /benefits/{id} | 
[**benefits_update**](BenefitsApi.md#benefits_update) | **PUT** /benefits/{id} | 



## benefits_create

> Benefit benefits_create(opts)



Creates a `Benefit` object with the given values.

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

api_instance = MergeHRISClient::BenefitsApi.new
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  benefit: MergeHRISClient::Benefit.new # Benefit | 
}

begin
  result = api_instance.benefits_create(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling BenefitsApi->benefits_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_link_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **benefit** | [**Benefit**](Benefit.md)|  | [optional] 

### Return type

[**Benefit**](Benefit.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## benefits_destroy

> AsyncTaskExecution benefits_destroy(id, opts)



Deletes a `Benefit` object with the given `id`.

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

api_instance = MergeHRISClient::BenefitsApi.new
id = 'id_example' # String | 
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  result = api_instance.benefits_destroy(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling BenefitsApi->benefits_destroy: #{e}"
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


## benefits_list

> PaginatedBenefitList benefits_list(opts)



Returns a list of `Benefit` objects.

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

api_instance = MergeHRISClient::BenefitsApi.new
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  cursor: 56, # Integer | The pagination cursor value.
  expand: 'expand_example', # String | Which relations should be returned in expanded form.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  result = api_instance.benefits_list(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling BenefitsApi->benefits_list: #{e}"
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

[**PaginatedBenefitList**](PaginatedBenefitList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## benefits_partial_update

> Benefit benefits_partial_update(id, opts)



Updates a `Benefit` object with the given `id`.

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

api_instance = MergeHRISClient::BenefitsApi.new
id = 'id_example' # String | 
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  patched_benefit: MergeHRISClient::PatchedBenefit.new # PatchedBenefit | 
}

begin
  result = api_instance.benefits_partial_update(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling BenefitsApi->benefits_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_link_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **patched_benefit** | [**PatchedBenefit**](PatchedBenefit.md)|  | [optional] 

### Return type

[**Benefit**](Benefit.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## benefits_retrieve

> Benefit benefits_retrieve(id, opts)



Returns a `Benefit` object with the given `id`.

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

api_instance = MergeHRISClient::BenefitsApi.new
id = 'id_example' # String | 
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  expand: 'expand_example' # String | Which relations should be returned in expanded form.
}

begin
  result = api_instance.benefits_retrieve(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling BenefitsApi->benefits_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_link_token** | **String**| Token identifying the end user. | [optional] 
 **expand** | **String**| Which relations should be returned in expanded form. | [optional] 

### Return type

[**Benefit**](Benefit.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## benefits_update

> Benefit benefits_update(id, opts)



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

api_instance = MergeHRISClient::BenefitsApi.new
id = 'id_example' # String | 
opts = {
  benefit: MergeHRISClient::Benefit.new # Benefit | 
}

begin
  result = api_instance.benefits_update(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling BenefitsApi->benefits_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **benefit** | [**Benefit**](Benefit.md)|  | [optional] 

### Return type

[**Benefit**](Benefit.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

