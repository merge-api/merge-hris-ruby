# MergeHRISClient::CreateLinkTokenApi

All URIs are relative to *https://app.merge.dev/api/hris/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_link_token_create**](CreateLinkTokenApi.md#create_link_token_create) | **POST** /create-link-token | 



## create_link_token_create

> create_link_token_create(opts)



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
opts = {
  production_key: 'production_key_example' # String | The requesting organization's production key.
}

begin
  api_instance.create_link_token_create(opts)
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling CreateLinkTokenApi->create_link_token_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **production_key** | **String**| The requesting organization&#39;s production key. | [optional] 

### Return type

nil (empty response body)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

