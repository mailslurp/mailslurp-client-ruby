=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 

The version of the OpenAPI document: 67c9a1eda264be4cfe0bb2c76151f0aadf0862bc

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'cgi'

module MailSlurpClient
  class CommonActionsControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create new random inbox
    # Returns an Inbox with an `id` and an `emailAddress`
    # @param [Hash] opts the optional parameters
    # @return [Inbox]
    def create_new_email_address(opts = {})
      data, _status_code, _headers = create_new_email_address_with_http_info(opts)
      data
    end

    # Create new random inbox
    # Returns an Inbox with an &#x60;id&#x60; and an &#x60;emailAddress&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(Inbox, Integer, Hash)>] Inbox data, response status code and response headers
    def create_new_email_address_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommonActionsControllerApi.create_new_email_address ...'
      end
      # resource path
      local_var_path = '/newEmailAddress'

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
      return_type = opts[:return_type] || 'Inbox' 

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
        @api_client.config.logger.debug "API called: CommonActionsControllerApi#create_new_email_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all emails in an inbox
    # Deletes all emails
    # @param inbox_id [String] inboxId
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def empty_inbox(inbox_id, opts = {})
      empty_inbox_with_http_info(inbox_id, opts)
      nil
    end

    # Delete all emails in an inbox
    # Deletes all emails
    # @param inbox_id [String] inboxId
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def empty_inbox_with_http_info(inbox_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommonActionsControllerApi.empty_inbox ...'
      end
      # verify the required parameter 'inbox_id' is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_id' when calling CommonActionsControllerApi.empty_inbox"
      end
      # resource path
      local_var_path = '/emptyInbox'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'inboxId'] = inbox_id

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
        @api_client.config.logger.debug "API called: CommonActionsControllerApi#empty_inbox\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send an email from a random email address
    # To specify an email address first create an inbox and use that with the other send email methods
    # @param send_email_options [SendEmailOptions] sendEmailOptions
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def send_email_simple(send_email_options, opts = {})
      send_email_simple_with_http_info(send_email_options, opts)
      nil
    end

    # Send an email from a random email address
    # To specify an email address first create an inbox and use that with the other send email methods
    # @param send_email_options [SendEmailOptions] sendEmailOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def send_email_simple_with_http_info(send_email_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommonActionsControllerApi.send_email_simple ...'
      end
      # verify the required parameter 'send_email_options' is set
      if @api_client.config.client_side_validation && send_email_options.nil?
        fail ArgumentError, "Missing the required parameter 'send_email_options' when calling CommonActionsControllerApi.send_email_simple"
      end
      # resource path
      local_var_path = '/sendEmail'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(send_email_options) 

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
        @api_client.config.logger.debug "API called: CommonActionsControllerApi#send_email_simple\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
