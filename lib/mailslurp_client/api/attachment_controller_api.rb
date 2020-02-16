=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository  ## Basic Concepts  ### Inboxes  Inboxes have real email addresses that can send and receive emails. You can create inboxes with specific email addresses (using custom domains). You can also use randomly assigned MailSlurp addresses as unique, disposable test addresses.   See the InboxController or [inbox and email address guide](https://www.mailslurp.com/guides/) for more information.  ### Receive Emails You can receive emails in a number of ways. You can fetch emails and attachments directly from an inbox. Or you can use `waitFor` endpoints to hold a connection open until an email is received that matches given criteria (such as subject or body content). You can also use webhooks to have emails from multiple inboxes forwarded to your server via HTTP POST.  InboxController methods with `waitFor` in the name have a long timeout period and instruct MailSlurp to wait until an expected email is received. You can set conditions on email counts, subject or body matches, and more.  Most receive methods only return an email ID and not the full email (to keep response sizes low). To fetch the full body or attachments for an email use the email's ID with EmailController endpoints.  See the InboxController or [receiving emails guide](https://www.mailslurp.com/guides/) for more information.  ### Send Emails You can send templated HTML emails in several ways. You must first create an inbox to send an email. An inbox can have a specific address or a randomly assigned one. You can send emails from an inbox using `to`, `cc`, and `bcc` recipient lists or with contacts and contact groups.   Emails can contain plain-text or HTML bodies. You can also use email templates that support [moustache](https://mustache.github.io/) template variables. You can send attachments by first posting files to the AttachmentController and then using the returned IDs in the `attachments` field of the send options.  See the InboxController or [sending emails guide](https://www.mailslurp.com/guides/) for more information.  ### Templates MailSlurp emails support templates. You can create templates in the dashboard or API that contain [moustache](https://mustache.github.io/) style variables: for instance `Hello {{name}}`. Then when sending emails you can pass a map of variables names and values to be used. Additionally, when sending emails with contact groups you can use properties of the contact in your templates like `{{firstName}}` and `{{lastName}}`.  > You can do a lot more with MailSlurp so see the included documentation for more information.  

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'cgi'

module MailSlurpClient
  class AttachmentControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Upload an attachment for sending
    # When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.
    # @param upload_options [UploadAttachmentOptions] uploadOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<String>]
    def upload_attachment(upload_options, opts = {})
      data, _status_code, _headers = upload_attachment_with_http_info(upload_options, opts)
      data
    end

    # Upload an attachment for sending
    # When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.
    # @param upload_options [UploadAttachmentOptions] uploadOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def upload_attachment_with_http_info(upload_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentControllerApi.upload_attachment ...'
      end
      # verify the required parameter 'upload_options' is set
      if @api_client.config.client_side_validation && upload_options.nil?
        fail ArgumentError, "Missing the required parameter 'upload_options' when calling AttachmentControllerApi.upload_attachment"
      end
      # resource path
      local_var_path = '/attachments'

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
      post_body = opts[:body] || @api_client.object_to_http_body(upload_options) 

      # return_type
      return_type = opts[:return_type] || 'Array<String>' 

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
        @api_client.config.logger.debug "API called: AttachmentControllerApi#upload_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload an attachment for sending using Multipart Form
    # When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.
    # @param file [File] file
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_type contentType
    # @option opts [String] :filename filename
    # @return [Array<String>]
    def upload_multipart_form(file, opts = {})
      data, _status_code, _headers = upload_multipart_form_with_http_info(file, opts)
      data
    end

    # Upload an attachment for sending using Multipart Form
    # When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.
    # @param file [File] file
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_type contentType
    # @option opts [String] :filename filename
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def upload_multipart_form_with_http_info(file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentControllerApi.upload_multipart_form ...'
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling AttachmentControllerApi.upload_multipart_form"
      end
      # resource path
      local_var_path = '/attachments/multipart'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'contentType'] = opts[:'content_type'] if !opts[:'content_type'].nil?
      query_params[:'filename'] = opts[:'filename'] if !opts[:'filename'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = file

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<String>' 

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
        @api_client.config.logger.debug "API called: AttachmentControllerApi#upload_multipart_form\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
