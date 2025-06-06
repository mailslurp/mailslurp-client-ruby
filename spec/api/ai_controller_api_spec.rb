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

# Unit tests for MailSlurpClient::AIControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AIControllerApi' do
  before do
    # run before each test
    @api_instance = MailSlurpClient::AIControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AIControllerApi' do
    it 'should create an instance of AIControllerApi' do
      expect(@api_instance).to be_instance_of(MailSlurpClient::AIControllerApi)
    end
  end

  # unit tests for generate_structured_content_from_attachment
  # Generate structured content for an attachment
  # Use output schemas to extract data from an attachment using AI
  # @param generate_structured_content_attachment_options 
  # @param [Hash] opts the optional parameters
  # @return [StructuredContentResult]
  describe 'generate_structured_content_from_attachment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_structured_content_from_email
  # Generate structured content for an email
  # Use output schemas to extract data from an email using AI
  # @param generate_structured_content_email_options 
  # @param [Hash] opts the optional parameters
  # @return [StructuredContentResult]
  describe 'generate_structured_content_from_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for validate_structured_output_schema
  # Validate structured content schema
  # Check if a schema is valid and can be used to extract data using AI
  # @param structured_output_schema 
  # @param [Hash] opts the optional parameters
  # @return [StructuredOutputSchemaValidation]
  describe 'validate_structured_output_schema test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
