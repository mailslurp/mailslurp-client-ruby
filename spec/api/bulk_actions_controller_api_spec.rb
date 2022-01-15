=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2
Contact: contact@mailslurp.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for MailSlurpClient::BulkActionsControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BulkActionsControllerApi' do
  before do
    # run before each test
    @api_instance = MailSlurpClient::BulkActionsControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BulkActionsControllerApi' do
    it 'should create an instance of BulkActionsControllerApi' do
      expect(@api_instance).to be_instance_of(MailSlurpClient::BulkActionsControllerApi)
    end
  end

  # unit tests for bulk_create_inboxes
  # Bulk create Inboxes (email addresses)
  # @param count Number of inboxes to be created in bulk
  # @param [Hash] opts the optional parameters
  # @return [Array<InboxDto>]
  describe 'bulk_create_inboxes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bulk_delete_inboxes
  # Bulk Delete Inboxes
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'bulk_delete_inboxes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for bulk_send_emails
  # Bulk Send Emails
  # @param bulk_send_email_options 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'bulk_send_emails test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
