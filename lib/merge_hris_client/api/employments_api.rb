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
  class EmploymentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates an `Employment` object with the given values.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @option opts [Employment] :employment 
    # @return [Employment]
    def employments_create(opts = {})
      data, _status_code, _headers = employments_create_with_http_info(opts)
      data
    end

    # Creates an &#x60;Employment&#x60; object with the given values.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @option opts [Employment] :employment 
    # @return [Array<(Employment, Integer, Hash)>] Employment data, response status code and response headers
    def employments_create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmploymentsApi.employments_create ...'
      end
      # resource path
      local_var_path = '/employments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'run_async'] = opts[:'run_async'] if !opts[:'run_async'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'])
      header_params[:'X-Account-Token'] = opts[:'x_account_token'] if !opts[:'x_account_token'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'employment']) 

      # return_type
      return_type = opts[:return_type] || 'Employment' 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmploymentsApi#employments_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an `Employment` object with the given `id`.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @return [AsyncTaskExecution]
    def employments_destroy(id, opts = {})
      data, _status_code, _headers = employments_destroy_with_http_info(id, opts)
      data
    end

    # Deletes an &#x60;Employment&#x60; object with the given &#x60;id&#x60;.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @return [Array<(AsyncTaskExecution, Integer, Hash)>] AsyncTaskExecution data, response status code and response headers
    def employments_destroy_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmploymentsApi.employments_destroy ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EmploymentsApi.employments_destroy"
      end
      # resource path
      local_var_path = '/employments/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'run_async'] = opts[:'run_async'] if !opts[:'run_async'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Account-Token'] = opts[:'x_account_token'] if !opts[:'x_account_token'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'AsyncTaskExecution' 

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmploymentsApi#employments_destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of `Employment` objects.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [DateTime] :created_after If provided, will only return objects created after this datetime.
    # @option opts [DateTime] :created_before If provided, will only return objects created before this datetime.
    # @option opts [Integer] :cursor The pagination cursor value.
    # @option opts [DateTime] :modified_after If provided, will only return objects modified after this datetime.
    # @option opts [DateTime] :modified_before If provided, will only return objects modified before this datetime.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
    # @return [PaginatedEmploymentList]
    def employments_list(opts = {})
      data, _status_code, _headers = employments_list_with_http_info(opts)
      data
    end

    # Returns a list of &#x60;Employment&#x60; objects.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [DateTime] :created_after If provided, will only return objects created after this datetime.
    # @option opts [DateTime] :created_before If provided, will only return objects created before this datetime.
    # @option opts [Integer] :cursor The pagination cursor value.
    # @option opts [DateTime] :modified_after If provided, will only return objects modified after this datetime.
    # @option opts [DateTime] :modified_before If provided, will only return objects modified before this datetime.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
    # @return [Array<(PaginatedEmploymentList, Integer, Hash)>] PaginatedEmploymentList data, response status code and response headers
    def employments_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmploymentsApi.employments_list ...'
      end
      # resource path
      local_var_path = '/employments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'created_after'] = opts[:'created_after'] if !opts[:'created_after'].nil?
      query_params[:'created_before'] = opts[:'created_before'] if !opts[:'created_before'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'modified_after'] = opts[:'modified_after'] if !opts[:'modified_after'].nil?
      query_params[:'modified_before'] = opts[:'modified_before'] if !opts[:'modified_before'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'remote_id'] = opts[:'remote_id'] if !opts[:'remote_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Account-Token'] = opts[:'x_account_token'] if !opts[:'x_account_token'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PaginatedEmploymentList' 

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
        @api_client.config.logger.debug "API called: EmploymentsApi#employments_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates an `Employment` object with the given `id`.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @option opts [PatchedEmployment] :patched_employment 
    # @return [Employment]
    def employments_partial_update(id, opts = {})
      data, _status_code, _headers = employments_partial_update_with_http_info(id, opts)
      data
    end

    # Updates an &#x60;Employment&#x60; object with the given &#x60;id&#x60;.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @option opts [PatchedEmployment] :patched_employment 
    # @return [Array<(Employment, Integer, Hash)>] Employment data, response status code and response headers
    def employments_partial_update_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmploymentsApi.employments_partial_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EmploymentsApi.employments_partial_update"
      end
      # resource path
      local_var_path = '/employments/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'run_async'] = opts[:'run_async'] if !opts[:'run_async'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'])
      header_params[:'X-Account-Token'] = opts[:'x_account_token'] if !opts[:'x_account_token'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'patched_employment']) 

      # return_type
      return_type = opts[:return_type] || 'Employment' 

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

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmploymentsApi#employments_partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns an `Employment` object with the given `id`.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @return [Employment]
    def employments_retrieve(id, opts = {})
      data, _status_code, _headers = employments_retrieve_with_http_info(id, opts)
      data
    end

    # Returns an &#x60;Employment&#x60; object with the given &#x60;id&#x60;.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @return [Array<(Employment, Integer, Hash)>] Employment data, response status code and response headers
    def employments_retrieve_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmploymentsApi.employments_retrieve ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EmploymentsApi.employments_retrieve"
      end
      # resource path
      local_var_path = '/employments/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Account-Token'] = opts[:'x_account_token'] if !opts[:'x_account_token'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Employment' 

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
        @api_client.config.logger.debug "API called: EmploymentsApi#employments_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Employment] :employment 
    # @return [Employment]
    def employments_update(id, opts = {})
      data, _status_code, _headers = employments_update_with_http_info(id, opts)
      data
    end

    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Employment] :employment 
    # @return [Array<(Employment, Integer, Hash)>] Employment data, response status code and response headers
    def employments_update_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmploymentsApi.employments_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EmploymentsApi.employments_update"
      end
      # resource path
      local_var_path = '/employments/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'employment']) 

      # return_type
      return_type = opts[:return_type] || 'Employment' 

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmploymentsApi#employments_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
