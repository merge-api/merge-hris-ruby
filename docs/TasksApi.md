# MergeHRISClient::TasksApi

All URIs are relative to *https://app.merge.dev/api/hris/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tasks_list**](TasksApi.md#tasks_list) | **GET** /tasks | 
[**tasks_retrieve**](TasksApi.md#tasks_retrieve) | **GET** /tasks/{task_id} | 



## tasks_list

> PaginatedAsyncTaskExecutionList tasks_list(opts)



Returns all `AsyncTaskExecution` objects for the requester's organization.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::TasksApi.new
opts = {
  cursor: 56, # Integer | The pagination cursor value.
  linked_account_id: 'linked_account_id_example', # String | If provided, will only return objects associated with the given `linked_account_id`.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  status: 'status_example' # String | The status of the task.
}

begin
  result = api_instance.tasks_list(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling TasksApi->tasks_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **Integer**| The pagination cursor value. | [optional] 
 **linked_account_id** | **String**| If provided, will only return objects associated with the given &#x60;linked_account_id&#x60;. | [optional] 
 **remote_id** | **String**| The API provider&#39;s ID for the given object. | [optional] 
 **status** | **String**| The status of the task. | [optional] 

### Return type

[**PaginatedAsyncTaskExecutionList**](PaginatedAsyncTaskExecutionList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tasks_retrieve

> AsyncTaskExecution tasks_retrieve(task_id)



Returns an `AsyncTaskExecution` object with the given `id`.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::TasksApi.new
task_id = 'task_id_example' # String | 

begin
  result = api_instance.tasks_retrieve(task_id)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling TasksApi->tasks_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | [**String**](.md)|  | 

### Return type

[**AsyncTaskExecution**](AsyncTaskExecution.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

