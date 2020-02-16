=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository  ## Basic Concepts  ### Inboxes  Inboxes have real email addresses that can send and receive emails. You can create inboxes with specific email addresses (using custom domains). You can also use randomly assigned MailSlurp addresses as unique, disposable test addresses.   See the InboxController or [inbox and email address guide](https://www.mailslurp.com/guides/) for more information.  ### Receive Emails You can receive emails in a number of ways. You can fetch emails and attachments directly from an inbox. Or you can use `waitFor` endpoints to hold a connection open until an email is received that matches given criteria (such as subject or body content). You can also use webhooks to have emails from multiple inboxes forwarded to your server via HTTP POST.  InboxController methods with `waitFor` in the name have a long timeout period and instruct MailSlurp to wait until an expected email is received. You can set conditions on email counts, subject or body matches, and more.  Most receive methods only return an email ID and not the full email (to keep response sizes low). To fetch the full body or attachments for an email use the email's ID with EmailController endpoints.  See the InboxController or [receiving emails guide](https://www.mailslurp.com/guides/) for more information.  ### Send Emails You can send templated HTML emails in several ways. You must first create an inbox to send an email. An inbox can have a specific address or a randomly assigned one. You can send emails from an inbox using `to`, `cc`, and `bcc` recipient lists or with contacts and contact groups.   Emails can contain plain-text or HTML bodies. You can also use email templates that support [moustache](https://mustache.github.io/) template variables. You can send attachments by first posting files to the AttachmentController and then using the returned IDs in the `attachments` field of the send options.  See the InboxController or [sending emails guide](https://www.mailslurp.com/guides/) for more information.  ### Templates MailSlurp emails support templates. You can create templates in the dashboard or API that contain [moustache](https://mustache.github.io/) style variables: for instance `Hello {{name}}`. Then when sending emails you can pass a map of variables names and values to be used. Additionally, when sending emails with contact groups you can use properties of the contact in your templates like `{{firstName}}` and `{{lastName}}`.  > You can do a lot more with MailSlurp so see the included documentation for more information.  

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'cgi'

module MailSlurpClient
  class BulkActionsControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Bulk create Inboxes (email addresses)
    # @param count [Integer] Number of inboxes to be created in bulk
    # @param [Hash] opts the optional parameters
    # @return [Array<Inbox>]
    def bulk_create_inboxes(count, opts = {})
      data, _status_code, _headers = bulk_create_inboxes_with_http_info(count, opts)
      data
    end

    # Bulk create Inboxes (email addresses)
    # @param count [Integer] Number of inboxes to be created in bulk
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Inbox>, Integer, Hash)>] Array<Inbox> data, response status code and response headers
    def bulk_create_inboxes_with_http_info(count, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BulkActionsControllerApi.bulk_create_inboxes ...'
      end
      # verify the required parameter 'count' is set
      if @api_client.config.client_side_validation && count.nil?
        fail ArgumentError, "Missing the required parameter 'count' when calling BulkActionsControllerApi.bulk_create_inboxes"
      end
      # resource path
      local_var_path = '/bulk/inboxes'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'count'] = count

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<Inbox>' 

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
        @api_client.config.logger.debug "API called: BulkActionsControllerApi#bulk_create_inboxes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Bulk Delete Inboxes
    # @param ids [Array<String>] ids
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def bulk_delete_inboxes(ids, opts = {})
      bulk_delete_inboxes_with_http_info(ids, opts)
      nil
    end

    # Bulk Delete Inboxes
    # @param ids [Array<String>] ids
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def bulk_delete_inboxes_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BulkActionsControllerApi.bulk_delete_inboxes ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling BulkActionsControllerApi.bulk_delete_inboxes"
      end
      # resource path
      local_var_path = '/bulk/inboxes'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(ids) 

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
        @api_client.config.logger.debug "API called: BulkActionsControllerApi#bulk_delete_inboxes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Bulk Send Emails
    # @param bulk_send_email_options [BulkSendEmailOptions] bulkSendEmailOptions
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def bulk_send_emails(bulk_send_email_options, opts = {})
      bulk_send_emails_with_http_info(bulk_send_email_options, opts)
      nil
    end

    # Bulk Send Emails
    # @param bulk_send_email_options [BulkSendEmailOptions] bulkSendEmailOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def bulk_send_emails_with_http_info(bulk_send_email_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BulkActionsControllerApi.bulk_send_emails ...'
      end
      # verify the required parameter 'bulk_send_email_options' is set
      if @api_client.config.client_side_validation && bulk_send_email_options.nil?
        fail ArgumentError, "Missing the required parameter 'bulk_send_email_options' when calling BulkActionsControllerApi.bulk_send_emails"
      end
      # resource path
      local_var_path = '/bulk/send'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(bulk_send_email_options) 

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
        @api_client.config.logger.debug "API called: BulkActionsControllerApi#bulk_send_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
