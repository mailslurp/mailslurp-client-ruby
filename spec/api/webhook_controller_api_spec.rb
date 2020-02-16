=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Overview  #### Inboxes  Inboxes have real email addresses that can send and receive emails. You can create inboxes with specific email addresses (using custom domains). You can also use randomly assigned MailSlurp addresses as unique, disposable test addresses.   See the InboxController or [inbox and email address guide](https://www.mailslurp.com/guides/) for more information.  #### Receive Emails You can receive emails in a number of ways. You can fetch emails and attachments directly from an inbox. Or you can use `waitFor` endpoints to hold a connection open until an email is received that matches given criteria (such as subject or body content). You can also use webhooks to have emails from multiple inboxes forwarded to your server via HTTP POST.  InboxController methods with `waitFor` in the name have a long timeout period and instruct MailSlurp to wait until an expected email is received. You can set conditions on email counts, subject or body matches, and more.  Most receive methods only return an email ID and not the full email (to keep response sizes low). To fetch the full body or attachments for an email use the email's ID with EmailController endpoints.  See the InboxController or [receiving emails guide](https://www.mailslurp.com/guides/) for more information.  #### Send Emails You can send templated HTML emails in several ways. You must first create an inbox to send an email. An inbox can have a specific address or a randomly assigned one. You can send emails from an inbox using `to`, `cc`, and `bcc` recipient lists or with contacts and contact groups.   Emails can contain plain-text or HTML bodies. You can also use email templates that support [moustache](https://mustache.github.io/) template variables. You can send attachments by first posting files to the AttachmentController and then using the returned IDs in the `attachments` field of the send options.  See the InboxController or [sending emails guide](https://www.mailslurp.com/guides/) for more information.  ## Templates MailSlurp emails support templates. You can create templates in the dashboard or API that contain [moustache](https://mustache.github.io/) style variables: for instance `Hello {{name}}`. Then when sending emails you can pass a map of variables names and values to be used. Additionally, when sending emails with contact groups you can use properties of the contact in your templates like `{{firstName}}` and `{{lastName}}``.  ## Explore     

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for MailSlurpClient::WebhookControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WebhookControllerApi' do
  before do
    # run before each test
    @api_instance = MailSlurpClient::WebhookControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebhookControllerApi' do
    it 'should create an instance of WebhookControllerApi' do
      expect(@api_instance).to be_instance_of(MailSlurpClient::WebhookControllerApi)
    end
  end

  # unit tests for create_webhook
  # Attach a WebHook URL to an inbox
  # Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
  # @param inbox_id inboxId
  # @param webhook_options webhookOptions
  # @param [Hash] opts the optional parameters
  # @return [WebhookDto]
  describe 'create_webhook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_webhook
  # Delete and disable a Webhook for an Inbox
  # @param inbox_id inboxId
  # @param webhook_id webhookId
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_webhook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_webhooks
  # List Webhooks Paginated
  # List webhooks in paginated form. Allows for page index, page size, and sort direction.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in inbox list pagination
  # @option opts [Integer] :size Optional page size in inbox list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageWebhookProjection]
  describe 'get_all_webhooks test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_webhook
  # Get a webhook for an Inbox
  # @param webhook_id webhookId
  # @param [Hash] opts the optional parameters
  # @return [WebhookDto]
  describe 'get_webhook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_webhooks
  # Get all Webhooks for an Inbox
  # @param inbox_id inboxId
  # @param [Hash] opts the optional parameters
  # @return [Array<WebhookDto>]
  describe 'get_webhooks test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_test_data
  # Send webhook test data
  # @param webhook_id webhookId
  # @param [Hash] opts the optional parameters
  # @return [WebhookTestResult]
  describe 'send_test_data test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
