=begin
#Merge HRIS API

#The unified API for building rich integrations with multiple HR Information System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

require 'spec_helper'
require 'json'

# Unit tests for MergeHRISClient::EmployeePayrollRunsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EmployeePayrollRunsApi' do
  before do
    # run before each test
    @api_instance = MergeHRISClient::EmployeePayrollRunsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmployeePayrollRunsApi' do
    it 'should create an instance of EmployeePayrollRunsApi' do
      expect(@api_instance).to be_instance_of(MergeHRISClient::EmployeePayrollRunsApi)
    end
  end

  # unit tests for employee_payroll_runs_list
  # Returns a list of &#x60;EmployeePayrollRun&#x60; objects.
  # @param x_account_token Token identifying the end user.
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :created_after If provided, will only return objects created after this datetime.
  # @option opts [Time] :created_before If provided, will only return objects created before this datetime.
  # @option opts [String] :cursor The pagination cursor value.
  # @option opts [String] :employee_id If provided, will only return time off for this employee.
  # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  # @option opts [Time] :modified_after If provided, will only return objects modified after this datetime.
  # @option opts [Time] :modified_before If provided, will only return objects modified before this datetime.
  # @option opts [Integer] :page_size Number of results to return per page.
  # @option opts [String] :payroll_run_id If provided, will only return employee payroll runs for this employee.
  # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
  # @return [PaginatedEmployeePayrollRunList]
  describe 'employee_payroll_runs_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for employee_payroll_runs_retrieve
  # Returns an &#x60;EmployeePayrollRun&#x60; object with the given &#x60;id&#x60;.
  # @param x_account_token Token identifying the end user.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  # @return [EmployeePayrollRun]
  describe 'employee_payroll_runs_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
