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
  class IssuesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets issues.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_token account_token
    # @option opts [Integer] :cursor The pagination cursor value.
    # @option opts [String] :end_date If included, will only include issues whose most recent action occurred before this time
    # @option opts [String] :end_user_organization_name end_user_organization_name
    # @option opts [String] :include_muted If True, will include muted issues
    # @option opts [String] :integration_name integration_name
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :start_date If included, will only include issues whose most recent action occurred after this time
    # @option opts [String] :status status
    # @return [PaginatedIssueList]
    def issues_list(opts = {})
      data, _status_code, _headers = issues_list_with_http_info(opts)
      data
    end

    # Gets issues.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_token account_token
    # @option opts [Integer] :cursor The pagination cursor value.
    # @option opts [String] :end_date If included, will only include issues whose most recent action occurred before this time
    # @option opts [String] :end_user_organization_name end_user_organization_name
    # @option opts [String] :include_muted If True, will include muted issues
    # @option opts [String] :integration_name integration_name
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :start_date If included, will only include issues whose most recent action occurred after this time
    # @option opts [String] :status status
    # @return [Array<(PaginatedIssueList, Integer, Hash)>] PaginatedIssueList data, response status code and response headers
    def issues_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IssuesApi.issues_list ...'
      end
      allowable_values = ["ONGOING", "RESOLVED"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/issues'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_token'] = opts[:'account_token'] if !opts[:'account_token'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'end_user_organization_name'] = opts[:'end_user_organization_name'] if !opts[:'end_user_organization_name'].nil?
      query_params[:'include_muted'] = opts[:'include_muted'] if !opts[:'include_muted'].nil?
      query_params[:'integration_name'] = opts[:'integration_name'] if !opts[:'integration_name'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaginatedIssueList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"IssuesApi.issues_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IssuesApi#issues_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a specific issue.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Issue]
    def issues_retrieve(id, opts = {})
      data, _status_code, _headers = issues_retrieve_with_http_info(id, opts)
      data
    end

    # Get a specific issue.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Issue, Integer, Hash)>] Issue data, response status code and response headers
    def issues_retrieve_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IssuesApi.issues_retrieve ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling IssuesApi.issues_retrieve"
      end
      # resource path
      local_var_path = '/issues/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Issue'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"IssuesApi.issues_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IssuesApi#issues_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
