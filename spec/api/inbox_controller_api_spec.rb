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

# Unit tests for MailSlurpClient::InboxControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InboxControllerApi' do
  before do
    # run before each test
    @api_instance = MailSlurpClient::InboxControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InboxControllerApi' do
    it 'should create an instance of InboxControllerApi' do
      expect(@api_instance).to be_instance_of(MailSlurpClient::InboxControllerApi)
    end
  end

  # unit tests for cancel_scheduled_job
  # Cancel a scheduled email job
  # Get a scheduled email job and cancel it. Will fail if status of job is already cancelled, failed, or complete.
  # @param job_id 
  # @param [Hash] opts the optional parameters
  # @return [ScheduledJobDto]
  describe 'cancel_scheduled_job test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_inbox
  # Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either &#x60;SMTP&#x60; or &#x60;HTTP&#x60; inboxes.
  # Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :email_address A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as &#x60;123@mailslurp.com&#x60;. If you use the &#x60;useDomainPool&#x60; option when the email address is null it will generate an email address with a more varied domain ending such as &#x60;123@mailslurp.info&#x60; or &#x60;123@mailslurp.biz&#x60;. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so &#x60;SMTP&#x60; inboxes will only work with &#x60;SMTP&#x60; type domains. Avoid &#x60;SMTP&#x60; inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
  # @option opts [Array<String>] :tags Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  # @option opts [String] :name Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails.
  # @option opts [String] :description Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
  # @option opts [Boolean] :use_domain_pool Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default &#x60;@mailslurp.com&#x60; email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in &#x60;@mailslurp.{world,info,xyz,...}&#x60; . This means a TLD is randomly selecting from a list of &#x60;.biz&#x60;, &#x60;.info&#x60;, &#x60;.xyz&#x60; etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of &#x60;@mailslurp.com&#x60; or custom email address provided by the emailAddress field. Note this feature is only available for &#x60;HTTP&#x60; inbox types.
  # @option opts [Boolean] :favourite Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering
  # @option opts [DateTime] :expires_at Optional inbox expiration date. If null then this inbox is permanent and the emails in it won&#39;t be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX.
  # @option opts [Integer] :expires_in Number of milliseconds that inbox should exist for
  # @option opts [Boolean] :allow_team_access DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization.
  # @option opts [String] :inbox_type HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at &#x60;mxslurp.click&#x60;.
  # @option opts [Boolean] :virtual_inbox Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending.
  # @option opts [Boolean] :use_short_address Use a shorter email address under 31 characters
  # @option opts [String] :domain_id ID of custom domain to use for email address.
  # @option opts [String] :domain_name FQDN domain name for the domain you have verified. Will be appended with a randomly assigned recipient name. Use the &#x60;emailAddress&#x60; option instead to specify the full custom inbox.
  # @option opts [String] :prefix Prefix to add before the email address for easier labelling or identification.
  # @return [InboxDto]
  describe 'create_inbox test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_inbox_ruleset
  # Create an inbox ruleset
  # Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
  # @param inbox_id inboxId
  # @param create_inbox_ruleset_options 
  # @param [Hash] opts the optional parameters
  # @return [InboxRulesetDto]
  describe 'create_inbox_ruleset test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_inbox_with_defaults
  # Create an inbox with default options. Uses MailSlurp domain pool address and is private.
  # @param [Hash] opts the optional parameters
  # @return [InboxDto]
  describe 'create_inbox_with_defaults test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_inbox_with_options
  # Create an inbox with options. Extended options for inbox creation.
  # Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.
  # @param create_inbox_dto 
  # @param [Hash] opts the optional parameters
  # @return [InboxDto]
  describe 'create_inbox_with_options test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_all_inbox_emails
  # Delete all emails in a given inboxes.
  # Deletes all emails in an inbox. Be careful as emails cannot be recovered
  # @param inbox_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_all_inbox_emails test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_all_inboxes
  # Delete all inboxes
  # Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_all_inboxes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_all_inboxes_by_description
  # Delete inboxes by description
  # Permanently delete all inboxes by description
  # @param description 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_all_inboxes_by_description test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_all_inboxes_by_name
  # Delete inboxes by name
  # Permanently delete all inboxes by name
  # @param name 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_all_inboxes_by_name test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_all_inboxes_by_tag
  # Delete inboxes by tag
  # Permanently delete all inboxes by tag
  # @param tag 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_all_inboxes_by_tag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_inbox
  # Delete inbox
  # Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.
  # @param inbox_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_inbox test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for does_inbox_exist
  # Does inbox exist
  # Check if inboxes exist by email address. Useful if you are sending emails to mailslurp addresses
  # @param email_address Email address
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :allow_catch_all 
  # @return [InboxExistsDto]
  describe 'does_inbox_exist test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for flush_expired
  # Remove expired inboxes
  # Remove any expired inboxes for your account (instead of waiting for scheduled removal on server)
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :before Optional expired at before flag to flush expired inboxes that have expired before the given time
  # @return [FlushExpiredInboxesResult]
  describe 'flush_expired test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_inboxes
  # List All Inboxes Paginated
  # List inboxes in paginated form. The results are available on the &#x60;content&#x60; property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative &#x60;getInboxes&#x60; method returns a full list of inboxes but is limited to 100 results.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in list pagination
  # @option opts [Integer] :size Optional page size in list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [Boolean] :favourite Optionally filter results for favourites only
  # @option opts [String] :search Optionally filter by search words partial matching ID, tags, name, and email address
  # @option opts [String] :tag Optionally filter by tags. Will return inboxes that include given tags
  # @option opts [Boolean] :team_access DEPRECATED. Optionally filter by team access.
  # @option opts [DateTime] :since Optional filter by created after given date time
  # @option opts [DateTime] :before Optional filter by created before given date time
  # @option opts [String] :inbox_type Optional filter by inbox type
  # @option opts [String] :inbox_function Optional filter by inbox function
  # @option opts [String] :domain_id Optional domain ID filter
  # @return [PageInboxProjection]
  describe 'get_all_inboxes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_inboxes_offset_paginated
  # List All Inboxes Offset Paginated
  # List inboxes in paginated form. The results are available on the &#x60;content&#x60; property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative &#x60;getInboxes&#x60; method returns a full list of inboxes but is limited to 100 results.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in list pagination
  # @option opts [Integer] :size Optional page size in list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [Boolean] :favourite Optionally filter results for favourites only
  # @option opts [String] :search Optionally filter by search words partial matching ID, tags, name, and email address
  # @option opts [String] :tag Optionally filter by tags. Will return inboxes that include given tags
  # @option opts [Boolean] :team_access DEPRECATED. Optionally filter by team access.
  # @option opts [DateTime] :since Optional filter by created after given date time
  # @option opts [DateTime] :before Optional filter by created before given date time
  # @option opts [String] :inbox_type Optional filter by inbox type
  # @option opts [String] :inbox_function Optional filter by inbox function
  # @option opts [String] :domain_id Optional domain ID filter
  # @return [PageInboxProjection]
  describe 'get_all_inboxes_offset_paginated test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_scheduled_jobs
  # Get all scheduled email sending jobs for account
  # Schedule sending of emails using scheduled jobs. These can be inbox or account level.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in scheduled job list pagination
  # @option opts [Integer] :size Optional page size in scheduled job list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [DateTime] :since Filter by created at after the given timestamp
  # @option opts [DateTime] :before Filter by created at before the given timestamp
  # @return [PageScheduledJobs]
  describe 'get_all_scheduled_jobs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_delivery_statuses_by_inbox_id
  # Get all email delivery statuses for an inbox
  # @param inbox_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in delivery status list pagination
  # @option opts [Integer] :size Optional page size in delivery status list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [DateTime] :since Filter by created at after the given timestamp
  # @option opts [DateTime] :before Filter by created at before the given timestamp
  # @return [PageDeliveryStatus]
  describe 'get_delivery_statuses_by_inbox_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_emails
  # Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
  # List emails that an inbox has received. Only emails that are sent to the inbox&#39;s email address will appear in the inbox. It may take several seconds for any email you send to an inbox&#39;s email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the &#x60;minCount&#x60; parameter. The server will retry the inbox database until the &#x60;minCount&#x60; is satisfied or the &#x60;retryTimeout&#x60; is reached
  # @param inbox_id Id of inbox that emails belongs to
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size Alias for limit. Assessed first before assessing any passed limit.
  # @option opts [Integer] :limit Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller
  # @option opts [String] :sort Sort the results by received date and direction ASC or DESC
  # @option opts [Integer] :retry_timeout Maximum milliseconds to spend retrying inbox database until minCount emails are returned
  # @option opts [Integer] :delay_timeout 
  # @option opts [Integer] :min_count Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
  # @option opts [Boolean] :unread_only 
  # @option opts [DateTime] :before Exclude emails received after this ISO 8601 date time
  # @option opts [DateTime] :since Exclude emails received before this ISO 8601 date time
  # @return [Array<EmailPreview>]
  describe 'get_emails test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_imap_access
  # Get IMAP access usernames and passwords
  # @param [Hash] opts the optional parameters
  # @option opts [String] :inbox_id Inbox ID
  # @return [ImapAccessDetails]
  describe 'get_imap_access test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_imap_smtp_access
  # Get IMAP and SMTP access usernames and passwords
  # @param [Hash] opts the optional parameters
  # @option opts [String] :inbox_id Inbox ID
  # @return [ImapSmtpAccessDetails]
  describe 'get_imap_smtp_access test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_imap_smtp_access_env
  # Get IMAP and SMTP access details in .env format
  # @param [Hash] opts the optional parameters
  # @option opts [String] :inbox_id Inbox ID
  # @return [String]
  describe 'get_imap_smtp_access_env test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_imap_smtp_access_servers
  # Get IMAP and SMTP server hosts
  # @param [Hash] opts the optional parameters
  # @return [ImapSmtpAccessServers]
  describe 'get_imap_smtp_access_servers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_inbox
  # Get Inbox. Returns properties of an inbox.
  # Returns an inbox&#39;s properties, including its email address and ID.
  # @param inbox_id 
  # @param [Hash] opts the optional parameters
  # @return [InboxDto]
  describe 'get_inbox test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_inbox_by_email_address
  # Search for an inbox with the provided email address
  # Get a inbox result by email address
  # @param email_address 
  # @param [Hash] opts the optional parameters
  # @return [InboxByEmailAddressResult]
  describe 'get_inbox_by_email_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_inbox_by_name
  # Search for an inbox with the given name
  # Get a inbox result by name
  # @param name 
  # @param [Hash] opts the optional parameters
  # @return [InboxByNameResult]
  describe 'get_inbox_by_name test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_inbox_count
  # Get total inbox count
  # @param [Hash] opts the optional parameters
  # @return [CountDto]
  describe 'get_inbox_count test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_inbox_email_count
  # Get email count in inbox
  # @param inbox_id Id of inbox that emails belongs to
  # @param [Hash] opts the optional parameters
  # @return [CountDto]
  describe 'get_inbox_email_count test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_inbox_emails_paginated
  # Get inbox emails paginated
  # Get a paginated list of emails in an inbox. Does not hold connections open.
  # @param inbox_id Id of inbox that emails belongs to
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in inbox emails list pagination
  # @option opts [Integer] :size Optional page size in inbox emails list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [DateTime] :since Optional filter by received after given date time
  # @option opts [DateTime] :before Optional filter by received before given date time
  # @return [PageEmailPreview]
  describe 'get_inbox_emails_paginated test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_inbox_ids
  # Get all inbox IDs
  # Get list of inbox IDs
  # @param [Hash] opts the optional parameters
  # @return [InboxIdsResult]
  describe 'get_inbox_ids test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_inbox_sent_emails
  # Get Inbox Sent Emails
  # Returns an inbox&#39;s sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.
  # @param inbox_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in inbox sent email list pagination
  # @option opts [Integer] :size Optional page size in inbox sent email list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [String] :search_filter Optional sent email search
  # @option opts [DateTime] :since Optional filter by sent after given date time
  # @option opts [DateTime] :before Optional filter by sent before given date time
  # @return [PageSentEmailProjection]
  describe 'get_inbox_sent_emails test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_inbox_tags
  # Get inbox tags
  # Get all inbox tags
  # @param [Hash] opts the optional parameters
  # @return [Array<String>]
  describe 'get_inbox_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_inboxes
  # List Inboxes and email addresses
  # List the inboxes you have created. Note use of the more advanced &#x60;getAllInboxes&#x60; is recommended and allows paginated access using a limit and sort parameter.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated &#x60;getAllEmails&#x60; for larger queries.
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [DateTime] :since Optional filter by created after given date time
  # @option opts [Boolean] :exclude_catch_all_inboxes Optional exclude catch all inboxes
  # @option opts [DateTime] :before Optional filter by created before given date time
  # @return [Array<InboxDto>]
  describe 'get_inboxes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_latest_email_in_inbox
  # Get latest email in an inbox. Use &#x60;WaitForController&#x60; to get emails that may not have arrived yet.
  # Get the newest email in an inbox or wait for one to arrive
  # @param inbox_id ID of the inbox you want to get the latest email from
  # @param timeout_millis Timeout milliseconds to wait for latest email
  # @param [Hash] opts the optional parameters
  # @return [Email]
  describe 'get_latest_email_in_inbox test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_organization_inboxes
  # List Organization Inboxes Paginated
  # List organization inboxes in paginated form. These are inboxes created with &#x60;allowTeamAccess&#x60; flag enabled. Organization inboxes are &#x60;readOnly&#x60; for non-admin users. The results are available on the &#x60;content&#x60; property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in list pagination
  # @option opts [Integer] :size Optional page size in list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [String] :search_filter Optional search filter
  # @option opts [DateTime] :since Optional filter by created after given date time
  # @option opts [DateTime] :before Optional filter by created before given date time
  # @return [PageOrganizationInboxProjection]
  describe 'get_organization_inboxes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_scheduled_job
  # Get a scheduled email job
  # Get a scheduled email job details.
  # @param job_id 
  # @param [Hash] opts the optional parameters
  # @return [ScheduledJobDto]
  describe 'get_scheduled_job test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_scheduled_jobs_by_inbox_id
  # Get all scheduled email sending jobs for the inbox
  # Schedule sending of emails using scheduled jobs.
  # @param inbox_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in scheduled job list pagination
  # @option opts [Integer] :size Optional page size in scheduled job list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [DateTime] :since Filter by created at after the given timestamp
  # @option opts [DateTime] :before Filter by created at before the given timestamp
  # @return [PageScheduledJobs]
  describe 'get_scheduled_jobs_by_inbox_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_smtp_access
  # Get SMTP access usernames and passwords
  # @param [Hash] opts the optional parameters
  # @option opts [String] :inbox_id Inbox ID
  # @return [SmtpAccessDetails]
  describe 'get_smtp_access test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_inbox_rulesets
  # List inbox rulesets
  # List all rulesets attached to an inbox
  # @param inbox_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in inbox ruleset list pagination
  # @option opts [Integer] :size Optional page size in inbox ruleset list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [String] :search_filter Optional search filter
  # @option opts [DateTime] :since Optional filter by created after given date time
  # @option opts [DateTime] :before Optional filter by created before given date time
  # @return [PageInboxRulesetDto]
  describe 'list_inbox_rulesets test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_inbox_tracking_pixels
  # List inbox tracking pixels
  # List all tracking pixels sent from an inbox
  # @param inbox_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Optional page index in inbox tracking pixel list pagination
  # @option opts [Integer] :size Optional page size in inbox tracking pixel list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [String] :search_filter Optional search filter
  # @option opts [DateTime] :since Optional filter by created after given date time
  # @option opts [DateTime] :before Optional filter by created before given date time
  # @return [PageTrackingPixelProjection]
  describe 'list_inbox_tracking_pixels test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_inboxes
  # Search all inboxes and return matching inboxes
  # Search inboxes and return in paginated form. The results are available on the &#x60;content&#x60; property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative &#x60;getInboxes&#x60; method returns a full list of inboxes but is limited to 100 results.
  # @param search_inboxes_options 
  # @param [Hash] opts the optional parameters
  # @return [PageInboxProjection]
  describe 'search_inboxes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_email
  # Send Email
  # Send an email from an inbox&#39;s email address.  The request body should contain the &#x60;SendEmailOptions&#x60; that include recipients, attachments, body etc. See &#x60;SendEmailOptions&#x60; for all available properties. Note the &#x60;inboxId&#x60; refers to the inbox&#39;s id not the inbox&#39;s email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method &#x60;sendEmailAndConfirm&#x60;.
  # @param inbox_id ID of the inbox you want to send the email from
  # @param send_email_options 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'send_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_email_and_confirm
  # Send email and return sent confirmation
  # Sister method for standard &#x60;sendEmail&#x60; method with the benefit of returning a &#x60;SentEmail&#x60; entity confirming the successful sending of the email with a link to the sent object created for it.
  # @param inbox_id ID of the inbox you want to send the email from
  # @param send_email_options 
  # @param [Hash] opts the optional parameters
  # @return [SentEmailDto]
  describe 'send_email_and_confirm test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_email_with_queue
  # Send email with queue
  # Send an email using a queue. Will place the email onto a queue that will then be processed and sent. Use this queue method to enable any failed email sending to be recovered. This will prevent lost emails when sending if your account encounters a block or payment issue.
  # @param inbox_id ID of the inbox you want to send the email from
  # @param validate_before_enqueue Validate before adding to queue
  # @param send_email_options 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'send_email_with_queue test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_smtp_envelope
  # Send email using an SMTP mail envelope and message body and return sent confirmation
  # Send email using an SMTP envelope containing RCPT TO, MAIL FROM, and a SMTP BODY.
  # @param inbox_id ID of the inbox you want to send the email from
  # @param send_smtp_envelope_options 
  # @param [Hash] opts the optional parameters
  # @return [SentEmailDto]
  describe 'send_smtp_envelope test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_test_email
  # Send a test email to inbox
  # Send an inbox a test email to test email receiving is working
  # @param inbox_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'send_test_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_with_schedule
  # Send email with with delay or schedule
  # Send an email using a delay. Will place the email onto a scheduler that will then be processed and sent. Use delays to schedule email sending.
  # @param inbox_id ID of the inbox you want to send the email from
  # @param send_email_options 
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :send_at_timestamp Sending timestamp
  # @option opts [Integer] :send_at_now_plus_seconds Send after n seconds
  # @option opts [Boolean] :validate_before_enqueue Validate before adding to queue
  # @return [ScheduledJobDto]
  describe 'send_with_schedule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_inbox_favourited
  # Set inbox favourited state
  # Set and return new favourite state for an inbox
  # @param inbox_id ID of inbox to set favourite state
  # @param set_inbox_favourited_options 
  # @param [Hash] opts the optional parameters
  # @return [InboxDto]
  describe 'set_inbox_favourited test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_imap_access
  # Update IMAP access usernames and passwords
  # @param update_imap_access_options 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :inbox_id Inbox ID
  # @return [nil]
  describe 'update_imap_access test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_inbox
  # Update Inbox. Change name and description. Email address is not editable.
  # Update editable fields on an inbox
  # @param inbox_id 
  # @param update_inbox_options 
  # @param [Hash] opts the optional parameters
  # @return [InboxDto]
  describe 'update_inbox test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_smtp_access
  # Update SMTP access usernames and passwords
  # @param update_smtp_access_options 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :inbox_id Inbox ID
  # @return [nil]
  describe 'update_smtp_access test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
