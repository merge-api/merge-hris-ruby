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

# Unit tests for MergeHRISClient::IssuesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'IssuesApi' do
  before do
    # run before each test
    @api_instance = MergeHRISClient::IssuesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IssuesApi' do
    it 'should create an instance of IssuesApi' do
      expect(@api_instance).to be_instance_of(MergeHRISClient::IssuesApi)
    end
  end

  # unit tests for issues_list
  # Gets all issues for Organization.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :account_token 
  # @option opts [String] :cursor The pagination cursor value.
  # @option opts [String] :end_date If included, will only include issues whose most recent action occurred before this time
  # @option opts [String] :end_user_organization_name 
  # @option opts [Time] :first_incident_time_after If provided, will only return issues whose first incident time was after this datetime.
  # @option opts [Time] :first_incident_time_before If provided, will only return issues whose first incident time was before this datetime.
  # @option opts [String] :include_muted If true, will include muted issues
  # @option opts [String] :integration_name 
  # @option opts [Time] :last_incident_time_after If provided, will only return issues whose last incident time was after this datetime.
  # @option opts [Time] :last_incident_time_before If provided, will only return issues whose last incident time was before this datetime.
  # @option opts [String] :linked_account_id If provided, will only include issues pertaining to the linked account passed in.
  # @option opts [Integer] :page_size Number of results to return per page.
  # @option opts [String] :start_date If included, will only include issues whose most recent action occurred after this time
  # @option opts [String] :status Status of the issue. Options: (&#39;ONGOING&#39;, &#39;RESOLVED&#39;)  * &#x60;ONGOING&#x60; - ONGOING * &#x60;RESOLVED&#x60; - RESOLVED
  # @return [PaginatedIssueList]
  describe 'issues_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for issues_retrieve
  # Get a specific issue.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Issue]
  describe 'issues_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
