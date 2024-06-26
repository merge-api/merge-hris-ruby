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

# Unit tests for MergeHRISClient::ScopesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ScopesApi' do
  before do
    # run before each test
    @api_instance = MergeHRISClient::ScopesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ScopesApi' do
    it 'should create an instance of ScopesApi' do
      expect(@api_instance).to be_instance_of(MergeHRISClient::ScopesApi)
    end
  end

  # unit tests for default_scopes_retrieve
  # Get the default permissions for Merge Common Models and fields across all Linked Accounts of a given category. [Learn more](https://help.merge.dev/en/articles/8828211-common-model-and-field-scopes).
  # @param [Hash] opts the optional parameters
  # @return [CommonModelScopeAPI]
  describe 'default_scopes_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for linked_account_scopes_create
  # Update permissions for any Common Model or field for a single Linked Account. Any Scopes not set in this POST request will inherit the default Scopes. [Learn more](https://help.merge.dev/en/articles/8828211-common-model-and-field-scopes)
  # @param x_account_token Token identifying the end user.
  # @param linked_account_common_model_scope_deserializer_request 
  # @param [Hash] opts the optional parameters
  # @return [CommonModelScopeAPI]
  describe 'linked_account_scopes_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for linked_account_scopes_retrieve
  # Get all available permissions for Merge Common Models and fields for a single Linked Account. [Learn more](https://help.merge.dev/en/articles/8828211-common-model-and-field-scopes).
  # @param x_account_token Token identifying the end user.
  # @param [Hash] opts the optional parameters
  # @return [CommonModelScopeAPI]
  describe 'linked_account_scopes_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
