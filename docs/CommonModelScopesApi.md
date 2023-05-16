# MergeHRISClient::CommonModelScopesApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**common_model_scopes_create**](CommonModelScopesApi.md#common_model_scopes_create) | **POST** /common-model-scopes |  |
| [**common_model_scopes_retrieve**](CommonModelScopesApi.md#common_model_scopes_retrieve) | **GET** /common-model-scopes |  |


## common_model_scopes_create

> <CommonModelScopes> common_model_scopes_create(common_model_scopes_update_serializer, opts)



Update the configuration of what data is saved by Merge when syncing. Common model scopes are set as a default across all linked accounts, but can be updated to have greater granularity per account.

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

api_instance = MergeHRISClient::CommonModelScopesApi.new
common_model_scopes_update_serializer = MergeHRISClient::CommonModelScopesUpdateSerializer.new({common_models: [MergeHRISClient::CommonModelScopesPostInnerDeserializerRequest.new({model_id: 'hris.Employee', enabled_actions: [MergeHRISClient::EnabledActionsEnum::READ], disabled_fields: ['disabled_fields_example']})]}) # CommonModelScopesUpdateSerializer | 
opts = {
  linked_account_id: 'linked_account_id_example' # String | ID of specific linked account to fetch
}

begin
  
  result = api_instance.common_model_scopes_create(common_model_scopes_update_serializer, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling CommonModelScopesApi->common_model_scopes_create: #{e}"
end
```

#### Using the common_model_scopes_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommonModelScopes>, Integer, Hash)> common_model_scopes_create_with_http_info(common_model_scopes_update_serializer, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.common_model_scopes_create_with_http_info(common_model_scopes_update_serializer, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommonModelScopes>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling CommonModelScopesApi->common_model_scopes_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **common_model_scopes_update_serializer** | [**CommonModelScopesUpdateSerializer**](CommonModelScopesUpdateSerializer.md) |  |  |
| **linked_account_id** | **String** | ID of specific linked account to fetch | [optional] |

### Return type

[**CommonModelScopes**](CommonModelScopes.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## common_model_scopes_retrieve

> <CommonModelScopes> common_model_scopes_retrieve(opts)



Fetch the configuration of what data is saved by Merge when syncing. Common model scopes are set as a default across all linked accounts, but can be updated to have greater granularity per account.

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

api_instance = MergeHRISClient::CommonModelScopesApi.new
opts = {
  linked_account_id: 'linked_account_id_example' # String | ID of specific linked account to fetch
}

begin
  
  result = api_instance.common_model_scopes_retrieve(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling CommonModelScopesApi->common_model_scopes_retrieve: #{e}"
end
```

#### Using the common_model_scopes_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommonModelScopes>, Integer, Hash)> common_model_scopes_retrieve_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.common_model_scopes_retrieve_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommonModelScopes>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling CommonModelScopesApi->common_model_scopes_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linked_account_id** | **String** | ID of specific linked account to fetch | [optional] |

### Return type

[**CommonModelScopes**](CommonModelScopes.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

