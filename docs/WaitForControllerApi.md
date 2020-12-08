# MailSlurpClient::WaitForControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**wait_for**](WaitForControllerApi.md#wait_for) | **POST** /waitFor | Wait for conditions to be met
[**wait_for_email_count**](WaitForControllerApi.md#wait_for_email_count) | **GET** /waitForEmailCount | Wait for and return count number of emails 
[**wait_for_latest_email**](WaitForControllerApi.md#wait_for_latest_email) | **GET** /waitForLatestEmail | Fetch inbox&#39;s latest email or if empty wait for an email to arrive
[**wait_for_matching_email**](WaitForControllerApi.md#wait_for_matching_email) | **POST** /waitForMatchingEmails | Wait or return list of emails that match simple matching patterns
[**wait_for_nth_email**](WaitForControllerApi.md#wait_for_nth_email) | **GET** /waitForNthEmail | Wait for or fetch the email with a given index in the inbox specified



## wait_for

> Array&lt;EmailPreview&gt; wait_for(opts)

Wait for conditions to be met

Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met

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

api_instance = MailSlurpClient::WaitForControllerApi.new
opts = {
  wait_for_conditions: MailSlurpClient::WaitForConditions.new # WaitForConditions | Conditions to wait for
}

begin
  #Wait for conditions to be met
  result = api_instance.wait_for(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WaitForControllerApi->wait_for: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait_for_conditions** | [**WaitForConditions**](WaitForConditions.md)| Conditions to wait for | [optional] 

### Return type

[**Array&lt;EmailPreview&gt;**](EmailPreview.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## wait_for_email_count

> Array&lt;EmailPreview&gt; wait_for_email_count(opts)

Wait for and return count number of emails 

If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.

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

api_instance = MailSlurpClient::WaitForControllerApi.new
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
  puts "Exception when calling WaitForControllerApi->wait_for_email_count: #{e}"
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

Fetch inbox's latest email or if empty wait for an email to arrive

Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set `unreadOnly=true` or see the other receive methods such as `waitForNthEmail` or `waitForEmailCount`.

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

api_instance = MailSlurpClient::WaitForControllerApi.new
opts = {
  inbox_id: 'inbox_id_example', # String | Id of the inbox we are fetching emails from
  timeout: 56, # Integer | Max milliseconds to wait
  unread_only: false # Boolean | Optional filter for unread only.
}

begin
  #Fetch inbox's latest email or if empty wait for an email to arrive
  result = api_instance.wait_for_latest_email(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WaitForControllerApi->wait_for_latest_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| Id of the inbox we are fetching emails from | [optional] 
 **timeout** | **Integer**| Max milliseconds to wait | [optional] 
 **unread_only** | **Boolean**| Optional filter for unread only. | [optional] [default to false]

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

Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.

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

api_instance = MailSlurpClient::WaitForControllerApi.new
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
  puts "Exception when calling WaitForControllerApi->wait_for_matching_email: #{e}"
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

If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.

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

api_instance = MailSlurpClient::WaitForControllerApi.new
opts = {
  inbox_id: 'inbox_id_example', # String | Id of the inbox you are fetching emails from
  index: 0, # Integer | Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index=1
  timeout: 56, # Integer | Max milliseconds to wait for the nth email if not already present
  unread_only: false # Boolean | Optional filter for unread only
}

begin
  #Wait for or fetch the email with a given index in the inbox specified
  result = api_instance.wait_for_nth_email(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WaitForControllerApi->wait_for_nth_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| Id of the inbox you are fetching emails from | [optional] 
 **index** | **Integer**| Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index&#x3D;1 | [optional] [default to 0]
 **timeout** | **Integer**| Max milliseconds to wait for the nth email if not already present | [optional] 
 **unread_only** | **Boolean**| Optional filter for unread only | [optional] [default to false]

### Return type

[**Email**](Email.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

