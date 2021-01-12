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
  class EmployeesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates an `Employee` object with the given values.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @option opts [Employee] :employee 
    # @return [Employee]
    def employees_create(opts = {})
      data, _status_code, _headers = employees_create_with_http_info(opts)
      data
    end

    # Creates an &#x60;Employee&#x60; object with the given values.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @option opts [Employee] :employee 
    # @return [Array<(Employee, Integer, Hash)>] Employee data, response status code and response headers
    def employees_create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmployeesApi.employees_create ...'
      end
      # resource path
      local_var_path = '/employees'

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
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'employee']) 

      # return_type
      return_type = opts[:return_type] || 'Employee' 

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
        @api_client.config.logger.debug "API called: EmployeesApi#employees_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an `Employee` object with the given `id`.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @return [Employee]
    def employees_destroy(id, opts = {})
      data, _status_code, _headers = employees_destroy_with_http_info(id, opts)
      data
    end

    # Deletes an &#x60;Employee&#x60; object with the given &#x60;id&#x60;.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @return [Array<(Employee, Integer, Hash)>] Employee data, response status code and response headers
    def employees_destroy_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmployeesApi.employees_destroy ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EmployeesApi.employees_destroy"
      end
      # resource path
      local_var_path = '/employees/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'Employee' 

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
        @api_client.config.logger.debug "API called: EmployeesApi#employees_destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of `Employee` objects.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [String] :company_id If provided, will only return employees for this company.
    # @option opts [DateTime] :created_after If provided, will only return objects created after this datetime.
    # @option opts [DateTime] :created_before If provided, will only return objects created before this datetime.
    # @option opts [Integer] :cursor The pagination cursor value.
    # @option opts [String] :expand Which relations should be returned in expanded form.
    # @option opts [String] :manager_id If provided, will only return employees for this manager.
    # @option opts [DateTime] :modified_after If provided, will only return objects modified after this datetime.
    # @option opts [DateTime] :modified_before If provided, will only return objects modified before this datetime.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
    # @option opts [String] :team_id If provided, will only return employees for this team.
    # @option opts [String] :work_location_id If provided, will only return employees for this location.
    # @return [PaginatedEmployeeList]
    def employees_list(opts = {})
      data, _status_code, _headers = employees_list_with_http_info(opts)
      data
    end

    # Returns a list of &#x60;Employee&#x60; objects.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [String] :company_id If provided, will only return employees for this company.
    # @option opts [DateTime] :created_after If provided, will only return objects created after this datetime.
    # @option opts [DateTime] :created_before If provided, will only return objects created before this datetime.
    # @option opts [Integer] :cursor The pagination cursor value.
    # @option opts [String] :expand Which relations should be returned in expanded form.
    # @option opts [String] :manager_id If provided, will only return employees for this manager.
    # @option opts [DateTime] :modified_after If provided, will only return objects modified after this datetime.
    # @option opts [DateTime] :modified_before If provided, will only return objects modified before this datetime.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
    # @option opts [String] :team_id If provided, will only return employees for this team.
    # @option opts [String] :work_location_id If provided, will only return employees for this location.
    # @return [Array<(PaginatedEmployeeList, Integer, Hash)>] PaginatedEmployeeList data, response status code and response headers
    def employees_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmployeesApi.employees_list ...'
      end
      allowable_values = ["company", "documents", "employments", "home_location", "manager", "team", "work_location"]
      if @api_client.config.client_side_validation && opts[:'expand'] && !allowable_values.include?(opts[:'expand'])
        fail ArgumentError, "invalid value for \"expand\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/employees'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'company_id'] = opts[:'company_id'] if !opts[:'company_id'].nil?
      query_params[:'created_after'] = opts[:'created_after'] if !opts[:'created_after'].nil?
      query_params[:'created_before'] = opts[:'created_before'] if !opts[:'created_before'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?
      query_params[:'manager_id'] = opts[:'manager_id'] if !opts[:'manager_id'].nil?
      query_params[:'modified_after'] = opts[:'modified_after'] if !opts[:'modified_after'].nil?
      query_params[:'modified_before'] = opts[:'modified_before'] if !opts[:'modified_before'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'remote_id'] = opts[:'remote_id'] if !opts[:'remote_id'].nil?
      query_params[:'team_id'] = opts[:'team_id'] if !opts[:'team_id'].nil?
      query_params[:'work_location_id'] = opts[:'work_location_id'] if !opts[:'work_location_id'].nil?

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
      return_type = opts[:return_type] || 'PaginatedEmployeeList' 

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
        @api_client.config.logger.debug "API called: EmployeesApi#employees_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates an `Employee` object with the given `id`.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @option opts [PatchedEmployee] :patched_employee 
    # @return [Employee]
    def employees_partial_update(id, opts = {})
      data, _status_code, _headers = employees_partial_update_with_http_info(id, opts)
      data
    end

    # Updates an &#x60;Employee&#x60; object with the given &#x60;id&#x60;.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @option opts [PatchedEmployee] :patched_employee 
    # @return [Array<(Employee, Integer, Hash)>] Employee data, response status code and response headers
    def employees_partial_update_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmployeesApi.employees_partial_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EmployeesApi.employees_partial_update"
      end
      # resource path
      local_var_path = '/employees/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'patched_employee']) 

      # return_type
      return_type = opts[:return_type] || 'Employee' 

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
        @api_client.config.logger.debug "API called: EmployeesApi#employees_partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns an `Employee` object with the given `id`.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [String] :expand Which relations should be returned in expanded form.
    # @return [Employee]
    def employees_retrieve(id, opts = {})
      data, _status_code, _headers = employees_retrieve_with_http_info(id, opts)
      data
    end

    # Returns an &#x60;Employee&#x60; object with the given &#x60;id&#x60;.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [String] :expand Which relations should be returned in expanded form.
    # @return [Array<(Employee, Integer, Hash)>] Employee data, response status code and response headers
    def employees_retrieve_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmployeesApi.employees_retrieve ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EmployeesApi.employees_retrieve"
      end
      allowable_values = ["company", "documents", "employments", "home_location", "manager", "team", "work_location"]
      if @api_client.config.client_side_validation && opts[:'expand'] && !allowable_values.include?(opts[:'expand'])
        fail ArgumentError, "invalid value for \"expand\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/employees/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

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
      return_type = opts[:return_type] || 'Employee' 

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
        @api_client.config.logger.debug "API called: EmployeesApi#employees_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Employee] :employee 
    # @return [Employee]
    def employees_update(id, opts = {})
      data, _status_code, _headers = employees_update_with_http_info(id, opts)
      data
    end

    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Employee] :employee 
    # @return [Array<(Employee, Integer, Hash)>] Employee data, response status code and response headers
    def employees_update_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmployeesApi.employees_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EmployeesApi.employees_update"
      end
      # resource path
      local_var_path = '/employees/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'employee']) 

      # return_type
      return_type = opts[:return_type] || 'Employee' 

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
        @api_client.config.logger.debug "API called: EmployeesApi#employees_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
