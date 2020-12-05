# OpenapiClient::ReportsApi

All URIs are relative to *https://app.merge.dev/api/hris/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reports_create**](ReportsApi.md#reports_create) | **POST** /reports | 
[**reports_destroy**](ReportsApi.md#reports_destroy) | **DELETE** /reports/{id} | 
[**reports_list**](ReportsApi.md#reports_list) | **GET** /reports | 
[**reports_partial_update**](ReportsApi.md#reports_partial_update) | **PATCH** /reports/{id} | 
[**reports_retrieve**](ReportsApi.md#reports_retrieve) | **GET** /reports/{id} | 
[**reports_update**](ReportsApi.md#reports_update) | **PUT** /reports/{id} | 



## reports_create

> Report reports_create(opts)



Creates a `Report` object with the given values.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ReportsApi.new
opts = {
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  report: OpenapiClient::Report.new # Report | 
}

begin
  result = api_instance.reports_create(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ReportsApi->reports_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **report** | [**Report**](Report.md)|  | [optional] 

### Return type

[**Report**](Report.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## reports_destroy

> AsyncTaskExecution reports_destroy(id, opts)



Deletes a `Report` object with the given `id`.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ReportsApi.new
id = 'id_example' # String | 
opts = {
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  result = api_instance.reports_destroy(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ReportsApi->reports_destroy: #{e}"
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


## reports_list

> PaginatedReportList reports_list(opts)



Returns a list of `Report` objects.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ReportsApi.new
opts = {
  cursor: 56, # Integer | The pagination cursor value.
  linked_account_id: 'linked_account_id_example', # String | If provided, will only return objects associated with the given `linked_account_id`.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  result = api_instance.reports_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ReportsApi->reports_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **Integer**| The pagination cursor value. | [optional] 
 **linked_account_id** | **String**| If provided, will only return objects associated with the given &#x60;linked_account_id&#x60;. | [optional] 
 **remote_id** | **String**| The API provider&#39;s ID for the given object. | [optional] 

### Return type

[**PaginatedReportList**](PaginatedReportList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reports_partial_update

> Report reports_partial_update(id, opts)



Updates a `Report` object with the given `id`.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ReportsApi.new
id = 'id_example' # String | 
opts = {
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  patched_report: OpenapiClient::PatchedReport.new # PatchedReport | 
}

begin
  result = api_instance.reports_partial_update(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ReportsApi->reports_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **patched_report** | [**PatchedReport**](PatchedReport.md)|  | [optional] 

### Return type

[**Report**](Report.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## reports_retrieve

> Report reports_retrieve(id)



Returns a `Report` object with the given `id`.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ReportsApi.new
id = 'id_example' # String | 

begin
  result = api_instance.reports_retrieve(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ReportsApi->reports_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 

### Return type

[**Report**](Report.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reports_update

> Report reports_update(id, opts)



### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::ReportsApi.new
id = 'id_example' # String | 
opts = {
  report: OpenapiClient::Report.new # Report | 
}

begin
  result = api_instance.reports_update(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ReportsApi->reports_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **report** | [**Report**](Report.md)|  | [optional] 

### Return type

[**Report**](Report.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

