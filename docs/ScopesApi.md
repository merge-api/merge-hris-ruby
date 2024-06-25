# MergeHRISClient::ScopesApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**default_scopes_retrieve**](ScopesApi.md#default_scopes_retrieve) | **GET** /default-scopes |  |
| [**linked_account_scopes_create**](ScopesApi.md#linked_account_scopes_create) | **POST** /linked-account-scopes |  |
| [**linked_account_scopes_retrieve**](ScopesApi.md#linked_account_scopes_retrieve) | **GET** /linked-account-scopes |  |


## default_scopes_retrieve

> <CommonModelScopeAPI> default_scopes_retrieve



Get the default permissions for Merge Common Models and fields across all Linked Accounts of a given category. [Learn more](https://help.merge.dev/en/articles/8828211-common-model-and-field-scopes).

### Examples

```ruby
require 'time'
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeHRISClient::ScopesApi.new

begin
  
  result = api_instance.default_scopes_retrieve
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling ScopesApi->default_scopes_retrieve: #{e}"
end
```

#### Using the default_scopes_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommonModelScopeAPI>, Integer, Hash)> default_scopes_retrieve_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.default_scopes_retrieve_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommonModelScopeAPI>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling ScopesApi->default_scopes_retrieve_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CommonModelScopeAPI**](CommonModelScopeAPI.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## linked_account_scopes_create

> <CommonModelScopeAPI> linked_account_scopes_create(x_account_token, linked_account_common_model_scope_deserializer_request)



Update permissions for any Common Model or field for a single Linked Account. Any Scopes not set in this POST request will inherit the default Scopes. [Learn more](https://help.merge.dev/en/articles/8828211-common-model-and-field-scopes)

### Examples

```ruby
require 'time'
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeHRISClient::ScopesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
linked_account_common_model_scope_deserializer_request = MergeHRISClient::LinkedAccountCommonModelScopeDeserializerRequest.new({common_models: [MergeHRISClient::IndividualCommonModelScopeDeserializerRequest.new({model_name: 'model_name_example'})]}) # LinkedAccountCommonModelScopeDeserializerRequest | 

begin
  
  result = api_instance.linked_account_scopes_create(x_account_token, linked_account_common_model_scope_deserializer_request)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling ScopesApi->linked_account_scopes_create: #{e}"
end
```

#### Using the linked_account_scopes_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommonModelScopeAPI>, Integer, Hash)> linked_account_scopes_create_with_http_info(x_account_token, linked_account_common_model_scope_deserializer_request)

```ruby
begin
  
  data, status_code, headers = api_instance.linked_account_scopes_create_with_http_info(x_account_token, linked_account_common_model_scope_deserializer_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommonModelScopeAPI>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling ScopesApi->linked_account_scopes_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **linked_account_common_model_scope_deserializer_request** | [**LinkedAccountCommonModelScopeDeserializerRequest**](LinkedAccountCommonModelScopeDeserializerRequest.md) |  |  |

### Return type

[**CommonModelScopeAPI**](CommonModelScopeAPI.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## linked_account_scopes_retrieve

> <CommonModelScopeAPI> linked_account_scopes_retrieve(x_account_token)



Get all available permissions for Merge Common Models and fields for a single Linked Account. [Learn more](https://help.merge.dev/en/articles/8828211-common-model-and-field-scopes).

### Examples

```ruby
require 'time'
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeHRISClient::ScopesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.linked_account_scopes_retrieve(x_account_token)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling ScopesApi->linked_account_scopes_retrieve: #{e}"
end
```

#### Using the linked_account_scopes_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommonModelScopeAPI>, Integer, Hash)> linked_account_scopes_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.linked_account_scopes_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommonModelScopeAPI>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling ScopesApi->linked_account_scopes_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |

### Return type

[**CommonModelScopeAPI**](CommonModelScopeAPI.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

