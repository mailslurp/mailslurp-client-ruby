=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2
Contact: contact@mailslurp.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module MailSlurpClient
  class EmailVerificationControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Validate a list of email addresses. Per unit billing. See your plan for pricing.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in list pagination (default to 0)
    # @option opts [Integer] :size Optional page size for paginated result list. (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'DESC')
    # @option opts [String] :search_filter Optional search filter
    # @option opts [DateTime] :since Filter by created at after the given timestamp
    # @option opts [DateTime] :before Filter by created at before the given timestamp
    # @option opts [Boolean] :is_valid Filter where email is valid is true or false
    # @return [PageEmailValidationRequest]
    def get_validation_requests(opts = {})
      data, _status_code, _headers = get_validation_requests_with_http_info(opts)
      data
    end

    # Validate a list of email addresses. Per unit billing. See your plan for pricing.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Optional page index in list pagination
    # @option opts [Integer] :size Optional page size for paginated result list.
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @option opts [String] :search_filter Optional search filter
    # @option opts [DateTime] :since Filter by created at after the given timestamp
    # @option opts [DateTime] :before Filter by created at before the given timestamp
    # @option opts [Boolean] :is_valid Filter where email is valid is true or false
    # @return [Array<(PageEmailValidationRequest, Integer, Hash)>] PageEmailValidationRequest data, response status code and response headers
    def get_validation_requests_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailVerificationControllerApi.get_validation_requests ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] > 9223372036854775807
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling EmailVerificationControllerApi.get_validation_requests, must be smaller than or equal to 9223372036854775807.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling EmailVerificationControllerApi.get_validation_requests, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'size'].nil? && opts[:'size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"size"]" when calling EmailVerificationControllerApi.get_validation_requests, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'size'].nil? && opts[:'size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"size"]" when calling EmailVerificationControllerApi.get_validation_requests, must be greater than or equal to 1.'
      end

      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/email-verification/validation-requests'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'searchFilter'] = opts[:'search_filter'] if !opts[:'search_filter'].nil?
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?
      query_params[:'isValid'] = opts[:'is_valid'] if !opts[:'is_valid'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PageEmailValidationRequest' 

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
        @api_client.config.logger.debug "API called: EmailVerificationControllerApi#get_validation_requests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Validate a list of email addresses. Per unit billing. See your plan for pricing.
    # @param validate_email_address_list_options [ValidateEmailAddressListOptions] 
    # @param [Hash] opts the optional parameters
    # @return [ValidateEmailAddressListResult]
    def validate_email_address_list(validate_email_address_list_options, opts = {})
      data, _status_code, _headers = validate_email_address_list_with_http_info(validate_email_address_list_options, opts)
      data
    end

    # Validate a list of email addresses. Per unit billing. See your plan for pricing.
    # @param validate_email_address_list_options [ValidateEmailAddressListOptions] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ValidateEmailAddressListResult, Integer, Hash)>] ValidateEmailAddressListResult data, response status code and response headers
    def validate_email_address_list_with_http_info(validate_email_address_list_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailVerificationControllerApi.validate_email_address_list ...'
      end
      # verify the required parameter 'validate_email_address_list_options' is set
      if @api_client.config.client_side_validation && validate_email_address_list_options.nil?
        fail ArgumentError, "Missing the required parameter 'validate_email_address_list_options' when calling EmailVerificationControllerApi.validate_email_address_list"
      end
      # resource path
      local_var_path = '/email-verification/email-address-list'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(validate_email_address_list_options) 

      # return_type
      return_type = opts[:return_type] || 'ValidateEmailAddressListResult' 

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
        @api_client.config.logger.debug "API called: EmailVerificationControllerApi#validate_email_address_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
