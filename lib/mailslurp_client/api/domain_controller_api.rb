=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 

The version of the OpenAPI document: d1659dc1567a5b62f65d0612107a50aace03e085

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'cgi'

module MailSlurpClient
  class DomainControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Domain
    # Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.
    # @param domain_options [CreateDomainOptions] domainOptions
    # @param [Hash] opts the optional parameters
    # @return [DomainDto]
    def create_domain(domain_options, opts = {})
      data, _status_code, _headers = create_domain_with_http_info(domain_options, opts)
      data
    end

    # Create Domain
    # Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider&#39;s DNS setup to verify the domain.
    # @param domain_options [CreateDomainOptions] domainOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainDto, Integer, Hash)>] DomainDto data, response status code and response headers
    def create_domain_with_http_info(domain_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DomainControllerApi.create_domain ...'
      end
      # verify the required parameter 'domain_options' is set
      if @api_client.config.client_side_validation && domain_options.nil?
        fail ArgumentError, "Missing the required parameter 'domain_options' when calling DomainControllerApi.create_domain"
      end
      # resource path
      local_var_path = '/domains'

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
      post_body = opts[:body] || @api_client.object_to_http_body(domain_options) 

      # return_type
      return_type = opts[:return_type] || 'DomainDto' 

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
        @api_client.config.logger.debug "API called: DomainControllerApi#create_domain\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a domain
    # Delete a domain. This will disable any existing inboxes that use this domain.
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_domain(id, opts = {})
      delete_domain_with_http_info(id, opts)
      nil
    end

    # Delete a domain
    # Delete a domain. This will disable any existing inboxes that use this domain.
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_domain_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DomainControllerApi.delete_domain ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DomainControllerApi.delete_domain"
      end
      # resource path
      local_var_path = '/domains/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: DomainControllerApi#delete_domain\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a domain
    # Returns domain verification status and tokens for a given domain
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @return [DomainDto]
    def get_domain(id, opts = {})
      data, _status_code, _headers = get_domain_with_http_info(id, opts)
      data
    end

    # Get a domain
    # Returns domain verification status and tokens for a given domain
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @return [Array<(DomainDto, Integer, Hash)>] DomainDto data, response status code and response headers
    def get_domain_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DomainControllerApi.get_domain ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DomainControllerApi.get_domain"
      end
      # resource path
      local_var_path = '/domains/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'DomainDto' 

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
        @api_client.config.logger.debug "API called: DomainControllerApi#get_domain\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get domains
    # List all custom domains you have created
    # @param [Hash] opts the optional parameters
    # @return [Array<DomainPreview>]
    def get_domains(opts = {})
      data, _status_code, _headers = get_domains_with_http_info(opts)
      data
    end

    # Get domains
    # List all custom domains you have created
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<DomainPreview>, Integer, Hash)>] Array<DomainPreview> data, response status code and response headers
    def get_domains_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DomainControllerApi.get_domains ...'
      end
      # resource path
      local_var_path = '/domains'

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
      return_type = opts[:return_type] || 'Array<DomainPreview>' 

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
        @api_client.config.logger.debug "API called: DomainControllerApi#get_domains\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
