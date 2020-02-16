# mailslurp_client

MailSlurpClient - the Ruby gem for the MailSlurp API

MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more. 

## Overview

#### Inboxes 
Inboxes have real email addresses that can send and receive emails. You can create inboxes with specific email addresses (using custom domains). You can also use randomly assigned MailSlurp addresses as unique, disposable test addresses. 

See the InboxController or [inbox and email address guide](https://www.mailslurp.com/guides/) for more information.

#### Receive Emails
You can receive emails in a number of ways. You can fetch emails and attachments directly from an inbox. Or you can use `waitFor` endpoints to hold a connection open until an email is received that matches given criteria (such as subject or body content). You can also use webhooks to have emails from multiple inboxes forwarded to your server via HTTP POST.

InboxController methods with `waitFor` in the name have a long timeout period and instruct MailSlurp to wait until an expected email is received. You can set conditions on email counts, subject or body matches, and more.

Most receive methods only return an email ID and not the full email (to keep response sizes low). To fetch the full body or attachments for an email use the email's ID with EmailController endpoints.

See the InboxController or [receiving emails guide](https://www.mailslurp.com/guides/) for more information.

#### Send Emails
You can send templated HTML emails in several ways. You must first create an inbox to send an email. An inbox can have a specific address or a randomly assigned one. You can send emails from an inbox using `to`, `cc`, and `bcc` recipient lists or with contacts and contact groups. 

Emails can contain plain-text or HTML bodies. You can also use email templates that support [moustache](https://mustache.github.io/) template variables. You can send attachments by first posting files to the AttachmentController and then using the returned IDs in the `attachments` field of the send options.

See the InboxController or [sending emails guide](https://www.mailslurp.com/guides/) for more information.

## Templates
MailSlurp emails support templates. You can create templates in the dashboard or API that contain [moustache](https://mustache.github.io/) style variables: for instance `Hello {{name}}`. Then when sending emails you can pass a map of variables names and values to be used. Additionally, when sending emails with contact groups you can use properties of the contact in your templates like `{{firstName}}` and `{{lastName}}``.

## Explore






This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 6.5.2
- Package version: 7.0.5
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build mailslurp_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./mailslurp_client-7.0.5.gem
```

(for development, run `gem install --dev ./mailslurp_client-7.0.5.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'mailslurp_client', '~> 7.0.5'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'mailslurp_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'mailslurp_client'

# Setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::AttachmentControllerApi.new
upload_options = MailSlurpClient::UploadAttachmentOptions.new # UploadAttachmentOptions | uploadOptions

begin
  #Upload an attachment for sending
  result = api_instance.upload_attachment(upload_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AttachmentControllerApi->upload_attachment: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.mailslurp.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*MailSlurpClient::AttachmentControllerApi* | [**upload_attachment**](docs/AttachmentControllerApi.md#upload_attachment) | **POST** /attachments | Upload an attachment for sending
*MailSlurpClient::AttachmentControllerApi* | [**upload_multipart_form**](docs/AttachmentControllerApi.md#upload_multipart_form) | **POST** /attachments/multipart | Upload an attachment for sending using Multipart Form
*MailSlurpClient::BulkActionsControllerApi* | [**bulk_create_inboxes**](docs/BulkActionsControllerApi.md#bulk_create_inboxes) | **POST** /bulk/inboxes | Bulk create Inboxes (email addresses)
*MailSlurpClient::BulkActionsControllerApi* | [**bulk_delete_inboxes**](docs/BulkActionsControllerApi.md#bulk_delete_inboxes) | **DELETE** /bulk/inboxes | Bulk Delete Inboxes
*MailSlurpClient::BulkActionsControllerApi* | [**bulk_send_emails**](docs/BulkActionsControllerApi.md#bulk_send_emails) | **POST** /bulk/send | Bulk Send Emails
*MailSlurpClient::CommonActionsControllerApi* | [**create_new_email_address**](docs/CommonActionsControllerApi.md#create_new_email_address) | **POST** /newEmailAddress | Create new random inbox
*MailSlurpClient::CommonActionsControllerApi* | [**empty_inbox**](docs/CommonActionsControllerApi.md#empty_inbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
*MailSlurpClient::CommonActionsControllerApi* | [**send_email_simple**](docs/CommonActionsControllerApi.md#send_email_simple) | **POST** /sendEmail | Send an email from a random email address
*MailSlurpClient::CommonActionsControllerApi* | [**wait_for_email_count**](docs/CommonActionsControllerApi.md#wait_for_email_count) | **GET** /waitForEmailCount | Wait for and return count number of emails 
*MailSlurpClient::CommonActionsControllerApi* | [**wait_for_latest_email**](docs/CommonActionsControllerApi.md#wait_for_latest_email) | **GET** /waitForLatestEmail | Fetch inbox's latest email or if empty wait for email to arrive
*MailSlurpClient::CommonActionsControllerApi* | [**wait_for_matching_email**](docs/CommonActionsControllerApi.md#wait_for_matching_email) | **POST** /waitForMatchingEmails | Wait or return list of emails that match simple matching patterns
*MailSlurpClient::CommonActionsControllerApi* | [**wait_for_nth_email**](docs/CommonActionsControllerApi.md#wait_for_nth_email) | **GET** /waitForNthEmail | Wait for or fetch the email with a given index in the inbox specified
*MailSlurpClient::ContactControllerApi* | [**create_contact**](docs/ContactControllerApi.md#create_contact) | **POST** /contacts | Create a contact
*MailSlurpClient::ContactControllerApi* | [**delete_contact**](docs/ContactControllerApi.md#delete_contact) | **DELETE** /contacts/{contactId} | Delete contact
*MailSlurpClient::ContactControllerApi* | [**get_all_contacts**](docs/ContactControllerApi.md#get_all_contacts) | **GET** /contacts/paginated | Get all contacts
*MailSlurpClient::ContactControllerApi* | [**get_contact**](docs/ContactControllerApi.md#get_contact) | **GET** /contacts/{contactId} | Get contact
*MailSlurpClient::ContactControllerApi* | [**get_contacts**](docs/ContactControllerApi.md#get_contacts) | **GET** /contacts | Get all contacts
*MailSlurpClient::DomainControllerApi* | [**create_domain**](docs/DomainControllerApi.md#create_domain) | **POST** /domains | Create Domain
*MailSlurpClient::DomainControllerApi* | [**delete_domain**](docs/DomainControllerApi.md#delete_domain) | **DELETE** /domains/{id} | Delete a domain
*MailSlurpClient::DomainControllerApi* | [**get_domain**](docs/DomainControllerApi.md#get_domain) | **GET** /domains/{id} | Get a domain
*MailSlurpClient::DomainControllerApi* | [**get_domains**](docs/DomainControllerApi.md#get_domains) | **GET** /domains | Get domains
*MailSlurpClient::EmailControllerApi* | [**delete_all_emails**](docs/EmailControllerApi.md#delete_all_emails) | **DELETE** /emails | Delete all emails
*MailSlurpClient::EmailControllerApi* | [**delete_email**](docs/EmailControllerApi.md#delete_email) | **DELETE** /emails/{emailId} | Delete Email
*MailSlurpClient::EmailControllerApi* | [**download_attachment**](docs/EmailControllerApi.md#download_attachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment
*MailSlurpClient::EmailControllerApi* | [**forward_email**](docs/EmailControllerApi.md#forward_email) | **POST** /emails/{emailId}/forward | Forward Email
*MailSlurpClient::EmailControllerApi* | [**get_attachment_meta_data**](docs/EmailControllerApi.md#get_attachment_meta_data) | **GET** /emails/{emailId}/attachments/{attachmentId}/metadata | Get email attachment metadata
*MailSlurpClient::EmailControllerApi* | [**get_attachments**](docs/EmailControllerApi.md#get_attachments) | **GET** /emails/{emailId}/attachments | Get all email attachment metadata
*MailSlurpClient::EmailControllerApi* | [**get_email**](docs/EmailControllerApi.md#get_email) | **GET** /emails/{emailId} | Get Email Content
*MailSlurpClient::EmailControllerApi* | [**get_emails_paginated**](docs/EmailControllerApi.md#get_emails_paginated) | **GET** /emails | Get all emails
*MailSlurpClient::EmailControllerApi* | [**get_raw_email_contents**](docs/EmailControllerApi.md#get_raw_email_contents) | **GET** /emails/{emailId}/raw | Get Raw Email Content
*MailSlurpClient::EmailControllerApi* | [**validate_email**](docs/EmailControllerApi.md#validate_email) | **POST** /emails/{emailId}/validate | Validate email
*MailSlurpClient::GroupControllerApi* | [**add_contacts_to_group**](docs/GroupControllerApi.md#add_contacts_to_group) | **PUT** /groups/{groupId}/contacts | Add contacts to a group
*MailSlurpClient::GroupControllerApi* | [**create_group**](docs/GroupControllerApi.md#create_group) | **POST** /groups | Create a group
*MailSlurpClient::GroupControllerApi* | [**delete_group**](docs/GroupControllerApi.md#delete_group) | **DELETE** /groups/{groupId} | Delete group
*MailSlurpClient::GroupControllerApi* | [**get_all_groups**](docs/GroupControllerApi.md#get_all_groups) | **GET** /groups/paginated | Get all Contact Groups in paginated format
*MailSlurpClient::GroupControllerApi* | [**get_group**](docs/GroupControllerApi.md#get_group) | **GET** /groups/{groupId} | Get group
*MailSlurpClient::GroupControllerApi* | [**get_group_with_contacts**](docs/GroupControllerApi.md#get_group_with_contacts) | **GET** /groups/{groupId}/contacts | Get group and contacts belonging to it
*MailSlurpClient::GroupControllerApi* | [**get_groups**](docs/GroupControllerApi.md#get_groups) | **GET** /groups | Get all groups
*MailSlurpClient::GroupControllerApi* | [**remove_contacts_from_group**](docs/GroupControllerApi.md#remove_contacts_from_group) | **DELETE** /groups/{groupId}/contacts | Remove contacts from a group
*MailSlurpClient::InboxControllerApi* | [**create_inbox**](docs/InboxControllerApi.md#create_inbox) | **POST** /inboxes | Create an Inbox (email address)
*MailSlurpClient::InboxControllerApi* | [**delete_all_inboxes**](docs/InboxControllerApi.md#delete_all_inboxes) | **DELETE** /inboxes | Delete all inboxes
*MailSlurpClient::InboxControllerApi* | [**delete_inbox**](docs/InboxControllerApi.md#delete_inbox) | **DELETE** /inboxes/{inboxId} | Delete Inbox / Email Address
*MailSlurpClient::InboxControllerApi* | [**get_all_inboxes**](docs/InboxControllerApi.md#get_all_inboxes) | **GET** /inboxes/paginated | List Inboxes Paginated
*MailSlurpClient::InboxControllerApi* | [**get_emails**](docs/InboxControllerApi.md#get_emails) | **GET** /inboxes/{inboxId}/emails | Get emails in an Inbox
*MailSlurpClient::InboxControllerApi* | [**get_inbox**](docs/InboxControllerApi.md#get_inbox) | **GET** /inboxes/{inboxId} | Get Inbox / EmailAddress
*MailSlurpClient::InboxControllerApi* | [**get_inbox_emails_paginated**](docs/InboxControllerApi.md#get_inbox_emails_paginated) | **GET** /inboxes/{inboxId}/emails/paginated | Get inbox emails paginated
*MailSlurpClient::InboxControllerApi* | [**get_inboxes**](docs/InboxControllerApi.md#get_inboxes) | **GET** /inboxes | List Inboxes / Email Addresses
*MailSlurpClient::InboxControllerApi* | [**send_email**](docs/InboxControllerApi.md#send_email) | **POST** /inboxes/{inboxId} | Send Email
*MailSlurpClient::InboxControllerApi* | [**set_inbox_favourited**](docs/InboxControllerApi.md#set_inbox_favourited) | **PUT** /inboxes/{inboxId}/favourite | Set inbox favourited state
*MailSlurpClient::TemplateControllerApi* | [**create_template**](docs/TemplateControllerApi.md#create_template) | **POST** /templates | Create a Template
*MailSlurpClient::TemplateControllerApi* | [**delete_template**](docs/TemplateControllerApi.md#delete_template) | **DELETE** /templates/{TemplateId} | Delete Template
*MailSlurpClient::TemplateControllerApi* | [**get_all_templates**](docs/TemplateControllerApi.md#get_all_templates) | **GET** /templates/paginated | Get all Templates in paginated format
*MailSlurpClient::TemplateControllerApi* | [**get_template**](docs/TemplateControllerApi.md#get_template) | **GET** /templates/{TemplateId} | Get Template
*MailSlurpClient::TemplateControllerApi* | [**get_templates**](docs/TemplateControllerApi.md#get_templates) | **GET** /templates | Get all Templates
*MailSlurpClient::WebhookControllerApi* | [**create_webhook**](docs/WebhookControllerApi.md#create_webhook) | **POST** /inboxes/{inboxId}/webhooks | Attach a WebHook URL to an inbox
*MailSlurpClient::WebhookControllerApi* | [**delete_webhook**](docs/WebhookControllerApi.md#delete_webhook) | **DELETE** /inboxes/{inboxId}/webhooks/{webhookId} | Delete and disable a Webhook for an Inbox
*MailSlurpClient::WebhookControllerApi* | [**get_all_webhooks**](docs/WebhookControllerApi.md#get_all_webhooks) | **GET** /webhooks/paginated | List Webhooks Paginated
*MailSlurpClient::WebhookControllerApi* | [**get_webhook**](docs/WebhookControllerApi.md#get_webhook) | **GET** /webhooks/{webhookId} | Get a webhook for an Inbox
*MailSlurpClient::WebhookControllerApi* | [**get_webhooks**](docs/WebhookControllerApi.md#get_webhooks) | **GET** /inboxes/{inboxId}/webhooks | Get all Webhooks for an Inbox
*MailSlurpClient::WebhookControllerApi* | [**send_test_data**](docs/WebhookControllerApi.md#send_test_data) | **POST** /webhooks/{webhookId}/test | Send webhook test data


## Documentation for Models

 - [MailSlurpClient::AttachmentMetaData](docs/AttachmentMetaData.md)
 - [MailSlurpClient::BasicAuthOptions](docs/BasicAuthOptions.md)
 - [MailSlurpClient::BulkSendEmailOptions](docs/BulkSendEmailOptions.md)
 - [MailSlurpClient::ContactDto](docs/ContactDto.md)
 - [MailSlurpClient::ContactProjection](docs/ContactProjection.md)
 - [MailSlurpClient::CreateContactOptions](docs/CreateContactOptions.md)
 - [MailSlurpClient::CreateDomainOptions](docs/CreateDomainOptions.md)
 - [MailSlurpClient::CreateGroupOptions](docs/CreateGroupOptions.md)
 - [MailSlurpClient::CreateTemplateOptions](docs/CreateTemplateOptions.md)
 - [MailSlurpClient::CreateWebhookOptions](docs/CreateWebhookOptions.md)
 - [MailSlurpClient::DomainDto](docs/DomainDto.md)
 - [MailSlurpClient::DomainPreview](docs/DomainPreview.md)
 - [MailSlurpClient::Email](docs/Email.md)
 - [MailSlurpClient::EmailAnalysis](docs/EmailAnalysis.md)
 - [MailSlurpClient::EmailPreview](docs/EmailPreview.md)
 - [MailSlurpClient::EmailProjection](docs/EmailProjection.md)
 - [MailSlurpClient::ForwardEmailOptions](docs/ForwardEmailOptions.md)
 - [MailSlurpClient::GroupContactsDto](docs/GroupContactsDto.md)
 - [MailSlurpClient::GroupDto](docs/GroupDto.md)
 - [MailSlurpClient::GroupProjection](docs/GroupProjection.md)
 - [MailSlurpClient::HTMLValidationResult](docs/HTMLValidationResult.md)
 - [MailSlurpClient::Inbox](docs/Inbox.md)
 - [MailSlurpClient::InboxProjection](docs/InboxProjection.md)
 - [MailSlurpClient::JsonNode](docs/JsonNode.md)
 - [MailSlurpClient::MatchOption](docs/MatchOption.md)
 - [MailSlurpClient::MatchOptions](docs/MatchOptions.md)
 - [MailSlurpClient::PageContactProjection](docs/PageContactProjection.md)
 - [MailSlurpClient::PageEmailPreview](docs/PageEmailPreview.md)
 - [MailSlurpClient::PageEmailProjection](docs/PageEmailProjection.md)
 - [MailSlurpClient::PageGroupProjection](docs/PageGroupProjection.md)
 - [MailSlurpClient::PageInboxProjection](docs/PageInboxProjection.md)
 - [MailSlurpClient::PageTemplateProjection](docs/PageTemplateProjection.md)
 - [MailSlurpClient::PageWebhookProjection](docs/PageWebhookProjection.md)
 - [MailSlurpClient::Pageable](docs/Pageable.md)
 - [MailSlurpClient::SendEmailOptions](docs/SendEmailOptions.md)
 - [MailSlurpClient::SetInboxFavouritedOptions](docs/SetInboxFavouritedOptions.md)
 - [MailSlurpClient::Sort](docs/Sort.md)
 - [MailSlurpClient::TemplateDto](docs/TemplateDto.md)
 - [MailSlurpClient::TemplateProjection](docs/TemplateProjection.md)
 - [MailSlurpClient::TemplateVariable](docs/TemplateVariable.md)
 - [MailSlurpClient::UpdateGroupContacts](docs/UpdateGroupContacts.md)
 - [MailSlurpClient::UploadAttachmentOptions](docs/UploadAttachmentOptions.md)
 - [MailSlurpClient::ValidationDto](docs/ValidationDto.md)
 - [MailSlurpClient::ValidationMessage](docs/ValidationMessage.md)
 - [MailSlurpClient::WebhookDto](docs/WebhookDto.md)
 - [MailSlurpClient::WebhookProjection](docs/WebhookProjection.md)
 - [MailSlurpClient::WebhookTestRequest](docs/WebhookTestRequest.md)
 - [MailSlurpClient::WebhookTestResponse](docs/WebhookTestResponse.md)
 - [MailSlurpClient::WebhookTestResult](docs/WebhookTestResult.md)


## Documentation for Authorization


### API_KEY


- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header
