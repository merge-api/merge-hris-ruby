# MergeHRISClient::PrivateTokenApi

All URIs are relative to *https://app.merge.dev/api/hris/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**private_token_retrieve**](PrivateTokenApi.md#private_token_retrieve) | **GET** /private-token/{public_token} | 



## private_token_retrieve

> PrivateToken private_token_retrieve(public_token, opts)



Returns the private token for the end user with the provided public token.

### Example

```ruby
# load the gem
require 'merge_hris_client'
# setup authorization
MergeHRISClient.configure do |config|
  # Configure Bearer authorization (Token): tokenAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeHRISClient::PrivateTokenApi.new
public_token = 'public_token_example' # String | 
opts = {
  production_key: 'production_key_example' # String | The requesting organization's production key.
}

begin
  result = api_instance.private_token_retrieve(public_token, opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Exception when calling PrivateTokenApi->private_token_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **public_token** | **String**|  | 
 **production_key** | **String**| The requesting organization&#39;s production key. | [optional] 

### Return type

[**PrivateToken**](PrivateToken.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

