=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2
Contact: contact@mailslurp.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module MailSlurpClient
  class ExportControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Export inboxes link callable via browser
    # @param export_type [String] 
    # @param api_key [String] 
    # @param output_format [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter 
    # @option opts [String] :list_separator_token 
    # @option opts [Boolean] :exclude_previously_exported 
    # @option opts [DateTime] :created_earliest_time 
    # @option opts [DateTime] :created_oldest_time 
    # @return [String]
    def export_entities(export_type, api_key, output_format, opts = {})
      data, _status_code, _headers = export_entities_with_http_info(export_type, api_key, output_format, opts)
      data
    end

    # Export inboxes link callable via browser
    # @param export_type [String] 
    # @param api_key [String] 
    # @param output_format [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter 
    # @option opts [String] :list_separator_token 
    # @option opts [Boolean] :exclude_previously_exported 
    # @option opts [DateTime] :created_earliest_time 
    # @option opts [DateTime] :created_oldest_time 
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def export_entities_with_http_info(export_type, api_key, output_format, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExportControllerApi.export_entities ...'
      end
      # verify the required parameter 'export_type' is set
      if @api_client.config.client_side_validation && export_type.nil?
        fail ArgumentError, "Missing the required parameter 'export_type' when calling ExportControllerApi.export_entities"
      end
      # verify enum value
      allowable_values = ["INBOXES", "CONTACTS", "ATTACHMENTS", "EMAILS"]
      if @api_client.config.client_side_validation && !allowable_values.include?(export_type)
        fail ArgumentError, "invalid value for \"export_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling ExportControllerApi.export_entities"
      end
      # verify the required parameter 'output_format' is set
      if @api_client.config.client_side_validation && output_format.nil?
        fail ArgumentError, "Missing the required parameter 'output_format' when calling ExportControllerApi.export_entities"
      end
      # verify enum value
      allowable_values = ["CSV_DEFAULT", "CSV_EXCEL"]
      if @api_client.config.client_side_validation && !allowable_values.include?(output_format)
        fail ArgumentError, "invalid value for \"output_format\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/export'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'exportType'] = export_type
      query_params[:'apiKey'] = api_key
      query_params[:'outputFormat'] = output_format
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'listSeparatorToken'] = opts[:'list_separator_token'] if !opts[:'list_separator_token'].nil?
      query_params[:'excludePreviouslyExported'] = opts[:'exclude_previously_exported'] if !opts[:'exclude_previously_exported'].nil?
      query_params[:'createdEarliestTime'] = opts[:'created_earliest_time'] if !opts[:'created_earliest_time'].nil?
      query_params[:'createdOldestTime'] = opts[:'created_oldest_time'] if !opts[:'created_oldest_time'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'String' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

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
        @api_client.config.logger.debug "API called: ExportControllerApi#export_entities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get export link
    # @param export_type [String] 
    # @param export_options [ExportOptions] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :api_key 
    # @return [ExportLink]
    def get_export_link(export_type, export_options, opts = {})
      data, _status_code, _headers = get_export_link_with_http_info(export_type, export_options, opts)
      data
    end

    # Get export link
    # @param export_type [String] 
    # @param export_options [ExportOptions] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :api_key 
    # @return [Array<(ExportLink, Integer, Hash)>] ExportLink data, response status code and response headers
    def get_export_link_with_http_info(export_type, export_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExportControllerApi.get_export_link ...'
      end
      # verify the required parameter 'export_type' is set
      if @api_client.config.client_side_validation && export_type.nil?
        fail ArgumentError, "Missing the required parameter 'export_type' when calling ExportControllerApi.get_export_link"
      end
      # verify enum value
      allowable_values = ["INBOXES", "CONTACTS", "ATTACHMENTS", "EMAILS"]
      if @api_client.config.client_side_validation && !allowable_values.include?(export_type)
        fail ArgumentError, "invalid value for \"export_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'export_options' is set
      if @api_client.config.client_side_validation && export_options.nil?
        fail ArgumentError, "Missing the required parameter 'export_options' when calling ExportControllerApi.get_export_link"
      end
      # resource path
      local_var_path = '/export'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'exportType'] = export_type
      query_params[:'apiKey'] = opts[:'api_key'] if !opts[:'api_key'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(export_options) 

      # return_type
      return_type = opts[:return_type] || 'ExportLink' 

      # auth_names
      auth_names = opts[:auth_names] || ['API_KEY']

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
        @api_client.config.logger.debug "API called: ExportControllerApi#get_export_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
