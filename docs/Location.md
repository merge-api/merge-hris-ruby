# MergeHRISClient::Location

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The location&#39;s name. | [optional] |
| **phone_number** | **String** | The location&#39;s phone number. | [optional] |
| **street_1** | **String** | Line 1 of the location&#39;s street address. | [optional] |
| **street_2** | **String** | Line 2 of the location&#39;s street address. | [optional] |
| **city** | **String** | The location&#39;s city. | [optional] |
| **state** | **String** | The location&#39;s state. Represents a region if outside of the US. | [optional] |
| **zip_code** | **String** | The location&#39;s zip code or postal code. | [optional] |
| **country** | [**CountryEnum**](CountryEnum.md) | The location&#39;s country. | [optional] |
| **location_type** | [**LocationTypeEnum**](LocationTypeEnum.md) | The location&#39;s type. Can be either WORK or HOME | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Location.new(
  id: null,
  remote_id: 93018402,
  name: NYC Office,
  phone_number: +1111111111,
  street_1: 2920 Broadway,
  street_2: 2nd Floor,
  city: New York ,
  state: NY,
  zip_code: 10027,
  country: USA,
  location_type: WORK,
  remote_data: [{&quot;path&quot;:&quot;/locations&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

