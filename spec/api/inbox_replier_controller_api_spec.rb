=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2
Contact: contact@mailslurp.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for MailSlurpClient::InboxReplierControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InboxReplierControllerApi' do
  before do
    # run before each test
    @api_instance = MailSlurpClient::InboxReplierControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InboxReplierControllerApi' do
    it 'should create an instance of InboxReplierControllerApi' do
      expect(@api_instance).to be_instance_of(MailSlurpClient::InboxReplierControllerApi)
    end
  end

  # unit tests for create_new_inbox_replier
  # Create an inbox replier
  # Create a new inbox rule for reply toing, blocking, and allowing emails when sending and receiving
  # @param create_inbox_replier_options 
  # @param [Hash] opts the optional parameters
  # @return [InboxReplierDto]
  describe 'create_new_inbox_replier test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_inbox_replier
  # Delete an inbox replier
  # Delete inbox replier
  # @param id ID of inbox replier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_inbox_replier test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_inbox_repliers
  # Delete inbox repliers
  # Delete inbox repliers. Accepts optional inboxId filter.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :inbox_id Optional inbox id to attach replier to
  # @return [nil]
  describe 'delete_inbox_repliers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_inbox_replier
  # Get an inbox replier
  # Get inbox ruleset
  # @param id ID of inbox replier
  # @param [Hash] opts the optional parameters
  # @return [InboxReplierDto]
  describe 'get_inbox_replier test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_inbox_replier_events
  # Get an inbox replier event list
  # Get inbox ruleset events
  # @param id ID of inbox replier
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in inbox replier event list pagination
  # @option opts [Integer] :size Optional page size in inbox replier event list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageInboxReplierEvents]
  describe 'get_inbox_replier_events test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_inbox_repliers
  # List inbox repliers
  # List all repliers attached to an inbox
  # @param [Hash] opts the optional parameters
  # @option opts [String] :inbox_id Optional inbox id to get repliers from
  # @option opts [Integer] :page Optional page index in inbox replier list pagination
  # @option opts [Integer] :size Optional page size in inbox replier list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [DateTime] :since Filter by created at after the given timestamp
  # @option opts [DateTime] :before Filter by created at before the given timestamp
  # @return [PageInboxReplierDto]
  describe 'get_inbox_repliers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_inbox_replier
  # Update an inbox replier
  # Update inbox ruleset
  # @param id ID of inbox replier
  # @param update_inbox_replier_options 
  # @param [Hash] opts the optional parameters
  # @return [InboxReplierDto]
  describe 'update_inbox_replier test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
