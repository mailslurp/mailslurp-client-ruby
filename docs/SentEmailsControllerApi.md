# MailSlurpClient::SentEmailsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_sent_email**](SentEmailsControllerApi.md#get_sent_email) | **GET** /sent/{id} | Get sent email receipt
[**get_sent_emails**](SentEmailsControllerApi.md#get_sent_emails) | **GET** /sent | Get all sent emails in paginated form



## get_sent_email

> SentEmailDto get_sent_email(id)

Get sent email receipt

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

api_instance = MailSlurpClient::SentEmailsControllerApi.new
id = 'id_example' # String | id

begin
  #Get sent email receipt
  result = api_instance.get_sent_email(id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->get_sent_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| id | 

### Return type

[**SentEmailDto**](SentEmailDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sent_emails

> PageSentEmailProjection get_sent_emails(opts)

Get all sent emails in paginated form

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

api_instance = MailSlurpClient::SentEmailsControllerApi.new
opts = {
  inbox_id: 'inbox_id_example', # String | Optional inboxId to filter sender of sent emails by
  page: 0, # Integer | Optional page index in inbox sent email list pagination
  size: 20, # Integer | Optional page size in inbox sent email list pagination
  sort: 'ASC' # String | Optional createdAt sort direction ASC or DESC
}

begin
  #Get all sent emails in paginated form
  result = api_instance.get_sent_emails(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->get_sent_emails: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| Optional inboxId to filter sender of sent emails by | [optional] 
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

