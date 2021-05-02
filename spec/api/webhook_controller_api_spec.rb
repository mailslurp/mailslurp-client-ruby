=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

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
  # @option opts [Integer] :page Optional page index in list pagination
  # @option opts [Integer] :size Optional page size in list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageWebhookProjection]
  describe 'get_all_webhooks test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_test_webhook_payload
  # Get test webhook payload example
  # @param [Hash] opts the optional parameters
  # @return [WebhookPayload]
  describe 'get_test_webhook_payload test' do
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
  # Get all webhooks for an Inbox
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
