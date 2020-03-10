=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository  ## Basic Concepts  ### Inboxes  Inboxes have real email addresses that can send and receive emails. You can create inboxes with specific email addresses (using custom domains). You can also use randomly assigned MailSlurp addresses as unique, disposable test addresses.   Inboxes can be permanent or temporary depending on your account plan and the options passed. Whenever an email is sent to an inbox's email address MailSlurp recieves the email and stores in under the matching inbox. For test suites we recommend creating a new empty inbox for each test run. Inbox usage limits are calculated by the number of inboxes created in the last 30 days (not the amount currently active on your account.)  See the InboxController or [inbox and email address guide](https://www.mailslurp.com/guides/) for more information.  ### Receive Emails You can receive emails using MailSlurp inboxes in a number of ways. Due to the asynchronous nature of email we recommend reading about the different methods and finding one that is right for your application.  #### Directly fetching existing emails If you know that an email has already been received by an inbox you can fetch it using the getEmail endpoints in the EmailController. You can fetch emails and attachments directly from an inbox. Emails are parsed and returned in an enriched DTO form. If you want to parse the raw email message you can use the getRawEmail endpoints.  Direct fetches are good for responding to emails that are known to exist. If you need to wait for emails to arrive or dynamically react to email events see the next sections.  #### Receiving emails with WaitFor methods The second (and most common) way to receive emails with MailSlurp is with WaitForController methods such as like waitForLatestEmail, waitForNthEmail, waitForEmailCount.   These endpoints are designed to be called when you expect a message to either already be in an inbox or arrive within a timeout. These methods are perfect for testing email functionality as emails have unpredictable arrival times. When you call these endpoints the email you expect may have already arrived - therefore the WaitFor methods behave as follow:  - If matching emails are found in an inbox they are returned immediately - Else MailSlurp retries the search until matching emails are found or a timeout is reached  > WaitFor methods hold a connection open if the criteria are not immediately met. Your application or tests should set an http timeout that permits this.  Most methods only return an email ID and not the full email (to keep response sizes low). To fetch the full body or attachments for an email use the email's ID with EmailController endpoints.  See the WaitForController or [receiving emails guide](https://www.mailslurp.com/guides/) for more information.  #### Receiving emails with Webhooks MailSlurp inboxes also support webhooks. You can create Webhooks with the WebhookController. Webhooks have a URL that can be used to forward emails to a server or endpoint in your application.   Whenever an inbox receives an email MailSlurp will send an [EmailReceivedEvent](https://api.mailslurp.com/schemas/webhook-payload) to any attached Webhook URLs using HTTP POST. Webhooks are great for high throughput applications that need to process inbound emails in a scalable way without fetching or waiting for emails.  ### Send Emails You can send templated HTML emails in several ways. You must first create an inbox to send an email. An inbox can have a specific address or a randomly assigned one. You can send emails from an inbox using `to`, `cc`, and `bcc` recipient lists or with contacts and contact groups.   Emails can contain plain-text or HTML bodies. You can also use email templates that support [moustache](https://mustache.github.io/) template variables. You can send attachments by first posting files to the AttachmentController and then using the returned IDs in the `attachments` field of the send options.  See the InboxController or [sending emails guide](https://www.mailslurp.com/guides/) for more information.  ### Templates MailSlurp emails support templates. You can create templates in the dashboard or API that contain [moustache](https://mustache.github.io/) style variables: for instance `Hello {{name}}`. Then when sending emails you can pass a map of variables names and values to be used. Additionally, when sending emails with contact groups you can use properties of the contact in your templates like `{{firstName}}` and `{{lastName}}`.  > You can do a lot more with MailSlurp so see the included documentation for more information.  

