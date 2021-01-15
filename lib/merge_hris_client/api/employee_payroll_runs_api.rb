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
  class EmployeePayrollRunsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a list of `EmployeePayrollRun` objects.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [DateTime] :created_after If provided, will only return objects created after this datetime.
    # @option opts [DateTime] :created_before If provided, will only return objects created before this datetime.
    # @option opts [Integer] :cursor The pagination cursor value.
    # @option opts [String] :employee_id If provided, will only return employee payroll runs for this employee.
    # @option opts [String] :expand Which relations should be returned in expanded form.
    # @option opts [DateTime] :modified_after If provided, will only return objects modified after this datetime.
    # @option opts [DateTime] :modified_before If provided, will only return objects modified before this datetime.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :payroll_run_id If provided, will only return employee payroll runs for this employee.
    # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
    # @return [PaginatedEmployeePayrollRunList]
    def employee_payroll_runs_list(opts = {})
      data, _status_code, _headers = employee_payroll_runs_list_with_http_info(opts)
      data
    end

    # Returns a list of &#x60;EmployeePayrollRun&#x60; objects.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [DateTime] :created_after If provided, will only return objects created after this datetime.
    # @option opts [DateTime] :created_before If provided, will only return objects created before this datetime.
    # @option opts [Integer] :cursor The pagination cursor value.
    # @option opts [String] :employee_id If provided, will only return employee payroll runs for this employee.
    # @option opts [String] :expand Which relations should be returned in expanded form.
    # @option opts [DateTime] :modified_after If provided, will only return objects modified after this datetime.
    # @option opts [DateTime] :modified_before If provided, will only return objects modified before this datetime.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :payroll_run_id If provided, will only return employee payroll runs for this employee.
    # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
    # @return [Array<(PaginatedEmployeePayrollRunList, Integer, Hash)>] PaginatedEmployeePayrollRunList data, response status code and response headers
    def employee_payroll_runs_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmployeePayrollRunsApi.employee_payroll_runs_list ...'
      end
      allowable_values = ["employee", "payroll_run"]
      if @api_client.config.client_side_validation && opts[:'expand'] && !allowable_values.include?(opts[:'expand'])
        fail ArgumentError, "invalid value for \"expand\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/employee-payroll-runs'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'created_after'] = opts[:'created_after'] if !opts[:'created_after'].nil?
      query_params[:'created_before'] = opts[:'created_before'] if !opts[:'created_before'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'employee_id'] = opts[:'employee_id'] if !opts[:'employee_id'].nil?
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?
      query_params[:'modified_after'] = opts[:'modified_after'] if !opts[:'modified_after'].nil?
      query_params[:'modified_before'] = opts[:'modified_before'] if !opts[:'modified_before'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'payroll_run_id'] = opts[:'payroll_run_id'] if !opts[:'payroll_run_id'].nil?
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
      return_type = opts[:return_type] || 'PaginatedEmployeePayrollRunList' 

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
        @api_client.config.logger.debug "API called: EmployeePayrollRunsApi#employee_payroll_runs_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns an `EmployeePayrollRun` object with the given `id`.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [String] :expand Which relations should be returned in expanded form.
    # @return [EmployeePayrollRun]
    def employee_payroll_runs_retrieve(id, opts = {})
      data, _status_code, _headers = employee_payroll_runs_retrieve_with_http_info(id, opts)
      data
    end

    # Returns an &#x60;EmployeePayrollRun&#x60; object with the given &#x60;id&#x60;.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_account_token Token identifying the end user.
    # @option opts [String] :expand Which relations should be returned in expanded form.
    # @return [Array<(EmployeePayrollRun, Integer, Hash)>] EmployeePayrollRun data, response status code and response headers
    def employee_payroll_runs_retrieve_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmployeePayrollRunsApi.employee_payroll_runs_retrieve ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EmployeePayrollRunsApi.employee_payroll_runs_retrieve"
      end
      allowable_values = ["employee", "payroll_run"]
      if @api_client.config.client_side_validation && opts[:'expand'] && !allowable_values.include?(opts[:'expand'])
        fail ArgumentError, "invalid value for \"expand\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/employee-payroll-runs/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'EmployeePayrollRun' 

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
        @api_client.config.logger.debug "API called: EmployeePayrollRunsApi#employee_payroll_runs_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
