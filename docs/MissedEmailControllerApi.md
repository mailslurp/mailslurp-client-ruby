# MailSlurpClient::MissedEmailControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_missed_emails**](MissedEmailControllerApi#get_all_missed_emails) | **GET** /missed-emails | Get all MissedEmails in paginated format
[**get_missed_email**](MissedEmailControllerApi#get_missed_email) | **GET** /missed-emails/{MissedEmailId} | Get MissedEmail



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
  page: 0, # Integer | Optional page index in inbox list pagination
  search_filter: 'search_filter_example', # String | Optional search filter
  size: 20, # Integer | Optional page size in inbox list pagination
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
 **page** | **Integer**| Optional page index in inbox list pagination | [optional] [default to 0]
 **search_filter** | **String**| Optional search filter | [optional] 
 **size** | **Integer**| Optional page size in inbox list pagination | [optional] [default to 20]
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
missed_email_id = 'missed_email_id_example' # String | MissedEmailId

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
 **missed_email_id** | [**String**]()| MissedEmailId | 

### Return type

[**MissedEmail**](MissedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

