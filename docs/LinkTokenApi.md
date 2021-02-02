# MergeHRISClient::LinkTokenApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**link_token_create**](LinkTokenApi.md#link_token_create) | **POST** /link-token | 



## link_token_create

> LinkToken link_token_create(end_user_details)



Creates a link token to be used when linking a new end user.

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

api_instance = MergeHRISClient::LinkTokenApi.new
end_user_details = MergeHRISClient::EndUserDetails.new # EndUserDetails | 

begin
  result = api_instance.link_token_create(end_user_details)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling LinkTokenApi->link_token_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **end_user_details** | [**EndUserDetails**](EndUserDetails.md)|  | 

### Return type

[**LinkToken**](LinkToken.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

