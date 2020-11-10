# mailslurp_client

MailSlurpClient - the Ruby gem for the MailSlurp API

MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more. 

## Resources
- [Homepage](https://www.mailslurp.com)
- Get an [API KEY](https://app.mailslurp.com/sign-up/)
- Generated [SDK Clients](https://www.mailslurp.com/docs/)
- [Examples](https://github.com/mailslurp/examples) repository


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 6.5.2
- Package version: 8.0.5
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build mailslurp_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./mailslurp_client-8.0.5.gem
```

(for development, run `gem install --dev ./mailslurp_client-8.0.5.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'mailslurp_client', '~> 8.0.5'

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

api_instance = MailSlurpClient::AliasControllerApi.new
create_owned_alias_options = MailSlurpClient::CreateOwnedAliasOptions.new # CreateOwnedAliasOptions | createOwnedAliasOptions

begin
  #Create an email alias
  api_instance.create_alias(create_owned_alias_options)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AliasControllerApi->create_alias: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.mailslurp.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*MailSlurpClient::AliasControllerApi* | [**create_alias**](docs/AliasControllerApi.md#create_alias) | **POST** /aliases | Create an email alias
*MailSlurpClient::AliasControllerApi* | [**create_anonymous_alias**](docs/AliasControllerApi.md#create_anonymous_alias) | **POST** /aliases/anonymous | Create an anonymous email alias
*MailSlurpClient::AliasControllerApi* | [**delete_alias**](docs/AliasControllerApi.md#delete_alias) | **DELETE** /aliases/{aliasId} | Delete an owned alias
*MailSlurpClient::AliasControllerApi* | [**get_alias**](docs/AliasControllerApi.md#get_alias) | **GET** /aliases/{aliasId} | Get an email alias
*MailSlurpClient::AliasControllerApi* | [**get_aliases**](docs/AliasControllerApi.md#get_aliases) | **GET** /aliases | Get all email aliases
*MailSlurpClient::AliasControllerApi* | [**update_alias**](docs/AliasControllerApi.md#update_alias) | **PUT** /aliases/{aliasId} | Update an owned alias
*MailSlurpClient::AttachmentControllerApi* | [**upload_attachment**](docs/AttachmentControllerApi.md#upload_attachment) | **POST** /attachments | Upload an attachment for sending
*MailSlurpClient::AttachmentControllerApi* | [**upload_multipart_form**](docs/AttachmentControllerApi.md#upload_multipart_form) | **POST** /attachments/multipart | Upload an attachment for sending using Multipart Form
*MailSlurpClient::BulkActionsControllerApi* | [**bulk_create_inboxes**](docs/BulkActionsControllerApi.md#bulk_create_inboxes) | **POST** /bulk/inboxes | Bulk create Inboxes (email addresses)
*MailSlurpClient::BulkActionsControllerApi* | [**bulk_delete_inboxes**](docs/BulkActionsControllerApi.md#bulk_delete_inboxes) | **DELETE** /bulk/inboxes | Bulk Delete Inboxes
*MailSlurpClient::BulkActionsControllerApi* | [**bulk_send_emails**](docs/BulkActionsControllerApi.md#bulk_send_emails) | **POST** /bulk/send | Bulk Send Emails
*MailSlurpClient::CommonActionsControllerApi* | [**create_new_email_address**](docs/CommonActionsControllerApi.md#create_new_email_address) | **POST** /createInbox | Create new random inbox
*MailSlurpClient::CommonActionsControllerApi* | [**create_new_email_address1**](docs/CommonActionsControllerApi.md#create_new_email_address1) | **POST** /newEmailAddress | Create new random inbox
*MailSlurpClient::CommonActionsControllerApi* | [**empty_inbox**](docs/CommonActionsControllerApi.md#empty_inbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
*MailSlurpClient::CommonActionsControllerApi* | [**send_email_simple**](docs/CommonActionsControllerApi.md#send_email_simple) | **POST** /sendEmail | Send an email
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
*MailSlurpClient::EmailControllerApi* | [**delete_email**](docs/EmailControllerApi.md#delete_email) | **DELETE** /emails/{emailId} | Delete an email
*MailSlurpClient::EmailControllerApi* | [**download_attachment**](docs/EmailControllerApi.md#download_attachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment bytes
*MailSlurpClient::EmailControllerApi* | [**forward_email**](docs/EmailControllerApi.md#forward_email) | **POST** /emails/{emailId}/forward | Forward email
*MailSlurpClient::EmailControllerApi* | [**get_attachment_meta_data**](docs/EmailControllerApi.md#get_attachment_meta_data) | **GET** /emails/{emailId}/attachments/{attachmentId}/metadata | Get email attachment metadata
*MailSlurpClient::EmailControllerApi* | [**get_attachments**](docs/EmailControllerApi.md#get_attachments) | **GET** /emails/{emailId}/attachments | Get all email attachment metadata
*MailSlurpClient::EmailControllerApi* | [**get_email**](docs/EmailControllerApi.md#get_email) | **GET** /emails/{emailId} | Get email content
*MailSlurpClient::EmailControllerApi* | [**get_email_html**](docs/EmailControllerApi.md#get_email_html) | **GET** /emails/{emailId}/html | Get email content as HTML
*MailSlurpClient::EmailControllerApi* | [**get_emails_paginated**](docs/EmailControllerApi.md#get_emails_paginated) | **GET** /emails | Get all emails
*MailSlurpClient::EmailControllerApi* | [**get_raw_email_contents**](docs/EmailControllerApi.md#get_raw_email_contents) | **GET** /emails/{emailId}/raw | Get raw email string
*MailSlurpClient::EmailControllerApi* | [**get_raw_email_json**](docs/EmailControllerApi.md#get_raw_email_json) | **GET** /emails/{emailId}/raw/json | Get raw email in JSON
*MailSlurpClient::EmailControllerApi* | [**get_unread_email_count**](docs/EmailControllerApi.md#get_unread_email_count) | **GET** /emails/unreadCount | Get unread email count
*MailSlurpClient::EmailControllerApi* | [**validate_email**](docs/EmailControllerApi.md#validate_email) | **POST** /emails/{emailId}/validate | Validate email
*MailSlurpClient::FormControllerApi* | [**submit_form**](docs/FormControllerApi.md#submit_form) | **POST** /forms | Submit a form to be parsed and sent as an email to an address determined by the form fields
*MailSlurpClient::GroupControllerApi* | [**add_contacts_to_group**](docs/GroupControllerApi.md#add_contacts_to_group) | **PUT** /groups/{groupId}/contacts | Add contacts to a group
*MailSlurpClient::GroupControllerApi* | [**create_group**](docs/GroupControllerApi.md#create_group) | **POST** /groups | Create a group
*MailSlurpClient::GroupControllerApi* | [**delete_group**](docs/GroupControllerApi.md#delete_group) | **DELETE** /groups/{groupId} | Delete group
*MailSlurpClient::GroupControllerApi* | [**get_all_groups**](docs/GroupControllerApi.md#get_all_groups) | **GET** /groups/paginated | Get all Contact Groups in paginated format
*MailSlurpClient::GroupControllerApi* | [**get_group**](docs/GroupControllerApi.md#get_group) | **GET** /groups/{groupId} | Get group
*MailSlurpClient::GroupControllerApi* | [**get_group_with_contacts**](docs/GroupControllerApi.md#get_group_with_contacts) | **GET** /groups/{groupId}/contacts | Get group and contacts belonging to it
*MailSlurpClient::GroupControllerApi* | [**get_group_with_contacts_paginated**](docs/GroupControllerApi.md#get_group_with_contacts_paginated) | **GET** /groups/{groupId}/contacts-paginated | Get group and paginated contacts belonging to it
*MailSlurpClient::GroupControllerApi* | [**get_groups**](docs/GroupControllerApi.md#get_groups) | **GET** /groups | Get all groups
*MailSlurpClient::GroupControllerApi* | [**remove_contacts_from_group**](docs/GroupControllerApi.md#remove_contacts_from_group) | **DELETE** /groups/{groupId}/contacts | Remove contacts from a group
*MailSlurpClient::InboxControllerApi* | [**create_inbox**](docs/InboxControllerApi.md#create_inbox) | **POST** /inboxes | Create an Inbox (email address)
*MailSlurpClient::InboxControllerApi* | [**delete_all_inboxes**](docs/InboxControllerApi.md#delete_all_inboxes) | **DELETE** /inboxes | Delete all inboxes
*MailSlurpClient::InboxControllerApi* | [**delete_inbox**](docs/InboxControllerApi.md#delete_inbox) | **DELETE** /inboxes/{inboxId} | Delete inbox
*MailSlurpClient::InboxControllerApi* | [**get_all_inboxes**](docs/InboxControllerApi.md#get_all_inboxes) | **GET** /inboxes/paginated | List Inboxes Paginated
*MailSlurpClient::InboxControllerApi* | [**get_emails**](docs/InboxControllerApi.md#get_emails) | **GET** /inboxes/{inboxId}/emails | Get emails in an Inbox
*MailSlurpClient::InboxControllerApi* | [**get_inbox**](docs/InboxControllerApi.md#get_inbox) | **GET** /inboxes/{inboxId} | Get Inbox
*MailSlurpClient::InboxControllerApi* | [**get_inbox_emails_paginated**](docs/InboxControllerApi.md#get_inbox_emails_paginated) | **GET** /inboxes/{inboxId}/emails/paginated | Get inbox emails paginated
*MailSlurpClient::InboxControllerApi* | [**get_inbox_sent_emails**](docs/InboxControllerApi.md#get_inbox_sent_emails) | **GET** /inboxes/{inboxId}/sent | Get Inbox Sent Emails
*MailSlurpClient::InboxControllerApi* | [**get_inbox_tags**](docs/InboxControllerApi.md#get_inbox_tags) | **GET** /inboxes/tags | Get inbox tags
*MailSlurpClient::InboxControllerApi* | [**get_inboxes**](docs/InboxControllerApi.md#get_inboxes) | **GET** /inboxes | List Inboxes / Email Addresses
*MailSlurpClient::InboxControllerApi* | [**send_email**](docs/InboxControllerApi.md#send_email) | **POST** /inboxes/{inboxId} | Send Email
*MailSlurpClient::InboxControllerApi* | [**set_inbox_favourited**](docs/InboxControllerApi.md#set_inbox_favourited) | **PUT** /inboxes/{inboxId}/favourite | Set inbox favourited state
*MailSlurpClient::InboxControllerApi* | [**update_inbox**](docs/InboxControllerApi.md#update_inbox) | **PATCH** /inboxes/{inboxId} | Update Inbox
*MailSlurpClient::MailServerControllerApi* | [**describe_mail_server_domain**](docs/MailServerControllerApi.md#describe_mail_server_domain) | **POST** /mail-server/describe/domain | Get DNS Mail Server records for a domain
*MailSlurpClient::MailServerControllerApi* | [**verify_email_address**](docs/MailServerControllerApi.md#verify_email_address) | **POST** /mail-server/verify/email-address | Verify the existence of an email address at a given mail server.
*MailSlurpClient::SentEmailsControllerApi* | [**get_sent_email**](docs/SentEmailsControllerApi.md#get_sent_email) | **GET** /sent/{id} | Get sent email receipt
*MailSlurpClient::SentEmailsControllerApi* | [**get_sent_emails**](docs/SentEmailsControllerApi.md#get_sent_emails) | **GET** /sent | Get all sent emails in paginated form
*MailSlurpClient::TemplateControllerApi* | [**create_template**](docs/TemplateControllerApi.md#create_template) | **POST** /templates | Create a Template
*MailSlurpClient::TemplateControllerApi* | [**delete_template**](docs/TemplateControllerApi.md#delete_template) | **DELETE** /templates/{TemplateId} | Delete Template
*MailSlurpClient::TemplateControllerApi* | [**get_all_templates**](docs/TemplateControllerApi.md#get_all_templates) | **GET** /templates/paginated | Get all Templates in paginated format
*MailSlurpClient::TemplateControllerApi* | [**get_template**](docs/TemplateControllerApi.md#get_template) | **GET** /templates/{TemplateId} | Get Template
*MailSlurpClient::TemplateControllerApi* | [**get_templates**](docs/TemplateControllerApi.md#get_templates) | **GET** /templates | Get all Templates
*MailSlurpClient::WaitForControllerApi* | [**wait_for**](docs/WaitForControllerApi.md#wait_for) | **POST** /waitFor | Wait for conditions to be met
*MailSlurpClient::WaitForControllerApi* | [**wait_for_email_count**](docs/WaitForControllerApi.md#wait_for_email_count) | **GET** /waitForEmailCount | Wait for and return count number of emails 
*MailSlurpClient::WaitForControllerApi* | [**wait_for_latest_email**](docs/WaitForControllerApi.md#wait_for_latest_email) | **GET** /waitForLatestEmail | Fetch inbox's latest email or if empty wait for an email to arrive
*MailSlurpClient::WaitForControllerApi* | [**wait_for_matching_email**](docs/WaitForControllerApi.md#wait_for_matching_email) | **POST** /waitForMatchingEmails | Wait or return list of emails that match simple matching patterns
*MailSlurpClient::WaitForControllerApi* | [**wait_for_nth_email**](docs/WaitForControllerApi.md#wait_for_nth_email) | **GET** /waitForNthEmail | Wait for or fetch the email with a given index in the inbox specified
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
 - [MailSlurpClient::CreateAnonymousAliasOptions](docs/CreateAnonymousAliasOptions.md)
 - [MailSlurpClient::CreateContactOptions](docs/CreateContactOptions.md)
 - [MailSlurpClient::CreateDomainOptions](docs/CreateDomainOptions.md)
 - [MailSlurpClient::CreateGroupOptions](docs/CreateGroupOptions.md)
 - [MailSlurpClient::CreateOwnedAliasOptions](docs/CreateOwnedAliasOptions.md)
 - [MailSlurpClient::CreateTemplateOptions](docs/CreateTemplateOptions.md)
 - [MailSlurpClient::CreateWebhookOptions](docs/CreateWebhookOptions.md)
 - [MailSlurpClient::DescribeDomainOptions](docs/DescribeDomainOptions.md)
 - [MailSlurpClient::DescribeMailServerDomainResult](docs/DescribeMailServerDomainResult.md)
 - [MailSlurpClient::DomainDto](docs/DomainDto.md)
 - [MailSlurpClient::DomainPreview](docs/DomainPreview.md)
 - [MailSlurpClient::Email](docs/Email.md)
 - [MailSlurpClient::EmailAnalysis](docs/EmailAnalysis.md)
 - [MailSlurpClient::EmailPreview](docs/EmailPreview.md)
 - [MailSlurpClient::EmailProjection](docs/EmailProjection.md)
 - [MailSlurpClient::EmailVerificationResult](docs/EmailVerificationResult.md)
 - [MailSlurpClient::ForwardEmailOptions](docs/ForwardEmailOptions.md)
 - [MailSlurpClient::GroupContactsDto](docs/GroupContactsDto.md)
 - [MailSlurpClient::GroupDto](docs/GroupDto.md)
 - [MailSlurpClient::GroupProjection](docs/GroupProjection.md)
 - [MailSlurpClient::HTMLValidationResult](docs/HTMLValidationResult.md)
 - [MailSlurpClient::Inbox](docs/Inbox.md)
 - [MailSlurpClient::InboxProjection](docs/InboxProjection.md)
 - [MailSlurpClient::MatchOption](docs/MatchOption.md)
 - [MailSlurpClient::MatchOptions](docs/MatchOptions.md)
 - [MailSlurpClient::ModelAlias](docs/ModelAlias.md)
 - [MailSlurpClient::NameServerRecord](docs/NameServerRecord.md)
 - [MailSlurpClient::PageAlias](docs/PageAlias.md)
 - [MailSlurpClient::PageContactProjection](docs/PageContactProjection.md)
 - [MailSlurpClient::PageEmailPreview](docs/PageEmailPreview.md)
 - [MailSlurpClient::PageEmailProjection](docs/PageEmailProjection.md)
 - [MailSlurpClient::PageGroupProjection](docs/PageGroupProjection.md)
 - [MailSlurpClient::PageInboxProjection](docs/PageInboxProjection.md)
 - [MailSlurpClient::PageSentEmailProjection](docs/PageSentEmailProjection.md)
 - [MailSlurpClient::PageTemplateProjection](docs/PageTemplateProjection.md)
 - [MailSlurpClient::PageWebhookProjection](docs/PageWebhookProjection.md)
 - [MailSlurpClient::Pageable](docs/Pageable.md)
 - [MailSlurpClient::RawEmailJson](docs/RawEmailJson.md)
 - [MailSlurpClient::SendEmailOptions](docs/SendEmailOptions.md)
 - [MailSlurpClient::SentEmailDto](docs/SentEmailDto.md)
 - [MailSlurpClient::SentEmailProjection](docs/SentEmailProjection.md)
 - [MailSlurpClient::SetInboxFavouritedOptions](docs/SetInboxFavouritedOptions.md)
 - [MailSlurpClient::SimpleSendEmailOptions](docs/SimpleSendEmailOptions.md)
 - [MailSlurpClient::Sort](docs/Sort.md)
 - [MailSlurpClient::TemplateDto](docs/TemplateDto.md)
 - [MailSlurpClient::TemplateProjection](docs/TemplateProjection.md)
 - [MailSlurpClient::TemplateVariable](docs/TemplateVariable.md)
 - [MailSlurpClient::UnreadCount](docs/UnreadCount.md)
 - [MailSlurpClient::UpdateGroupContacts](docs/UpdateGroupContacts.md)
 - [MailSlurpClient::UpdateInboxOptions](docs/UpdateInboxOptions.md)
 - [MailSlurpClient::UploadAttachmentOptions](docs/UploadAttachmentOptions.md)
 - [MailSlurpClient::ValidationDto](docs/ValidationDto.md)
 - [MailSlurpClient::ValidationMessage](docs/ValidationMessage.md)
 - [MailSlurpClient::VerifyEmailAddressOptions](docs/VerifyEmailAddressOptions.md)
 - [MailSlurpClient::WaitForConditions](docs/WaitForConditions.md)
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

