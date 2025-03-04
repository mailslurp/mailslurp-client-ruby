=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2
Contact: contact@mailslurp.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for MailSlurpClient::ConsentControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ConsentControllerApi' do
  before do
    # run before each test
    @api_instance = MailSlurpClient::ConsentControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConsentControllerApi' do
    it 'should create an instance of ConsentControllerApi' do
      expect(@api_instance).to be_instance_of(MailSlurpClient::ConsentControllerApi)
    end
  end

  # unit tests for check_sending_consent_for_email_address
  # @param email_address Email address to check consent for
  # @param [Hash] opts the optional parameters
  # @return [OptInSendingConsentDto]
  describe 'check_sending_consent_for_email_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_opt_in_identities
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in list pagination
  # @option opts [Integer] :size Optional page size in list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageOptInIdentityProjection]
  describe 'get_opt_in_identities test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for revoke_opt_in_consent_for_email_address
  # @param email_address Email address to revoke consent for
  # @param [Hash] opts the optional parameters
  # @return [OptInSendingConsentDto]
  describe 'revoke_opt_in_consent_for_email_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_opt_in_consent_for_email_address
  # Send a verification code to a user once they have explicitly submitted their email address
  # Send double-opt in consent for an email address
  # @param opt_in_consent_options 
  # @param [Hash] opts the optional parameters
  # @return [OptInConsentSendResult]
  describe 'send_opt_in_consent_for_email_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
