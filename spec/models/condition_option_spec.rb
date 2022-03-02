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
require 'date'

# Unit tests for MailSlurpClient::ConditionOption
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ConditionOption' do
  before do
    # run before each test
    @instance = MailSlurpClient::ConditionOption.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConditionOption' do
    it 'should create an instance of ConditionOption' do
      expect(@instance).to be_instance_of(MailSlurpClient::ConditionOption)
    end
  end
  describe 'test attribute "condition"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["HAS_ATTACHMENTS"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.condition = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["TRUE", "FALSE"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.value = value }.not_to raise_error
      # end
    end
  end

end
