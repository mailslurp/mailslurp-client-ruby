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

# Unit tests for MailSlurpClient::PhoneControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PhoneControllerApi' do
  before do
    # run before each test
    @api_instance = MailSlurpClient::PhoneControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PhoneControllerApi' do
    it 'should create an instance of PhoneControllerApi' do
      expect(@api_instance).to be_instance_of(MailSlurpClient::PhoneControllerApi)
    end
  end

  # unit tests for create_emergency_address
  # @param create_emergency_address_options 
  # @param [Hash] opts the optional parameters
  # @return [EmergencyAddress]
  describe 'create_emergency_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_emergency_address
  # @param address_id 
  # @param [Hash] opts the optional parameters
  # @return [EmptyResponseDto]
  describe 'delete_emergency_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_phone_number
  # @param phone_number_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_phone_number test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_emergency_address
  # @param address_id 
  # @param [Hash] opts the optional parameters
  # @return [EmergencyAddress]
  describe 'get_emergency_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_emergency_addresses
  # @param [Hash] opts the optional parameters
  # @return [Array<EmergencyAddressDto>]
  describe 'get_emergency_addresses test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_phone_number
  # @param phone_number_id 
  # @param [Hash] opts the optional parameters
  # @return [PhoneNumberDto]
  describe 'get_phone_number test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_phone_numbers
  # @param [Hash] opts the optional parameters
  # @option opts [String] :phone_country Optional phone country
  # @option opts [Integer] :page Optional page index for list pagination
  # @option opts [Integer] :size Optional page size for list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [DateTime] :since Filter by created at after the given timestamp
  # @option opts [DateTime] :before Filter by created at before the given timestamp
  # @return [PagePhoneNumberProjection]
  describe 'get_phone_numbers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_phone_plans
  # @param [Hash] opts the optional parameters
  # @return [Array<PhonePlanDto>]
  describe 'get_phone_plans test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for test_phone_number_send_sms
  # @param phone_number_id 
  # @param test_phone_number_options 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_test_id 
  # @return [nil]
  describe 'test_phone_number_send_sms test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
