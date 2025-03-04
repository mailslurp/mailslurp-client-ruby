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

# Unit tests for MailSlurpClient::EmailFeatureFamilyName
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EmailFeatureFamilyName' do
  before do
    # run before each test
    @instance = MailSlurpClient::EmailFeatureFamilyName.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmailFeatureFamilyName' do
    it 'should create an instance of EmailFeatureFamilyName' do
      expect(@instance).to be_instance_of(MailSlurpClient::EmailFeatureFamilyName)
    end
  end
  describe 'test attribute "slug"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["aol", "apple-mail", "fastmail", "free-fr", "gmail", "gmx", "hey", "ionos-1and1", "laposte", "mail-ru", "microsoft", "orange", "outlook", "protonmail", "rainloop", "samsung-email", "sfr", "t-online-de", "thunderbird", "web-de", "yahoo"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.slug = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
