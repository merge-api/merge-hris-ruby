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

# Unit tests for MergeHRISClient::DeleteAccountApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DeleteAccountApi' do
  before do
    # run before each test
    @api_instance = MergeHRISClient::DeleteAccountApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DeleteAccountApi' do
    it 'should create an instance of DeleteAccountApi' do
      expect(@api_instance).to be_instance_of(MergeHRISClient::DeleteAccountApi)
    end
  end

  # unit tests for delete_account_delete
  # Delete a linked account.
  # @param x_account_token Token identifying the end user.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_account_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
