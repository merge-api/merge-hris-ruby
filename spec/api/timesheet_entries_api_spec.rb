=begin
#Merge HRIS API

#The unified API for building rich integrations with multiple HR Information System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'spec_helper'
require 'json'

# Unit tests for MergeHRISClient::TimesheetEntriesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TimesheetEntriesApi' do
  before do
    # run before each test
    @api_instance = MergeHRISClient::TimesheetEntriesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TimesheetEntriesApi' do
    it 'should create an instance of TimesheetEntriesApi' do
      expect(@api_instance).to be_instance_of(MergeHRISClient::TimesheetEntriesApi)
    end
  end

  # unit tests for timesheet_entries_create
  # Creates a &#x60;TimesheetEntry&#x60; object with the given values.
  # @param x_account_token Token identifying the end user.
  # @param timesheet_entry_endpoint_request 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :is_debug_mode Whether to include debug fields (such as log file links) in the response.
  # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
  # @return [TimesheetEntryResponse]
  describe 'timesheet_entries_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for timesheet_entries_list
  # Returns a list of &#x60;TimesheetEntry&#x60; objects.
  # @param x_account_token Token identifying the end user.
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :created_after If provided, will only return objects created after this datetime.
  # @option opts [Time] :created_before If provided, will only return objects created before this datetime.
  # @option opts [String] :cursor The pagination cursor value.
  # @option opts [String] :employee_id If provided, will only return timesheet entries for this employee.
  # @option opts [String] :ended_after If provided, will only return timesheet entries ended after this datetime.
  # @option opts [String] :ended_before If provided, will only return timesheet entries ended before this datetime.
  # @option opts [Boolean] :include_deleted_data Whether to include data that was marked as deleted by third party webhooks.
  # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
  # @option opts [Time] :modified_after If provided, only objects synced by Merge after this date time will be returned.
  # @option opts [Time] :modified_before If provided, only objects synced by Merge before this date time will be returned.
  # @option opts [String] :order_by Overrides the default ordering for this endpoint. Possible values include: start_time, -start_time.
  # @option opts [Integer] :page_size Number of results to return per page.
  # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
  # @option opts [String] :started_after If provided, will only return timesheet entries started after this datetime.
  # @option opts [String] :started_before If provided, will only return timesheet entries started before this datetime.
  # @return [PaginatedTimesheetEntryList]
  describe 'timesheet_entries_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for timesheet_entries_meta_post_retrieve
  # Returns metadata for &#x60;TimesheetEntry&#x60; POSTs.
  # @param x_account_token Token identifying the end user.
  # @param [Hash] opts the optional parameters
  # @return [MetaResponse]
  describe 'timesheet_entries_meta_post_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for timesheet_entries_retrieve
  # Returns a &#x60;TimesheetEntry&#x60; object with the given &#x60;id&#x60;.
  # @param x_account_token Token identifying the end user.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
  # @return [TimesheetEntry]
  describe 'timesheet_entries_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
