=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for MailSlurpClient::WaitForControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WaitForControllerApi' do
  before do
    # run before each test
    @api_instance = MailSlurpClient::WaitForControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WaitForControllerApi' do
    it 'should create an instance of WaitForControllerApi' do
      expect(@api_instance).to be_instance_of(MailSlurpClient::WaitForControllerApi)
    end
  end

  # unit tests for wait_for
  # Wait for an email to match the provided filter conditions such as subject contains keyword.
  # Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met
  # @param [Hash] opts the optional parameters
  # @option opts [WaitForConditions] :wait_for_conditions Conditions to apply to emails that you are waiting for
  # @return [Array<EmailPreview>]
  describe 'wait_for test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for wait_for_email_count
  # Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
  # If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :count Number of emails to wait for. Must be greater that 1
  # @option opts [Integer] :delay Max milliseconds delay between calls
  # @option opts [String] :inbox_id Id of the inbox we are fetching emails from
  # @option opts [DateTime] :since Filter for emails that were received after the given timestamp
  # @option opts [String] :sort Sort direction
  # @option opts [Integer] :timeout Max milliseconds to wait
  # @option opts [Boolean] :unread_only Optional filter for unread only
  # @return [Array<EmailPreview>]
  describe 'wait_for_email_count test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for wait_for_latest_email
  # Fetch inbox&#39;s latest email or if empty wait for an email to arrive
  # Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set &#x60;unreadOnly&#x3D;true&#x60; or see the other receive methods such as &#x60;waitForNthEmail&#x60; or &#x60;waitForEmailCount&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :delay Max milliseconds delay between calls
  # @option opts [String] :inbox_id Id of the inbox we are fetching emails from
  # @option opts [DateTime] :since Filter for emails that were received after the given timestamp
  # @option opts [String] :sort Sort direction
  # @option opts [Integer] :timeout Max milliseconds to wait
  # @option opts [Boolean] :unread_only Optional filter for unread only.
  # @return [Email]
  describe 'wait_for_latest_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for wait_for_matching_emails
  # Wait or return list of emails that match simple matching patterns
  # Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the &#x60;MatchOptions&#x60; object for options. An example payload is &#x60;{ matches: [{field: &#39;SUBJECT&#39;,should:&#39;CONTAIN&#39;,value:&#39;needle&#39;}] }&#x60;. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController &#x60;getEmailContentMatch&#x60; method.
  # @param match_options matchOptions
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :count Number of emails to wait for. Must be greater or equal to 1
  # @option opts [Integer] :delay Max milliseconds delay between calls
  # @option opts [String] :inbox_id Id of the inbox we are fetching emails from
  # @option opts [DateTime] :since Filter for emails that were received after the given timestamp
  # @option opts [String] :sort Sort direction
  # @option opts [Integer] :timeout Max milliseconds to wait
  # @option opts [Boolean] :unread_only Optional filter for unread only
  # @return [Array<EmailPreview>]
  describe 'wait_for_matching_emails test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for wait_for_matching_first_email
  # Wait for or return the first email that matches provided MatchOptions array
  # Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the &#x60;MatchOptions&#x60; object for options. An example payload is &#x60;{ matches: [{field: &#39;SUBJECT&#39;,should:&#39;CONTAIN&#39;,value:&#39;needle&#39;}] }&#x60;. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController &#x60;getEmailContentMatch&#x60; method.
  # @param match_options matchOptions
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :delay Max milliseconds delay between calls
  # @option opts [String] :inbox_id Id of the inbox we are matching an email for
  # @option opts [DateTime] :since Filter for emails that were received after the given timestamp
  # @option opts [String] :sort Sort direction
  # @option opts [Integer] :timeout Max milliseconds to wait
  # @option opts [Boolean] :unread_only Optional filter for unread only
  # @return [Email]
  describe 'wait_for_matching_first_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for wait_for_nth_email
  # Wait for or fetch the email with a given index in the inbox specified. If index doesn&#39;t exist waits for it to exist or timeout to occur.
  # If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :delay Max milliseconds delay between calls
  # @option opts [String] :inbox_id Id of the inbox you are fetching emails from
  # @option opts [Integer] :index Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index&#x3D;1
  # @option opts [DateTime] :since Filter for emails that were received after the given timestamp
  # @option opts [String] :sort Sort direction
  # @option opts [Integer] :timeout Max milliseconds to wait for the nth email if not already present
  # @option opts [Boolean] :unread_only Optional filter for unread only
  # @return [Email]
  describe 'wait_for_nth_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
