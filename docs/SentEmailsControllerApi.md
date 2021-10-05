# MailSlurpClient::SentEmailsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_sent_tracking_pixels**](SentEmailsControllerApi#get_all_sent_tracking_pixels) | **GET** /sent/tracking-pixels | Get all sent email tracking pixels in paginated form
[**get_sent_email**](SentEmailsControllerApi#get_sent_email) | **GET** /sent/{id} | Get sent email receipt
[**get_sent_email_html_content**](SentEmailsControllerApi#get_sent_email_html_content) | **GET** /sent/{id}/html | Get sent email HTML content
[**get_sent_email_tracking_pixels**](SentEmailsControllerApi#get_sent_email_tracking_pixels) | **GET** /sent/{id}/tracking-pixels | Get all tracking pixels for a sent email in paginated form
[**get_sent_emails**](SentEmailsControllerApi#get_sent_emails) | **GET** /sent | Get all sent emails in paginated form
[**get_sent_organization_emails**](SentEmailsControllerApi#get_sent_organization_emails) | **GET** /sent/organization | Get all sent organization emails in paginated form



## get_all_sent_tracking_pixels

> PageTrackingPixelProjection get_all_sent_tracking_pixels(opts)

Get all sent email tracking pixels in paginated form

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
  before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at before the given timestamp
  page: 0, # Integer | Optional page index in sent email tracking pixel list pagination
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  size: 20, # Integer | Optional page size in sent email tracking pixel list pagination
  sort: 'ASC' # String | Optional createdAt sort direction ASC or DESC
}

begin
  #Get all sent email tracking pixels in paginated form
  result = api_instance.get_all_sent_tracking_pixels(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->get_all_sent_tracking_pixels: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **page** | **Integer**| Optional page index in sent email tracking pixel list pagination | [optional] [default to 0]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **size** | **Integer**| Optional page size in sent email tracking pixel list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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
 **id** | [**String**]()| id | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sent_email_html_content

> String get_sent_email_html_content(id)

Get sent email HTML content

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
  #Get sent email HTML content
  result = api_instance.get_sent_email_html_content(id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->get_sent_email_html_content: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()| id | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## get_sent_email_tracking_pixels

> PageTrackingPixelProjection get_sent_email_tracking_pixels(id, opts)

Get all tracking pixels for a sent email in paginated form

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
opts = {
  before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at before the given timestamp
  page: 0, # Integer | Optional page index in sent email tracking pixel list pagination
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  size: 20, # Integer | Optional page size in sent email tracking pixel list pagination
  sort: 'ASC' # String | Optional createdAt sort direction ASC or DESC
}

begin
  #Get all tracking pixels for a sent email in paginated form
  result = api_instance.get_sent_email_tracking_pixels(id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->get_sent_email_tracking_pixels: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()| id | 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **page** | **Integer**| Optional page index in sent email tracking pixel list pagination | [optional] [default to 0]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **size** | **Integer**| Optional page size in sent email tracking pixel list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

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
  before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at before the given timestamp
  inbox_id: 'inbox_id_example', # String | Optional inboxId to filter sender of sent emails by
  page: 0, # Integer | Optional page index in inbox sent email list pagination
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
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
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **inbox_id** | [**String**]()| Optional inboxId to filter sender of sent emails by | [optional] 
 **page** | **Integer**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **size** | **Integer**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sent_organization_emails

> PageSentEmailProjection get_sent_organization_emails(opts)

Get all sent organization emails in paginated form

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
  before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at before the given timestamp
  inbox_id: 'inbox_id_example', # String | Optional inboxId to filter sender of sent emails by
  page: 0, # Integer | Optional page index in sent email list pagination
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  size: 20, # Integer | Optional page size in sent email list pagination
  sort: 'ASC' # String | Optional createdAt sort direction ASC or DESC
}

begin
  #Get all sent organization emails in paginated form
  result = api_instance.get_sent_organization_emails(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->get_sent_organization_emails: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **inbox_id** | [**String**]()| Optional inboxId to filter sender of sent emails by | [optional] 
 **page** | **Integer**| Optional page index in sent email list pagination | [optional] [default to 0]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **size** | **Integer**| Optional page size in sent email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

