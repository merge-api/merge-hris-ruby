=begin
#Merge HRIS API

#The unified API for building rich integrations with multiple HR Information System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'cgi'

module MergeHRISClient
  class ScopesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the default permissions for Merge Common Models and fields across all Linked Accounts of a given category. [Learn more](https://help.merge.dev/en/articles/8828211-common-model-and-field-scopes).
    # @param [Hash] opts the optional parameters
    # @return [CommonModelScopeAPI]
    def default_scopes_retrieve(opts = {})
      data, _status_code, _headers = default_scopes_retrieve_with_http_info(opts)
      data
    end

    # Get the default permissions for Merge Common Models and fields across all Linked Accounts of a given category. [Learn more](https://help.merge.dev/en/articles/8828211-common-model-and-field-scopes).
    # @param [Hash] opts the optional parameters
    # @return [Array<(CommonModelScopeAPI, Integer, Hash)>] CommonModelScopeAPI data, response status code and response headers
    def default_scopes_retrieve_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScopesApi.default_scopes_retrieve ...'
      end
      # resource path
      local_var_path = '/default-scopes'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CommonModelScopeAPI'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"ScopesApi.default_scopes_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScopesApi#default_scopes_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update permissions for any Common Model or field for a single Linked Account. Any Scopes not set in this POST request will inherit the default Scopes. [Learn more](https://help.merge.dev/en/articles/8828211-common-model-and-field-scopes)
    # @param x_account_token [String] Token identifying the end user.
    # @param linked_account_common_model_scope_deserializer_request [LinkedAccountCommonModelScopeDeserializerRequest] 
    # @param [Hash] opts the optional parameters
    # @return [CommonModelScopeAPI]
    def linked_account_scopes_create(x_account_token, linked_account_common_model_scope_deserializer_request, opts = {})
      data, _status_code, _headers = linked_account_scopes_create_with_http_info(x_account_token, linked_account_common_model_scope_deserializer_request, opts)
      data
    end

    # Update permissions for any Common Model or field for a single Linked Account. Any Scopes not set in this POST request will inherit the default Scopes. [Learn more](https://help.merge.dev/en/articles/8828211-common-model-and-field-scopes)
    # @param x_account_token [String] Token identifying the end user.
    # @param linked_account_common_model_scope_deserializer_request [LinkedAccountCommonModelScopeDeserializerRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CommonModelScopeAPI, Integer, Hash)>] CommonModelScopeAPI data, response status code and response headers
    def linked_account_scopes_create_with_http_info(x_account_token, linked_account_common_model_scope_deserializer_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScopesApi.linked_account_scopes_create ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling ScopesApi.linked_account_scopes_create"
      end
      # verify the required parameter 'linked_account_common_model_scope_deserializer_request' is set
      if @api_client.config.client_side_validation && linked_account_common_model_scope_deserializer_request.nil?
        fail ArgumentError, "Missing the required parameter 'linked_account_common_model_scope_deserializer_request' when calling ScopesApi.linked_account_scopes_create"
      end
      # resource path
      local_var_path = '/linked-account-scopes'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'])
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(linked_account_common_model_scope_deserializer_request)

      # return_type
      return_type = opts[:debug_return_type] || 'CommonModelScopeAPI'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"ScopesApi.linked_account_scopes_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScopesApi#linked_account_scopes_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all available permissions for Merge Common Models and fields for a single Linked Account. [Learn more](https://help.merge.dev/en/articles/8828211-common-model-and-field-scopes).
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @return [CommonModelScopeAPI]
    def linked_account_scopes_retrieve(x_account_token, opts = {})
      data, _status_code, _headers = linked_account_scopes_retrieve_with_http_info(x_account_token, opts)
      data
    end

    # Get all available permissions for Merge Common Models and fields for a single Linked Account. [Learn more](https://help.merge.dev/en/articles/8828211-common-model-and-field-scopes).
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CommonModelScopeAPI, Integer, Hash)>] CommonModelScopeAPI data, response status code and response headers
    def linked_account_scopes_retrieve_with_http_info(x_account_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScopesApi.linked_account_scopes_retrieve ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling ScopesApi.linked_account_scopes_retrieve"
      end
      # resource path
      local_var_path = '/linked-account-scopes'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CommonModelScopeAPI'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"ScopesApi.linked_account_scopes_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScopesApi#linked_account_scopes_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end