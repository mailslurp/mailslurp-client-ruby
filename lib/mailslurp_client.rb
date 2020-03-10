=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository  ## Basic Concepts  ### Inboxes  Inboxes have real email addresses that can send and receive emails. You can create inboxes with specific email addresses (using custom domains). You can also use randomly assigned MailSlurp addresses as unique, disposable test addresses.   Inboxes can be permanent or temporary depending on your account plan and the options passed. Whenever an email is sent to an inbox's email address MailSlurp recieves the email and stores in under the matching inbox. For test suites we recommend creating a new empty inbox for each test run. Inbox usage limits are calculated by the number of inboxes created in the last 30 days (not the amount currently active on your account.)  See the InboxController or [inbox and email address guide](https://www.mailslurp.com/guides/) for more information.  ### Receive Emails You can receive emails using MailSlurp inboxes in a number of ways. Due to the asynchronous nature of email we recommend reading about the different methods and finding one that is right for your application.  #### Directly fetching existing emails If you know that an email has already been received by an inbox you can fetch it using the getEmail endpoints in the EmailController. You can fetch emails and attachments directly from an inbox. Emails are parsed and returned in an enriched DTO form. If you want to parse the raw email message you can use the getRawEmail endpoints.  Direct fetches are good for responding to emails that are known to exist. If you need to wait for emails to arrive or dynamically react to email events see the next sections.  #### Receiving emails with WaitFor methods The second (and most common) way to receive emails with MailSlurp is with WaitForController methods such as like waitForLatestEmail, waitForNthEmail, waitForEmailCount.   These endpoints are designed to be called when you expect a message to either already be in an inbox or arrive within a timeout. These methods are perfect for testing email functionality as emails have unpredictable arrival times. When you call these endpoints the email you expect may have already arrived - therefore the WaitFor methods behave as follow:  - If matching emails are found in an inbox they are returned immediately - Else MailSlurp retries the search until matching emails are found or a timeout is reached  > WaitFor methods hold a connection open if the criteria are not immediately met. Your application or tests should set an http timeout that permits this.  Most methods only return an email ID and not the full email (to keep response sizes low). To fetch the full body or attachments for an email use the email's ID with EmailController endpoints.  See the WaitForController or [receiving emails guide](https://www.mailslurp.com/guides/) for more information.  #### Receiving emails with Webhooks MailSlurp inboxes also support webhooks. You can create Webhooks with the WebhookController. Webhooks have a URL that can be used to forward emails to a server or endpoint in your application.   Whenever an inbox receives an email MailSlurp will send an [EmailReceivedEvent](https://api.mailslurp.com/schemas/webhook-payload) to any attached Webhook URLs using HTTP POST. Webhooks are great for high throughput applications that need to process inbound emails in a scalable way without fetching or waiting for emails.  ### Send Emails You can send templated HTML emails in several ways. You must first create an inbox to send an email. An inbox can have a specific address or a randomly assigned one. You can send emails from an inbox using `to`, `cc`, and `bcc` recipient lists or with contacts and contact groups.   Emails can contain plain-text or HTML bodies. You can also use email templates that support [moustache](https://mustache.github.io/) template variables. You can send attachments by first posting files to the AttachmentController and then using the returned IDs in the `attachments` field of the send options.  See the InboxController or [sending emails guide](https://www.mailslurp.com/guides/) for more information.  ### Templates MailSlurp emails support templates. You can create templates in the dashboard or API that contain [moustache](https://mustache.github.io/) style variables: for instance `Hello {{name}}`. Then when sending emails you can pass a map of variables names and values to be used. Additionally, when sending emails with contact groups you can use properties of the contact in your templates like `{{firstName}}` and `{{lastName}}`.  > You can do a lot more with MailSlurp so see the included documentation for more information.  

OpenAPI spec version: 65c995de8ac6fae16e070de00599137ce502b20c

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

# Common files
require 'mailslurp_client/api_client'
require 'mailslurp_client/api_error'
require 'mailslurp_client/version'
require 'mailslurp_client/configuration'

# Models
require 'mailslurp_client/models/attachment_meta_data'
require 'mailslurp_client/models/basic_auth_options'
require 'mailslurp_client/models/bulk_send_email_options'
require 'mailslurp_client/models/contact_dto'
require 'mailslurp_client/models/contact_projection'
require 'mailslurp_client/models/create_contact_options'
require 'mailslurp_client/models/create_domain_options'
require 'mailslurp_client/models/create_group_options'
require 'mailslurp_client/models/create_template_options'
require 'mailslurp_client/models/create_webhook_options'
require 'mailslurp_client/models/domain_dto'
require 'mailslurp_client/models/domain_preview'
require 'mailslurp_client/models/email'
require 'mailslurp_client/models/email_analysis'
require 'mailslurp_client/models/email_preview'
require 'mailslurp_client/models/email_projection'
require 'mailslurp_client/models/forward_email_options'
require 'mailslurp_client/models/group_contacts_dto'
require 'mailslurp_client/models/group_dto'
require 'mailslurp_client/models/group_projection'
require 'mailslurp_client/models/html_validation_result'
require 'mailslurp_client/models/inbox'
require 'mailslurp_client/models/inbox_projection'
require 'mailslurp_client/models/json_node'
require 'mailslurp_client/models/match_option'
require 'mailslurp_client/models/match_options'
require 'mailslurp_client/models/page_contact_projection'
require 'mailslurp_client/models/page_email_preview'
require 'mailslurp_client/models/page_email_projection'
require 'mailslurp_client/models/page_group_projection'
require 'mailslurp_client/models/page_inbox_projection'
require 'mailslurp_client/models/page_template_projection'
require 'mailslurp_client/models/page_webhook_projection'
require 'mailslurp_client/models/pageable'
require 'mailslurp_client/models/raw_email_json'
require 'mailslurp_client/models/send_email_options'
require 'mailslurp_client/models/set_inbox_favourited_options'
require 'mailslurp_client/models/sort'
require 'mailslurp_client/models/template_dto'
require 'mailslurp_client/models/template_projection'
require 'mailslurp_client/models/template_variable'
require 'mailslurp_client/models/update_group_contacts'
require 'mailslurp_client/models/update_inbox_options'
require 'mailslurp_client/models/upload_attachment_options'
require 'mailslurp_client/models/validation_dto'
require 'mailslurp_client/models/validation_message'
require 'mailslurp_client/models/webhook_dto'
require 'mailslurp_client/models/webhook_projection'
require 'mailslurp_client/models/webhook_test_request'
require 'mailslurp_client/models/webhook_test_response'
require 'mailslurp_client/models/webhook_test_result'

# APIs
require 'mailslurp_client/api/attachment_controller_api'
require 'mailslurp_client/api/bulk_actions_controller_api'
require 'mailslurp_client/api/common_actions_controller_api'
require 'mailslurp_client/api/contact_controller_api'
require 'mailslurp_client/api/domain_controller_api'
require 'mailslurp_client/api/email_controller_api'
require 'mailslurp_client/api/group_controller_api'
require 'mailslurp_client/api/inbox_controller_api'
require 'mailslurp_client/api/template_controller_api'
require 'mailslurp_client/api/wait_for_controller_api'
require 'mailslurp_client/api/webhook_controller_api'

module MailSlurpClient
  class << self
    # Customize default settings for the SDK using block.
    #   MailSlurpClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
