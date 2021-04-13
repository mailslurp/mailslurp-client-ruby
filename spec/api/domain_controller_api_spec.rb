=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for MailSlurpClient::DomainControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DomainControllerApi' do
  before do
    # run before each test
    @api_instance = MailSlurpClient::DomainControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DomainControllerApi' do
    it 'should create an instance of DomainControllerApi' do
      expect(@api_instance).to be_instance_of(MailSlurpClient::DomainControllerApi)
    end
  end

  # unit tests for add_domain_wildcard_catch_all
  # Add catch all wild card inbox to domain
  # Add a catch all inbox to a domain so that any emails sent to it that cannot be matched will be sent to the catch all inbox generated
  # @param id id
  # @param [Hash] opts the optional parameters
  # @return [DomainDto]
  describe 'add_domain_wildcard_catch_all test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_domain
  # Create Domain
  # Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider&#39;s DNS setup to verify the domain.
  # @param domain_options domainOptions
  # @param [Hash] opts the optional parameters
  # @return [DomainDto]
  describe 'create_domain test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_domain
  # Delete a domain
  # Delete a domain. This will disable any existing inboxes that use this domain.
  # @param id id
  # @param [Hash] opts the optional parameters
  # @return [Array<String>]
  describe 'delete_domain test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_domain
  # Get a domain
  # Returns domain verification status and tokens for a given domain
  # @param id id
  # @param [Hash] opts the optional parameters
  # @return [DomainDto]
  describe 'get_domain test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_domains
  # Get domains
  # List all custom domains you have created
  # @param [Hash] opts the optional parameters
  # @return [Array<DomainPreview>]
  describe 'get_domains test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_domain
  # Update a domain
  # Update values on a domain. Note you cannot change the domain name as it is immutable. Recreate the domain if you need to alter this.
  # @param id id
  # @param update_domain_dto updateDomainDto
  # @param [Hash] opts the optional parameters
  # @return [DomainDto]
  describe 'update_domain test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
