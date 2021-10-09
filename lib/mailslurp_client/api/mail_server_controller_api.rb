=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module MailSlurpClient
  class MailServerControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get DNS Mail Server records for a domain
    # @param describe_options [DescribeDomainOptions] describeOptions
    # @param [Hash] opts the optional parameters
    # @return [DescribeMailServerDomainResult]
    def describe_mail_server_domain(describe_options, opts = {})
      data, _status_code, _headers = describe_mail_server_domain_with_http_info(describe_options, opts)
      data
    end

    # Get DNS Mail Server records for a domain
    # @param describe_options [DescribeDomainOptions] describeOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(DescribeMailServerDomainResult, Integer, Hash)>] DescribeMailServerDomainResult data, response status code and response headers
    def describe_mail_server_domain_with_http_info(describe_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MailServerControllerApi.describe_mail_server_domain ...'
      end
      # verify the required parameter 'describe_options' is set
      if @api_client.config.client_side_validation && describe_options.nil?
        fail ArgumentError, "Missing the required parameter 'describe_options' when calling MailServerControllerApi.describe_mail_server_domain"
      end
      # resource path
      local_var_path = '/mail-server/describe/domain'

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
      post_body = opts[:body] || @api_client.object_to_http_body(describe_options) 

      # return_type
      return_type = opts[:return_type] || 'DescribeMailServerDomainResult' 

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
        @api_client.config.logger.debug "API called: MailServerControllerApi#describe_mail_server_domain\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lookup DNS records for a domain
    # @param dns_lookup_options [DNSLookupOptions] dnsLookupOptions
    # @param [Hash] opts the optional parameters
    # @return [DNSLookupResults]
    def get_dns_lookup(dns_lookup_options, opts = {})
      data, _status_code, _headers = get_dns_lookup_with_http_info(dns_lookup_options, opts)
      data
    end

    # Lookup DNS records for a domain
    # @param dns_lookup_options [DNSLookupOptions] dnsLookupOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(DNSLookupResults, Integer, Hash)>] DNSLookupResults data, response status code and response headers
    def get_dns_lookup_with_http_info(dns_lookup_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MailServerControllerApi.get_dns_lookup ...'
      end
      # verify the required parameter 'dns_lookup_options' is set
      if @api_client.config.client_side_validation && dns_lookup_options.nil?
        fail ArgumentError, "Missing the required parameter 'dns_lookup_options' when calling MailServerControllerApi.get_dns_lookup"
      end
      # resource path
      local_var_path = '/mail-server/describe/dns-lookup'

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
      post_body = opts[:body] || @api_client.object_to_http_body(dns_lookup_options) 

      # return_type
      return_type = opts[:return_type] || 'DNSLookupResults' 

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
        @api_client.config.logger.debug "API called: MailServerControllerApi#get_dns_lookup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get IP address for a domain
    # @param name [String] name
    # @param [Hash] opts the optional parameters
    # @return [IPAddressResult]
    def get_ip_address(name, opts = {})
      data, _status_code, _headers = get_ip_address_with_http_info(name, opts)
      data
    end

    # Get IP address for a domain
    # @param name [String] name
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPAddressResult, Integer, Hash)>] IPAddressResult data, response status code and response headers
    def get_ip_address_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MailServerControllerApi.get_ip_address ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling MailServerControllerApi.get_ip_address"
      end
      # resource path
      local_var_path = '/mail-server/describe/ip-address'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = name

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'IPAddressResult' 

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
        @api_client.config.logger.debug "API called: MailServerControllerApi#get_ip_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verify the existence of an email address at a given mail server.
    # @param verify_options [VerifyEmailAddressOptions] verifyOptions
    # @param [Hash] opts the optional parameters
    # @return [EmailVerificationResult]
    def verify_email_address(verify_options, opts = {})
      data, _status_code, _headers = verify_email_address_with_http_info(verify_options, opts)
      data
    end

    # Verify the existence of an email address at a given mail server.
    # @param verify_options [VerifyEmailAddressOptions] verifyOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmailVerificationResult, Integer, Hash)>] EmailVerificationResult data, response status code and response headers
    def verify_email_address_with_http_info(verify_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MailServerControllerApi.verify_email_address ...'
      end
      # verify the required parameter 'verify_options' is set
      if @api_client.config.client_side_validation && verify_options.nil?
        fail ArgumentError, "Missing the required parameter 'verify_options' when calling MailServerControllerApi.verify_email_address"
      end
      # resource path
      local_var_path = '/mail-server/verify/email-address'

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
      post_body = opts[:body] || @api_client.object_to_http_body(verify_options) 

      # return_type
      return_type = opts[:return_type] || 'EmailVerificationResult' 

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
        @api_client.config.logger.debug "API called: MailServerControllerApi#verify_email_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
