# MergeHRISClient::EmployeesApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**employees_create**](EmployeesApi.md#employees_create) | **POST** /employees |  |
| [**employees_ignore_create**](EmployeesApi.md#employees_ignore_create) | **POST** /employees/ignore/{model_id} |  |
| [**employees_list**](EmployeesApi.md#employees_list) | **GET** /employees |  |
| [**employees_meta_post_retrieve**](EmployeesApi.md#employees_meta_post_retrieve) | **GET** /employees/meta/post |  |
| [**employees_retrieve**](EmployeesApi.md#employees_retrieve) | **GET** /employees/{id} |  |


## employees_create

> <EmployeeResponse> employees_create(x_account_token, employee_endpoint_request, opts)



Creates an `Employee` object with the given values.

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

api_instance = MergeHRISClient::EmployeesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
employee_endpoint_request = MergeHRISClient::EmployeeEndpointRequest.new({model: MergeHRISClient::EmployeeRequest.new}) # EmployeeEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.employees_create(x_account_token, employee_endpoint_request, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling EmployeesApi->employees_create: #{e}"
end
```

#### Using the employees_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeResponse>, Integer, Hash)> employees_create_with_http_info(x_account_token, employee_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.employees_create_with_http_info(x_account_token, employee_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeResponse>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling EmployeesApi->employees_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **employee_endpoint_request** | [**EmployeeEndpointRequest**](EmployeeEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**EmployeeResponse**](EmployeeResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## employees_ignore_create

> <IgnoreCommonModel> employees_ignore_create(x_account_token, model_id, ignore_common_model_request)



Ignores a specific row based on the `model_id` in the url. These records will have their properties set to null, and will not be updated in future syncs. The \"reason\" and \"message\" fields in the request body will be stored for audit purposes.

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

api_instance = MergeHRISClient::EmployeesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
model_id = TODO # String | 
ignore_common_model_request = MergeHRISClient::IgnoreCommonModelRequest.new({reason: MergeHRISClient::ReasonEnum::GENERAL_CUSTOMER_REQUEST}) # IgnoreCommonModelRequest | 

begin
  
  result = api_instance.employees_ignore_create(x_account_token, model_id, ignore_common_model_request)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling EmployeesApi->employees_ignore_create: #{e}"
end
```

#### Using the employees_ignore_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IgnoreCommonModel>, Integer, Hash)> employees_ignore_create_with_http_info(x_account_token, model_id, ignore_common_model_request)

```ruby
begin
  
  data, status_code, headers = api_instance.employees_ignore_create_with_http_info(x_account_token, model_id, ignore_common_model_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IgnoreCommonModel>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling EmployeesApi->employees_ignore_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **model_id** | [**String**](.md) |  |  |
| **ignore_common_model_request** | [**IgnoreCommonModelRequest**](IgnoreCommonModelRequest.md) |  |  |

### Return type

[**IgnoreCommonModel**](IgnoreCommonModel.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## employees_list

> <PaginatedEmployeeList> employees_list(x_account_token, opts)



Returns a list of `Employee` objects.

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

api_instance = MergeHRISClient::EmployeesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  company_id: 'company_id_example', # String | If provided, will only return employees for this company.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  display_full_name: 'display_full_name_example', # String | If provided, will only return employees with this display name.
  employment_status: 'ACTIVE', # String | If provided, will only return employees with this employment status.
  expand: 'company', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  first_name: 'first_name_example', # String | If provided, will only return employees with this first name.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  include_sensitive_fields: true, # Boolean | Whether to include sensitive fields (such as social security numbers) in the response.
  last_name: 'last_name_example', # String | If provided, will only return employees with this last name.
  manager_id: 'manager_id_example', # String | If provided, will only return employees for this manager.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  pay_group_id: 'pay_group_id_example', # String | If provided, will only return employees for this pay group
  personal_email: TODO, # String | If provided, will only return Employees with this personal email
  remote_fields: 'employment_status', # String | Which fields should be returned in non-normalized form.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  team_id: 'team_id_example', # String | If provided, will only return employees for this team.
  work_email: TODO, # String | If provided, will only return Employees with this work email
  work_location_id: 'work_location_id_example' # String | If provided, will only return employees for this location.
}

begin
  
  result = api_instance.employees_list(x_account_token, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling EmployeesApi->employees_list: #{e}"
end
```

#### Using the employees_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedEmployeeList>, Integer, Hash)> employees_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.employees_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedEmployeeList>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling EmployeesApi->employees_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **company_id** | **String** | If provided, will only return employees for this company. | [optional] |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **display_full_name** | **String** | If provided, will only return employees with this display name. | [optional] |
| **employment_status** | **String** | If provided, will only return employees with this employment status. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **first_name** | **String** | If provided, will only return employees with this first name. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **include_sensitive_fields** | **Boolean** | Whether to include sensitive fields (such as social security numbers) in the response. | [optional] |
| **last_name** | **String** | If provided, will only return employees with this last name. | [optional] |
| **manager_id** | **String** | If provided, will only return employees for this manager. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **pay_group_id** | **String** | If provided, will only return employees for this pay group | [optional] |
| **personal_email** | [**String**](.md) | If provided, will only return Employees with this personal email | [optional] |
| **remote_fields** | **String** | Which fields should be returned in non-normalized form. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |
| **team_id** | **String** | If provided, will only return employees for this team. | [optional] |
| **work_email** | [**String**](.md) | If provided, will only return Employees with this work email | [optional] |
| **work_location_id** | **String** | If provided, will only return employees for this location. | [optional] |

### Return type

[**PaginatedEmployeeList**](PaginatedEmployeeList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## employees_meta_post_retrieve

> <MetaResponse> employees_meta_post_retrieve(x_account_token)



Returns metadata for `Employee` POSTs.

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

api_instance = MergeHRISClient::EmployeesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.employees_meta_post_retrieve(x_account_token)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling EmployeesApi->employees_meta_post_retrieve: #{e}"
end
```

#### Using the employees_meta_post_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> employees_meta_post_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.employees_meta_post_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling EmployeesApi->employees_meta_post_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |

### Return type

[**MetaResponse**](MetaResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## employees_retrieve

> <Employee> employees_retrieve(x_account_token, id, opts)



Returns an `Employee` object with the given `id`.

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

api_instance = MergeHRISClient::EmployeesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'company', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  include_sensitive_fields: true, # Boolean | Whether to include sensitive fields (such as social security numbers) in the response.
  remote_fields: 'employment_status' # String | Which fields should be returned in non-normalized form.
}

begin
  
  result = api_instance.employees_retrieve(x_account_token, id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling EmployeesApi->employees_retrieve: #{e}"
end
```

#### Using the employees_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Employee>, Integer, Hash)> employees_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.employees_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Employee>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling EmployeesApi->employees_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **include_sensitive_fields** | **Boolean** | Whether to include sensitive fields (such as social security numbers) in the response. | [optional] |
| **remote_fields** | **String** | Which fields should be returned in non-normalized form. | [optional] |

### Return type

[**Employee**](Employee.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

