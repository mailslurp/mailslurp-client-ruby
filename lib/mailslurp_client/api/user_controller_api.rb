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
  class UserControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Utility function to extract properties from JSON objects in language where this is cumbersome.
    # @param property [String] JSON property name or dot separated path selector such as &#x60;a.b.c&#x60;
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_json_property_as_string(property, body, opts = {})
      data, _status_code, _headers = get_json_property_as_string_with_http_info(property, body, opts)
      data
    end

    # Utility function to extract properties from JSON objects in language where this is cumbersome.
    # @param property [String] JSON property name or dot separated path selector such as &#x60;a.b.c&#x60;
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_json_property_as_string_with_http_info(property, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserControllerApi.get_json_property_as_string ...'
      end
      # verify the required parameter 'property' is set
      if @api_client.config.client_side_validation && property.nil?
        fail ArgumentError, "Missing the required parameter 'property' when calling UserControllerApi.get_json_property_as_string"
      end
      # resource path
      local_var_path = '/user/json/pluck'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'property'] = property

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserControllerApi#get_json_property_as_string\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get account information for your user
    # @param [Hash] opts the optional parameters
    # @return [UserInfoDto]
    def get_user_info(opts = {})
      data, _status_code, _headers = get_user_info_with_http_info(opts)
      data
    end

    # Get account information for your user
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserInfoDto, Integer, Hash)>] UserInfoDto data, response status code and response headers
    def get_user_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserControllerApi.get_user_info ...'
      end
      # resource path
      local_var_path = '/user/info'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'UserInfoDto' 

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
        @api_client.config.logger.debug "API called: UserControllerApi#get_user_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
