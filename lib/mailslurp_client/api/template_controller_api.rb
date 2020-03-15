=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 

The version of the OpenAPI document: 67c9a1eda264be4cfe0bb2c76151f0aadf0862bc

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'cgi'

module MailSlurpClient
  class TemplateControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Template
    # @param create_template_options [CreateTemplateOptions] createTemplateOptions
    # @param [Hash] opts the optional parameters
    # @return [TemplateDto]
    def create_template(create_template_options, opts = {})
      data, _status_code, _headers = create_template_with_http_info(create_template_options, opts)
      data
    end

    # Create a Template
    # @param create_template_options [CreateTemplateOptions] createTemplateOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateDto, Integer, Hash)>] TemplateDto data, response status code and response headers
    def create_template_with_http_info(create_template_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplateControllerApi.create_template ...'
      end
      # verify the required parameter 'create_template_options' is set
      if @api_client.config.client_side_validation && create_template_options.nil?
        fail ArgumentError, "Missing the required parameter 'create_template_options' when calling TemplateControllerApi.create_template"
      end
      # resource path
      local_var_path = '/templates'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(create_template_options) 

      # return_type
      return_type = opts[:return_type] || 'TemplateDto' 

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
        @api_client.config.logger.debug "API called: TemplateControllerApi#create_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Template
    # @param template_id [String] TemplateId
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_template(template_id, opts = {})
      delete_template_with_http_info(template_id, opts)
      nil
    end

    # Delete Template
    # @param template_id [String] TemplateId
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_template_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplateControllerApi.delete_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling TemplateControllerApi.delete_template"
      end
      # resource path
      local_var_path = '/templates/{TemplateId}'.sub('{' + 'TemplateId' + '}', CGI.escape(template_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplateControllerApi#delete_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all Templates in paginated format
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in inbox list pagination (default to 0)
    # @option opts [Integer] :size Optional page size in inbox list pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @return [PageTemplateProjection]
    def get_all_templates(opts = {})
      data, _status_code, _headers = get_all_templates_with_http_info(opts)
      data
    end

    # Get all Templates in paginated format
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in inbox list pagination
    # @option opts [Integer] :size Optional page size in inbox list pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @return [Array<(PageTemplateProjection, Integer, Hash)>] PageTemplateProjection data, response status code and response headers
    def get_all_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplateControllerApi.get_all_templates ...'
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/templates/paginated'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PageTemplateProjection' 

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
        @api_client.config.logger.debug "API called: TemplateControllerApi#get_all_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Template
    # @param template_id [String] TemplateId
    # @param [Hash] opts the optional parameters
    # @return [TemplateDto]
    def get_template(template_id, opts = {})
      data, _status_code, _headers = get_template_with_http_info(template_id, opts)
      data
    end

    # Get Template
    # @param template_id [String] TemplateId
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateDto, Integer, Hash)>] TemplateDto data, response status code and response headers
    def get_template_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplateControllerApi.get_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling TemplateControllerApi.get_template"
      end
      # resource path
      local_var_path = '/templates/{TemplateId}'.sub('{' + 'TemplateId' + '}', CGI.escape(template_id.to_s))

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
      return_type = opts[:return_type] || 'TemplateDto' 

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
        @api_client.config.logger.debug "API called: TemplateControllerApi#get_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all Templates
    # @param [Hash] opts the optional parameters
    # @return [Array<TemplateProjection>]
    def get_templates(opts = {})
      data, _status_code, _headers = get_templates_with_http_info(opts)
      data
    end

    # Get all Templates
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TemplateProjection>, Integer, Hash)>] Array<TemplateProjection> data, response status code and response headers
    def get_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplateControllerApi.get_templates ...'
      end
      # resource path
      local_var_path = '/templates'

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
      return_type = opts[:return_type] || 'Array<TemplateProjection>' 

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
        @api_client.config.logger.debug "API called: TemplateControllerApi#get_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
