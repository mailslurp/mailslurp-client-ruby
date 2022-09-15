# MailSlurpClient::InboxControllerApi

All URIs are relative to *https://ruby.api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_inbox**](InboxControllerApi#create_inbox) | **POST** /inboxes | Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either &#x60;SMTP&#x60; or &#x60;HTTP&#x60; inboxes.
[**create_inbox_ruleset**](InboxControllerApi#create_inbox_ruleset) | **POST** /inboxes/{inboxId}/rulesets | Create an inbox ruleset
[**create_inbox_with_defaults**](InboxControllerApi#create_inbox_with_defaults) | **POST** /inboxes/withDefaults | Create an inbox with default options. Uses MailSlurp domain pool address and is private.
[**create_inbox_with_options**](InboxControllerApi#create_inbox_with_options) | **POST** /inboxes/withOptions | Create an inbox with options. Extended options for inbox creation.
[**delete_all_inbox_emails**](InboxControllerApi#delete_all_inbox_emails) | **DELETE** /inboxes/{inboxId}/deleteAllInboxEmails | Delete all emails in a given inboxes.
[**delete_all_inboxes**](InboxControllerApi#delete_all_inboxes) | **DELETE** /inboxes | Delete all inboxes
[**delete_inbox**](InboxControllerApi#delete_inbox) | **DELETE** /inboxes/{inboxId} | Delete inbox
[**does_inbox_exist**](InboxControllerApi#does_inbox_exist) | **GET** /inboxes/exists | Does inbox exist
[**flush_expired**](InboxControllerApi#flush_expired) | **DELETE** /inboxes/expired | Remove expired inboxes
[**get_all_inboxes**](InboxControllerApi#get_all_inboxes) | **GET** /inboxes/paginated | List All Inboxes Paginated
[**get_all_scheduled_jobs**](InboxControllerApi#get_all_scheduled_jobs) | **GET** /inboxes/scheduled-jobs | Get all scheduled email sending jobs for account
[**get_delivery_statuses_by_inbox_id**](InboxControllerApi#get_delivery_statuses_by_inbox_id) | **GET** /inboxes/{inboxId}/delivery-status | 
[**get_emails**](InboxControllerApi#get_emails) | **GET** /inboxes/{inboxId}/emails | Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
[**get_imap_smtp_access**](InboxControllerApi#get_imap_smtp_access) | **GET** /inboxes/imap-smtp-access | 
[**get_inbox**](InboxControllerApi#get_inbox) | **GET** /inboxes/{inboxId} | Get Inbox. Returns properties of an inbox.
[**get_inbox_by_email_address**](InboxControllerApi#get_inbox_by_email_address) | **GET** /inboxes/byEmailAddress | Search for an inbox with the provided email address
[**get_inbox_by_name**](InboxControllerApi#get_inbox_by_name) | **GET** /inboxes/byName | Search for an inbox with the given name
[**get_inbox_count**](InboxControllerApi#get_inbox_count) | **GET** /inboxes/count | Get total inbox count
[**get_inbox_email_count**](InboxControllerApi#get_inbox_email_count) | **GET** /inboxes/{inboxId}/emails/count | Get email count in inbox
[**get_inbox_emails_paginated**](InboxControllerApi#get_inbox_emails_paginated) | **GET** /inboxes/{inboxId}/emails/paginated | Get inbox emails paginated
[**get_inbox_ids**](InboxControllerApi#get_inbox_ids) | **GET** /inboxes/ids | Get all inbox IDs
[**get_inbox_sent_emails**](InboxControllerApi#get_inbox_sent_emails) | **GET** /inboxes/{inboxId}/sent | Get Inbox Sent Emails
[**get_inbox_tags**](InboxControllerApi#get_inbox_tags) | **GET** /inboxes/tags | Get inbox tags
[**get_inboxes**](InboxControllerApi#get_inboxes) | **GET** /inboxes | List Inboxes and email addresses
[**get_latest_email_in_inbox**](InboxControllerApi#get_latest_email_in_inbox) | **GET** /inboxes/getLatestEmail | Get latest email in an inbox. Use &#x60;WaitForController&#x60; to get emails that may not have arrived yet.
[**get_organization_inboxes**](InboxControllerApi#get_organization_inboxes) | **GET** /inboxes/organization | List Organization Inboxes Paginated
[**get_scheduled_jobs_by_inbox_id**](InboxControllerApi#get_scheduled_jobs_by_inbox_id) | **GET** /inboxes/{inboxId}/scheduled-jobs | Get all scheduled email sending jobs for the inbox
[**list_inbox_rulesets**](InboxControllerApi#list_inbox_rulesets) | **GET** /inboxes/{inboxId}/rulesets | List inbox rulesets
[**list_inbox_tracking_pixels**](InboxControllerApi#list_inbox_tracking_pixels) | **GET** /inboxes/{inboxId}/tracking-pixels | List inbox tracking pixels
[**send_email**](InboxControllerApi#send_email) | **POST** /inboxes/{inboxId} | Send Email
[**send_email_and_confirm**](InboxControllerApi#send_email_and_confirm) | **POST** /inboxes/{inboxId}/confirm | Send email and return sent confirmation
[**send_email_with_queue**](InboxControllerApi#send_email_with_queue) | **POST** /inboxes/{inboxId}/with-queue | Send email with queue
[**send_smtp_envelope**](InboxControllerApi#send_smtp_envelope) | **POST** /inboxes/{inboxId}/smtp-envelope | Send email using an SMTP mail envelope and message body and return sent confirmation
[**send_test_email**](InboxControllerApi#send_test_email) | **POST** /inboxes/{inboxId}/send-test-email | Send a test email to inbox
[**send_with_schedule**](InboxControllerApi#send_with_schedule) | **POST** /inboxes/{inboxId}/with-schedule | Send email with with delay or schedule
[**set_inbox_favourited**](InboxControllerApi#set_inbox_favourited) | **PUT** /inboxes/{inboxId}/favourite | Set inbox favourited state
[**update_inbox**](InboxControllerApi#update_inbox) | **PATCH** /inboxes/{inboxId} | Update Inbox. Change name and description. Email address is not editable.



## create_inbox

> InboxDto create_inbox(opts)

Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.

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
  email_address: 'email_address_example', # String | A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so `SMTP` inboxes will only work with `SMTP` type domains. Avoid `SMTP` inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
  tags: ['tags_example'], # Array<String> | Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  name: 'name_example', # String | Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails.
  description: 'description_example', # String | Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
  use_domain_pool: true, # Boolean | Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field. Note this feature is only available for `HTTP` inbox types.
  favourite: true, # Boolean | Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering
  expires_at: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX.
  expires_in: 56, # Integer | Number of milliseconds that inbox should exist for
  allow_team_access: true, # Boolean | DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization.
  inbox_type: 'inbox_type_example', # String | HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at `mx.mailslurp.com`.
  virtual_inbox: true # Boolean | Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending.
}

begin
  #Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.
  result = api_instance.create_inbox(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->create_inbox: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **String**| A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as &#x60;123@mailslurp.com&#x60;. If you use the &#x60;useDomainPool&#x60; option when the email address is null it will generate an email address with a more varied domain ending such as &#x60;123@mailslurp.info&#x60; or &#x60;123@mailslurp.biz&#x60;. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so &#x60;SMTP&#x60; inboxes will only work with &#x60;SMTP&#x60; type domains. Avoid &#x60;SMTP&#x60; inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. | [optional] 
 **tags** | [**Array&lt;String&gt;**](String)| Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. | [optional] 
 **name** | **String**| Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails. | [optional] 
 **description** | **String**| Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with | [optional] 
 **use_domain_pool** | **Boolean**| Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default &#x60;@mailslurp.com&#x60; email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in &#x60;@mailslurp.{world,info,xyz,...}&#x60; . This means a TLD is randomly selecting from a list of &#x60;.biz&#x60;, &#x60;.info&#x60;, &#x60;.xyz&#x60; etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of &#x60;@mailslurp.com&#x60; or custom email address provided by the emailAddress field. Note this feature is only available for &#x60;HTTP&#x60; inbox types. | [optional] 
 **favourite** | **Boolean**| Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering | [optional] 
 **expires_at** | **DateTime**| Optional inbox expiration date. If null then this inbox is permanent and the emails in it won&#39;t be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX. | [optional] 
 **expires_in** | **Integer**| Number of milliseconds that inbox should exist for | [optional] 
 **allow_team_access** | **Boolean**| DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization. | [optional] 
 **inbox_type** | **String**| HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at &#x60;mx.mailslurp.com&#x60;. | [optional] 
 **virtual_inbox** | **Boolean**| Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending. | [optional] 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## create_inbox_ruleset

> InboxRulesetDto create_inbox_ruleset(inbox_id, create_inbox_ruleset_options)

Create an inbox ruleset

Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

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
create_inbox_ruleset_options = MailSlurpClient::CreateInboxRulesetOptions.new # CreateInboxRulesetOptions | 

begin
  #Create an inbox ruleset
  result = api_instance.create_inbox_ruleset(inbox_id, create_inbox_ruleset_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->create_inbox_ruleset: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| inboxId | 
 **create_inbox_ruleset_options** | [**CreateInboxRulesetOptions**](CreateInboxRulesetOptions)|  | 

### Return type

[**InboxRulesetDto**](InboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## create_inbox_with_defaults

> InboxDto create_inbox_with_defaults

Create an inbox with default options. Uses MailSlurp domain pool address and is private.

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
  #Create an inbox with default options. Uses MailSlurp domain pool address and is private.
  result = api_instance.create_inbox_with_defaults
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->create_inbox_with_defaults: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## create_inbox_with_options

> InboxDto create_inbox_with_options(create_inbox_dto)

Create an inbox with options. Extended options for inbox creation.

Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.

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
create_inbox_dto = MailSlurpClient::CreateInboxDto.new # CreateInboxDto | 

begin
  #Create an inbox with options. Extended options for inbox creation.
  result = api_instance.create_inbox_with_options(create_inbox_dto)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->create_inbox_with_options: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_inbox_dto** | [**CreateInboxDto**](CreateInboxDto)|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## delete_all_inbox_emails

> delete_all_inbox_emails(inbox_id)

Delete all emails in a given inboxes.

Deletes all emails in an inbox. Be careful as emails cannot be recovered

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
inbox_id = 'inbox_id_example' # String | 

begin
  #Delete all emails in a given inboxes.
  api_instance.delete_all_inbox_emails(inbox_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->delete_all_inbox_emails: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


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

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_inbox

> delete_inbox(inbox_id)

Delete inbox

Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.

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
inbox_id = 'inbox_id_example' # String | 

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
 **inbox_id** | [**String**]()|  | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## does_inbox_exist

> InboxExistsDto does_inbox_exist(email_address)

Does inbox exist

Check if inboxes exist by email address. Useful if you are sending emails to mailslurp addresses

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
email_address = 'email_address_example' # String | Email address

begin
  #Does inbox exist
  result = api_instance.does_inbox_exist(email_address)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->does_inbox_exist: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **String**| Email address | 

### Return type

[**InboxExistsDto**](InboxExistsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## flush_expired

> FlushExpiredInboxesResult flush_expired(opts)

Remove expired inboxes

Remove any expired inboxes for your account (instead of waiting for scheduled removal on server)

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
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional expired at before flag to flush expired inboxes that have expired before the given time
}

begin
  #Remove expired inboxes
  result = api_instance.flush_expired(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->flush_expired: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Optional expired at before flag to flush expired inboxes that have expired before the given time | [optional] 

### Return type

[**FlushExpiredInboxesResult**](FlushExpiredInboxesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_all_inboxes

> PageInboxProjection get_all_inboxes(opts)

List All Inboxes Paginated

List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.

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
  page: 0, # Integer | Optional page index in list pagination
  size: 20, # Integer | Optional page size in list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  favourite: false, # Boolean | Optionally filter results for favourites only
  search: 'search_example', # String | Optionally filter by search words partial matching ID, tags, name, and email address
  tag: 'tag_example', # String | Optionally filter by tags. Will return inboxes that include given tags
  team_access: true, # Boolean | DEPRECATED. Optionally filter by team access.
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional filter by created after given date time
  before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional filter by created before given date time
  inbox_type: 'inbox_type_example', # String | Optional filter by inbox type
  domain_id: 'domain_id_example' # String | Optional domain ID filter
}

begin
  #List All Inboxes Paginated
  result = api_instance.get_all_inboxes(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_all_inboxes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **favourite** | **Boolean**| Optionally filter results for favourites only | [optional] [default to false]
 **search** | **String**| Optionally filter by search words partial matching ID, tags, name, and email address | [optional] 
 **tag** | **String**| Optionally filter by tags. Will return inboxes that include given tags | [optional] 
 **team_access** | **Boolean**| DEPRECATED. Optionally filter by team access. | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 
 **inbox_type** | **String**| Optional filter by inbox type | [optional] 
 **domain_id** | [**String**]()| Optional domain ID filter | [optional] 

### Return type

[**PageInboxProjection**](PageInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_all_scheduled_jobs

> PageScheduledJobs get_all_scheduled_jobs(opts)

Get all scheduled email sending jobs for account

Schedule sending of emails using scheduled jobs. These can be inbox or account level.

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
  page: 0, # Integer | Optional page index in scheduled job list pagination
  size: 20, # Integer | Optional page size in scheduled job list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  #Get all scheduled email sending jobs for account
  result = api_instance.get_all_scheduled_jobs(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_all_scheduled_jobs: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index in scheduled job list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in scheduled job list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageScheduledJobs**](PageScheduledJobs)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_delivery_statuses_by_inbox_id

> PageDeliveryStatus get_delivery_statuses_by_inbox_id(inbox_id, opts)



Get all email delivery statuses for an inbox

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
inbox_id = 'inbox_id_example' # String | 
opts = {
  page: 0, # Integer | Optional page index in delivery status list pagination
  size: 20, # Integer | Optional page size in delivery status list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  result = api_instance.get_delivery_statuses_by_inbox_id(inbox_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_delivery_statuses_by_inbox_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 
 **page** | **Integer**| Optional page index in delivery status list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in delivery status list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageDeliveryStatus**](PageDeliveryStatus)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_emails

> Array&lt;EmailPreview&gt; get_emails(inbox_id, opts)

Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.

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
  size: 56, # Integer | Alias for limit. Assessed first before assessing any passed limit.
  limit: 56, # Integer | Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller
  sort: 'sort_example', # String | Sort the results by received date and direction ASC or DESC
  retry_timeout: 56, # Integer | Maximum milliseconds to spend retrying inbox database until minCount emails are returned
  delay_timeout: 56, # Integer | 
  min_count: 56, # Integer | Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
  unread_only: true, # Boolean | 
  before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Exclude emails received after this ISO 8601 date time
  since: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Exclude emails received before this ISO 8601 date time
}

begin
  #Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
  result = api_instance.get_emails(inbox_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_emails: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| Id of inbox that emails belongs to | 
 **size** | **Integer**| Alias for limit. Assessed first before assessing any passed limit. | [optional] 
 **limit** | **Integer**| Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller | [optional] 
 **sort** | **String**| Sort the results by received date and direction ASC or DESC | [optional] 
 **retry_timeout** | **Integer**| Maximum milliseconds to spend retrying inbox database until minCount emails are returned | [optional] 
 **delay_timeout** | **Integer**|  | [optional] 
 **min_count** | **Integer**| Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. | [optional] 
 **unread_only** | **Boolean**|  | [optional] 
 **before** | **DateTime**| Exclude emails received after this ISO 8601 date time | [optional] 
 **since** | **DateTime**| Exclude emails received before this ISO 8601 date time | [optional] 

### Return type

[**Array&lt;EmailPreview&gt;**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_imap_smtp_access

> ImapSmtpAccessDetails get_imap_smtp_access(opts)



Get IMAP and SMTP access usernames and passwords

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
  inbox_id: 'inbox_id_example' # String | Inbox ID
}

begin
  result = api_instance.get_imap_smtp_access(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_imap_smtp_access: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| Inbox ID | [optional] 

### Return type

[**ImapSmtpAccessDetails**](ImapSmtpAccessDetails)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_inbox

> InboxDto get_inbox(inbox_id)

Get Inbox. Returns properties of an inbox.

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
inbox_id = 'inbox_id_example' # String | 

begin
  #Get Inbox. Returns properties of an inbox.
  result = api_instance.get_inbox(inbox_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inbox: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_inbox_by_email_address

> InboxByEmailAddressResult get_inbox_by_email_address(email_address)

Search for an inbox with the provided email address

Get a inbox result by email address

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
email_address = 'email_address_example' # String | 

begin
  #Search for an inbox with the provided email address
  result = api_instance.get_inbox_by_email_address(email_address)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inbox_by_email_address: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **String**|  | 

### Return type

[**InboxByEmailAddressResult**](InboxByEmailAddressResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_inbox_by_name

> InboxByNameResult get_inbox_by_name(name)

Search for an inbox with the given name

Get a inbox result by name

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
name = 'name_example' # String | 

begin
  #Search for an inbox with the given name
  result = api_instance.get_inbox_by_name(name)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inbox_by_name: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 

### Return type

[**InboxByNameResult**](InboxByNameResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_inbox_count

> CountDto get_inbox_count

Get total inbox count

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
  #Get total inbox count
  result = api_instance.get_inbox_count
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inbox_count: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_inbox_email_count

> CountDto get_inbox_email_count(inbox_id)

Get email count in inbox

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

begin
  #Get email count in inbox
  result = api_instance.get_inbox_email_count(inbox_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inbox_email_count: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| Id of inbox that emails belongs to | 

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


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
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional filter by received after given date time
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional filter by received before given date time
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
 **inbox_id** | [**String**]()| Id of inbox that emails belongs to | 
 **page** | **Integer**| Optional page index in inbox emails list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in inbox emails list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Optional filter by received after given date time | [optional] 
 **before** | **DateTime**| Optional filter by received before given date time | [optional] 

### Return type

[**PageEmailPreview**](PageEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_inbox_ids

> InboxIdsResult get_inbox_ids

Get all inbox IDs

Get list of inbox IDs

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
  #Get all inbox IDs
  result = api_instance.get_inbox_ids
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inbox_ids: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InboxIdsResult**](InboxIdsResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


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
inbox_id = 'inbox_id_example' # String | 
opts = {
  page: 0, # Integer | Optional page index in inbox sent email list pagination
  size: 20, # Integer | Optional page size in inbox sent email list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional sent email search
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional filter by sent after given date time
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional filter by sent before given date time
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
 **inbox_id** | [**String**]()|  | 
 **page** | **Integer**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **String**| Optional sent email search | [optional] 
 **since** | **DateTime**| Optional filter by sent after given date time | [optional] 
 **before** | **DateTime**| Optional filter by sent before given date time | [optional] 

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


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

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_inboxes

> Array&lt;InboxDto&gt; get_inboxes(opts)

List Inboxes and email addresses

List the inboxes you have created. Note use of the more advanced `getAllInboxes` is recommended and allows paginated access using a limit and sort parameter.

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
  size: 100, # Integer | Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries.
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional filter by created after given date time
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional filter by created before given date time
}

begin
  #List Inboxes and email addresses
  result = api_instance.get_inboxes(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inboxes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated &#x60;getAllEmails&#x60; for larger queries. | [optional] [default to 100]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**Array&lt;InboxDto&gt;**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_latest_email_in_inbox

> Email get_latest_email_in_inbox(inbox_id, timeout_millis)

Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.

Get the newest email in an inbox or wait for one to arrive

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
inbox_id = 'inbox_id_example' # String | ID of the inbox you want to get the latest email from
timeout_millis = 56 # Integer | Timeout milliseconds to wait for latest email

begin
  #Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
  result = api_instance.get_latest_email_in_inbox(inbox_id, timeout_millis)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_latest_email_in_inbox: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| ID of the inbox you want to get the latest email from | 
 **timeout_millis** | **Integer**| Timeout milliseconds to wait for latest email | 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_organization_inboxes

> PageOrganizationInboxProjection get_organization_inboxes(opts)

List Organization Inboxes Paginated

List organization inboxes in paginated form. These are inboxes created with `allowTeamAccess` flag enabled. Organization inboxes are `readOnly` for non-admin users. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 

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
  page: 0, # Integer | Optional page index in list pagination
  size: 20, # Integer | Optional page size in list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional filter by created after given date time
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional filter by created before given date time
}

begin
  #List Organization Inboxes Paginated
  result = api_instance.get_organization_inboxes(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_organization_inboxes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageOrganizationInboxProjection**](PageOrganizationInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_scheduled_jobs_by_inbox_id

> PageScheduledJobs get_scheduled_jobs_by_inbox_id(inbox_id, opts)

Get all scheduled email sending jobs for the inbox

Schedule sending of emails using scheduled jobs.

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
inbox_id = 'inbox_id_example' # String | 
opts = {
  page: 0, # Integer | Optional page index in scheduled job list pagination
  size: 20, # Integer | Optional page size in scheduled job list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  #Get all scheduled email sending jobs for the inbox
  result = api_instance.get_scheduled_jobs_by_inbox_id(inbox_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_scheduled_jobs_by_inbox_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 
 **page** | **Integer**| Optional page index in scheduled job list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in scheduled job list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageScheduledJobs**](PageScheduledJobs)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## list_inbox_rulesets

> PageInboxRulesetDto list_inbox_rulesets(inbox_id, opts)

List inbox rulesets

List all rulesets attached to an inbox

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
inbox_id = 'inbox_id_example' # String | 
opts = {
  page: 0, # Integer | Optional page index in inbox ruleset list pagination
  size: 20, # Integer | Optional page size in inbox ruleset list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional filter by created after given date time
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional filter by created before given date time
}

begin
  #List inbox rulesets
  result = api_instance.list_inbox_rulesets(inbox_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->list_inbox_rulesets: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 
 **page** | **Integer**| Optional page index in inbox ruleset list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in inbox ruleset list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageInboxRulesetDto**](PageInboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## list_inbox_tracking_pixels

> PageTrackingPixelProjection list_inbox_tracking_pixels(inbox_id, opts)

List inbox tracking pixels

List all tracking pixels sent from an inbox

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
inbox_id = 'inbox_id_example' # String | 
opts = {
  page: 0, # Integer | Optional page index in inbox tracking pixel list pagination
  size: 20, # Integer | Optional page size in inbox tracking pixel list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional filter by created after given date time
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional filter by created before given date time
}

begin
  #List inbox tracking pixels
  result = api_instance.list_inbox_tracking_pixels(inbox_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->list_inbox_tracking_pixels: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 
 **page** | **Integer**| Optional page index in inbox tracking pixel list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in inbox tracking pixel list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## send_email

> send_email(inbox_id, send_email_options)

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
send_email_options = MailSlurpClient::SendEmailOptions.new # SendEmailOptions | 

begin
  #Send Email
  api_instance.send_email(inbox_id, send_email_options)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->send_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| ID of the inbox you want to send the email from | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## send_email_and_confirm

> SentEmailDto send_email_and_confirm(inbox_id, send_email_options)

Send email and return sent confirmation

Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with a link to the sent object created for it.

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
send_email_options = MailSlurpClient::SendEmailOptions.new # SendEmailOptions | 

begin
  #Send email and return sent confirmation
  result = api_instance.send_email_and_confirm(inbox_id, send_email_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->send_email_and_confirm: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| ID of the inbox you want to send the email from | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## send_email_with_queue

> send_email_with_queue(inbox_id, validate_before_enqueue, send_email_options)

Send email with queue

Send an email using a queue. Will place the email onto a queue that will then be processed and sent. Use this queue method to enable any failed email sending to be recovered. This will prevent lost emails when sending if your account encounters a block or payment issue.

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
validate_before_enqueue = true # Boolean | Validate before adding to queue
send_email_options = MailSlurpClient::SendEmailOptions.new # SendEmailOptions | 

begin
  #Send email with queue
  api_instance.send_email_with_queue(inbox_id, validate_before_enqueue, send_email_options)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->send_email_with_queue: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| ID of the inbox you want to send the email from | 
 **validate_before_enqueue** | **Boolean**| Validate before adding to queue | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## send_smtp_envelope

> SentEmailDto send_smtp_envelope(inbox_id, send_smtp_envelope_options)

Send email using an SMTP mail envelope and message body and return sent confirmation

Send email using an SMTP envelope containing RCPT TO, MAIL FROM, and a SMTP BODY.

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
send_smtp_envelope_options = MailSlurpClient::SendSMTPEnvelopeOptions.new # SendSMTPEnvelopeOptions | 

begin
  #Send email using an SMTP mail envelope and message body and return sent confirmation
  result = api_instance.send_smtp_envelope(inbox_id, send_smtp_envelope_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->send_smtp_envelope: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| ID of the inbox you want to send the email from | 
 **send_smtp_envelope_options** | [**SendSMTPEnvelopeOptions**](SendSMTPEnvelopeOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## send_test_email

> send_test_email(inbox_id)

Send a test email to inbox

Send an inbox a test email to test email receiving is working

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
inbox_id = 'inbox_id_example' # String | 

begin
  #Send a test email to inbox
  api_instance.send_test_email(inbox_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->send_test_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## send_with_schedule

> send_with_schedule(inbox_id, send_email_options, opts)

Send email with with delay or schedule

Send an email using a delay. Will place the email onto a scheduler that will then be processed and sent. Use delays to schedule email sending.

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
send_email_options = MailSlurpClient::SendEmailOptions.new # SendEmailOptions | 
opts = {
  send_at_timestamp: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Sending timestamp
  send_at_now_plus_seconds: 56, # Integer | Send after n seconds
  validate_before_enqueue: true # Boolean | Validate before adding to queue
}

begin
  #Send email with with delay or schedule
  api_instance.send_with_schedule(inbox_id, send_email_options, opts)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->send_with_schedule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| ID of the inbox you want to send the email from | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)|  | 
 **send_at_timestamp** | **DateTime**| Sending timestamp | [optional] 
 **send_at_now_plus_seconds** | **Integer**| Send after n seconds | [optional] 
 **validate_before_enqueue** | **Boolean**| Validate before adding to queue | [optional] 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## set_inbox_favourited

> InboxDto set_inbox_favourited(inbox_id, set_inbox_favourited_options)

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
inbox_id = 'inbox_id_example' # String | ID of inbox to set favourite state
set_inbox_favourited_options = MailSlurpClient::SetInboxFavouritedOptions.new # SetInboxFavouritedOptions | 

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
 **inbox_id** | [**String**]()| ID of inbox to set favourite state | 
 **set_inbox_favourited_options** | [**SetInboxFavouritedOptions**](SetInboxFavouritedOptions)|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## update_inbox

> InboxDto update_inbox(inbox_id, update_inbox_options)

Update Inbox. Change name and description. Email address is not editable.

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
inbox_id = 'inbox_id_example' # String | 
update_inbox_options = MailSlurpClient::UpdateInboxOptions.new # UpdateInboxOptions | 

begin
  #Update Inbox. Change name and description. Email address is not editable.
  result = api_instance.update_inbox(inbox_id, update_inbox_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->update_inbox: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 
 **update_inbox_options** | [**UpdateInboxOptions**](UpdateInboxOptions)|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

