=begin
#Merge HRIS API

#The unified API for building rich integrations with multiple HR Information System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module MergeHRISClient
  class AccountTokenApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the account token for the end user with the provided public token.
    # @param public_token [String] 
    # @param [Hash] opts the optional parameters
    # @return [AccountToken]
    def account_token_retrieve(public_token, opts = {})
      data, _status_code, _headers = account_token_retrieve_with_http_info(public_token, opts)
      data
    end

    # Returns the account token for the end user with the provided public token.
    # @param public_token [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountToken, Integer, Hash)>] AccountToken data, response status code and response headers
    def account_token_retrieve_with_http_info(public_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountTokenApi.account_token_retrieve ...'
      end
      # verify the required parameter 'public_token' is set
      if @api_client.config.client_side_validation && public_token.nil?
        fail ArgumentError, "Missing the required parameter 'public_token' when calling AccountTokenApi.account_token_retrieve"
      end
      # resource path
      local_var_path = '/account-token/{public_token}'.sub('{' + 'public_token' + '}', CGI.escape(public_token.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'AccountToken' 

      # auth_names
      auth_names = opts[:auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountTokenApi#account_token_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
