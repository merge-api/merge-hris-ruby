# MergeHRISClient::BankInfoApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bank_info_list**](BankInfoApi.md#bank_info_list) | **GET** /bank-info |  |
| [**bank_info_retrieve**](BankInfoApi.md#bank_info_retrieve) | **GET** /bank-info/{id} |  |


## bank_info_list

> <PaginatedBankInfoList> bank_info_list(x_account_token, opts)



Returns a list of `BankInfo` objects.

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

api_instance = MergeHRISClient::BankInfoApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  account_type: 'CHECKING', # String | If provided, will only return BankInfo's with this account type. Options: ('SAVINGS', 'CHECKING')  * `SAVINGS` - SAVINGS * `CHECKING` - CHECKING
  bank_name: 'bank_name_example', # String | If provided, will only return BankInfo's with this bank name.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  employee_id: 'employee_id_example', # String | If provided, will only return bank accounts for this employee.
  expand: 'employee', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge after this date time will be returned.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge before this date time will be returned.
  order_by: '-remote_created_at', # String | Overrides the default ordering for this endpoint. Possible values include: remote_created_at, -remote_created_at.
  page_size: 56, # Integer | Number of results to return per page.
  remote_fields: 'account_type', # String | Deprecated. Use show_enum_origins.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  show_enum_origins: 'account_type' # String | Which fields should be returned in non-normalized form.
}

begin
  
  result = api_instance.bank_info_list(x_account_token, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling BankInfoApi->bank_info_list: #{e}"
end
```

#### Using the bank_info_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedBankInfoList>, Integer, Hash)> bank_info_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.bank_info_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedBankInfoList>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling BankInfoApi->bank_info_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **account_type** | **String** | If provided, will only return BankInfo&#39;s with this account type. Options: (&#39;SAVINGS&#39;, &#39;CHECKING&#39;)  * &#x60;SAVINGS&#x60; - SAVINGS * &#x60;CHECKING&#x60; - CHECKING | [optional] |
| **bank_name** | **String** | If provided, will only return BankInfo&#39;s with this bank name. | [optional] |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **employee_id** | **String** | If provided, will only return bank accounts for this employee. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, only objects synced by Merge after this date time will be returned. | [optional] |
| **modified_before** | **Time** | If provided, only objects synced by Merge before this date time will be returned. | [optional] |
| **order_by** | **String** | Overrides the default ordering for this endpoint. Possible values include: remote_created_at, -remote_created_at. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_fields** | **String** | Deprecated. Use show_enum_origins. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |
| **show_enum_origins** | **String** | Which fields should be returned in non-normalized form. | [optional] |

### Return type

[**PaginatedBankInfoList**](PaginatedBankInfoList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## bank_info_retrieve

> <BankInfo> bank_info_retrieve(x_account_token, id, opts)



Returns a `BankInfo` object with the given `id`.

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

api_instance = MergeHRISClient::BankInfoApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'employee', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  remote_fields: 'account_type', # String | Deprecated. Use show_enum_origins.
  show_enum_origins: 'account_type' # String | Which fields should be returned in non-normalized form.
}

begin
  
  result = api_instance.bank_info_retrieve(x_account_token, id, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling BankInfoApi->bank_info_retrieve: #{e}"
end
```

#### Using the bank_info_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankInfo>, Integer, Hash)> bank_info_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.bank_info_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankInfo>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling BankInfoApi->bank_info_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **remote_fields** | **String** | Deprecated. Use show_enum_origins. | [optional] |
| **show_enum_origins** | **String** | Which fields should be returned in non-normalized form. | [optional] |

### Return type

[**BankInfo**](BankInfo.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

