# MergeHRISClient::AuditTrailApi

All URIs are relative to *https://api.merge.dev/api/hris/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**audit_trail_list**](AuditTrailApi.md#audit_trail_list) | **GET** /audit-trail |  |


## audit_trail_list

> <PaginatedAuditLogEventList> audit_trail_list(opts)



Gets a list of audit trail events.

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

api_instance = MergeHRISClient::AuditTrailApi.new
opts = {
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  end_date: 'end_date_example', # String | If included, will only include audit trail events that occurred before this time
  event_type: 'event_type_example', # String | If included, will only include events with the given event type. Possible values include: `CREATED_REMOTE_PRODUCTION_API_KEY`, `DELETED_REMOTE_PRODUCTION_API_KEY`, `CREATED_TEST_API_KEY`, `DELETED_TEST_API_KEY`, `REGENERATED_PRODUCTION_API_KEY`, `INVITED_USER`, `TWO_FACTOR_AUTH_ENABLED`, `TWO_FACTOR_AUTH_DISABLED`, `DELETED_LINKED_ACCOUNT`, `CREATED_DESTINATION`, `DELETED_DESTINATION`, `CHANGED_DESTINATION`, `CHANGED_SCOPES`, `CHANGED_PERSONAL_INFORMATION`, `CHANGED_ORGANIZATION_SETTINGS`, `ENABLED_INTEGRATION`, `DISABLED_INTEGRATION`, `ENABLED_CATEGORY`, `DISABLED_CATEGORY`, `CHANGED_PASSWORD`, `RESET_PASSWORD`, `ENABLED_REDACT_UNMAPPED_DATA_FOR_ORGANIZATION`, `ENABLED_REDACT_UNMAPPED_DATA_FOR_LINKED_ACCOUNT`, `DISABLED_REDACT_UNMAPPED_DATA_FOR_ORGANIZATION`, `DISABLED_REDACT_UNMAPPED_DATA_FOR_LINKED_ACCOUNT`, `CREATED_INTEGRATION_WIDE_FIELD_MAPPING`, `CREATED_LINKED_ACCOUNT_FIELD_MAPPING`, `CHANGED_INTEGRATION_WIDE_FIELD_MAPPING`, `CHANGED_LINKED_ACCOUNT_FIELD_MAPPING`, `DELETED_INTEGRATION_WIDE_FIELD_MAPPING`, `DELETED_LINKED_ACCOUNT_FIELD_MAPPING`, `FORCED_LINKED_ACCOUNT_RESYNC`, `MUTED_ISSUE`, `GENERATED_MAGIC_LINK`, `ENABLED_MERGE_WEBHOOK`, `DISABLED_MERGE_WEBHOOK`, `MERGE_WEBHOOK_TARGET_CHANGED`, `END_USER_CREDENTIALS_ACCESSED`
  page_size: 56, # Integer | Number of results to return per page.
  start_date: 'start_date_example', # String | If included, will only include audit trail events that occurred after this time
  user_email: 'user_email_example' # String | If provided, this will return events associated with the specified user email. Please note that the email address reflects the user's email at the time of the event, and may not be their current email.
}

begin
  
  result = api_instance.audit_trail_list(opts)
  p result
rescue MergeHRISClient::ApiError => e
  puts "Error when calling AuditTrailApi->audit_trail_list: #{e}"
end
```

#### Using the audit_trail_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedAuditLogEventList>, Integer, Hash)> audit_trail_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.audit_trail_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedAuditLogEventList>
rescue MergeHRISClient::ApiError => e
  puts "Error when calling AuditTrailApi->audit_trail_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **end_date** | **String** | If included, will only include audit trail events that occurred before this time | [optional] |
| **event_type** | **String** | If included, will only include events with the given event type. Possible values include: &#x60;CREATED_REMOTE_PRODUCTION_API_KEY&#x60;, &#x60;DELETED_REMOTE_PRODUCTION_API_KEY&#x60;, &#x60;CREATED_TEST_API_KEY&#x60;, &#x60;DELETED_TEST_API_KEY&#x60;, &#x60;REGENERATED_PRODUCTION_API_KEY&#x60;, &#x60;INVITED_USER&#x60;, &#x60;TWO_FACTOR_AUTH_ENABLED&#x60;, &#x60;TWO_FACTOR_AUTH_DISABLED&#x60;, &#x60;DELETED_LINKED_ACCOUNT&#x60;, &#x60;CREATED_DESTINATION&#x60;, &#x60;DELETED_DESTINATION&#x60;, &#x60;CHANGED_DESTINATION&#x60;, &#x60;CHANGED_SCOPES&#x60;, &#x60;CHANGED_PERSONAL_INFORMATION&#x60;, &#x60;CHANGED_ORGANIZATION_SETTINGS&#x60;, &#x60;ENABLED_INTEGRATION&#x60;, &#x60;DISABLED_INTEGRATION&#x60;, &#x60;ENABLED_CATEGORY&#x60;, &#x60;DISABLED_CATEGORY&#x60;, &#x60;CHANGED_PASSWORD&#x60;, &#x60;RESET_PASSWORD&#x60;, &#x60;ENABLED_REDACT_UNMAPPED_DATA_FOR_ORGANIZATION&#x60;, &#x60;ENABLED_REDACT_UNMAPPED_DATA_FOR_LINKED_ACCOUNT&#x60;, &#x60;DISABLED_REDACT_UNMAPPED_DATA_FOR_ORGANIZATION&#x60;, &#x60;DISABLED_REDACT_UNMAPPED_DATA_FOR_LINKED_ACCOUNT&#x60;, &#x60;CREATED_INTEGRATION_WIDE_FIELD_MAPPING&#x60;, &#x60;CREATED_LINKED_ACCOUNT_FIELD_MAPPING&#x60;, &#x60;CHANGED_INTEGRATION_WIDE_FIELD_MAPPING&#x60;, &#x60;CHANGED_LINKED_ACCOUNT_FIELD_MAPPING&#x60;, &#x60;DELETED_INTEGRATION_WIDE_FIELD_MAPPING&#x60;, &#x60;DELETED_LINKED_ACCOUNT_FIELD_MAPPING&#x60;, &#x60;FORCED_LINKED_ACCOUNT_RESYNC&#x60;, &#x60;MUTED_ISSUE&#x60;, &#x60;GENERATED_MAGIC_LINK&#x60;, &#x60;ENABLED_MERGE_WEBHOOK&#x60;, &#x60;DISABLED_MERGE_WEBHOOK&#x60;, &#x60;MERGE_WEBHOOK_TARGET_CHANGED&#x60;, &#x60;END_USER_CREDENTIALS_ACCESSED&#x60; | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **start_date** | **String** | If included, will only include audit trail events that occurred after this time | [optional] |
| **user_email** | **String** | If provided, this will return events associated with the specified user email. Please note that the email address reflects the user&#39;s email at the time of the event, and may not be their current email. | [optional] |

### Return type

[**PaginatedAuditLogEventList**](PaginatedAuditLogEventList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

