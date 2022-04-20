# MergeHRISClient::EmployeeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **employee_number** | **String** | The employee&#39;s number that appears in the remote UI. Note: This is distinct from the remote_id field, which is a unique identifier for the employee set by the remote API, and is not exposed to the user. This value can also change in many API providers. | [optional] |
| **company** | **String** |  | [optional] |
| **first_name** | **String** | The employee&#39;s first name. | [optional] |
| **last_name** | **String** | The employee&#39;s last name. | [optional] |
| **display_full_name** | **String** | The employee&#39;s full name, to use for display purposes. If a preferred first name is available, the full name will include the preferred first name. | [optional] |
| **groups** | **Array&lt;String&gt;** |  | [optional] |
| **work_email** | **String** | The employee&#39;s work email. | [optional] |
| **personal_email** | **String** | The employee&#39;s personal email. | [optional] |
| **mobile_phone_number** | **String** | The employee&#39;s mobile phone number. | [optional] |
| **employments** | **Array&lt;String&gt;** | Array of &#x60;Employment&#x60; IDs for this Employee. | [optional] |
| **home_location** | **String** |  | [optional] |
| **work_location** | **String** |  | [optional] |
| **manager** | **String** |  | [optional] |
| **team** | **String** |  | [optional] |
| **pay_group** | **String** |  | [optional] |
| **ssn** | **String** | The employee&#39;s social security number. | [optional] |
| **gender** | [**GenderEnum**](GenderEnum.md) | The employee&#39;s gender. | [optional] |
| **ethnicity** | [**EthnicityEnum**](EthnicityEnum.md) | The employee&#39;s ethnicity. | [optional] |
| **marital_status** | [**MaritalStatusEnum**](MaritalStatusEnum.md) | The employee&#39;s marital status. | [optional] |
| **date_of_birth** | **Time** | The employee&#39;s date of birth. | [optional] |
| **hire_date** | **Time** | The date that the employee was hired, usually the day that an offer letter is signed. If an employee has multiple hire dates from previous employments, this represents the most recent hire date. Note: If you&#39;re looking for the employee&#39;s start date, refer to the start_date field. | [optional] |
| **start_date** | **Time** | The date that the employee started working. If an employee has multiple start dates from previous employments, this represents the most recent start date. | [optional] |
| **employment_status** | [**EmploymentStatusEnum**](EmploymentStatusEnum.md) | The employment status of the employee. | [optional] |
| **termination_date** | **Time** | The employee&#39;s termination date. | [optional] |
| **avatar** | **String** | The URL of the employee&#39;s avatar image. | [optional] |
| **custom_fields** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) | Custom fields configured for a given model. | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::EmployeeRequest.new(
  remote_id: 19202938,
  employee_number: 2,
  company: 8d9fd929-436c-4fd4-a48b-0c61f68d6178,
  first_name: Greg,
  last_name: Hirsch,
  display_full_name: Cousin Greg Hirsch,
  groups: [&quot;21a54124-397f-494d-985e-3c5b330b8a68&quot;],
  work_email: greg@merge.dev,
  personal_email: greg@gmail.com,
  mobile_phone_number: +1234567890,
  employments: [&quot;17a54124-287f-494d-965e-3c5b330c9a68&quot;],
  home_location: d2f972d0-2526-434b-9409-4c3b468e08f0,
  work_location: 9efbc633-3387-4306-aa55-e2c635e6bb4f,
  manager: 0048ea5b-911e-4dff-9364-92070dea62ff,
  team: 249c9faa-3045-4a31-953b-8f22d3613301,
  pay_group: ad1264e2-39be-4787-b749-f1aade9e3405,
  ssn: 1234567890,
  gender: MALE,
  ethnicity: WHITE,
  marital_status: SINGLE,
  date_of_birth: 1990-11-10T00:00Z,
  hire_date: 2020-10-10T00:00Z,
  start_date: 2020-10-11T00:00Z,
  employment_status: INACTIVE,
  termination_date: 2021-10-12T00:00Z,
  avatar: http://alturl.com/h2h8m,
  custom_fields: null
)
```

