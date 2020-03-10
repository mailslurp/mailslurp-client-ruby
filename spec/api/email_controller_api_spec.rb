=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository  ## Basic Concepts  ### Inboxes  Inboxes have real email addresses that can send and receive emails. You can create inboxes with specific email addresses (using custom domains). You can also use randomly assigned MailSlurp addresses as unique, disposable test addresses.   Inboxes can be permanent or temporary depending on your account plan and the options passed. Whenever an email is sent to an inbox's email address MailSlurp recieves the email and stores in under the matching inbox. For test suites we recommend creating a new empty inbox for each test run. Inbox usage limits are calculated by the number of inboxes created in the last 30 days (not the amount currently active on your account.)  See the InboxController or [inbox and email address guide](https://www.mailslurp.com/guides/) for more information.  ### Receive Emails You can receive emails using MailSlurp inboxes in a number of ways. Due to the asynchronous nature of email we recommend reading about the different methods and finding one that is right for your application.  #### Directly fetching existing emails If you know that an email has already been received by an inbox you can fetch it using the getEmail endpoints in the EmailController. You can fetch emails and attachments directly from an inbox. Emails are parsed and returned in an enriched DTO form. If you want to parse the raw email message you can use the getRawEmail endpoints.  Direct fetches are good for responding to emails that are known to exist. If you need to wait for emails to arrive or dynamically react to email events see the next sections.  #### Receiving emails with WaitFor methods The second (and most common) way to receive emails with MailSlurp is with WaitForController methods such as like waitForLatestEmail, waitForNthEmail, waitForEmailCount.   These endpoints are designed to be called when you expect a message to either already be in an inbox or arrive within a timeout. These methods are perfect for testing email functionality as emails have unpredictable arrival times. When you call these endpoints the email you expect may have already arrived - therefore the WaitFor methods behave as follow:  - If matching emails are found in an inbox they are returned immediately - Else MailSlurp retries the search until matching emails are found or a timeout is reached  > WaitFor methods hold a connection open if the criteria are not immediately met. Your application or tests should set an http timeout that permits this.  Most methods only return an email ID and not the full email (to keep response sizes low). To fetch the full body or attachments for an email use the email's ID with EmailController endpoints.  See the WaitForController or [receiving emails guide](https://www.mailslurp.com/guides/) for more information.  #### Receiving emails with Webhooks MailSlurp inboxes also support webhooks. You can create Webhooks with the WebhookController. Webhooks have a URL that can be used to forward emails to a server or endpoint in your application.   Whenever an inbox receives an email MailSlurp will send an [EmailReceivedEvent](https://api.mailslurp.com/schemas/webhook-payload) to any attached Webhook URLs using HTTP POST. Webhooks are great for high throughput applications that need to process inbound emails in a scalable way without fetching or waiting for emails.  ### Send Emails You can send templated HTML emails in several ways. You must first create an inbox to send an email. An inbox can have a specific address or a randomly assigned one. You can send emails from an inbox using `to`, `cc`, and `bcc` recipient lists or with contacts and contact groups.   Emails can contain plain-text or HTML bodies. You can also use email templates that support [moustache](https://mustache.github.io/) template variables. You can send attachments by first posting files to the AttachmentController and then using the returned IDs in the `attachments` field of the send options.  See the InboxController or [sending emails guide](https://www.mailslurp.com/guides/) for more information.  ### Templates MailSlurp emails support templates. You can create templates in the dashboard or API that contain [moustache](https://mustache.github.io/) style variables: for instance `Hello {{name}}`. Then when sending emails you can pass a map of variables names and values to be used. Additionally, when sending emails with contact groups you can use properties of the contact in your templates like `{{firstName}}` and `{{lastName}}`.  > You can do a lot more with MailSlurp so see the included documentation for more information.  

OpenAPI spec version: 65c995de8ac6fae16e070de00599137ce502b20c

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'spec_helper'
require 'json'

# Unit tests for MailSlurpClient::EmailControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EmailControllerApi' do
  before do
    # run before each test
    @instance = MailSlurpClient::EmailControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmailControllerApi' do
    it 'should create an instance of EmailControllerApi' do
      expect(@instance).to be_instance_of(MailSlurpClient::EmailControllerApi)
    end
  end

  # unit tests for delete_all_emails
  # Delete all emails
  # Deletes all emails in your account. Be careful as emails cannot be recovered
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_all_emails test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_email
  # Delete an email
  # Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.
  # @param email_id emailId
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for download_attachment
  # Get email attachment bytes
  # Returns the specified attachment for a given email as a byte stream (file download). You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
  # @param attachment_id attachmentId
  # @param email_id emailId
  # @param [Hash] opts the optional parameters
  # @option opts [String] :api_key Can pass apiKey in url for this request if you wish to download the file in a browser
  # @return [String]
  describe 'download_attachment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for forward_email
  # Forward email
  # Forward an existing email to new recipients.
  # @param email_id emailId
  # @param forward_email_options forwardEmailOptions
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'forward_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_attachment_meta_data
  # Get email attachment metadata
  # Returns the metadata such as name and content-type for a given attachment and email.
  # @param attachment_id attachmentId
  # @param email_id emailId
  # @param [Hash] opts the optional parameters
  # @return [AttachmentMetaData]
  describe 'get_attachment_meta_data test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_attachments
  # Get all email attachment metadata
  # Returns an array of attachment metadata such as name and content-type for a given email if present.
  # @param email_id emailId
  # @param [Hash] opts the optional parameters
  # @return [Array<AttachmentMetaData>]
  describe 'get_attachments test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_email
  # Get email content
  # Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints
  # @param email_id emailId
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :decode Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance &#x60;&#x3D;D7&#x60;). This can be a pain for testing
  # @return [Email]
  describe 'get_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_email_html
  # Get email content as HTML
  # Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: &#x60;?apiKey&#x3D;xxx&#x60;
  # @param email_id emailId
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :decode decode
  # @return [String]
  describe 'get_email_html test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_emails_paginated
  # Get all emails
  # By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :inbox_id Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
  # @option opts [Integer] :page Optional page index in email list pagination
  # @option opts [Integer] :size Optional page size in email list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [BOOLEAN] :unread_only Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
  # @return [PageEmailProjection]
  describe 'get_emails_paginated test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_raw_email_contents
  # Get raw email string
  # Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint
  # @param email_id emailId
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'get_raw_email_contents test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_raw_email_json
  # Get raw email in JSON
  # Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response
  # @param email_id emailId
  # @param [Hash] opts the optional parameters
  # @return [RawEmailJson]
  describe 'get_raw_email_json test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for validate_email
  # Validate email
  # Validate the HTML content of email if HTML is found. Considered valid if no HTML.
  # @param email_id emailId
  # @param [Hash] opts the optional parameters
  # @return [ValidationDto]
  describe 'validate_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
