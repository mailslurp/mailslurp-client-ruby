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

# Unit tests for MailSlurpClient::BounceControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BounceControllerApi' do
  before do
    # run before each test
    @api_instance = MailSlurpClient::BounceControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BounceControllerApi' do
    it 'should create an instance of BounceControllerApi' do
      expect(@api_instance).to be_instance_of(MailSlurpClient::BounceControllerApi)
    end
  end

  # unit tests for filter_bounced_recipient
  # Filter a list of email recipients and remove those who have bounced
  # Prevent email sending errors by remove recipients who have resulted in past email bounces or complaints
  # @param filter_bounced_recipients_options 
  # @param [Hash] opts the optional parameters
  # @return [FilterBouncedRecipientsResult]
  describe 'filter_bounced_recipient test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bounced_email
  # Get a bounced email.
  # Bounced emails are email you have sent that were rejected by a recipient
  # @param id ID of the bounced email to fetch
  # @param [Hash] opts the optional parameters
  # @return [BouncedEmailDto]
  describe 'get_bounced_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bounced_emails
  # Get paginated list of bounced emails.
  # Bounced emails are email you have sent that were rejected by a recipient
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index
  # @option opts [Integer] :size Optional page size 
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [DateTime] :since Filter by created at after the given timestamp
  # @option opts [DateTime] :before Filter by created at before the given timestamp
  # @return [PageBouncedEmail]
  describe 'get_bounced_emails test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bounced_recipient
  # Get a bounced email.
  # Bounced emails are email you have sent that were rejected by a recipient
  # @param id ID of the bounced recipient
  # @param [Hash] opts the optional parameters
  # @return [BouncedRecipientDto]
  describe 'get_bounced_recipient test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bounced_recipients
  # Get paginated list of bounced recipients.
  # Bounced recipients are email addresses that you have sent emails to that did not accept the sent email. Once a recipient is bounced you cannot send emails to that address.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index 
  # @option opts [Integer] :size Optional page size 
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [DateTime] :since Filter by created at after the given timestamp
  # @option opts [DateTime] :before Filter by created at before the given timestamp
  # @return [PageBouncedRecipients]
  describe 'get_bounced_recipients test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_complaints
  # Get paginated list of complaints.
  # SMTP complaints made against your account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index 
  # @option opts [Integer] :size Optional page size 
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [DateTime] :since Filter by created at after the given timestamp
  # @option opts [DateTime] :before Filter by created at before the given timestamp
  # @return [PageComplaint]
  describe 'get_complaints test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_list_unsubscribe_recipients
  # Get paginated list of unsubscribed recipients.
  # Unsubscribed recipient have unsubscribed from a mailing list for a user or domain and cannot be contacted again.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index
  # @option opts [Integer] :size Optional page size 
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [String] :domain_id Filter by domainId
  # @return [PageListUnsubscribeRecipients]
  describe 'get_list_unsubscribe_recipients test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
