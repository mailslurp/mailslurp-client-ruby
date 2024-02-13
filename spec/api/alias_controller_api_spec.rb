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

# Unit tests for MailSlurpClient::AliasControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AliasControllerApi' do
  before do
    # run before each test
    @api_instance = MailSlurpClient::AliasControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AliasControllerApi' do
    it 'should create an instance of AliasControllerApi' do
      expect(@api_instance).to be_instance_of(MailSlurpClient::AliasControllerApi)
    end
  end

  # unit tests for create_alias
  # Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
  # Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached
  # @param create_alias_options 
  # @param [Hash] opts the optional parameters
  # @return [AliasDto]
  describe 'create_alias test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_alias
  # Delete an email alias
  # @param alias_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_alias test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_alias
  # Get an email alias
  # Get an email alias by ID
  # @param alias_id 
  # @param [Hash] opts the optional parameters
  # @return [AliasDto]
  describe 'get_alias test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_alias_emails
  # Get emails for an alias
  # Get paginated emails for an alias by ID
  # @param alias_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index alias email list pagination
  # @option opts [Integer] :size Optional page size alias email list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [DateTime] :since Optional filter by sent after given date time
  # @option opts [DateTime] :before Optional filter by sent before given date time
  # @return [PageEmailProjection]
  describe 'get_alias_emails test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_alias_threads
  # Get threads created for an alias
  # Returns threads created for an email alias in paginated form
  # @param alias_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in thread list pagination
  # @option opts [Integer] :size Optional page size in thread list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [DateTime] :since Optional filter by sent after given date time
  # @option opts [DateTime] :before Optional filter by sent before given date time
  # @return [PageThreadProjection]
  describe 'get_alias_threads test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_aliases
  # Get all email aliases you have created
  # Get all email aliases in paginated form
  # @param [Hash] opts the optional parameters
  # @option opts [String] :search Optional search term
  # @option opts [Integer] :page Optional page index in alias list pagination
  # @option opts [Integer] :size Optional page size in alias list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [DateTime] :since Filter by created at after the given timestamp
  # @option opts [DateTime] :before Filter by created at before the given timestamp
  # @return [PageAlias]
  describe 'get_aliases test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_thread
  # Get a thread
  # Return a thread associated with an alias
  # @param thread_id 
  # @param [Hash] opts the optional parameters
  # @return [ThreadProjection]
  describe 'get_thread test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_threads_paginated
  # Get all threads
  # Returns threads created for all aliases in paginated form
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in thread list pagination
  # @option opts [Integer] :size Optional page size in thread list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [DateTime] :since Optional filter by sent after given date time
  # @option opts [DateTime] :before Optional filter by sent before given date time
  # @return [PageThreadProjection]
  describe 'get_threads_paginated test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reply_to_alias_email
  # Reply to an email
  # Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails &#x60;to&#x60;, &#x60;cc&#x60;, and &#x60;bcc&#x60;.
  # @param alias_id ID of the alias that email belongs to
  # @param email_id ID of the email that should be replied to
  # @param reply_to_alias_email_options 
  # @param [Hash] opts the optional parameters
  # @return [SentEmailDto]
  describe 'reply_to_alias_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_alias_email
  # Send an email from an alias inbox
  # Send an email from an alias. Replies to the email will be forwarded to the alias masked email address
  # @param alias_id 
  # @param send_email_options 
  # @param [Hash] opts the optional parameters
  # @return [SentEmailDto]
  describe 'send_alias_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_alias
  # Update an email alias
  # @param alias_id 
  # @param update_alias_options 
  # @param [Hash] opts the optional parameters
  # @return [AliasDto]
  describe 'update_alias test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
