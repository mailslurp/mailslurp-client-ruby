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

# Unit tests for MailSlurpClient::ImapControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ImapControllerApi' do
  before do
    # run before each test
    @api_instance = MailSlurpClient::ImapControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ImapControllerApi' do
    it 'should create an instance of ImapControllerApi' do
      expect(@api_instance).to be_instance_of(MailSlurpClient::ImapControllerApi)
    end
  end

  # unit tests for imap_server_fetch
  # Fetch message in an inbox
  # @param seq_num 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :inbox_id Inbox ID to search
  # @return [ImapServerFetchResult]
  describe 'imap_server_fetch test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for imap_server_list
  # List messages in an inbox
  # @param imap_server_list_options 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :inbox_id Inbox ID to list
  # @return [ImapServerListResult]
  describe 'imap_server_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for imap_server_search
  # Search messages in an inbox
  # @param imap_server_search_options 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :inbox_id Inbox ID to search
  # @return [ImapServerSearchResult]
  describe 'imap_server_search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for imap_server_update_flags
  # Update message flags
  # @param imap_update_flags_options 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :inbox_id 
  # @return [nil]
  describe 'imap_server_update_flags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
