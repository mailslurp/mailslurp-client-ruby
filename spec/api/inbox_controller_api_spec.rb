=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository  ## Basic Concepts  ### Inboxes  Inboxes have real email addresses that can send and receive emails. You can create inboxes with specific email addresses (using custom domains). You can also use randomly assigned MailSlurp addresses as unique, disposable test addresses.   Inboxes can be permanent or temporary depending on your account plan and the options passed. Whenever an email is sent to an inbox's email address MailSlurp recieves the email and stores in under the matching inbox. For test suites we recommend creating a new empty inbox for each test run. Inbox usage limits are calculated by the number of inboxes created in the last 30 days (not the amount currently active on your account.)  See the InboxController or [inbox and email address guide](https://www.mailslurp.com/guides/) for more information.  ### Receive Emails You can receive emails using MailSlurp inboxes in a number of ways. Due to the asynchronous nature of email we recommend reading about the different methods and finding one that is right for your application.  #### Directly fetching existing emails If you know that an email has already been received by an inbox you can fetch it using the getEmail endpoints in the EmailController. You can fetch emails and attachments directly from an inbox. Emails are parsed and returned in an enriched DTO form. If you want to parse the raw email message you can use the getRawEmail endpoints.  Direct fetches are good for responding to emails that are known to exist. If you need to wait for emails to arrive or dynamically react to email events see the next sections.  #### Receiving emails with WaitFor methods The second (and most common) way to receive emails with MailSlurp is with WaitForController methods such as like waitForLatestEmail, waitForNthEmail, waitForEmailCount.   These endpoints are designed to be called when you expect a message to either already be in an inbox or arrive within a timeout. These methods are perfect for testing email functionality as emails have unpredictable arrival times. When you call these endpoints the email you expect may have already arrived - therefore the WaitFor methods behave as follow:  - If matching emails are found in an inbox they are returned immediately - Else MailSlurp retries the search until matching emails are found or a timeout is reached  > WaitFor methods hold a connection open if the criteria are not immediately met. Your application or tests should set an http timeout that permits this.  Most methods only return an email ID and not the full email (to keep response sizes low). To fetch the full body or attachments for an email use the email's ID with EmailController endpoints.  See the WaitForController or [receiving emails guide](https://www.mailslurp.com/guides/) for more information.  #### Receiving emails with Webhooks MailSlurp inboxes also support webhooks. You can create Webhooks with the WebhookController. Webhooks have a URL that can be used to forward emails to a server or endpoint in your application.   Whenever an inbox receives an email MailSlurp will send an [EmailReceivedEvent](https://api.mailslurp.com/schemas/webhook-payload) to any attached Webhook URLs using HTTP POST. Webhooks are great for high throughput applications that need to process inbound emails in a scalable way without fetching or waiting for emails.  ### Send Emails You can send templated HTML emails in several ways. You must first create an inbox to send an email. An inbox can have a specific address or a randomly assigned one. You can send emails from an inbox using `to`, `cc`, and `bcc` recipient lists or with contacts and contact groups.   Emails can contain plain-text or HTML bodies. You can also use email templates that support [moustache](https://mustache.github.io/) template variables. You can send attachments by first posting files to the AttachmentController and then using the returned IDs in the `attachments` field of the send options.  See the InboxController or [sending emails guide](https://www.mailslurp.com/guides/) for more information.  ### Templates MailSlurp emails support templates. You can create templates in the dashboard or API that contain [moustache](https://mustache.github.io/) style variables: for instance `Hello {{name}}`. Then when sending emails you can pass a map of variables names and values to be used. Additionally, when sending emails with contact groups you can use properties of the contact in your templates like `{{firstName}}` and `{{lastName}}`.  > You can do a lot more with MailSlurp so see the included documentation for more information.  

OpenAPI spec version: 65c995de8ac6fae16e070de00599137ce502b20c

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'spec_helper'
require 'json'

