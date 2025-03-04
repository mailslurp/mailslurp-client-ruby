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
require 'date'

# Unit tests for MailSlurpClient::UserInfoDto
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UserInfoDto' do
  before do
    # run before each test
    @instance = MailSlurpClient::UserInfoDto.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserInfoDto' do
    it 'should create an instance of UserInfoDto' do
      expect(@instance).to be_instance_of(MailSlurpClient::UserInfoDto)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "email_address"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "account_state"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["FROZEN", "ACTIVE"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.account_state = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "subscription_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["PRO_MONTHLY", "STARTER", "PRO", "TEAM", "ENTERPRISE"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.subscription_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "account_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["SOLO", "CHILD_SOLO", "CHILD_TEAM", "CHILD_ADMIN"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.account_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "created_at"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
