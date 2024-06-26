# MergeHRISClient::FieldMappingApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**field_mappings_create**](FieldMappingApi.md#field_mappings_create) | **POST** /field-mappings |  |
| [**field_mappings_destroy**](FieldMappingApi.md#field_mappings_destroy) | **DELETE** /field-mappings/{field_mapping_id} |  |
| [**field_mappings_partial_update**](FieldMappingApi.md#field_mappings_partial_update) | **PATCH** /field-mappings/{field_mapping_id} |  |
| [**field_mappings_retrieve**](FieldMappingApi.md#field_mappings_retrieve) | **GET** /field-mappings |  |
| [**remote_fields_retrieve**](FieldMappingApi.md#remote_fields_retrieve) | **GET** /remote-fields |  |
| [**target_fields_retrieve**](FieldMappingApi.md#target_fields_retrieve) | **GET** /target-fields |  |


## field_mappings_create

> <FieldMappingInstanceResponse> field_mappings_create(x_account_token, create_field_mapping_request)



Create new Field Mappings that will be available after the next scheduled sync. This will cause the next sync for this Linked Account to sync **ALL** data from start.

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

api_instance = MergeHRISClient::FieldMappingApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
create_field_mapping_request = MergeHRISClient::CreateFieldMappingRequest.new({target_field_name: 'example_target_field_name', target_field_description: 'this is a example description of the target field', remote_field_traversal_path: [TODO], remote_method: 'GET', remote_url_path: '/example-url-path', common_model_name: 'ExampleCommonModel'}) # CreateFieldMappingRequest | 

begin
  
  result = api_instance.field_mappings_create(x_account_token, create_field_mapping_request)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling FieldMappingApi->field_mappings_create: #{e}"
end
```

#### Using the field_mappings_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FieldMappingInstanceResponse>, Integer, Hash)> field_mappings_create_with_http_info(x_account_token, create_field_mapping_request)

```ruby
begin
  
  data, status_code, headers = api_instance.field_mappings_create_with_http_info(x_account_token, create_field_mapping_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FieldMappingInstanceResponse>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling FieldMappingApi->field_mappings_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **create_field_mapping_request** | [**CreateFieldMappingRequest**](CreateFieldMappingRequest.md) |  |  |

### Return type

[**FieldMappingInstanceResponse**](FieldMappingInstanceResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## field_mappings_destroy

> <FieldMappingInstanceResponse> field_mappings_destroy(x_account_token, field_mapping_id)



Deletes Field Mappings for a Linked Account. All data related to this Field Mapping will be deleted and these changes will be reflected after the next scheduled sync. This will cause the next sync for this Linked Account to sync **ALL** data from start.

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

api_instance = MergeHRISClient::FieldMappingApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
field_mapping_id = TODO # String | 

begin
  
  result = api_instance.field_mappings_destroy(x_account_token, field_mapping_id)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling FieldMappingApi->field_mappings_destroy: #{e}"
end
```

#### Using the field_mappings_destroy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FieldMappingInstanceResponse>, Integer, Hash)> field_mappings_destroy_with_http_info(x_account_token, field_mapping_id)

```ruby
begin
  
  data, status_code, headers = api_instance.field_mappings_destroy_with_http_info(x_account_token, field_mapping_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FieldMappingInstanceResponse>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling FieldMappingApi->field_mappings_destroy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **field_mapping_id** | [**String**](.md) |  |  |

### Return type

[**FieldMappingInstanceResponse**](FieldMappingInstanceResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## field_mappings_partial_update

> <FieldMappingInstanceResponse> field_mappings_partial_update(x_account_token, field_mapping_id, opts)



Create or update existing Field Mappings for a Linked Account. Changes will be reflected after the next scheduled sync. This will cause the next sync for this Linked Account to sync **ALL** data from start.

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

api_instance = MergeHRISClient::FieldMappingApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
field_mapping_id = TODO # String | 
opts = {
  patched_edit_field_mapping_request: MergeHRISClient::PatchedEditFieldMappingRequest.new # PatchedEditFieldMappingRequest | 
}

begin
  
  result = api_instance.field_mappings_partial_update(x_account_token, field_mapping_id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling FieldMappingApi->field_mappings_partial_update: #{e}"
end
```

#### Using the field_mappings_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FieldMappingInstanceResponse>, Integer, Hash)> field_mappings_partial_update_with_http_info(x_account_token, field_mapping_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.field_mappings_partial_update_with_http_info(x_account_token, field_mapping_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FieldMappingInstanceResponse>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling FieldMappingApi->field_mappings_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **field_mapping_id** | [**String**](.md) |  |  |
| **patched_edit_field_mapping_request** | [**PatchedEditFieldMappingRequest**](PatchedEditFieldMappingRequest.md) |  | [optional] |

### Return type

[**FieldMappingInstanceResponse**](FieldMappingInstanceResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## field_mappings_retrieve

> <FieldMappingApiInstanceResponse> field_mappings_retrieve(x_account_token)



Get all Field Mappings for this Linked Account. Field Mappings are mappings between third-party Remote Fields and user defined Merge fields. [Learn more](https://docs.merge.dev/supplemental-data/field-mappings/overview/).

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

api_instance = MergeHRISClient::FieldMappingApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.field_mappings_retrieve(x_account_token)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling FieldMappingApi->field_mappings_retrieve: #{e}"
end
```

#### Using the field_mappings_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FieldMappingApiInstanceResponse>, Integer, Hash)> field_mappings_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.field_mappings_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FieldMappingApiInstanceResponse>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling FieldMappingApi->field_mappings_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |

### Return type

[**FieldMappingApiInstanceResponse**](FieldMappingApiInstanceResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remote_fields_retrieve

> <RemoteFieldAPIResponse> remote_fields_retrieve(x_account_token, opts)



Get all remote fields for a Linked Account. Remote fields are third-party fields that are accessible after initial sync if remote_data is enabled. You can use remote fields to override existing Merge fields or map a new Merge field. [Learn more](https://docs.merge.dev/supplemental-data/field-mappings/overview/).

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

api_instance = MergeHRISClient::FieldMappingApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  common_models: 'common_models_example', # String | A comma seperated list of Common Model names. If included, will only return Remote Fields for those Common Models.
  include_example_values: 'include_example_values_example' # String | If true, will include example values, where available, for remote fields in the 3rd party platform. These examples come from active data from your customers.
}

begin
  
  result = api_instance.remote_fields_retrieve(x_account_token, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling FieldMappingApi->remote_fields_retrieve: #{e}"
end
```

#### Using the remote_fields_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoteFieldAPIResponse>, Integer, Hash)> remote_fields_retrieve_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.remote_fields_retrieve_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoteFieldAPIResponse>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling FieldMappingApi->remote_fields_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **common_models** | **String** | A comma seperated list of Common Model names. If included, will only return Remote Fields for those Common Models. | [optional] |
| **include_example_values** | **String** | If true, will include example values, where available, for remote fields in the 3rd party platform. These examples come from active data from your customers. | [optional] |

### Return type

[**RemoteFieldAPIResponse**](RemoteFieldAPIResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## target_fields_retrieve

> <ExternalTargetFieldAPIResponse> target_fields_retrieve(x_account_token)



Get all organization-wide Target Fields, this will not include any Linked Account specific Target Fields. Organization-wide Target Fields are additional fields appended to the Merge Common Model for all Linked Accounts in a category. [Learn more](https://docs.merge.dev/supplemental-data/field-mappings/target-fields/).

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

api_instance = MergeHRISClient::FieldMappingApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.target_fields_retrieve(x_account_token)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling FieldMappingApi->target_fields_retrieve: #{e}"
end
```

#### Using the target_fields_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalTargetFieldAPIResponse>, Integer, Hash)> target_fields_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.target_fields_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalTargetFieldAPIResponse>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling FieldMappingApi->target_fields_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |

### Return type

[**ExternalTargetFieldAPIResponse**](ExternalTargetFieldAPIResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

