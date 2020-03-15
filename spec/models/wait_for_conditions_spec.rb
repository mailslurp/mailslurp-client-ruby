=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 

The version of the OpenAPI document: 67c9a1eda264be4cfe0bb2c76151f0aadf0862bc

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for MailSlurpClient::WaitForConditions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WaitForConditions' do
  before do
    # run before each test
    @instance = MailSlurpClient::WaitForConditions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WaitForConditions' do
    it 'should create an instance of WaitForConditions' do
      expect(@instance).to be_instance_of(MailSlurpClient::WaitForConditions)
    end
  end
  describe 'test attribute "count"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "count_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["EXACTLY", "ATLEAST"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.count_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "inbox_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "matches"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "sort_direction"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ASC", "DESC"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.sort_direction = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "timeout"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "unread_only"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
