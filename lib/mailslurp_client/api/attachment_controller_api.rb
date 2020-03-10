=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository  ## Basic Concepts  ### Inboxes  Inboxes have real email addresses that can send and receive emails. You can create inboxes with specific email addresses (using custom domains). You can also use randomly assigned MailSlurp addresses as unique, disposable test addresses.   Inboxes can be permanent or temporary depending on your account plan and the options passed. Whenever an email is sent to an inbox's email address MailSlurp recieves the email and stores in under the matching inbox. For test suites we recommend creating a new empty inbox for each test run. Inbox usage limits are calculated by the number of inboxes created in the last 30 days (not the amount currently active on your account.)  See the InboxController or [inbox and email address guide](https://www.mailslurp.com/guides/) for more information.  ### Receive Emails You can receive emails using MailSlurp inboxes in a number of ways. Due to the asynchronous nature of email we recommend reading about the different methods and finding one that is right for your application.  #### Directly fetching existing emails If you know that an email has already been received by an inbox you can fetch it using the getEmail endpoints in the EmailController. You can fetch emails and attachments directly from an inbox. Emails are parsed and returned in an enriched DTO form. If you want to parse the raw email message you can use the getRawEmail endpoints.  Direct fetches are good for responding to emails that are known to exist. If you need to wait for emails to arrive or dynamically react to email events see the next sections.  #### Receiving emails with WaitFor methods The second (and most common) way to receive emails with MailSlurp is with WaitForController methods such as like waitForLatestEmail, waitForNthEmail, waitForEmailCount.   These endpoints are designed to be called when you expect a message to either already be in an inbox or arrive within a timeout. These methods are perfect for testing email functionality as emails have unpredictable arrival times. When you call these endpoints the email you expect may have already arrived - therefore the WaitFor methods behave as follow:  - If matching emails are found in an inbox they are returned immediately - Else MailSlurp retries the search until matching emails are found or a timeout is reached  > WaitFor methods hold a connection open if the criteria are not immediately met. Your application or tests should set an http timeout that permits this.  Most methods only return an email ID and not the full email (to keep response sizes low). To fetch the full body or attachments for an email use the email's ID with EmailController endpoints.  See the WaitForController or [receiving emails guide](https://www.mailslurp.com/guides/) for more information.  #### Receiving emails with Webhooks MailSlurp inboxes also support webhooks. You can create Webhooks with the WebhookController. Webhooks have a URL that can be used to forward emails to a server or endpoint in your application.   Whenever an inbox receives an email MailSlurp will send an [EmailReceivedEvent](https://api.mailslurp.com/schemas/webhook-payload) to any attached Webhook URLs using HTTP POST. Webhooks are great for high throughput applications that need to process inbound emails in a scalable way without fetching or waiting for emails.  ### Send Emails You can send templated HTML emails in several ways. You must first create an inbox to send an email. An inbox can have a specific address or a randomly assigned one. You can send emails from an inbox using `to`, `cc`, and `bcc` recipient lists or with contacts and contact groups.   Emails can contain plain-text or HTML bodies. You can also use email templates that support [moustache](https://mustache.github.io/) template variables. You can send attachments by first posting files to the AttachmentController and then using the returned IDs in the `attachments` field of the send options.  See the InboxController or [sending emails guide](https://www.mailslurp.com/guides/) for more information.  ### Templates MailSlurp emails support templates. You can create templates in the dashboard or API that contain [moustache](https://mustache.github.io/) style variables: for instance `Hello {{name}}`. Then when sending emails you can pass a map of variables names and values to be used. Additionally, when sending emails with contact groups you can use properties of the contact in your templates like `{{firstName}}` and `{{lastName}}`.  > You can do a lot more with MailSlurp so see the included documentation for more information.  

OpenAPI spec version: 65c995de8ac6fae16e070de00599137ce502b20c

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module MailSlurpClient
  class AttachmentControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Upload an attachment for sending
    # When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.
    # @param upload_attachment_options uploadOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<String>]
    def upload_attachment(upload_attachment_options, opts = {})
      data, _status_code, _headers = upload_attachment_with_http_info(upload_attachment_options, opts)
      data
    end

    # Upload an attachment for sending
    # When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.
    # @param upload_attachment_options uploadOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>, Fixnum, Hash)>] Array<String> data, response status code and response headers
    def upload_attachment_with_http_info(upload_attachment_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttachmentControllerApi.upload_attachment ...'
      end
      # verify the required parameter 'upload_attachment_options' is set
      if @api_client.config.client_side_validation && upload_attachment_options.nil?
        fail ArgumentError, "Missing the required parameter 'upload_attachment_options' when calling AttachmentControllerApi.upload_attachment"
      end
      # resource path
      local_var_path = '/attachments'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(upload_attachment_options)
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<String>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentControllerApi#upload_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload an attachment for sending using Multipart Form
    # When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.
    # @param file file
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
    # @param file file
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_type contentType
    # @option opts [String] :filename filename
    # @return [Array<(Array<String>, Fixnum, Hash)>] Array<String> data, response status code and response headers
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
      query_params = {}
      query_params[:'contentType'] = opts[:'content_type'] if !opts[:'content_type'].nil?
      query_params[:'filename'] = opts[:'filename'] if !opts[:'filename'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params['file'] = file

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<String>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttachmentControllerApi#upload_multipart_form\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