OpenAPI spec version: 65c995de8ac6fae16e070de00599137ce502b20c

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module MailSlurpClient
  class EmailControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete all emails
    # Deletes all emails in your account. Be careful as emails cannot be recovered
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_all_emails(opts = {})
      delete_all_emails_with_http_info(opts)
      nil
    end

    # Delete all emails
    # Deletes all emails in your account. Be careful as emails cannot be recovered
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_all_emails_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailControllerApi.delete_all_emails ...'
      end
      # resource path
      local_var_path = '/emails'

      # query parameters
      query_params = {}

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
        @api_client.config.logger.debug "API called: EmailControllerApi#delete_all_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an email
    # Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_email(email_id, opts = {})
      delete_email_with_http_info(email_id, opts)
      nil
    end

    # Delete an email
    # Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_email_with_http_info(email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailControllerApi.delete_email ...'
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling EmailControllerApi.delete_email"
      end
      # resource path
      local_var_path = '/emails/{emailId}'.sub('{' + 'emailId' + '}', email_id.to_s)

      # query parameters
      query_params = {}

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
        @api_client.config.logger.debug "API called: EmailControllerApi#delete_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get email attachment bytes
    # Returns the specified attachment for a given email as a byte stream (file download). You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
    # @param attachment_id attachmentId
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @option opts [String] :api_key Can pass apiKey in url for this request if you wish to download the file in a browser
    # @return [String]
    def download_attachment(attachment_id, email_id, opts = {})
      data, _status_code, _headers = download_attachment_with_http_info(attachment_id, email_id, opts)
      data
    end

    # Get email attachment bytes
    # Returns the specified attachment for a given email as a byte stream (file download). You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
    # @param attachment_id attachmentId
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @option opts [String] :api_key Can pass apiKey in url for this request if you wish to download the file in a browser
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def download_attachment_with_http_info(attachment_id, email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailControllerApi.download_attachment ...'
      end
      # verify the required parameter 'attachment_id' is set
      if @api_client.config.client_side_validation && attachment_id.nil?
        fail ArgumentError, "Missing the required parameter 'attachment_id' when calling EmailControllerApi.download_attachment"
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling EmailControllerApi.download_attachment"
      end
      # resource path
      local_var_path = '/emails/{emailId}/attachments/{attachmentId}'.sub('{' + 'attachmentId' + '}', attachment_id.to_s).sub('{' + 'emailId' + '}', email_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'apiKey'] = opts[:'api_key'] if !opts[:'api_key'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailControllerApi#download_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Forward email
    # Forward an existing email to new recipients.
    # @param email_id emailId
    # @param forward_email_options forwardEmailOptions
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def forward_email(email_id, forward_email_options, opts = {})
      forward_email_with_http_info(email_id, forward_email_options, opts)
      nil
    end

    # Forward email
    # Forward an existing email to new recipients.
    # @param email_id emailId
    # @param forward_email_options forwardEmailOptions
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def forward_email_with_http_info(email_id, forward_email_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailControllerApi.forward_email ...'
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling EmailControllerApi.forward_email"
      end
      # verify the required parameter 'forward_email_options' is set
      if @api_client.config.client_side_validation && forward_email_options.nil?
        fail ArgumentError, "Missing the required parameter 'forward_email_options' when calling EmailControllerApi.forward_email"
      end
      # resource path
      local_var_path = '/emails/{emailId}/forward'.sub('{' + 'emailId' + '}', email_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(forward_email_options)
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailControllerApi#forward_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get email attachment metadata
    # Returns the metadata such as name and content-type for a given attachment and email.
    # @param attachment_id attachmentId
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [AttachmentMetaData]
    def get_attachment_meta_data(attachment_id, email_id, opts = {})
      data, _status_code, _headers = get_attachment_meta_data_with_http_info(attachment_id, email_id, opts)
      data
    end

    # Get email attachment metadata
    # Returns the metadata such as name and content-type for a given attachment and email.
    # @param attachment_id attachmentId
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [Array<(AttachmentMetaData, Fixnum, Hash)>] AttachmentMetaData data, response status code and response headers
    def get_attachment_meta_data_with_http_info(attachment_id, email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailControllerApi.get_attachment_meta_data ...'
      end
      # verify the required parameter 'attachment_id' is set
      if @api_client.config.client_side_validation && attachment_id.nil?
        fail ArgumentError, "Missing the required parameter 'attachment_id' when calling EmailControllerApi.get_attachment_meta_data"
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling EmailControllerApi.get_attachment_meta_data"
      end
      # resource path
      local_var_path = '/emails/{emailId}/attachments/{attachmentId}/metadata'.sub('{' + 'attachmentId' + '}', attachment_id.to_s).sub('{' + 'emailId' + '}', email_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AttachmentMetaData')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailControllerApi#get_attachment_meta_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all email attachment metadata
    # Returns an array of attachment metadata such as name and content-type for a given email if present.
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [Array<AttachmentMetaData>]
    def get_attachments(email_id, opts = {})
      data, _status_code, _headers = get_attachments_with_http_info(email_id, opts)
      data
    end

    # Get all email attachment metadata
    # Returns an array of attachment metadata such as name and content-type for a given email if present.
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AttachmentMetaData>, Fixnum, Hash)>] Array<AttachmentMetaData> data, response status code and response headers
    def get_attachments_with_http_info(email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailControllerApi.get_attachments ...'
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling EmailControllerApi.get_attachments"
      end
      # resource path
      local_var_path = '/emails/{emailId}/attachments'.sub('{' + 'emailId' + '}', email_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<AttachmentMetaData>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailControllerApi#get_attachments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get email content
    # Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :decode Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance &#x60;&#x3D;D7&#x60;). This can be a pain for testing (default to false)
    # @return [Email]
    def get_email(email_id, opts = {})
      data, _status_code, _headers = get_email_with_http_info(email_id, opts)
      data
    end

    # Get email content
    # Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :decode Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance &#x60;&#x3D;D7&#x60;). This can be a pain for testing
    # @return [Array<(Email, Fixnum, Hash)>] Email data, response status code and response headers
    def get_email_with_http_info(email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailControllerApi.get_email ...'
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling EmailControllerApi.get_email"
      end
      # resource path
      local_var_path = '/emails/{emailId}'.sub('{' + 'emailId' + '}', email_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'decode'] = opts[:'decode'] if !opts[:'decode'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Email')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailControllerApi#get_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get email content as HTML
    # Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :decode decode (default to false)
    # @return [String]
    def get_email_html(email_id, opts = {})
      data, _status_code, _headers = get_email_html_with_http_info(email_id, opts)
      data
    end

    # Get email content as HTML
    # Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: &#x60;?apiKey&#x3D;xxx&#x60;
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :decode decode
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def get_email_html_with_http_info(email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailControllerApi.get_email_html ...'
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling EmailControllerApi.get_email_html"
      end
      # resource path
      local_var_path = '/emails/{emailId}/html'.sub('{' + 'emailId' + '}', email_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'decode'] = opts[:'decode'] if !opts[:'decode'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailControllerApi#get_email_html\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all emails
    # By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :inbox_id Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
    # @option opts [Integer] :page Optional page index in email list pagination (default to 0)
    # @option opts [Integer] :size Optional page size in email list pagination (default to 20)
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC (default to 'ASC')
    # @option opts [BOOLEAN] :unread_only Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly (default to false)
    # @return [PageEmailProjection]
    def get_emails_paginated(opts = {})
      data, _status_code, _headers = get_emails_paginated_with_http_info(opts)
      data
    end

    # Get all emails
    # By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :inbox_id Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
    # @option opts [Integer] :page Optional page index in email list pagination
    # @option opts [Integer] :size Optional page size in email list pagination
    # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
    # @option opts [BOOLEAN] :unread_only Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
    # @return [Array<(PageEmailProjection, Fixnum, Hash)>] PageEmailProjection data, response status code and response headers
    def get_emails_paginated_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailControllerApi.get_emails_paginated ...'
      end
      if @api_client.config.client_side_validation && opts[:'sort'] && !['ASC', 'DESC'].include?(opts[:'sort'])
        fail ArgumentError, 'invalid value for "sort", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = '/emails'

      # query parameters
      query_params = {}
      query_params[:'inboxId'] = @api_client.build_collection_param(opts[:'inbox_id'], :multi) if !opts[:'inbox_id'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'unreadOnly'] = opts[:'unread_only'] if !opts[:'unread_only'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageEmailProjection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailControllerApi#get_emails_paginated\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get raw email string
    # Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_raw_email_contents(email_id, opts = {})
      data, _status_code, _headers = get_raw_email_contents_with_http_info(email_id, opts)
      data
    end

    # Get raw email string
    # Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def get_raw_email_contents_with_http_info(email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailControllerApi.get_raw_email_contents ...'
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling EmailControllerApi.get_raw_email_contents"
      end
      # resource path
      local_var_path = '/emails/{emailId}/raw'.sub('{' + 'emailId' + '}', email_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['API_KEY']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailControllerApi#get_raw_email_contents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get raw email in JSON
    # Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [RawEmailJson]
    def get_raw_email_json(email_id, opts = {})
      data, _status_code, _headers = get_raw_email_json_with_http_info(email_id, opts)
      data
    end

    # Get raw email in JSON
    # Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [Array<(RawEmailJson, Fixnum, Hash)>] RawEmailJson data, response status code and response headers
    def get_raw_email_json_with_http_info(email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailControllerApi.get_raw_email_json ...'
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling EmailControllerApi.get_raw_email_json"
      end
      # resource path
      local_var_path = '/emails/{emailId}/raw/json'.sub('{' + 'emailId' + '}', email_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RawEmailJson')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailControllerApi#get_raw_email_json\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Validate email
    # Validate the HTML content of email if HTML is found. Considered valid if no HTML.
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [ValidationDto]
    def validate_email(email_id, opts = {})
      data, _status_code, _headers = validate_email_with_http_info(email_id, opts)
      data
    end

    # Validate email
    # Validate the HTML content of email if HTML is found. Considered valid if no HTML.
    # @param email_id emailId
    # @param [Hash] opts the optional parameters
    # @return [Array<(ValidationDto, Fixnum, Hash)>] ValidationDto data, response status code and response headers
    def validate_email_with_http_info(email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailControllerApi.validate_email ...'
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling EmailControllerApi.validate_email"
      end
      # resource path
      local_var_path = '/emails/{emailId}/validate'.sub('{' + 'emailId' + '}', email_id.to_s)

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
        :return_type => 'ValidationDto')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailControllerApi#validate_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
