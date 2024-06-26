# MergeHRISClient::DataPassthroughRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | [**MethodEnum**](MethodEnum.md) |  |  |
| **path** | **String** | The path of the request in the third party&#39;s platform. |  |
| **base_url_override** | **String** | An optional override of the third party&#39;s base url for the request. | [optional] |
| **data** | **String** | The data with the request. You must include a &#x60;request_format&#x60; parameter matching the data&#39;s format | [optional] |
| **multipart_form_data** | [**Array&lt;MultipartFormFieldRequest&gt;**](MultipartFormFieldRequest.md) | Pass an array of &#x60;MultipartFormField&#x60; objects in here instead of using the &#x60;data&#x60; param if &#x60;request_format&#x60; is set to &#x60;MULTIPART&#x60;. | [optional] |
| **headers** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) | The headers to use for the request (Merge will handle the account&#39;s authorization headers). &#x60;Content-Type&#x60; header is required for passthrough. Choose content type corresponding to expected format of receiving server. | [optional] |
| **request_format** | [**RequestFormatEnum**](RequestFormatEnum.md) |  | [optional] |
| **normalize_response** | **Boolean** | Optional. If true, the response will always be an object of the form &#x60;{\&quot;type\&quot;: T, \&quot;value\&quot;: ...}&#x60; where &#x60;T&#x60; will be one of &#x60;string, boolean, number, null, array, object&#x60;. | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::DataPassthroughRequest.new(
  method: POST,
  path: /scooters,
  base_url_override: https://api.example.com,
  data: {&quot;company&quot;: &quot;Lime&quot;, &quot;model&quot;: &quot;Gen 2.5&quot;},
  multipart_form_data: null,
  headers: {&quot;EXTRA-HEADER&quot;:&quot;value&quot;},
  request_format: JSON,
  normalize_response: null
)
```

