# MergeHRISClient::Dependent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **first_name** | **String** | The dependents&#39;s first name. | [optional] |
| **middle_name** | **String** | The dependents&#39;s middle name. | [optional] |
| **last_name** | **String** | The dependents&#39;s last name. | [optional] |
| **relationship** | [**RelationshipEnum**](RelationshipEnum.md) | The dependent&#39;s relationship to the employee.  * &#x60;CHILD&#x60; - CHILD * &#x60;SPOUSE&#x60; - SPOUSE * &#x60;DOMESTIC_PARTNER&#x60; - DOMESTIC_PARTNER | [optional] |
| **employee** | **String** | The employee this person is a dependent of. | [optional] |
| **date_of_birth** | **Time** | The dependent&#39;s date of birth. | [optional] |
| **gender** | [**GenderEnum**](GenderEnum.md) | The dependent&#39;s gender.  * &#x60;MALE&#x60; - MALE * &#x60;FEMALE&#x60; - FEMALE * &#x60;NON-BINARY&#x60; - NON-BINARY * &#x60;OTHER&#x60; - OTHER * &#x60;PREFER_NOT_TO_DISCLOSE&#x60; - PREFER_NOT_TO_DISCLOSE | [optional] |
| **phone_number** | **String** | The dependent&#39;s phone number. | [optional] |
| **home_location** | **String** | The dependents&#39;s home address. | [optional] |
| **is_student** | **Boolean** | Whether or not the dependent is a student | [optional] |
| **ssn** | **String** | The dependents&#39;s social security number. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::Dependent.new(
  id: null,
  remote_id: 19202940,
  first_name: Greg,
  middle_name: A,
  last_name: Hirsch,
  relationship: CHILD,
  employee: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  date_of_birth: 1990-11-10T00:00Z,
  gender: MALE,
  phone_number: +1234567890,
  home_location: d2f972d0-2526-434b-9409-4c3b468e08f0,
  is_student: null,
  ssn: 1234567890,
  remote_was_deleted: null,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/dependent&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

