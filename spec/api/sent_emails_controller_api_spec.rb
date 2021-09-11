=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for MailSlurpClient::SentEmailsControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SentEmailsControllerApi' do
  before do
    # run before each test
    @api_instance = MailSlurpClient::SentEmailsControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SentEmailsControllerApi' do
    it 'should create an instance of SentEmailsControllerApi' do
      expect(@api_instance).to be_instance_of(MailSlurpClient::SentEmailsControllerApi)
    end
  end

  # unit tests for get_all_sent_tracking_pixels
  # Get all sent email tracking pixels in paginated form
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :before Filter by created at before the given timestamp
  # @option opts [Integer] :page Optional page index in sent email tracking pixel list pagination
  # @option opts [String] :search_filter Optional search filter
  # @option opts [DateTime] :since Filter by created at after the given timestamp
  # @option opts [Integer] :size Optional page size in sent email tracking pixel list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageTrackingPixelProjection]
  describe 'get_all_sent_tracking_pixels test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sent_email
  # Get sent email receipt
  # @param id id
  # @param [Hash] opts the optional parameters
  # @return [SentEmailDto]
  describe 'get_sent_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sent_email_html_content
  # Get sent email HTML content
  # @param id id
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'get_sent_email_html_content test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sent_email_tracking_pixels
  # Get all tracking pixels for a sent email in paginated form
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :before Filter by created at before the given timestamp
  # @option opts [Integer] :page Optional page index in sent email tracking pixel list pagination
  # @option opts [String] :search_filter Optional search filter
  # @option opts [DateTime] :since Filter by created at after the given timestamp
  # @option opts [Integer] :size Optional page size in sent email tracking pixel list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageTrackingPixelProjection]
  describe 'get_sent_email_tracking_pixels test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sent_emails
  # Get all sent emails in paginated form
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :before Filter by created at before the given timestamp
  # @option opts [String] :inbox_id Optional inboxId to filter sender of sent emails by
  # @option opts [Integer] :page Optional page index in inbox sent email list pagination
  # @option opts [String] :search_filter Optional search filter
  # @option opts [DateTime] :since Filter by created at after the given timestamp
  # @option opts [Integer] :size Optional page size in inbox sent email list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageSentEmailProjection]
  describe 'get_sent_emails test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sent_organization_emails
  # Get all sent organization emails in paginated form
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :before Filter by created at before the given timestamp
  # @option opts [String] :inbox_id Optional inboxId to filter sender of sent emails by
  # @option opts [Integer] :page Optional page index in sent email list pagination
  # @option opts [String] :search_filter Optional search filter
  # @option opts [DateTime] :since Filter by created at after the given timestamp
  # @option opts [Integer] :size Optional page size in sent email list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageSentEmailProjection]
  describe 'get_sent_organization_emails test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
