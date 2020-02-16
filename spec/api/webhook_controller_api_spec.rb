=begin
#MailSlurp API

### Introduction  [MailSlurp](https://www.mailslurp.com) is an Email API for developers and QA testers. It let's users: - create emails addresses on demand - receive emails and attachments in code - send templated HTML emails  ## About  This page contains the REST API documentation for MailSlurp. All requests require API Key authentication passed as an `x-api-key` header.  Create an account to [get your free API Key](https://app.mailslurp.com/sign-up/).  ## Resources - 🔑 [Get API Key](https://app.mailslurp.com/sign-up/)                    - 🎓 [Developer Portal](https://www.mailslurp.com/docs/)           - 📦 [Library SDKs](https://www.mailslurp.com/docs/) - ✍️ [Code Examples](https://www.mailslurp.com/examples) - ⚠️ [Report an issue](https://drift.me/mailslurp)  ## Explore  

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
