# MergeHRISClient::TimeOffApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**time_off_list**](TimeOffApi.md#time_off_list) | **GET** /time-off | 
[**time_off_retrieve**](TimeOffApi.md#time_off_retrieve) | **GET** /time-off/{id} | 



## time_off_list

> PaginatedTimeOffList time_off_list(x_account_token, opts)



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
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  approver_id: 'approver_id_example', # String | If provided, will only return time off for this approver.
  created_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects created after this datetime.
  created_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  employee_id: 'employee_id_example', # String | If provided, will only return time off for this employee.
  expand: 'employee,approver', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  modified_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects modified after this datetime.
  modified_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  result = api_instance.time_off_list(x_account_token, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling TimeOffApi->time_off_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_account_token** | **String**| Token identifying the end user. | 
 **approver_id** | [**String**](.md)| If provided, will only return time off for this approver. | [optional] 
 **created_after** | **DateTime**| If provided, will only return objects created after this datetime. | [optional] 
 **created_before** | **DateTime**| If provided, will only return objects created before this datetime. | [optional] 
 **cursor** | **String**| The pagination cursor value. | [optional] 
 **employee_id** | [**String**](.md)| If provided, will only return time off for this employee. | [optional] 
 **expand** | **String**| Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] 
 **modified_after** | **DateTime**| If provided, will only return objects modified after this datetime. | [optional] 
 **modified_before** | **DateTime**| If provided, will only return objects modified before this datetime. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 
 **remote_id** | **String**| The API provider&#39;s ID for the given object. | [optional] 

### Return type

[**PaginatedTimeOffList**](PaginatedTimeOffList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## time_off_retrieve

> TimeOff time_off_retrieve(x_account_token, id, opts)



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
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = 'id_example' # String | 
opts = {
  expand: 'employee,approver' # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
}

begin
  result = api_instance.time_off_retrieve(x_account_token, id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling TimeOffApi->time_off_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_account_token** | **String**| Token identifying the end user. | 
 **id** | [**String**](.md)|  | 
 **expand** | **String**| Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] 

### Return type

[**TimeOff**](TimeOff.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

