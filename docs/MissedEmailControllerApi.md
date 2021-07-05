# MailSlurpClient::MissedEmailControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_missed_emails**](MissedEmailControllerApi#get_all_missed_emails) | **GET** /missed-emails | Get all MissedEmails in paginated format
[**get_missed_email**](MissedEmailControllerApi#get_missed_email) | **GET** /missed-emails/{missedEmailId} | Get MissedEmail
[**wait_for_nth_missed_email**](MissedEmailControllerApi#wait_for_nth_missed_email) | **GET** /missed-emails/waitForNthMissedEmail | Wait for Nth missed email



## get_all_missed_emails

> PageMissedEmailProjection get_all_missed_emails(opts)

Get all MissedEmails in paginated format

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

api_instance = MailSlurpClient::MissedEmailControllerApi.new
opts = {
  inbox_id: 'inbox_id_example', # String | Optional inbox ID filter
  page: 0, # Integer | Optional page index in list pagination
  search_filter: 'search_filter_example', # String | Optional search filter
  size: 20, # Integer | Optional page size in list pagination
  sort: 'ASC' # String | Optional createdAt sort direction ASC or DESC
}

begin
  #Get all MissedEmails in paginated format
  result = api_instance.get_all_missed_emails(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling MissedEmailControllerApi->get_all_missed_emails: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| Optional inbox ID filter | [optional] 
 **page** | **Integer**| Optional page index in list pagination | [optional] [default to 0]
 **search_filter** | **String**| Optional search filter | [optional] 
 **size** | **Integer**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageMissedEmailProjection**](PageMissedEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_missed_email

> MissedEmail get_missed_email(missed_email_id)

Get MissedEmail

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

api_instance = MailSlurpClient::MissedEmailControllerApi.new
missed_email_id = 'missed_email_id_example' # String | missedEmailId

begin
  #Get MissedEmail
  result = api_instance.get_missed_email(missed_email_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling MissedEmailControllerApi->get_missed_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **missed_email_id** | [**String**]()| missedEmailId | 

### Return type

[**MissedEmail**](MissedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## wait_for_nth_missed_email

> MissedEmail wait_for_nth_missed_email(opts)

Wait for Nth missed email

Wait for 0 based index missed email

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

api_instance = MailSlurpClient::MissedEmailControllerApi.new
opts = {
  inbox_id: 'inbox_id_example', # String | Optional inbox ID filter
  index: 56, # Integer | Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index=1
  timeout: 56 # Integer | Optional timeout milliseconds
}

begin
  #Wait for Nth missed email
  result = api_instance.wait_for_nth_missed_email(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling MissedEmailControllerApi->wait_for_nth_missed_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| Optional inbox ID filter | [optional] 
 **index** | **Integer**| Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index&#x3D;1 | [optional] 
 **timeout** | **Integer**| Optional timeout milliseconds | [optional] 

### Return type

[**MissedEmail**](MissedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

