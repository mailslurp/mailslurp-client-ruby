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

# Unit tests for MailSlurpClient::ConnectorControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ConnectorControllerApi' do
  before do
    # run before each test
    @api_instance = MailSlurpClient::ConnectorControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConnectorControllerApi' do
    it 'should create an instance of ConnectorControllerApi' do
      expect(@api_instance).to be_instance_of(MailSlurpClient::ConnectorControllerApi)
    end
  end

  # unit tests for create_connector
  # Create an inbox connector
  # Sync emails between external mailboxes and MailSlurp inboxes
  # @param create_connector_options 
  # @param [Hash] opts the optional parameters
  # @return [ConnectorDto]
  describe 'create_connector test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_connector_imap_connection
  # Create an inbox connector IMAP connection
  # Allows the reading of emails in an external mailbox and syncing to a MailSlurp inbox
  # @param id 
  # @param create_connector_imap_connection_options 
  # @param [Hash] opts the optional parameters
  # @return [ConnectorImapConnectionDto]
  describe 'create_connector_imap_connection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_connector_smtp_connection
  # Create an inbox connector SMTP connection
  # Allows sending via connector and email is routed to connected inbox and sent via SMTP
  # @param id 
  # @param create_connector_smtp_connection_options 
  # @param [Hash] opts the optional parameters
  # @return [ConnectorSmtpConnectionDto]
  describe 'create_connector_smtp_connection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_all_connector
  # Delete all inbox connectors
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_all_connector test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_connector
  # Delete an inbox connector
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_connector test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_connector_imap_connection
  # Delete an inbox connector IMAP connection
  # Delete IMAP connection for external inbox
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_connector_imap_connection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_connector_smtp_connection
  # Delete an inbox connector SMTP connection
  # Delete SMTP connection for external inbox
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_connector_smtp_connection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_connector_sync_events
  # Get all inbox connector sync events
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in connector list pagination
  # @option opts [Integer] :size Optional page size in connector list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [DateTime] :since Filter by created at after the given timestamp
  # @option opts [DateTime] :before Filter by created at before the given timestamp
  # @return [PageConnectorSyncEvents]
  describe 'get_all_connector_sync_events test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_connector
  # Get an inbox connector
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [ConnectorDto]
  describe 'get_connector test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_connector_sync_event
  # Get an inbox connector sync event
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [ConnectorSyncEventDto]
  describe 'get_connector_sync_event test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_connector_sync_events
  # Get an inbox connector sync events
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in connector list pagination
  # @option opts [Integer] :size Optional page size in connector list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [DateTime] :since Filter by created at after the given timestamp
  # @option opts [DateTime] :before Filter by created at before the given timestamp
  # @return [PageConnectorSyncEvents]
  describe 'get_connector_sync_events test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_connectors
  # Get inbox connectors
  # List inbox connectors that sync external emails to MailSlurp inboxes
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in connector list pagination
  # @option opts [Integer] :size Optional page size in connector list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [DateTime] :since Filter by created at after the given timestamp
  # @option opts [DateTime] :before Filter by created at before the given timestamp
  # @return [PageConnector]
  describe 'get_connectors test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for sync_connector
  # Sync an inbox connector
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [ConnectorSyncRequestResult]
  describe 'sync_connector test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_connector
  # Update an inbox connector
  # @param id 
  # @param create_connector_options 
  # @param [Hash] opts the optional parameters
  # @return [ConnectorDto]
  describe 'update_connector test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
