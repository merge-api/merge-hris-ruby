# MergeHRISClient::EmployeePayrollRun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **employee** | **String** |  | [optional] |
| **payroll_run** | **String** |  | [optional] |
| **gross_pay** | **Float** | The gross pay from the run. | [optional] |
| **net_pay** | **Float** | The net pay from the run. | [optional] |
| **start_date** | **Time** | The day and time the payroll run started. | [optional] |
| **end_date** | **Time** | The day and time the payroll run ended. | [optional] |
| **check_date** | **Time** | The day and time the payroll run was checked. | [optional] |
| **earnings** | [**Array&lt;Earning&gt;**](Earning.md) |  | [optional][readonly] |
| **deductions** | [**Array&lt;Deduction&gt;**](Deduction.md) |  | [optional][readonly] |
| **taxes** | [**Array&lt;Tax&gt;**](Tax.md) |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::EmployeePayrollRun.new(
  id: fb8c55b6-1cb8-4b4c-9fb6-17924231619d,
  remote_id: 19202938,
  employee: d2f972d0-2526-434b-9409-4c3b468e08f0,
  payroll_run: 35347df1-95e7-46e2-93cc-66f1191edca5,
  gross_pay: 1342.67,
  net_pay: 865.78,
  start_date: 2020-11-08T00:00Z,
  end_date: 2020-11-09T00:00Z,
  check_date: 2020-11-10T00:00Z,
  earnings: [{&quot;employee_payroll_run&quot;:&quot;35347df1-95e7-46e2-93cc-66f1191edca5&quot;,&quot;amount&quot;:1002.34,&quot;type&quot;:&quot;SALARY&quot;},{&quot;employee_payroll_run&quot;:&quot;35347df1-95e7-46e2-93cc-66f1191edca5&quot;,&quot;amount&quot;:8342.34,&quot;type&quot;:&quot;OVERTIME&quot;}],
  deductions: [{&quot;employee_payroll_run&quot;:&quot;35347df1-95e7-46e2-93cc-66f1191edca5&quot;,&quot;name&quot;:&quot;Social Security&quot;,&quot;employee_deduction&quot;:34.54,&quot;company_deduction&quot;:78.78}],
  taxes: [{&quot;employee_payroll_run&quot;:&quot;35347df1-95e7-46e2-93cc-66f1191edca5&quot;,&quot;name&quot;:&quot;California State Income Tax&quot;,&quot;amount&quot;:100.25,&quot;employer_tax&quot;:&quot;False&quot;}],
  remote_data: [{&quot;path&quot;:&quot;/employee-payroll&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