# Unit tests for MailSlurpClient::InboxControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InboxControllerApi' do
  before do
    # run before each test
    @instance = MailSlurpClient::InboxControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InboxControllerApi' do
    it 'should create an instance of InboxControllerApi' do
      expect(@instance).to be_instance_of(MailSlurpClient::InboxControllerApi)
    end
  end

  # unit tests for create_inbox
  # Create an Inbox (email address)
  # Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :description Optional description for an inbox.
  # @option opts [String] :email_address Optional email address including domain you wish inbox to use (eg: test123@mydomain.com). Only supports domains that you have registered and verified with MailSlurp using dashboard or &#x60;createDomain&#x60; method.
  # @option opts [DateTime] :expires_at Optional expires at timestamp. If your plan supports this feature you can specify when an inbox should expire. If left empty inbox will exist permanently or expire when your plan dictates
  # @option opts [BOOLEAN] :favourite Is inbox favourited.
  # @option opts [String] :name Optional name for an inbox.
  # @option opts [Array<String>] :tags Optional tags for an inbox. Can be used for searching and filtering inboxes.
  # @return [Inbox]
  describe 'create_inbox test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_all_inboxes
  # Delete all inboxes
  # Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_all_inboxes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_inbox
  # Delete inbox
  # Permanently delete an inbox and associated email address aswell as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.
  # @param inbox_id inboxId
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_inbox test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_inboxes
  # List Inboxes Paginated
  # List inboxes in paginated form. Allows for page index, page size, and sort direction. Can also filter by favourited or email address like pattern.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :favourite Optionally filter results for favourites only
  # @option opts [Integer] :page Optional page index in inbox list pagination
  # @option opts [String] :search Optionally filter by search words partial matching ID, tags, name, and email address
  # @option opts [Integer] :size Optional page size in inbox list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageInboxProjection]
  describe 'get_all_inboxes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_emails
  # Get emails in an Inbox
  # List emails that an inbox has received. Only emails that are sent to the inbox&#39;s email address will appear in the inbox. It may take several seconds for any email you send to an inbox&#39;s email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the &#x60;minCount&#x60; parameter. The server will retry the inbox database until the &#x60;minCount&#x60; is satisfied or the &#x60;retryTimeout&#x60; is reached
  # @param inbox_id Id of inbox that emails belongs to
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Limit the result set, ordered by received date time sort direction
  # @option opts [Integer] :min_count Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
  # @option opts [Integer] :retry_timeout Maximum milliseconds to spend retrying inbox database until minCount emails are returned
  # @option opts [DateTime] :since Exclude emails received before this ISO 8601 date time
  # @option opts [String] :sort Sort the results by received date and direction ASC or DESC
  # @return [Array<EmailPreview>]
  describe 'get_emails test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_inbox
  # Get Inbox
  # Returns an inbox&#39;s properties, including its email address and ID.
  # @param inbox_id inboxId
  # @param [Hash] opts the optional parameters
  # @return [Inbox]
  describe 'get_inbox test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_inbox_emails_paginated
  # Get inbox emails paginated
  # Get a paginated list of emails in an inbox. Does not hold connections open.
  # @param inbox_id Id of inbox that emails belongs to
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in inbox emails list pagination
  # @option opts [Integer] :size Optional page size in inbox emails list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageEmailPreview]
  describe 'get_inbox_emails_paginated test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_inboxes
  # List Inboxes / Email Addresses
  # List the inboxes you have created
  # @param [Hash] opts the optional parameters
  # @return [Array<Inbox>]
  describe 'get_inboxes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_email
  # Send Email
  # Send an email from an inbox&#39;s email address.  The request body should contain the &#x60;SendEmailOptions&#x60; that include recipients, attachments, body etc. See &#x60;SendEmailOptions&#x60; for all available properties. Note the &#x60;inboxId&#x60; refers to the inbox&#39;s id not the inbox&#39;s email address. See https://www.mailslurp.com/guides/ for more information on how to send emails.
  # @param inbox_id ID of the inbox you want to send the email from
  # @param [Hash] opts the optional parameters
  # @option opts [SendEmailOptions] :send_email_options Options for the email
  # @return [nil]
  describe 'send_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_inbox_favourited
  # Set inbox favourited state
  # Set and return new favourite state for an inbox
  # @param inbox_id inboxId
  # @param set_inbox_favourited_options setInboxFavouritedOptions
  # @param [Hash] opts the optional parameters
  # @return [Inbox]
  describe 'set_inbox_favourited test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_inbox
  # Update Inbox
  # Update editable fields on an inbox
  # @param inbox_id inboxId
  # @param update_inbox_options updateInboxOptions
  # @param [Hash] opts the optional parameters
  # @return [Inbox]
  describe 'update_inbox test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
