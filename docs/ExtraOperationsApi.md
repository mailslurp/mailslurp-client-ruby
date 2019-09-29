# MailSlurpClient::ExtraOperationsApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_create_inboxes**](ExtraOperationsApi.md#bulk_create_inboxes) | **POST** /bulk/inboxes | Bulk create Inboxes (email addresses)
[**bulk_delete_inboxes**](ExtraOperationsApi.md#bulk_delete_inboxes) | **DELETE** /bulk/inboxes | Bulk Delete Inboxes
[**bulk_send_emails**](ExtraOperationsApi.md#bulk_send_emails) | **POST** /bulk/send | Bulk Send Emails
[**create_domain**](ExtraOperationsApi.md#create_domain) | **POST** /domains | Create Domain
[**create_inbox**](ExtraOperationsApi.md#create_inbox) | **POST** /inboxes | Create an Inbox (email address)
[**create_webhook**](ExtraOperationsApi.md#create_webhook) | **POST** /inboxes/{inboxId}/webhooks | Attach a WebHook URL to an inbox
[**delete_domain**](ExtraOperationsApi.md#delete_domain) | **DELETE** /domains/{id} | Delete a domain
[**delete_email1**](ExtraOperationsApi.md#delete_email1) | **DELETE** /emails/{emailId} | Delete Email
[**delete_inbox**](ExtraOperationsApi.md#delete_inbox) | **DELETE** /inboxes/{inboxId} | Delete Inbox / Email Address
[**delete_webhook**](ExtraOperationsApi.md#delete_webhook) | **DELETE** /inboxes/{inboxId}/webhooks/{webhookId} | Delete and disable a WebHook for an Inbox
[**download_attachment**](ExtraOperationsApi.md#download_attachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment
[**forward_email**](ExtraOperationsApi.md#forward_email) | **POST** /emails/{emailId}/forward | Forward Email
[**get_domain**](ExtraOperationsApi.md#get_domain) | **GET** /domains/{id} | Get a domain
[**get_domains**](ExtraOperationsApi.md#get_domains) | **GET** /domains | Get domains
[**get_email**](ExtraOperationsApi.md#get_email) | **GET** /emails/{emailId} | Get Email Content
[**get_emails**](ExtraOperationsApi.md#get_emails) | **GET** /inboxes/{inboxId}/emails | List Emails in an Inbox / EmailAddress
[**get_emails_paginated**](ExtraOperationsApi.md#get_emails_paginated) | **GET** /emails | Get all emails
[**get_inbox**](ExtraOperationsApi.md#get_inbox) | **GET** /inboxes/{inboxId} | Get Inbox / EmailAddress
[**get_inboxes**](ExtraOperationsApi.md#get_inboxes) | **GET** /inboxes | List Inboxes / Email Addresses
[**get_raw_email_contents**](ExtraOperationsApi.md#get_raw_email_contents) | **GET** /emails/{emailId}/raw | Get Raw Email Content
[**get_webhooks**](ExtraOperationsApi.md#get_webhooks) | **GET** /inboxes/{inboxId}/webhooks | Get all WebHooks for an Inbox
[**send_email**](ExtraOperationsApi.md#send_email) | **POST** /inboxes/{inboxId} | Send Email
[**upload_attachment**](ExtraOperationsApi.md#upload_attachment) | **POST** /attachments | Upload an attachment for sending
[**upload_multipart_form**](ExtraOperationsApi.md#upload_multipart_form) | **POST** /attachments/multipart | Upload an attachment for sending using Multipart Form


# **bulk_create_inboxes**
> Array&lt;Inbox&gt; bulk_create_inboxes(count)

Bulk create Inboxes (email addresses)

Enterprise Plan Required

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
count = 56 # Integer | Number of inboxes to be created in bulk

begin
  #Bulk create Inboxes (email addresses)
  result = api_instance.bulk_create_inboxes(count)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->bulk_create_inboxes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **Integer**| Number of inboxes to be created in bulk | 

### Return type

[**Array&lt;Inbox&gt;**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **bulk_delete_inboxes**
> bulk_delete_inboxes(request_body)

Bulk Delete Inboxes

Enterprise Plan Required

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
request_body = nil # Array<String> | ids

begin
  #Bulk Delete Inboxes
  api_instance.bulk_delete_inboxes(request_body)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->bulk_delete_inboxes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**Array&lt;String&gt;**](Array.md)| ids | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **bulk_send_emails**
> bulk_send_emails(bulk_send_email_options)

Bulk Send Emails

Enterprise Plan Required

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
bulk_send_email_options = MailSlurpClient::BulkSendEmailOptions.new # BulkSendEmailOptions | bulkSendEmailOptions

begin
  #Bulk Send Emails
  api_instance.bulk_send_emails(bulk_send_email_options)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->bulk_send_emails: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulk_send_email_options** | [**BulkSendEmailOptions**](BulkSendEmailOptions.md)| bulkSendEmailOptions | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **create_domain**
> DomainPlusVerificationRecordsAndStatus create_domain(create_domain_options)

Create Domain

Link a domain that you own with MailSlurp so you can create inboxes with it. Returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
create_domain_options = MailSlurpClient::CreateDomainOptions.new # CreateDomainOptions | domainOptions

begin
  #Create Domain
  result = api_instance.create_domain(create_domain_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->create_domain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_domain_options** | [**CreateDomainOptions**](CreateDomainOptions.md)| domainOptions | 

### Return type

[**DomainPlusVerificationRecordsAndStatus**](DomainPlusVerificationRecordsAndStatus.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_inbox**
> Inbox create_inbox(opts)

Create an Inbox (email address)

Create a new inbox and with a ranmdomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
opts = {
  email_address: 'email_address_example' # String | Optional email address including domain you wish inbox to use (eg: test123@mydomain.com). Only supports domains that you have registered and verified with MailSlurp using dashboard or `createDomain` method.
}

begin
  #Create an Inbox (email address)
  result = api_instance.create_inbox(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->create_inbox: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **String**| Optional email address including domain you wish inbox to use (eg: test123@mydomain.com). Only supports domains that you have registered and verified with MailSlurp using dashboard or &#x60;createDomain&#x60; method. | [optional] 

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_webhook**
> Webhook create_webhook(inbox_id, create_webhook_options)

Attach a WebHook URL to an inbox

Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
inbox_id = 'inbox_id_example' # String | inboxId
create_webhook_options = MailSlurpClient::CreateWebhookOptions.new # CreateWebhookOptions | webhookOptions

begin
  #Attach a WebHook URL to an inbox
  result = api_instance.create_webhook(inbox_id, create_webhook_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->create_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| inboxId | 
 **create_webhook_options** | [**CreateWebhookOptions**](CreateWebhookOptions.md)| webhookOptions | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_domain**
> delete_domain(id)

Delete a domain

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
id = 'id_example' # String | id

begin
  #Delete a domain
  api_instance.delete_domain(id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->delete_domain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| id | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_email1**
> delete_email1(email_id)

Delete Email

Deletes an email and removes it from the inbox

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
email_id = 'email_id_example' # String | emailId

begin
  #Delete Email
  api_instance.delete_email1(email_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->delete_email1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**](.md)| emailId | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_inbox**
> delete_inbox(inbox_id)

Delete Inbox / Email Address

Permanently delete an inbox and associated email address

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
inbox_id = 'inbox_id_example' # String | inboxId

begin
  #Delete Inbox / Email Address
  api_instance.delete_inbox(inbox_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->delete_inbox: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| inboxId | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **delete_webhook**
> delete_webhook(inbox_id, webhook_id)

Delete and disable a WebHook for an Inbox

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
inbox_id = 'inbox_id_example' # String | inboxId
webhook_id = 'webhook_id_example' # String | webhookId

begin
  #Delete and disable a WebHook for an Inbox
  api_instance.delete_webhook(inbox_id, webhook_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->delete_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| inboxId | 
 **webhook_id** | [**String**](.md)| webhookId | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **download_attachment**
> download_attachment(attachment_id, email_id, opts)

Get email attachment

Returns the specified attachment for a given email as a byte stream (file download). Get the attachmentId from the email response. Requires enterprise account.

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
attachment_id = 'attachment_id_example' # String | attachmentId
email_id = 'email_id_example' # String | emailId
opts = {
  api_key: 'api_key_example' # String | Can pass apiKey in url for this request if you wish to download the file in a browser
}

begin
  #Get email attachment
  api_instance.download_attachment(attachment_id, email_id, opts)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->download_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **String**| attachmentId | 
 **email_id** | [**String**](.md)| emailId | 
 **api_key** | **String**| Can pass apiKey in url for this request if you wish to download the file in a browser | [optional] 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **forward_email**
> forward_email(email_id, forward_email_options)

Forward Email

Forward email content to given recipients

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
email_id = 'email_id_example' # String | emailId
forward_email_options = MailSlurpClient::ForwardEmailOptions.new # ForwardEmailOptions | forwardEmailOptions

begin
  #Forward Email
  api_instance.forward_email(email_id, forward_email_options)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->forward_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**](.md)| emailId | 
 **forward_email_options** | [**ForwardEmailOptions**](ForwardEmailOptions.md)| forwardEmailOptions | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **get_domain**
> DomainPlusVerificationRecordsAndStatus get_domain(id)

Get a domain

Returns domain verification status and tokens

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
id = 'id_example' # String | id

begin
  #Get a domain
  result = api_instance.get_domain(id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->get_domain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| id | 

### Return type

[**DomainPlusVerificationRecordsAndStatus**](DomainPlusVerificationRecordsAndStatus.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_domains**
> Array&lt;DomainPreview&gt; get_domains

Get domains

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new

begin
  #Get domains
  result = api_instance.get_domains
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->get_domains: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;DomainPreview&gt;**](DomainPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_email**
> Email get_email(email_id)

Get Email Content

Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawMessage endpoint

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
email_id = 'email_id_example' # String | emailId

begin
  #Get Email Content
  result = api_instance.get_email(email_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->get_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**](.md)| emailId | 

### Return type

[**Email**](Email.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_emails**
> Array&lt;EmailPreview&gt; get_emails(inbox_id, opts)

List Emails in an Inbox / EmailAddress

List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
inbox_id = 'inbox_id_example' # String | Id of inbox that emails belongs to
opts = {
  limit: 56, # Integer | Limit the result set, ordered by descending received date time
  min_count: 56, # Integer | Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
  retry_timeout: 56, # Integer | Maximum milliseconds to spend retrying inbox database until minCount emails are returned
  since: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Exclude emails received before this ISO 8601 date time
}

begin
  #List Emails in an Inbox / EmailAddress
  result = api_instance.get_emails(inbox_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->get_emails: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| Id of inbox that emails belongs to | 
 **limit** | **Integer**| Limit the result set, ordered by descending received date time | [optional] 
 **min_count** | **Integer**| Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. | [optional] 
 **retry_timeout** | **Integer**| Maximum milliseconds to spend retrying inbox database until minCount emails are returned | [optional] 
 **since** | **DateTime**| Exclude emails received before this ISO 8601 date time | [optional] 

### Return type

[**Array&lt;EmailPreview&gt;**](EmailPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_emails_paginated**
> PageEmailProjection get_emails_paginated(opts)

Get all emails

Responses are paginated

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
opts = {
  page: 0, # Integer | Optional page index in email list pagination
  size: 20 # Integer | Optional page size in email list pagination
}

begin
  #Get all emails
  result = api_instance.get_emails_paginated(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->get_emails_paginated: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index in email list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in email list pagination | [optional] [default to 20]

### Return type

[**PageEmailProjection**](PageEmailProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_inbox**
> Inbox get_inbox(inbox_id)

Get Inbox / EmailAddress

Returns an inbox's properties, including its email address and ID.

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
inbox_id = 'inbox_id_example' # String | inboxId

begin
  #Get Inbox / EmailAddress
  result = api_instance.get_inbox(inbox_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->get_inbox: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| inboxId | 

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_inboxes**
> Array&lt;Inbox&gt; get_inboxes

List Inboxes / Email Addresses

List the inboxes you have created

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new

begin
  #List Inboxes / Email Addresses
  result = api_instance.get_inboxes
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->get_inboxes: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Inbox&gt;**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_raw_email_contents**
> String get_raw_email_contents(email_id)

Get Raw Email Content

Returns a raw, unparsed and unprocessed email

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
email_id = 'email_id_example' # String | emailId

begin
  #Get Raw Email Content
  result = api_instance.get_raw_email_contents(email_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->get_raw_email_contents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**](.md)| emailId | 

### Return type

**String**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain



# **get_webhooks**
> Array&lt;Webhook&gt; get_webhooks(inbox_id)

Get all WebHooks for an Inbox

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
inbox_id = 'inbox_id_example' # String | inboxId

begin
  #Get all WebHooks for an Inbox
  result = api_instance.get_webhooks(inbox_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->get_webhooks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| inboxId | 

### Return type

[**Array&lt;Webhook&gt;**](Webhook.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **send_email**
> send_email(inbox_id, send_email_options)

Send Email

Send an email from the inbox's email address. Specify the email recipients and contents in the request body. See the `SendEmailOptions` for more information. Note the `inboxId` refers to the inbox's id NOT its email address

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
inbox_id = 'inbox_id_example' # String | inboxId
send_email_options = MailSlurpClient::SendEmailOptions.new # SendEmailOptions | sendEmailOptions

begin
  #Send Email
  api_instance.send_email(inbox_id, send_email_options)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->send_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| inboxId | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions.md)| sendEmailOptions | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **upload_attachment**
> Array&lt;String&gt; upload_attachment(upload_attachment_options)

Upload an attachment for sending

When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
upload_attachment_options = MailSlurpClient::UploadAttachmentOptions.new # UploadAttachmentOptions | uploadOptions

begin
  #Upload an attachment for sending
  result = api_instance.upload_attachment(upload_attachment_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->upload_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upload_attachment_options** | [**UploadAttachmentOptions**](UploadAttachmentOptions.md)| uploadOptions | 

### Return type

**Array&lt;String&gt;**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **upload_multipart_form**
> Array&lt;String&gt; upload_multipart_form(file, opts)

Upload an attachment for sending using Multipart Form

When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.

### Example
```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::ExtraOperationsApi.new
file = File.new('/path/to/file') # File | file
opts = {
  content_type: 'content_type_example', # String | contentType
  filename: 'filename_example' # String | filename
}

begin
  #Upload an attachment for sending using Multipart Form
  result = api_instance.upload_multipart_form(file, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExtraOperationsApi->upload_multipart_form: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| file | 
 **content_type** | **String**| contentType | [optional] 
 **filename** | **String**| filename | [optional] 

### Return type

**Array&lt;String&gt;**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



