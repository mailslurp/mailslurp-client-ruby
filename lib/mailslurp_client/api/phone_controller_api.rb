=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2
Contact: contact@mailslurp.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module MailSlurpClient
  class PhoneControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param create_emergency_address_options [CreateEmergencyAddressOptions] 
    # @param [Hash] opts the optional parameters
    # @return [EmergencyAddress]
    def create_emergency_address(create_emergency_address_options, opts = {})
      data, _status_code, _headers = create_emergency_address_with_http_info(create_emergency_address_options, opts)
      data
    end

    # @param create_emergency_address_options [CreateEmergencyAddressOptions] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmergencyAddress, Integer, Hash)>] EmergencyAddress data, response status code and response headers
    def create_emergency_address_with_http_info(create_emergency_address_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneControllerApi.create_emergency_address ...'
      end
      # verify the required parameter 'create_emergency_address_options' is set
      if @api_client.config.client_side_validation && create_emergency_address_options.nil?
        fail ArgumentError, "Missing the required parameter 'create_emergency_address_options' when calling PhoneControllerApi.create_emergency_address"
      end
      # resource path
      local_var_path = '/phone/emergency-addresses'

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
      post_body = opts[:body] || @api_client.object_to_http_body(create_emergency_address_options) 

      # return_type
      return_type = opts[:return_type] || 'EmergencyAddress' 

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
        @api_client.config.logger.debug "API called: PhoneControllerApi#create_emergency_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param address_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [EmptyResponseDto]
    def delete_emergency_address(address_id, opts = {})
      data, _status_code, _headers = delete_emergency_address_with_http_info(address_id, opts)
      data
    end

    # @param address_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmptyResponseDto, Integer, Hash)>] EmptyResponseDto data, response status code and response headers
    def delete_emergency_address_with_http_info(address_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneControllerApi.delete_emergency_address ...'
      end
      # verify the required parameter 'address_id' is set
      if @api_client.config.client_side_validation && address_id.nil?
        fail ArgumentError, "Missing the required parameter 'address_id' when calling PhoneControllerApi.delete_emergency_address"
      end
      # resource path
      local_var_path = '/phone/emergency-addresses/{addressId}'.sub('{' + 'addressId' + '}', CGI.escape(address_id.to_s))

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
      return_type = opts[:return_type] || 'EmptyResponseDto' 

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
        @api_client.config.logger.debug "API called: PhoneControllerApi#delete_emergency_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param phone_number_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_phone_number(phone_number_id, opts = {})
      delete_phone_number_with_http_info(phone_number_id, opts)
      nil
    end

    # @param phone_number_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_phone_number_with_http_info(phone_number_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneControllerApi.delete_phone_number ...'
      end
      # verify the required parameter 'phone_number_id' is set
      if @api_client.config.client_side_validation && phone_number_id.nil?
        fail ArgumentError, "Missing the required parameter 'phone_number_id' when calling PhoneControllerApi.delete_phone_number"
      end
      # resource path
      local_var_path = '/phone/numbers/{phoneNumberId}'.sub('{' + 'phoneNumberId' + '}', CGI.escape(phone_number_id.to_s))

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
        @api_client.config.logger.debug "API called: PhoneControllerApi#delete_phone_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param address_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [EmergencyAddress]
    def get_emergency_address(address_id, opts = {})
      data, _status_code, _headers = get_emergency_address_with_http_info(address_id, opts)
      data
    end

    # @param address_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmergencyAddress, Integer, Hash)>] EmergencyAddress data, response status code and response headers
    def get_emergency_address_with_http_info(address_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneControllerApi.get_emergency_address ...'
      end
      # verify the required parameter 'address_id' is set
      if @api_client.config.client_side_validation && address_id.nil?
        fail ArgumentError, "Missing the required parameter 'address_id' when calling PhoneControllerApi.get_emergency_address"
      end
      # resource path
      local_var_path = '/phone/emergency-addresses/{addressId}'.sub('{' + 'addressId' + '}', CGI.escape(address_id.to_s))

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
      return_type = opts[:return_type] || 'EmergencyAddress' 

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
        @api_client.config.logger.debug "API called: PhoneControllerApi#get_emergency_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param [Hash] opts the optional parameters
    # @return [Array<EmergencyAddressDto>]
    def get_emergency_addresses(opts = {})
      data, _status_code, _headers = get_emergency_addresses_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<EmergencyAddressDto>, Integer, Hash)>] Array<EmergencyAddressDto> data, response status code and response headers
    def get_emergency_addresses_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneControllerApi.get_emergency_addresses ...'
      end
      # resource path
      local_var_path = '/phone/emergency-addresses'

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
      return_type = opts[:return_type] || 'Array<EmergencyAddressDto>' 

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
        @api_client.config.logger.debug "API called: PhoneControllerApi#get_emergency_addresses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param phone_number_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [PhoneNumberDto]
    def get_phone_number(phone_number_id, opts = {})
      data, _status_code, _headers = get_phone_number_with_http_info(phone_number_id, opts)
      data
    end

    # @param phone_number_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PhoneNumberDto, Integer, Hash)>] PhoneNumberDto data, response status code and response headers
    def get_phone_number_with_http_info(phone_number_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneControllerApi.get_phone_number ...'
      end
      # verify the required parameter 'phone_number_id' is set
      if @api_client.config.client_side_validation && phone_number_id.nil?
        fail ArgumentError, "Missing the required parameter 'phone_number_id' when calling PhoneControllerApi.get_phone_number"
      end
      # resource path
      local_var_path = '/phone/numbers/{phoneNumberId}'.sub('{' + 'phoneNumberId' + '}', CGI.escape(phone_number_id.to_s))

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
      return_type = opts[:return_type] || 'PhoneNumberDto' 

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
        @api_client.config.logger.debug "API called: PhoneControllerApi#get_phone_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param [Hash] opts the optional parameters
    # @option opts [String] :phone_country Optional phone country
    # @option opts [Integer] :page Optional page index for list pagination (default to 0)
    # @option opts [Integer] :size Optional page size for list pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @option opts [DateTime] :since Filter by created at after the given timestamp
    # @option opts [DateTime] :before Filter by created at before the given timestamp
    # @return [PagePhoneNumberProjection]
    def get_phone_numbers(opts = {})
      data, _status_code, _headers = get_phone_numbers_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @option opts [String] :phone_country Optional phone country
    # @option opts [Integer] :page Optional page index for list pagination
    # @option opts [Integer] :size Optional page size for list pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @option opts [DateTime] :since Filter by created at after the given timestamp
    # @option opts [DateTime] :before Filter by created at before the given timestamp
    # @return [Array<(PagePhoneNumberProjection, Integer, Hash)>] PagePhoneNumberProjection data, response status code and response headers
    def get_phone_numbers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneControllerApi.get_phone_numbers ...'
      end
      allowable_values = ["US", "GB", "AU"]
      if @api_client.config.client_side_validation && opts[:'phone_country'] && !allowable_values.include?(opts[:'phone_country'])
        fail ArgumentError, "invalid value for \"phone_country\", must be one of #{allowable_values}"
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/phone/numbers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'phoneCountry'] = opts[:'phone_country'] if !opts[:'phone_country'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'since'] = opts[:'since'] if !opts[:'since'].nil?
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PagePhoneNumberProjection' 

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
        @api_client.config.logger.debug "API called: PhoneControllerApi#get_phone_numbers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param [Hash] opts the optional parameters
    # @return [Array<PhonePlanDto>]
    def get_phone_plans(opts = {})
      data, _status_code, _headers = get_phone_plans_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<PhonePlanDto>, Integer, Hash)>] Array<PhonePlanDto> data, response status code and response headers
    def get_phone_plans_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneControllerApi.get_phone_plans ...'
      end
      # resource path
      local_var_path = '/phone/plans'

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
      return_type = opts[:return_type] || 'Array<PhonePlanDto>' 

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
        @api_client.config.logger.debug "API called: PhoneControllerApi#get_phone_plans\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param phone_number_id [String] 
    # @param test_phone_number_options [TestPhoneNumberOptions] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_test_id 
    # @return [nil]
    def test_phone_number_send_sms(phone_number_id, test_phone_number_options, opts = {})
      test_phone_number_send_sms_with_http_info(phone_number_id, test_phone_number_options, opts)
      nil
    end

    # @param phone_number_id [String] 
    # @param test_phone_number_options [TestPhoneNumberOptions] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_test_id 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def test_phone_number_send_sms_with_http_info(phone_number_id, test_phone_number_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhoneControllerApi.test_phone_number_send_sms ...'
      end
      # verify the required parameter 'phone_number_id' is set
      if @api_client.config.client_side_validation && phone_number_id.nil?
        fail ArgumentError, "Missing the required parameter 'phone_number_id' when calling PhoneControllerApi.test_phone_number_send_sms"
      end
      # verify the required parameter 'test_phone_number_options' is set
      if @api_client.config.client_side_validation && test_phone_number_options.nil?
        fail ArgumentError, "Missing the required parameter 'test_phone_number_options' when calling PhoneControllerApi.test_phone_number_send_sms"
      end
      # resource path
      local_var_path = '/phone/numbers/{phoneNumberId}/test'.sub('{' + 'phoneNumberId' + '}', CGI.escape(phone_number_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'x-test-id'] = opts[:'x_test_id'] if !opts[:'x_test_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(test_phone_number_options) 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhoneControllerApi#test_phone_number_send_sms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
