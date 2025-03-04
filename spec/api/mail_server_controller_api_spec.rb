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

# Unit tests for MailSlurpClient::MailServerControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MailServerControllerApi' do
  before do
    # run before each test
    @api_instance = MailSlurpClient::MailServerControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MailServerControllerApi' do
    it 'should create an instance of MailServerControllerApi' do
      expect(@api_instance).to be_instance_of(MailSlurpClient::MailServerControllerApi)
    end
  end

  # unit tests for describe_mail_server_domain
  # Get DNS Mail Server records for a domain
  # @param describe_domain_options 
  # @param [Hash] opts the optional parameters
  # @return [DescribeMailServerDomainResult]
  describe 'describe_mail_server_domain test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dns_lookup
  # Lookup DNS records for a domain
  # @param dns_lookup_options 
  # @param [Hash] opts the optional parameters
  # @return [DNSLookupResults]
  describe 'get_dns_lookup test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dns_lookups
  # Lookup DNS records for multiple domains
  # @param dns_lookups_options 
  # @param [Hash] opts the optional parameters
  # @return [DNSLookupResults]
  describe 'get_dns_lookups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_ip_address
  # Get IP address for a domain
  # @param name 
  # @param [Hash] opts the optional parameters
  # @return [IPAddressResult]
  describe 'get_ip_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for verify_email_address
  # Deprecated. Use the EmailVerificationController methods for more accurate and reliable functionality. Verify the existence of an email address at a given mail server.
  # @param verify_email_address_options 
  # @param [Hash] opts the optional parameters
  # @return [EmailVerificationResult]
  describe 'verify_email_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
