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

# Unit tests for MailSlurpClient::ToolsControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ToolsControllerApi' do
  before do
    # run before each test
    @api_instance = MailSlurpClient::ToolsControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ToolsControllerApi' do
    it 'should create an instance of ToolsControllerApi' do
      expect(@api_instance).to be_instance_of(MailSlurpClient::ToolsControllerApi)
    end
  end

  # unit tests for check_email_features_client_support
  # Check email client support for email HTML and CSS features
  # @param check_email_features_client_support_options 
  # @param [Hash] opts the optional parameters
  # @return [CheckEmailFeaturesClientSupportResults]
  describe 'check_email_features_client_support test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_new_fake_email_address
  # Create a new email address using the fake email domains
  # @param [Hash] opts the optional parameters
  # @return [NewFakeEmailAddressResult]
  describe 'create_new_fake_email_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_new_fake_email_address
  # Delete a fake email address using the fake email domains
  # Delete a fake email address using the fake email domains
  # @param email_address 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_new_fake_email_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_bimi_record
  # Create a BIMI record policy
  # @param generate_bimi_record_options 
  # @param [Hash] opts the optional parameters
  # @return [GenerateBimiRecordResults]
  describe 'generate_bimi_record test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_dmarc_record
  # Create a DMARC record policy
  # @param generate_dmarc_record_options 
  # @param [Hash] opts the optional parameters
  # @return [GenerateDmarcRecordResults]
  describe 'generate_dmarc_record test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_mta_sts_record
  # Create a TLS reporting record policy
  # @param generate_mta_sts_record_options 
  # @param [Hash] opts the optional parameters
  # @return [GenerateMtaStsRecordResults]
  describe 'generate_mta_sts_record test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_tls_reporting_record
  # Create a TLS reporting record policy
  # @param generate_tls_reporting_record_options 
  # @param [Hash] opts the optional parameters
  # @return [GenerateTlsReportingRecordResults]
  describe 'generate_tls_reporting_record test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fake_email_by_email_address
  # @param email_address 
  # @param [Hash] opts the optional parameters
  # @return [FakeEmailResult]
  describe 'get_fake_email_by_email_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fake_email_by_id
  # Get a fake email by its ID
  # Get a fake email by its ID
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [FakeEmailResult]
  describe 'get_fake_email_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fake_email_raw
  # Get raw fake email content
  # Retrieve the raw content of a fake email by its ID
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'get_fake_email_raw test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_fake_emails_for_address
  # Get fake emails for an address
  # Get fake emails for an address
  # @param email_address 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @return [Array<FakeEmailPreview>]
  describe 'get_fake_emails_for_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for lookup_bimi_domain
  # Lookup a BIMI record policy
  # @param lookup_bimi_domain_options 
  # @param [Hash] opts the optional parameters
  # @return [LookupBimiDomainResults]
  describe 'lookup_bimi_domain test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for lookup_dmarc_domain
  # Lookup a DMARC record policy
  # @param lookup_dmarc_domain_options 
  # @param [Hash] opts the optional parameters
  # @return [LookupDmarcDomainResults]
  describe 'lookup_dmarc_domain test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for lookup_mta_sts_domain
  # Lookup a MTA-STS domain policy
  # @param lookup_mta_sts_domain_options 
  # @param [Hash] opts the optional parameters
  # @return [LookupMtaStsDomainResults]
  describe 'lookup_mta_sts_domain test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for lookup_tls_reporting_domain
  # Lookup a TLS reporting domain policy
  # @param lookup_tls_reporting_domain_options 
  # @param [Hash] opts the optional parameters
  # @return [LookupTlsReportingDomainResults]
  describe 'lookup_tls_reporting_domain test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
