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
require 'date'

# Unit tests for MailSlurpClient::CreateInboxRulesetOptions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CreateInboxRulesetOptions' do
  before do
    # run before each test
    @instance = MailSlurpClient::CreateInboxRulesetOptions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateInboxRulesetOptions' do
    it 'should create an instance of CreateInboxRulesetOptions' do
      expect(@instance).to be_instance_of(MailSlurpClient::CreateInboxRulesetOptions)
    end
  end
  describe 'test attribute "scope"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["RECEIVING_EMAILS", "SENDING_EMAILS"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.scope = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "action"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["BLOCK", "ALLOW", "FILTER_REMOVE"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.action = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "target"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
