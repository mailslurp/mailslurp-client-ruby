=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for MailSlurpClient::TrackingControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TrackingControllerApi' do
  before do
    # run before each test
    @api_instance = MailSlurpClient::TrackingControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TrackingControllerApi' do
    it 'should create an instance of TrackingControllerApi' do
      expect(@api_instance).to be_instance_of(MailSlurpClient::TrackingControllerApi)
    end
  end

  # unit tests for create_tracking_pixel
  # Create tracking pixel
  # Create a tracking pixel
  # @param create_tracking_pixel_options createTrackingPixelOptions
  # @param [Hash] opts the optional parameters
  # @return [TrackingPixelDto]
  describe 'create_tracking_pixel test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_tracking_pixels
  # Get tracking pixels
  # List tracking pixels in paginated form
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in list pagination
  # @option opts [Integer] :size Optional page size in list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageTrackingPixelProjection]
  describe 'get_all_tracking_pixels test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_tracking_pixel
  # Get pixel
  # @param id id
  # @param [Hash] opts the optional parameters
  # @return [TrackingPixelDto]
  describe 'get_tracking_pixel test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
