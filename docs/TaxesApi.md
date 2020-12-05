# OpenapiClient::TaxesApi

All URIs are relative to *https://app.merge.dev/api/hris/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**taxes_create**](TaxesApi.md#taxes_create) | **POST** /taxes | 
[**taxes_destroy**](TaxesApi.md#taxes_destroy) | **DELETE** /taxes/{id} | 
[**taxes_list**](TaxesApi.md#taxes_list) | **GET** /taxes | 
[**taxes_partial_update**](TaxesApi.md#taxes_partial_update) | **PATCH** /taxes/{id} | 
[**taxes_retrieve**](TaxesApi.md#taxes_retrieve) | **GET** /taxes/{id} | 
[**taxes_update**](TaxesApi.md#taxes_update) | **PUT** /taxes/{id} | 



## taxes_create

> Tax taxes_create(opts)



Creates a `Tax` object with the given values.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxesApi.new
opts = {
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  tax: OpenapiClient::Tax.new # Tax | 
}

begin
  result = api_instance.taxes_create(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling TaxesApi->taxes_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **tax** | [**Tax**](Tax.md)|  | [optional] 

### Return type

[**Tax**](Tax.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## taxes_destroy

> AsyncTaskExecution taxes_destroy(id, opts)



Deletes a `Tax` object with the given `id`.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxesApi.new
id = 'id_example' # String | 
opts = {
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  result = api_instance.taxes_destroy(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling TaxesApi->taxes_destroy: #{e}"
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


## taxes_list

> PaginatedTaxList taxes_list(opts)



Returns a list of `Tax` objects.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxesApi.new
opts = {
  cursor: 56, # Integer | The pagination cursor value.
  linked_account_id: 'linked_account_id_example', # String | If provided, will only return objects associated with the given `linked_account_id`.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  result = api_instance.taxes_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling TaxesApi->taxes_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **Integer**| The pagination cursor value. | [optional] 
 **linked_account_id** | **String**| If provided, will only return objects associated with the given &#x60;linked_account_id&#x60;. | [optional] 
 **remote_id** | **String**| The API provider&#39;s ID for the given object. | [optional] 

### Return type

[**PaginatedTaxList**](PaginatedTaxList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## taxes_partial_update

> Tax taxes_partial_update(id, opts)



Updates a `Tax` object with the given `id`.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxesApi.new
id = 'id_example' # String | 
opts = {
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  patched_tax: OpenapiClient::PatchedTax.new # PatchedTax | 
}

begin
  result = api_instance.taxes_partial_update(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling TaxesApi->taxes_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **patched_tax** | [**PatchedTax**](PatchedTax.md)|  | [optional] 

### Return type

[**Tax**](Tax.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## taxes_retrieve

> Tax taxes_retrieve(id)



Returns a `Tax` object with the given `id`.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxesApi.new
id = 'id_example' # String | 

begin
  result = api_instance.taxes_retrieve(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling TaxesApi->taxes_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 

### Return type

[**Tax**](Tax.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## taxes_update

> Tax taxes_update(id, opts)



### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TaxesApi.new
id = 'id_example' # String | 
opts = {
  tax: OpenapiClient::Tax.new # Tax | 
}

begin
  result = api_instance.taxes_update(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling TaxesApi->taxes_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **tax** | [**Tax**](Tax.md)|  | [optional] 

### Return type

[**Tax**](Tax.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

