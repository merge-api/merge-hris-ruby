# MergeHRISClient::DocumentsApi

All URIs are relative to *https://app.merge.dev/api/hris/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**documents_create**](DocumentsApi.md#documents_create) | **POST** /documents | 
[**documents_destroy**](DocumentsApi.md#documents_destroy) | **DELETE** /documents/{id} | 
[**documents_list**](DocumentsApi.md#documents_list) | **GET** /documents | 
[**documents_partial_update**](DocumentsApi.md#documents_partial_update) | **PATCH** /documents/{id} | 
[**documents_retrieve**](DocumentsApi.md#documents_retrieve) | **GET** /documents/{id} | 
[**documents_update**](DocumentsApi.md#documents_update) | **PUT** /documents/{id} | 



## documents_create

> Document documents_create(opts)



Creates a `Document` object with the given values.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::DocumentsApi.new
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  document: MergeHRISClient::Document.new # Document | 
}

begin
  result = api_instance.documents_create(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling DocumentsApi->documents_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_link_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **document** | [**Document**](Document.md)|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## documents_destroy

> AsyncTaskExecution documents_destroy(id, opts)



Deletes a `Document` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::DocumentsApi.new
id = 'id_example' # String | 
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  result = api_instance.documents_destroy(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling DocumentsApi->documents_destroy: #{e}"
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


## documents_list

> PaginatedDocumentList documents_list(opts)



Returns a list of `Document` objects.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::DocumentsApi.new
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
  result = api_instance.documents_list(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling DocumentsApi->documents_list: #{e}"
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

[**PaginatedDocumentList**](PaginatedDocumentList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## documents_partial_update

> Document documents_partial_update(id, opts)



Updates a `Document` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::DocumentsApi.new
id = 'id_example' # String | 
opts = {
  x_link_token: 'x_link_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  patched_document: MergeHRISClient::PatchedDocument.new # PatchedDocument | 
}

begin
  result = api_instance.documents_partial_update(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling DocumentsApi->documents_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_link_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **patched_document** | [**PatchedDocument**](PatchedDocument.md)|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## documents_retrieve

> Document documents_retrieve(id, opts)



Returns a `Document` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::DocumentsApi.new
id = 'id_example' # String | 
opts = {
  x_link_token: 'x_link_token_example' # String | Token identifying the end user.
}

begin
  result = api_instance.documents_retrieve(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling DocumentsApi->documents_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_link_token** | **String**| Token identifying the end user. | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## documents_update

> Document documents_update(id, opts)



### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::DocumentsApi.new
id = 'id_example' # String | 
opts = {
  document: MergeHRISClient::Document.new # Document | 
}

begin
  result = api_instance.documents_update(id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling DocumentsApi->documents_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **document** | [**Document**](Document.md)|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

