=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 

The version of the OpenAPI document: d1659dc1567a5b62f65d0612107a50aace03e085

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for MailSlurpClient::MatchOption
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MatchOption' do
  before do
    # run before each test
    @instance = MailSlurpClient::MatchOption.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MatchOption' do
    it 'should create an instance of MatchOption' do
      expect(@instance).to be_instance_of(MailSlurpClient::MatchOption)
    end
  end
  describe 'test attribute "field"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["SUBJECT", "TO", "BCC", "CC", "FROM"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.field = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "should"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["CONTAIN", "EQUAL"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.should = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
