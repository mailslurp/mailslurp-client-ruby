# MailSlurpClient::CommonActionsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_email_address**](CommonActionsControllerApi.md#create_new_email_address) | **POST** /newEmailAddress | Create new random inbox
[**empty_inbox**](CommonActionsControllerApi.md#empty_inbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
[**send_email_simple**](CommonActionsControllerApi.md#send_email_simple) | **POST** /sendEmail | Send an email from a random email address
[**wait_for_email_count**](CommonActionsControllerApi.md#wait_for_email_count) | **GET** /waitForEmailCount | Wait for and return count number of emails 
[**wait_for_latest_email**](CommonActionsControllerApi.md#wait_for_latest_email) | **GET** /waitForLatestEmail | Fetch inbox&#39;s latest email or if empty wait for email to arrive
[**wait_for_matching_email**](CommonActionsControllerApi.md#wait_for_matching_email) | **POST** /waitForMatchingEmails | Wait or return list of emails that match simple matching patterns
[**wait_for_nth_email**](CommonActionsControllerApi.md#wait_for_nth_email) | **GET** /waitForNthEmail | Wait for or fetch the email with a given index in the inbox specified



## create_new_email_address

> Inbox create_new_email_address

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

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

api_instance = MailSlurpClient::CommonActionsControllerApi.new

begin
  #Create new random inbox
  result = api_instance.create_new_email_address
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonActionsControllerApi->create_new_email_address: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## empty_inbox

> empty_inbox(inbox_id)

Delete all emails in an inbox

Deletes all emails

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

api_instance = MailSlurpClient::CommonActionsControllerApi.new
inbox_id = 'inbox_id_example' # String | inboxId

begin
  #Delete all emails in an inbox
  api_instance.empty_inbox(inbox_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonActionsControllerApi->empty_inbox: #{e}"
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


## send_email_simple

> send_email_simple(send_email_options)

Send an email from a random email address

To specify an email address first create an inbox and use that with the other send email methods

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

api_instance = MailSlurpClient::CommonActionsControllerApi.new
send_email_options = MailSlurpClient::SendEmailOptions.new # SendEmailOptions | sendEmailOptions

begin
  #Send an email from a random email address
  api_instance.send_email_simple(send_email_options)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonActionsControllerApi->send_email_simple: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions.md)| sendEmailOptions | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## wait_for_email_count

> Array&lt;EmailPreview&gt; wait_for_email_count(opts)

Wait for and return count number of emails 

Will only wait if count is greater that the found emails in given inbox.If you need to wait for an email for a non-empty inbox see the other receive methods.

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

api_instance = MailSlurpClient::CommonActionsControllerApi.new
opts = {
  count: 56, # Integer | Number of emails to wait for. Must be greater that 1
  inbox_id: 'inbox_id_example', # String | Id of the inbox we are fetching emails from
  timeout: 56, # Integer | Max milliseconds to wait
  unread_only: false # Boolean | Optional filter for unread only
}

begin
  #Wait for and return count number of emails 
  result = api_instance.wait_for_email_count(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonActionsControllerApi->wait_for_email_count: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **Integer**| Number of emails to wait for. Must be greater that 1 | [optional] 
 **inbox_id** | [**String**](.md)| Id of the inbox we are fetching emails from | [optional] 
 **timeout** | **Integer**| Max milliseconds to wait | [optional] 
 **unread_only** | **Boolean**| Optional filter for unread only | [optional] [default to false]

### Return type

[**Array&lt;EmailPreview&gt;**](EmailPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## wait_for_latest_email

> Email wait_for_latest_email(opts)

Fetch inbox's latest email or if empty wait for email to arrive

Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox see the other receive methods.

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

api_instance = MailSlurpClient::CommonActionsControllerApi.new
opts = {
  inbox_id: 'inbox_id_example', # String | Id of the inbox we are fetching emails from
  timeout: 56, # Integer | Max milliseconds to wait
  unread_only: false # Boolean | Optional filter for unread only
}

begin
  #Fetch inbox's latest email or if empty wait for email to arrive
  result = api_instance.wait_for_latest_email(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonActionsControllerApi->wait_for_latest_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| Id of the inbox we are fetching emails from | [optional] 
 **timeout** | **Integer**| Max milliseconds to wait | [optional] 
 **unread_only** | **Boolean**| Optional filter for unread only | [optional] [default to false]

### Return type

[**Email**](Email.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## wait_for_matching_email

> Array&lt;EmailPreview&gt; wait_for_matching_email(match_options, opts)

Wait or return list of emails that match simple matching patterns

Results must also meet provided count. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM.

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

api_instance = MailSlurpClient::CommonActionsControllerApi.new
match_options = MailSlurpClient::MatchOptions.new # MatchOptions | matchOptions
opts = {
  count: 56, # Integer | Number of emails to wait for. Must be greater that 1
  inbox_id: 'inbox_id_example', # String | Id of the inbox we are fetching emails from
  timeout: 56, # Integer | Max milliseconds to wait
  unread_only: false # Boolean | Optional filter for unread only
}

begin
  #Wait or return list of emails that match simple matching patterns
  result = api_instance.wait_for_matching_email(match_options, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonActionsControllerApi->wait_for_matching_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **match_options** | [**MatchOptions**](MatchOptions.md)| matchOptions | 
 **count** | **Integer**| Number of emails to wait for. Must be greater that 1 | [optional] 
 **inbox_id** | [**String**](.md)| Id of the inbox we are fetching emails from | [optional] 
 **timeout** | **Integer**| Max milliseconds to wait | [optional] 
 **unread_only** | **Boolean**| Optional filter for unread only | [optional] [default to false]

### Return type

[**Array&lt;EmailPreview&gt;**](EmailPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## wait_for_nth_email

> Email wait_for_nth_email(opts)

Wait for or fetch the email with a given index in the inbox specified

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

api_instance = MailSlurpClient::CommonActionsControllerApi.new
opts = {
  inbox_id: 'inbox_id_example', # String | Id of the inbox you are fetching emails from
  index: 56, # Integer | Zero based index of the email to wait for
  timeout: 56, # Integer | Max milliseconds to wait
  unread_only: false # Boolean | Optional filter for unread only
}

begin
  #Wait for or fetch the email with a given index in the inbox specified
  result = api_instance.wait_for_nth_email(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonActionsControllerApi->wait_for_nth_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| Id of the inbox you are fetching emails from | [optional] 
 **index** | **Integer**| Zero based index of the email to wait for | [optional] 
 **timeout** | **Integer**| Max milliseconds to wait | [optional] 
 **unread_only** | **Boolean**| Optional filter for unread only | [optional] [default to false]

### Return type

[**Email**](Email.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

