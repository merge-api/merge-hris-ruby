# MergeHRISClient::LinkTokenApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**link_token_create**](LinkTokenApi.md#link_token_create) | **POST** /link-token |  |


## link_token_create

> <LinkToken> link_token_create(end_user_details_request)



Creates a link token to be used when linking a new end user.

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

api_instance = MergeHRISClient::LinkTokenApi.new
end_user_details_request = MergeHRISClient::EndUserDetailsRequest.new({end_user_email_address: 'example@gmail.com', end_user_organization_name: 'Test Organization', end_user_origin_id: '12345', categories: [MergeHRISClient::CategoriesEnum::HRIS]}) # EndUserDetailsRequest | 

begin
  
  result = api_instance.link_token_create(end_user_details_request)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling LinkTokenApi->link_token_create: #{e}"
end
```

#### Using the link_token_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkToken>, Integer, Hash)> link_token_create_with_http_info(end_user_details_request)

```ruby
begin
  
  data, status_code, headers = api_instance.link_token_create_with_http_info(end_user_details_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkToken>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling LinkTokenApi->link_token_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_user_details_request** | [**EndUserDetailsRequest**](EndUserDetailsRequest.md) |  |  |

### Return type

[**LinkToken**](LinkToken.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

