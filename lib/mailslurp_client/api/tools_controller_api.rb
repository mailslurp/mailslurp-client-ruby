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
  class ToolsControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check email client support for email HTML and CSS features
    # @param check_email_features_client_support_options [CheckEmailFeaturesClientSupportOptions] 
    # @param [Hash] opts the optional parameters
    # @return [CheckEmailFeaturesClientSupportResults]
    def check_email_features_client_support(check_email_features_client_support_options, opts = {})
      data, _status_code, _headers = check_email_features_client_support_with_http_info(check_email_features_client_support_options, opts)
      data
    end

    # Check email client support for email HTML and CSS features
    # @param check_email_features_client_support_options [CheckEmailFeaturesClientSupportOptions] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CheckEmailFeaturesClientSupportResults, Integer, Hash)>] CheckEmailFeaturesClientSupportResults data, response status code and response headers
    def check_email_features_client_support_with_http_info(check_email_features_client_support_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToolsControllerApi.check_email_features_client_support ...'
      end
      # verify the required parameter 'check_email_features_client_support_options' is set
      if @api_client.config.client_side_validation && check_email_features_client_support_options.nil?
        fail ArgumentError, "Missing the required parameter 'check_email_features_client_support_options' when calling ToolsControllerApi.check_email_features_client_support"
      end
      # resource path
      local_var_path = '/tools/check-email-features-client-support'

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
      post_body = opts[:body] || @api_client.object_to_http_body(check_email_features_client_support_options) 

      # return_type
      return_type = opts[:return_type] || 'CheckEmailFeaturesClientSupportResults' 

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
        @api_client.config.logger.debug "API called: ToolsControllerApi#check_email_features_client_support\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new email address using the fake email domains
    # @param [Hash] opts the optional parameters
    # @return [NewFakeEmailAddressResult]
    def create_new_fake_email_address(opts = {})
      data, _status_code, _headers = create_new_fake_email_address_with_http_info(opts)
      data
    end

    # Create a new email address using the fake email domains
    # @param [Hash] opts the optional parameters
    # @return [Array<(NewFakeEmailAddressResult, Integer, Hash)>] NewFakeEmailAddressResult data, response status code and response headers
    def create_new_fake_email_address_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToolsControllerApi.create_new_fake_email_address ...'
      end
      # resource path
      local_var_path = '/tools/fake-email'

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
      return_type = opts[:return_type] || 'NewFakeEmailAddressResult' 

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
        @api_client.config.logger.debug "API called: ToolsControllerApi#create_new_fake_email_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a fake email address using the fake email domains
    # Delete a fake email address using the fake email domains
    # @param email_address [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_new_fake_email_address(email_address, opts = {})
      delete_new_fake_email_address_with_http_info(email_address, opts)
      nil
    end

    # Delete a fake email address using the fake email domains
    # Delete a fake email address using the fake email domains
    # @param email_address [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_new_fake_email_address_with_http_info(email_address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToolsControllerApi.delete_new_fake_email_address ...'
      end
      # verify the required parameter 'email_address' is set
      if @api_client.config.client_side_validation && email_address.nil?
        fail ArgumentError, "Missing the required parameter 'email_address' when calling ToolsControllerApi.delete_new_fake_email_address"
      end
      # resource path
      local_var_path = '/tools/fake-email'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'emailAddress'] = email_address

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
        @api_client.config.logger.debug "API called: ToolsControllerApi#delete_new_fake_email_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a BIMI record policy
    # @param generate_bimi_record_options [GenerateBimiRecordOptions] 
    # @param [Hash] opts the optional parameters
    # @return [GenerateBimiRecordResults]
    def generate_bimi_record(generate_bimi_record_options, opts = {})
      data, _status_code, _headers = generate_bimi_record_with_http_info(generate_bimi_record_options, opts)
      data
    end

    # Create a BIMI record policy
    # @param generate_bimi_record_options [GenerateBimiRecordOptions] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GenerateBimiRecordResults, Integer, Hash)>] GenerateBimiRecordResults data, response status code and response headers
    def generate_bimi_record_with_http_info(generate_bimi_record_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToolsControllerApi.generate_bimi_record ...'
      end
      # verify the required parameter 'generate_bimi_record_options' is set
      if @api_client.config.client_side_validation && generate_bimi_record_options.nil?
        fail ArgumentError, "Missing the required parameter 'generate_bimi_record_options' when calling ToolsControllerApi.generate_bimi_record"
      end
      # resource path
      local_var_path = '/tools/generate-bimi-record'

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
      post_body = opts[:body] || @api_client.object_to_http_body(generate_bimi_record_options) 

      # return_type
      return_type = opts[:return_type] || 'GenerateBimiRecordResults' 

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
        @api_client.config.logger.debug "API called: ToolsControllerApi#generate_bimi_record\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a DMARC record policy
    # @param generate_dmarc_record_options [GenerateDmarcRecordOptions] 
    # @param [Hash] opts the optional parameters
    # @return [GenerateDmarcRecordResults]
    def generate_dmarc_record(generate_dmarc_record_options, opts = {})
      data, _status_code, _headers = generate_dmarc_record_with_http_info(generate_dmarc_record_options, opts)
      data
    end

    # Create a DMARC record policy
    # @param generate_dmarc_record_options [GenerateDmarcRecordOptions] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GenerateDmarcRecordResults, Integer, Hash)>] GenerateDmarcRecordResults data, response status code and response headers
    def generate_dmarc_record_with_http_info(generate_dmarc_record_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToolsControllerApi.generate_dmarc_record ...'
      end
      # verify the required parameter 'generate_dmarc_record_options' is set
      if @api_client.config.client_side_validation && generate_dmarc_record_options.nil?
        fail ArgumentError, "Missing the required parameter 'generate_dmarc_record_options' when calling ToolsControllerApi.generate_dmarc_record"
      end
      # resource path
      local_var_path = '/tools/generate-dmarc-record'

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
      post_body = opts[:body] || @api_client.object_to_http_body(generate_dmarc_record_options) 

      # return_type
      return_type = opts[:return_type] || 'GenerateDmarcRecordResults' 

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
        @api_client.config.logger.debug "API called: ToolsControllerApi#generate_dmarc_record\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a TLS reporting record policy
    # @param generate_mta_sts_record_options [GenerateMtaStsRecordOptions] 
    # @param [Hash] opts the optional parameters
    # @return [GenerateMtaStsRecordResults]
    def generate_mta_sts_record(generate_mta_sts_record_options, opts = {})
      data, _status_code, _headers = generate_mta_sts_record_with_http_info(generate_mta_sts_record_options, opts)
      data
    end

    # Create a TLS reporting record policy
    # @param generate_mta_sts_record_options [GenerateMtaStsRecordOptions] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GenerateMtaStsRecordResults, Integer, Hash)>] GenerateMtaStsRecordResults data, response status code and response headers
    def generate_mta_sts_record_with_http_info(generate_mta_sts_record_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToolsControllerApi.generate_mta_sts_record ...'
      end
      # verify the required parameter 'generate_mta_sts_record_options' is set
      if @api_client.config.client_side_validation && generate_mta_sts_record_options.nil?
        fail ArgumentError, "Missing the required parameter 'generate_mta_sts_record_options' when calling ToolsControllerApi.generate_mta_sts_record"
      end
      # resource path
      local_var_path = '/tools/generate-mta-sts-record'

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
      post_body = opts[:body] || @api_client.object_to_http_body(generate_mta_sts_record_options) 

      # return_type
      return_type = opts[:return_type] || 'GenerateMtaStsRecordResults' 

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
        @api_client.config.logger.debug "API called: ToolsControllerApi#generate_mta_sts_record\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a TLS reporting record policy
    # @param generate_tls_reporting_record_options [GenerateTlsReportingRecordOptions] 
    # @param [Hash] opts the optional parameters
    # @return [GenerateTlsReportingRecordResults]
    def generate_tls_reporting_record(generate_tls_reporting_record_options, opts = {})
      data, _status_code, _headers = generate_tls_reporting_record_with_http_info(generate_tls_reporting_record_options, opts)
      data
    end

    # Create a TLS reporting record policy
    # @param generate_tls_reporting_record_options [GenerateTlsReportingRecordOptions] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GenerateTlsReportingRecordResults, Integer, Hash)>] GenerateTlsReportingRecordResults data, response status code and response headers
    def generate_tls_reporting_record_with_http_info(generate_tls_reporting_record_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToolsControllerApi.generate_tls_reporting_record ...'
      end
      # verify the required parameter 'generate_tls_reporting_record_options' is set
      if @api_client.config.client_side_validation && generate_tls_reporting_record_options.nil?
        fail ArgumentError, "Missing the required parameter 'generate_tls_reporting_record_options' when calling ToolsControllerApi.generate_tls_reporting_record"
      end
      # resource path
      local_var_path = '/tools/generate-tls-reporting-record'

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
      post_body = opts[:body] || @api_client.object_to_http_body(generate_tls_reporting_record_options) 

      # return_type
      return_type = opts[:return_type] || 'GenerateTlsReportingRecordResults' 

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
        @api_client.config.logger.debug "API called: ToolsControllerApi#generate_tls_reporting_record\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param email_address [String] 
    # @param [Hash] opts the optional parameters
    # @return [FakeEmailResult]
    def get_fake_email_by_email_address(email_address, opts = {})
      data, _status_code, _headers = get_fake_email_by_email_address_with_http_info(email_address, opts)
      data
    end

    # @param email_address [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FakeEmailResult, Integer, Hash)>] FakeEmailResult data, response status code and response headers
    def get_fake_email_by_email_address_with_http_info(email_address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToolsControllerApi.get_fake_email_by_email_address ...'
      end
      # verify the required parameter 'email_address' is set
      if @api_client.config.client_side_validation && email_address.nil?
        fail ArgumentError, "Missing the required parameter 'email_address' when calling ToolsControllerApi.get_fake_email_by_email_address"
      end
      # resource path
      local_var_path = '/tools/fake-email/byEmailAddress'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'emailAddress'] = email_address

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'FakeEmailResult' 

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
        @api_client.config.logger.debug "API called: ToolsControllerApi#get_fake_email_by_email_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a fake email by its ID
    # Get a fake email by its ID
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [FakeEmailResult]
    def get_fake_email_by_id(id, opts = {})
      data, _status_code, _headers = get_fake_email_by_id_with_http_info(id, opts)
      data
    end

    # Get a fake email by its ID
    # Get a fake email by its ID
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FakeEmailResult, Integer, Hash)>] FakeEmailResult data, response status code and response headers
    def get_fake_email_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToolsControllerApi.get_fake_email_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ToolsControllerApi.get_fake_email_by_id"
      end
      # resource path
      local_var_path = '/tools/fake-email'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'FakeEmailResult' 

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
        @api_client.config.logger.debug "API called: ToolsControllerApi#get_fake_email_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get raw fake email content
    # Retrieve the raw content of a fake email by its ID
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_fake_email_raw(id, opts = {})
      data, _status_code, _headers = get_fake_email_raw_with_http_info(id, opts)
      data
    end

    # Get raw fake email content
    # Retrieve the raw content of a fake email by its ID
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_fake_email_raw_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToolsControllerApi.get_fake_email_raw ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ToolsControllerApi.get_fake_email_raw"
      end
      # resource path
      local_var_path = '/tools/fake-email/html'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain;charset=utf-8', 'text/html;charset=utf-8', 'text/plain; charset=utf-8', 'text/html; charset=utf-8'])

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
        @api_client.config.logger.debug "API called: ToolsControllerApi#get_fake_email_raw\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get fake emails for an address
    # Get fake emails for an address
    # @param email_address [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @return [Array<FakeEmailPreview>]
    def get_fake_emails_for_address(email_address, opts = {})
      data, _status_code, _headers = get_fake_emails_for_address_with_http_info(email_address, opts)
      data
    end

    # Get fake emails for an address
    # Get fake emails for an address
    # @param email_address [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @return [Array<(Array<FakeEmailPreview>, Integer, Hash)>] Array<FakeEmailPreview> data, response status code and response headers
    def get_fake_emails_for_address_with_http_info(email_address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToolsControllerApi.get_fake_emails_for_address ...'
      end
      # verify the required parameter 'email_address' is set
      if @api_client.config.client_side_validation && email_address.nil?
        fail ArgumentError, "Missing the required parameter 'email_address' when calling ToolsControllerApi.get_fake_emails_for_address"
      end
      # resource path
      local_var_path = '/tools/fake-emails'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'emailAddress'] = email_address
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<FakeEmailPreview>' 

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
        @api_client.config.logger.debug "API called: ToolsControllerApi#get_fake_emails_for_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lookup a BIMI record policy
    # @param lookup_bimi_domain_options [LookupBimiDomainOptions] 
    # @param [Hash] opts the optional parameters
    # @return [LookupBimiDomainResults]
    def lookup_bimi_domain(lookup_bimi_domain_options, opts = {})
      data, _status_code, _headers = lookup_bimi_domain_with_http_info(lookup_bimi_domain_options, opts)
      data
    end

    # Lookup a BIMI record policy
    # @param lookup_bimi_domain_options [LookupBimiDomainOptions] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LookupBimiDomainResults, Integer, Hash)>] LookupBimiDomainResults data, response status code and response headers
    def lookup_bimi_domain_with_http_info(lookup_bimi_domain_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToolsControllerApi.lookup_bimi_domain ...'
      end
      # verify the required parameter 'lookup_bimi_domain_options' is set
      if @api_client.config.client_side_validation && lookup_bimi_domain_options.nil?
        fail ArgumentError, "Missing the required parameter 'lookup_bimi_domain_options' when calling ToolsControllerApi.lookup_bimi_domain"
      end
      # resource path
      local_var_path = '/tools/lookup-bimi-domain'

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
      post_body = opts[:body] || @api_client.object_to_http_body(lookup_bimi_domain_options) 

      # return_type
      return_type = opts[:return_type] || 'LookupBimiDomainResults' 

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
        @api_client.config.logger.debug "API called: ToolsControllerApi#lookup_bimi_domain\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lookup a DMARC record policy
    # @param lookup_dmarc_domain_options [LookupDmarcDomainOptions] 
    # @param [Hash] opts the optional parameters
    # @return [LookupDmarcDomainResults]
    def lookup_dmarc_domain(lookup_dmarc_domain_options, opts = {})
      data, _status_code, _headers = lookup_dmarc_domain_with_http_info(lookup_dmarc_domain_options, opts)
      data
    end

    # Lookup a DMARC record policy
    # @param lookup_dmarc_domain_options [LookupDmarcDomainOptions] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LookupDmarcDomainResults, Integer, Hash)>] LookupDmarcDomainResults data, response status code and response headers
    def lookup_dmarc_domain_with_http_info(lookup_dmarc_domain_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToolsControllerApi.lookup_dmarc_domain ...'
      end
      # verify the required parameter 'lookup_dmarc_domain_options' is set
      if @api_client.config.client_side_validation && lookup_dmarc_domain_options.nil?
        fail ArgumentError, "Missing the required parameter 'lookup_dmarc_domain_options' when calling ToolsControllerApi.lookup_dmarc_domain"
      end
      # resource path
      local_var_path = '/tools/lookup-dmarc-domain'

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
      post_body = opts[:body] || @api_client.object_to_http_body(lookup_dmarc_domain_options) 

      # return_type
      return_type = opts[:return_type] || 'LookupDmarcDomainResults' 

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
        @api_client.config.logger.debug "API called: ToolsControllerApi#lookup_dmarc_domain\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lookup a MTA-STS domain policy
    # @param lookup_mta_sts_domain_options [LookupMtaStsDomainOptions] 
    # @param [Hash] opts the optional parameters
    # @return [LookupMtaStsDomainResults]
    def lookup_mta_sts_domain(lookup_mta_sts_domain_options, opts = {})
      data, _status_code, _headers = lookup_mta_sts_domain_with_http_info(lookup_mta_sts_domain_options, opts)
      data
    end

    # Lookup a MTA-STS domain policy
    # @param lookup_mta_sts_domain_options [LookupMtaStsDomainOptions] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LookupMtaStsDomainResults, Integer, Hash)>] LookupMtaStsDomainResults data, response status code and response headers
    def lookup_mta_sts_domain_with_http_info(lookup_mta_sts_domain_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToolsControllerApi.lookup_mta_sts_domain ...'
      end
      # verify the required parameter 'lookup_mta_sts_domain_options' is set
      if @api_client.config.client_side_validation && lookup_mta_sts_domain_options.nil?
        fail ArgumentError, "Missing the required parameter 'lookup_mta_sts_domain_options' when calling ToolsControllerApi.lookup_mta_sts_domain"
      end
      # resource path
      local_var_path = '/tools/lookup-mta-sts-domain'

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
      post_body = opts[:body] || @api_client.object_to_http_body(lookup_mta_sts_domain_options) 

      # return_type
      return_type = opts[:return_type] || 'LookupMtaStsDomainResults' 

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
        @api_client.config.logger.debug "API called: ToolsControllerApi#lookup_mta_sts_domain\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lookup a TLS reporting domain policy
    # @param lookup_tls_reporting_domain_options [LookupTlsReportingDomainOptions] 
    # @param [Hash] opts the optional parameters
    # @return [LookupTlsReportingDomainResults]
    def lookup_tls_reporting_domain(lookup_tls_reporting_domain_options, opts = {})
      data, _status_code, _headers = lookup_tls_reporting_domain_with_http_info(lookup_tls_reporting_domain_options, opts)
      data
    end

    # Lookup a TLS reporting domain policy
    # @param lookup_tls_reporting_domain_options [LookupTlsReportingDomainOptions] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LookupTlsReportingDomainResults, Integer, Hash)>] LookupTlsReportingDomainResults data, response status code and response headers
    def lookup_tls_reporting_domain_with_http_info(lookup_tls_reporting_domain_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ToolsControllerApi.lookup_tls_reporting_domain ...'
      end
      # verify the required parameter 'lookup_tls_reporting_domain_options' is set
      if @api_client.config.client_side_validation && lookup_tls_reporting_domain_options.nil?
        fail ArgumentError, "Missing the required parameter 'lookup_tls_reporting_domain_options' when calling ToolsControllerApi.lookup_tls_reporting_domain"
      end
      # resource path
      local_var_path = '/tools/lookup-tls-reporting-domain'

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
      post_body = opts[:body] || @api_client.object_to_http_body(lookup_tls_reporting_domain_options) 

      # return_type
      return_type = opts[:return_type] || 'LookupTlsReportingDomainResults' 

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
        @api_client.config.logger.debug "API called: ToolsControllerApi#lookup_tls_reporting_domain\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
