# MergeHRISClient::CreateLinkTokenApi

All URIs are relative to *https://app.merge.dev/api/hris/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_link_token_create**](CreateLinkTokenApi.md#create_link_token_create) | **POST** /create-link-token | 



## create_link_token_create

> LinkToken create_link_token_create(link_token, opts)



Creates a link token to be used when linking a new end user.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::CreateLinkTokenApi.new
link_token = MergeHRISClient::LinkToken.new # LinkToken | 
opts = {
  production_key: 'production_key_example' # String | The requesting organization's production key.
}

begin
  result = api_instance.create_link_token_create(link_token, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling CreateLinkTokenApi->create_link_token_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **link_token** | [**LinkToken**](LinkToken.md)|  | 
 **production_key** | **String**| The requesting organization&#39;s production key. | [optional] 

### Return type

[**LinkToken**](LinkToken.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

