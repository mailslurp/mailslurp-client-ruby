# MailSlurpClient::InboxControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_inbox**](InboxControllerApi.md#create_inbox) | **POST** /inboxes | Create an Inbox (email address)
[**delete_all_inboxes**](InboxControllerApi.md#delete_all_inboxes) | **DELETE** /inboxes | Delete all inboxes
[**delete_inbox**](InboxControllerApi.md#delete_inbox) | **DELETE** /inboxes/{inboxId} | Delete inbox
[**get_all_inboxes**](InboxControllerApi.md#get_all_inboxes) | **GET** /inboxes/paginated | List Inboxes Paginated
[**get_emails**](InboxControllerApi.md#get_emails) | **GET** /inboxes/{inboxId}/emails | Get emails in an Inbox
[**get_inbox**](InboxControllerApi.md#get_inbox) | **GET** /inboxes/{inboxId} | Get Inbox
[**get_inbox_emails_paginated**](InboxControllerApi.md#get_inbox_emails_paginated) | **GET** /inboxes/{inboxId}/emails/paginated | Get inbox emails paginated
[**get_inbox_sent_emails**](InboxControllerApi.md#get_inbox_sent_emails) | **GET** /inboxes/{inboxId}/sent | Get Inbox Sent Emails
[**get_inbox_tags**](InboxControllerApi.md#get_inbox_tags) | **GET** /inboxes/tags | Get inbox tags
[**get_inboxes**](InboxControllerApi.md#get_inboxes) | **GET** /inboxes | List Inboxes / Email Addresses
[**send_email**](InboxControllerApi.md#send_email) | **POST** /inboxes/{inboxId} | Send Email
[**send_email_and_confirm**](InboxControllerApi.md#send_email_and_confirm) | **POST** /inboxes/{inboxId}/confirm | Send email and return sent confirmation
[**set_inbox_favourited**](InboxControllerApi.md#set_inbox_favourited) | **PUT** /inboxes/{inboxId}/favourite | Set inbox favourited state
[**update_inbox**](InboxControllerApi.md#update_inbox) | **PATCH** /inboxes/{inboxId} | Update Inbox



## create_inbox

> Inbox create_inbox(opts)

Create an Inbox (email address)

Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 

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

api_instance = MailSlurpClient::InboxControllerApi.new
opts = {
  description: 'description_example', # String | Optional description for an inbox.
  email_address: 'email_address_example', # String | Optional email address including domain you wish inbox to use (eg: test123@mydomain.com). Only supports domains that you have registered and verified with MailSlurp using dashboard or `createDomain` method.
  expires_at: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional expires at timestamp. If your plan supports this feature you can specify when an inbox should expire. If left empty inbox will exist permanently or expire when your plan dictates
  favourite: true, # Boolean | Is inbox favourited.
  name: 'name_example', # String | Optional name for an inbox.
  tags: ['tags_example'] # Array<String> | Optional tags for an inbox. Can be used for searching and filtering inboxes.
}

begin
  #Create an Inbox (email address)
  result = api_instance.create_inbox(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->create_inbox: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **description** | **String**| Optional description for an inbox. | [optional] 
 **email_address** | **String**| Optional email address including domain you wish inbox to use (eg: test123@mydomain.com). Only supports domains that you have registered and verified with MailSlurp using dashboard or &#x60;createDomain&#x60; method. | [optional] 
 **expires_at** | **DateTime**| Optional expires at timestamp. If your plan supports this feature you can specify when an inbox should expire. If left empty inbox will exist permanently or expire when your plan dictates | [optional] 
 **favourite** | **Boolean**| Is inbox favourited. | [optional] 
 **name** | **String**| Optional name for an inbox. | [optional] 
 **tags** | [**Array&lt;String&gt;**](String.md)| Optional tags for an inbox. Can be used for searching and filtering inboxes. | [optional] 

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_all_inboxes

> delete_all_inboxes

Delete all inboxes

Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.

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

api_instance = MailSlurpClient::InboxControllerApi.new

begin
  #Delete all inboxes
  api_instance.delete_all_inboxes
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->delete_all_inboxes: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_inbox

> delete_inbox(inbox_id)

Delete inbox

Permanently delete an inbox and associated email address aswell as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.

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

api_instance = MailSlurpClient::InboxControllerApi.new
inbox_id = 'inbox_id_example' # String | inboxId

begin
  #Delete inbox
  api_instance.delete_inbox(inbox_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->delete_inbox: #{e}"
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


## get_all_inboxes

> PageInboxProjection get_all_inboxes(opts)

List Inboxes Paginated

List inboxes in paginated form. Allows for page index, page size, and sort direction. Can also filter by favourited or email address like pattern.

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

api_instance = MailSlurpClient::InboxControllerApi.new
opts = {
  favourite: false, # Boolean | Optionally filter results for favourites only
  page: 0, # Integer | Optional page index in inbox list pagination
  search: 'search_example', # String | Optionally filter by search words partial matching ID, tags, name, and email address
  size: 20, # Integer | Optional page size in inbox list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  tag: 'tag_example' # String | Optionally filter by tags
}

begin
  #List Inboxes Paginated
  result = api_instance.get_all_inboxes(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_all_inboxes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **favourite** | **Boolean**| Optionally filter results for favourites only | [optional] [default to false]
 **page** | **Integer**| Optional page index in inbox list pagination | [optional] [default to 0]
 **search** | **String**| Optionally filter by search words partial matching ID, tags, name, and email address | [optional] 
 **size** | **Integer**| Optional page size in inbox list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **tag** | **String**| Optionally filter by tags | [optional] 

### Return type

[**PageInboxProjection**](PageInboxProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_emails

> Array&lt;EmailPreview&gt; get_emails(inbox_id, opts)

Get emails in an Inbox

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

api_instance = MailSlurpClient::InboxControllerApi.new
inbox_id = 'inbox_id_example' # String | Id of inbox that emails belongs to
opts = {
  limit: 56, # Integer | Limit the result set, ordered by received date time sort direction
  min_count: 56, # Integer | Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
  retry_timeout: 56, # Integer | Maximum milliseconds to spend retrying inbox database until minCount emails are returned
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Exclude emails received before this ISO 8601 date time
  sort: 'sort_example' # String | Sort the results by received date and direction ASC or DESC
}

begin
  #Get emails in an Inbox
  result = api_instance.get_emails(inbox_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_emails: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| Id of inbox that emails belongs to | 
 **limit** | **Integer**| Limit the result set, ordered by received date time sort direction | [optional] 
 **min_count** | **Integer**| Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. | [optional] 
 **retry_timeout** | **Integer**| Maximum milliseconds to spend retrying inbox database until minCount emails are returned | [optional] 
 **since** | **DateTime**| Exclude emails received before this ISO 8601 date time | [optional] 
 **sort** | **String**| Sort the results by received date and direction ASC or DESC | [optional] 

### Return type

[**Array&lt;EmailPreview&gt;**](EmailPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inbox

> Inbox get_inbox(inbox_id)

Get Inbox

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

api_instance = MailSlurpClient::InboxControllerApi.new
inbox_id = 'inbox_id_example' # String | inboxId

begin
  #Get Inbox
  result = api_instance.get_inbox(inbox_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inbox: #{e}"
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


## get_inbox_emails_paginated

> PageEmailPreview get_inbox_emails_paginated(inbox_id, opts)

Get inbox emails paginated

Get a paginated list of emails in an inbox. Does not hold connections open.

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

api_instance = MailSlurpClient::InboxControllerApi.new
inbox_id = 'inbox_id_example' # String | Id of inbox that emails belongs to
opts = {
  page: 0, # Integer | Optional page index in inbox emails list pagination
  size: 20, # Integer | Optional page size in inbox emails list pagination
  sort: 'ASC' # String | Optional createdAt sort direction ASC or DESC
}

begin
  #Get inbox emails paginated
  result = api_instance.get_inbox_emails_paginated(inbox_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inbox_emails_paginated: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| Id of inbox that emails belongs to | 
 **page** | **Integer**| Optional page index in inbox emails list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in inbox emails list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageEmailPreview**](PageEmailPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inbox_sent_emails

> PageSentEmailProjection get_inbox_sent_emails(inbox_id, opts)

Get Inbox Sent Emails

Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.

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

api_instance = MailSlurpClient::InboxControllerApi.new
inbox_id = 'inbox_id_example' # String | inboxId
opts = {
  page: 0, # Integer | Optional page index in inbox sent email list pagination
  size: 20, # Integer | Optional page size in inbox sent email list pagination
  sort: 'ASC' # String | Optional createdAt sort direction ASC or DESC
}

begin
  #Get Inbox Sent Emails
  result = api_instance.get_inbox_sent_emails(inbox_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inbox_sent_emails: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| inboxId | 
 **page** | **Integer**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inbox_tags

> Array&lt;String&gt; get_inbox_tags

Get inbox tags

Get all inbox tags

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

api_instance = MailSlurpClient::InboxControllerApi.new

begin
  #Get inbox tags
  result = api_instance.get_inbox_tags
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inbox_tags: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inboxes

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

api_instance = MailSlurpClient::InboxControllerApi.new

begin
  #List Inboxes / Email Addresses
  result = api_instance.get_inboxes
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inboxes: #{e}"
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


## send_email

> send_email(inbox_id, opts)

Send Email

Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.

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

api_instance = MailSlurpClient::InboxControllerApi.new
inbox_id = 'inbox_id_example' # String | ID of the inbox you want to send the email from
opts = {
  send_email_options: MailSlurpClient::SendEmailOptions.new # SendEmailOptions | Options for the email
}

begin
  #Send Email
  api_instance.send_email(inbox_id, opts)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->send_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| ID of the inbox you want to send the email from | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions.md)| Options for the email | [optional] 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## send_email_and_confirm

> SentEmail send_email_and_confirm(inbox_id, opts)

Send email and return sent confirmation

Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with link the the sent object created for it.

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

api_instance = MailSlurpClient::InboxControllerApi.new
inbox_id = 'inbox_id_example' # String | ID of the inbox you want to send the email from
opts = {
  send_email_options: MailSlurpClient::SendEmailOptions.new # SendEmailOptions | Options for the email
}

begin
  #Send email and return sent confirmation
  result = api_instance.send_email_and_confirm(inbox_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->send_email_and_confirm: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| ID of the inbox you want to send the email from | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions.md)| Options for the email | [optional] 

### Return type

[**SentEmail**](SentEmail.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_inbox_favourited

> Inbox set_inbox_favourited(inbox_id, set_inbox_favourited_options)

Set inbox favourited state

Set and return new favourite state for an inbox

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

api_instance = MailSlurpClient::InboxControllerApi.new
inbox_id = 'inbox_id_example' # String | inboxId
set_inbox_favourited_options = MailSlurpClient::SetInboxFavouritedOptions.new # SetInboxFavouritedOptions | setInboxFavouritedOptions

begin
  #Set inbox favourited state
  result = api_instance.set_inbox_favourited(inbox_id, set_inbox_favourited_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->set_inbox_favourited: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| inboxId | 
 **set_inbox_favourited_options** | [**SetInboxFavouritedOptions**](SetInboxFavouritedOptions.md)| setInboxFavouritedOptions | 

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_inbox

> Inbox update_inbox(inbox_id, update_inbox_options)

Update Inbox

Update editable fields on an inbox

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

api_instance = MailSlurpClient::InboxControllerApi.new
inbox_id = 'inbox_id_example' # String | inboxId
update_inbox_options = MailSlurpClient::UpdateInboxOptions.new # UpdateInboxOptions | updateInboxOptions

begin
  #Update Inbox
  result = api_instance.update_inbox(inbox_id, update_inbox_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->update_inbox: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| inboxId | 
 **update_inbox_options** | [**UpdateInboxOptions**](UpdateInboxOptions.md)| updateInboxOptions | 

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

