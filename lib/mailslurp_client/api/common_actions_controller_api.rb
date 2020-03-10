=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository  ## Basic Concepts  ### Inboxes  Inboxes have real email addresses that can send and receive emails. You can create inboxes with specific email addresses (using custom domains). You can also use randomly assigned MailSlurp addresses as unique, disposable test addresses.   Inboxes can be permanent or temporary depending on your account plan and the options passed. Whenever an email is sent to an inbox's email address MailSlurp recieves the email and stores in under the matching inbox. For test suites we recommend creating a new empty inbox for each test run. Inbox usage limits are calculated by the number of inboxes created in the last 30 days (not the amount currently active on your account.)  See the InboxController or [inbox and email address guide](https://www.mailslurp.com/guides/) for more information.  ### Receive Emails You can receive emails using MailSlurp inboxes in a number of ways. Due to the asynchronous nature of email we recommend reading about the different methods and finding one that is right for your application.  #### Directly fetching existing emails If you know that an email has already been received by an inbox you can fetch it using the getEmail endpoints in the EmailController. You can fetch emails and attachments directly from an inbox. Emails are parsed and returned in an enriched DTO form. If you want to parse the raw email message you can use the getRawEmail endpoints.  Direct fetches are good for responding to emails that are known to exist. If you need to wait for emails to arrive or dynamically react to email events see the next sections.  #### Receiving emails with WaitFor methods The second (and most common) way to receive emails with MailSlurp is with WaitForController methods such as like waitForLatestEmail, waitForNthEmail, waitForEmailCount.   These endpoints are designed to be called when you expect a message to either already be in an inbox or arrive within a timeout. These methods are perfect for testing email functionality as emails have unpredictable arrival times. When you call these endpoints the email you expect may have already arrived - therefore the WaitFor methods behave as follow:  - If matching emails are found in an inbox they are returned immediately - Else MailSlurp retries the search until matching emails are found or a timeout is reached  > WaitFor methods hold a connection open if the criteria are not immediately met. Your application or tests should set an http timeout that permits this.  Most methods only return an email ID and not the full email (to keep response sizes low). To fetch the full body or attachments for an email use the email's ID with EmailController endpoints.  See the WaitForController or [receiving emails guide](https://www.mailslurp.com/guides/) for more information.  #### Receiving emails with Webhooks MailSlurp inboxes also support webhooks. You can create Webhooks with the WebhookController. Webhooks have a URL that can be used to forward emails to a server or endpoint in your application.   Whenever an inbox receives an email MailSlurp will send an [EmailReceivedEvent](https://api.mailslurp.com/schemas/webhook-payload) to any attached Webhook URLs using HTTP POST. Webhooks are great for high throughput applications that need to process inbound emails in a scalable way without fetching or waiting for emails.  ### Send Emails You can send templated HTML emails in several ways. You must first create an inbox to send an email. An inbox can have a specific address or a randomly assigned one. You can send emails from an inbox using `to`, `cc`, and `bcc` recipient lists or with contacts and contact groups.   Emails can contain plain-text or HTML bodies. You can also use email templates that support [moustache](https://mustache.github.io/) template variables. You can send attachments by first posting files to the AttachmentController and then using the returned IDs in the `attachments` field of the send options.  See the InboxController or [sending emails guide](https://www.mailslurp.com/guides/) for more information.  ### Templates MailSlurp emails support templates. You can create templates in the dashboard or API that contain [moustache](https://mustache.github.io/) style variables: for instance `Hello {{name}}`. Then when sending emails you can pass a map of variables names and values to be used. Additionally, when sending emails with contact groups you can use properties of the contact in your templates like `{{firstName}}` and `{{lastName}}`.  > You can do a lot more with MailSlurp so see the included documentation for more information.  

OpenAPI spec version: 65c995de8ac6fae16e070de00599137ce502b20c

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

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
    # @return [Array<(Inbox, Fixnum, Hash)>] Inbox data, response status code and response headers
    def create_new_email_address_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommonActionsControllerApi.create_new_email_address ...'
      end
      # resource path
      local_var_path = '/newEmailAddress'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Inbox')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommonActionsControllerApi#create_new_email_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all emails in an inbox
    # Deletes all emails
    # @param inbox_id inboxId
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def empty_inbox(inbox_id, opts = {})
      empty_inbox_with_http_info(inbox_id, opts)
      nil
    end

    # Delete all emails in an inbox
    # Deletes all emails
    # @param inbox_id inboxId
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
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
      query_params = {}
      query_params[:'inboxId'] = inbox_id

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommonActionsControllerApi#empty_inbox\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send an email from a random email address
    # To specify an email address first create an inbox and use that with the other send email methods
    # @param send_email_options sendEmailOptions
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def send_email_simple(send_email_options, opts = {})
      send_email_simple_with_http_info(send_email_options, opts)
      nil
    end

    # Send an email from a random email address
    # To specify an email address first create an inbox and use that with the other send email methods
    # @param send_email_options sendEmailOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
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
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(send_email_options)
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommonActionsControllerApi#send_email_simple\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
