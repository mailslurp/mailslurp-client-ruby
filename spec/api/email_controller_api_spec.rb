=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 

The version of the OpenAPI document: d1659dc1567a5b62f65d0612107a50aace03e085

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for MailSlurpClient::EmailControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EmailControllerApi' do
  before do
    # run before each test
    @api_instance = MailSlurpClient::EmailControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmailControllerApi' do
    it 'should create an instance of EmailControllerApi' do
      expect(@api_instance).to be_instance_of(MailSlurpClient::EmailControllerApi)
    end
  end

  # unit tests for delete_all_emails
  # Delete all emails
  # Deletes all emails in your account. Be careful as emails cannot be recovered
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_all_emails test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_email
  # Delete an email
  # Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.
  # @param email_id emailId
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for download_attachment
  # Get email attachment bytes
  # Returns the specified attachment for a given email as a byte stream (file download). You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
  # @param attachment_id attachmentId
  # @param email_id emailId
  # @param [Hash] opts the optional parameters
  # @option opts [String] :api_key Can pass apiKey in url for this request if you wish to download the file in a browser
  # @return [String]
  describe 'download_attachment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for forward_email
  # Forward email
  # Forward an existing email to new recipients.
  # @param email_id emailId
  # @param forward_email_options forwardEmailOptions
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'forward_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_attachment_meta_data
  # Get email attachment metadata
  # Returns the metadata such as name and content-type for a given attachment and email.
  # @param attachment_id attachmentId
  # @param email_id emailId
  # @param [Hash] opts the optional parameters
  # @return [AttachmentMetaData]
  describe 'get_attachment_meta_data test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_attachments
  # Get all email attachment metadata
  # Returns an array of attachment metadata such as name and content-type for a given email if present.
  # @param email_id emailId
  # @param [Hash] opts the optional parameters
  # @return [Array<AttachmentMetaData>]
  describe 'get_attachments test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_email
  # Get email content
  # Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints
  # @param email_id emailId
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :decode Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance &#x60;&#x3D;D7&#x60;). This can be a pain for testing
  # @return [Email]
  describe 'get_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_email_html
  # Get email content as HTML
  # Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: &#x60;?apiKey&#x3D;xxx&#x60;
  # @param email_id emailId
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :decode decode
  # @return [String]
  describe 'get_email_html test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_emails_paginated
  # Get all emails
  # By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :inbox_id Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
  # @option opts [Integer] :page Optional page index in email list pagination
  # @option opts [Integer] :size Optional page size in email list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [Boolean] :unread_only Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
  # @return [PageEmailProjection]
  describe 'get_emails_paginated test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_raw_email_contents
  # Get raw email string
  # Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint
  # @param email_id emailId
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'get_raw_email_contents test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_raw_email_json
  # Get raw email in JSON
  # Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response
  # @param email_id emailId
  # @param [Hash] opts the optional parameters
  # @return [RawEmailJson]
  describe 'get_raw_email_json test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_unread_email_count
  # Get unread email count
  # Get number of emails unread
  # @param [Hash] opts the optional parameters
  # @return [UnreadCount]
  describe 'get_unread_email_count test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for validate_email
  # Validate email
  # Validate the HTML content of email if HTML is found. Considered valid if no HTML.
  # @param email_id emailId
  # @param [Hash] opts the optional parameters
  # @return [ValidationDto]
  describe 'validate_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
