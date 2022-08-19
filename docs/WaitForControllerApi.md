# MailSlurpClient::WaitForControllerApi

All URIs are relative to *https://ruby.api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**wait_for**](WaitForControllerApi#wait_for) | **POST** /waitFor | Wait for an email to match the provided filter conditions such as subject contains keyword.
[**wait_for_email_count**](WaitForControllerApi#wait_for_email_count) | **GET** /waitForEmailCount | Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
[**wait_for_latest_email**](WaitForControllerApi#wait_for_latest_email) | **GET** /waitForLatestEmail | Fetch inbox&#39;s latest email or if empty wait for an email to arrive
[**wait_for_latest_sms**](WaitForControllerApi#wait_for_latest_sms) | **POST** /waitForLatestSms | Wait for the latest SMS message to match the provided filter conditions such as body contains keyword.
[**wait_for_matching_emails**](WaitForControllerApi#wait_for_matching_emails) | **POST** /waitForMatchingEmails | Wait or return list of emails that match simple matching patterns
[**wait_for_matching_first_email**](WaitForControllerApi#wait_for_matching_first_email) | **POST** /waitForMatchingFirstEmail | Wait for or return the first email that matches provided MatchOptions array
[**wait_for_nth_email**](WaitForControllerApi#wait_for_nth_email) | **GET** /waitForNthEmail | Wait for or fetch the email with a given index in the inbox specified. If index doesn&#39;t exist waits for it to exist or timeout to occur.
[**wait_for_sms**](WaitForControllerApi#wait_for_sms) | **POST** /waitForSms | Wait for an SMS message to match the provided filter conditions such as body contains keyword.



## wait_for

> Array&lt;EmailPreview&gt; wait_for(wait_for_conditions)

Wait for an email to match the provided filter conditions such as subject contains keyword.

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
wait_for_conditions = MailSlurpClient::WaitForConditions.new # WaitForConditions | 

begin
  #Wait for an email to match the provided filter conditions such as subject contains keyword.
  result = api_instance.wait_for(wait_for_conditions)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WaitForControllerApi->wait_for: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait_for_conditions** | [**WaitForConditions**](WaitForConditions)|  | 

### Return type

[**Array&lt;EmailPreview&gt;**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## wait_for_email_count

> Array&lt;EmailPreview&gt; wait_for_email_count(inbox_id, count, opts)

Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs

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
inbox_id = 'inbox_id_example' # String | Id of the inbox we are fetching emails from
count = 56 # Integer | Number of emails to wait for. Must be greater that 1
opts = {
  timeout: 56, # Integer | Max milliseconds to wait
  unread_only: false, # Boolean | Optional filter for unread only
  before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter for emails that were received before the given timestamp
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter for emails that were received after the given timestamp
  sort: 'sort_example', # String | Sort direction
  delay: 56 # Integer | Max milliseconds delay between calls
}

begin
  #Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
  result = api_instance.wait_for_email_count(inbox_id, count, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WaitForControllerApi->wait_for_email_count: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| Id of the inbox we are fetching emails from | 
 **count** | **Integer**| Number of emails to wait for. Must be greater that 1 | 
 **timeout** | **Integer**| Max milliseconds to wait | [optional] 
 **unread_only** | **Boolean**| Optional filter for unread only | [optional] [default to false]
 **before** | **DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **String**| Sort direction | [optional] 
 **delay** | **Integer**| Max milliseconds delay between calls | [optional] 

### Return type

[**Array&lt;EmailPreview&gt;**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


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
  unread_only: false, # Boolean | Optional filter for unread only.
  before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter for emails that were before after the given timestamp
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter for emails that were received after the given timestamp
  sort: 'sort_example', # String | Sort direction
  delay: 56 # Integer | Max milliseconds delay between calls
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
 **inbox_id** | [**String**]()| Id of the inbox we are fetching emails from | [optional] 
 **timeout** | **Integer**| Max milliseconds to wait | [optional] 
 **unread_only** | **Boolean**| Optional filter for unread only. | [optional] [default to false]
 **before** | **DateTime**| Filter for emails that were before after the given timestamp | [optional] 
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **String**| Sort direction | [optional] 
 **delay** | **Integer**| Max milliseconds delay between calls | [optional] 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## wait_for_latest_sms

> SmsDto wait_for_latest_sms(wait_for_single_sms_options)

Wait for the latest SMS message to match the provided filter conditions such as body contains keyword.

Wait until a phone number meets given conditions or return immediately if already met

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
wait_for_single_sms_options = MailSlurpClient::WaitForSingleSmsOptions.new # WaitForSingleSmsOptions | 

begin
  #Wait for the latest SMS message to match the provided filter conditions such as body contains keyword.
  result = api_instance.wait_for_latest_sms(wait_for_single_sms_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WaitForControllerApi->wait_for_latest_sms: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait_for_single_sms_options** | [**WaitForSingleSmsOptions**](WaitForSingleSmsOptions)|  | 

### Return type

[**SmsDto**](SmsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## wait_for_matching_emails

> Array&lt;EmailPreview&gt; wait_for_matching_emails(inbox_id, count, match_options, opts)

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
inbox_id = 'inbox_id_example' # String | Id of the inbox we are fetching emails from
count = 56 # Integer | Number of emails to wait for. Must be greater or equal to 1
match_options = MailSlurpClient::MatchOptions.new # MatchOptions | 
opts = {
  before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter for emails that were received before the given timestamp
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter for emails that were received after the given timestamp
  sort: 'sort_example', # String | Sort direction
  delay: 56, # Integer | Max milliseconds delay between calls
  timeout: 56, # Integer | Max milliseconds to wait
  unread_only: false # Boolean | Optional filter for unread only
}

begin
  #Wait or return list of emails that match simple matching patterns
  result = api_instance.wait_for_matching_emails(inbox_id, count, match_options, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WaitForControllerApi->wait_for_matching_emails: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| Id of the inbox we are fetching emails from | 
 **count** | **Integer**| Number of emails to wait for. Must be greater or equal to 1 | 
 **match_options** | [**MatchOptions**](MatchOptions)|  | 
 **before** | **DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **sort** | **String**| Sort direction | [optional] 
 **delay** | **Integer**| Max milliseconds delay between calls | [optional] 
 **timeout** | **Integer**| Max milliseconds to wait | [optional] 
 **unread_only** | **Boolean**| Optional filter for unread only | [optional] [default to false]

### Return type

[**Array&lt;EmailPreview&gt;**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## wait_for_matching_first_email

> Email wait_for_matching_first_email(inbox_id, match_options, opts)

Wait for or return the first email that matches provided MatchOptions array

Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.

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
inbox_id = 'inbox_id_example' # String | Id of the inbox we are matching an email for
match_options = MailSlurpClient::MatchOptions.new # MatchOptions | 
opts = {
  timeout: 56, # Integer | Max milliseconds to wait
  unread_only: false, # Boolean | Optional filter for unread only
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter for emails that were received after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter for emails that were received before the given timestamp
  sort: 'sort_example', # String | Sort direction
  delay: 56 # Integer | Max milliseconds delay between calls
}

begin
  #Wait for or return the first email that matches provided MatchOptions array
  result = api_instance.wait_for_matching_first_email(inbox_id, match_options, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WaitForControllerApi->wait_for_matching_first_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| Id of the inbox we are matching an email for | 
 **match_options** | [**MatchOptions**](MatchOptions)|  | 
 **timeout** | **Integer**| Max milliseconds to wait | [optional] 
 **unread_only** | **Boolean**| Optional filter for unread only | [optional] [default to false]
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **before** | **DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **sort** | **String**| Sort direction | [optional] 
 **delay** | **Integer**| Max milliseconds delay between calls | [optional] 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## wait_for_nth_email

> Email wait_for_nth_email(opts)

Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.

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
  unread_only: false, # Boolean | Optional filter for unread only
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter for emails that were received after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter for emails that were received before the given timestamp
  sort: 'sort_example', # String | Sort direction
  delay: 56 # Integer | Max milliseconds delay between calls
}

begin
  #Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.
  result = api_instance.wait_for_nth_email(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WaitForControllerApi->wait_for_nth_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| Id of the inbox you are fetching emails from | [optional] 
 **index** | **Integer**| Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index&#x3D;1 | [optional] [default to 0]
 **timeout** | **Integer**| Max milliseconds to wait for the nth email if not already present | [optional] 
 **unread_only** | **Boolean**| Optional filter for unread only | [optional] [default to false]
 **since** | **DateTime**| Filter for emails that were received after the given timestamp | [optional] 
 **before** | **DateTime**| Filter for emails that were received before the given timestamp | [optional] 
 **sort** | **String**| Sort direction | [optional] 
 **delay** | **Integer**| Max milliseconds delay between calls | [optional] 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## wait_for_sms

> Array&lt;SmsPreview&gt; wait_for_sms(wait_for_sms_conditions)

Wait for an SMS message to match the provided filter conditions such as body contains keyword.

Generic waitFor method that will wait until a phone number meets given conditions or return immediately if already met

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
wait_for_sms_conditions = MailSlurpClient::WaitForSmsConditions.new # WaitForSmsConditions | 

begin
  #Wait for an SMS message to match the provided filter conditions such as body contains keyword.
  result = api_instance.wait_for_sms(wait_for_sms_conditions)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WaitForControllerApi->wait_for_sms: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait_for_sms_conditions** | [**WaitForSmsConditions**](WaitForSmsConditions)|  | 

### Return type

[**Array&lt;SmsPreview&gt;**](SmsPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

