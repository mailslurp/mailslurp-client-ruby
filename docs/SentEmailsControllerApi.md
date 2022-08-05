# MailSlurpClient::SentEmailsControllerApi

All URIs are relative to *https://ruby.api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_all_sent_emails**](SentEmailsControllerApi#delete_all_sent_emails) | **DELETE** /sent | Delete all sent email receipts
[**delete_sent_email**](SentEmailsControllerApi#delete_sent_email) | **DELETE** /sent/{id} | Delete sent email receipt
[**get_all_sent_tracking_pixels**](SentEmailsControllerApi#get_all_sent_tracking_pixels) | **GET** /sent/tracking-pixels | 
[**get_raw_sent_email_contents**](SentEmailsControllerApi#get_raw_sent_email_contents) | **GET** /sent/{emailId}/raw | Get raw sent email string. Returns unparsed raw SMTP message with headers and body.
[**get_raw_sent_email_json**](SentEmailsControllerApi#get_raw_sent_email_json) | **GET** /sent/{emailId}/raw/json | Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.
[**get_sent_delivery_status**](SentEmailsControllerApi#get_sent_delivery_status) | **GET** /sent/delivery-status/{deliveryId} | 
[**get_sent_delivery_statuses**](SentEmailsControllerApi#get_sent_delivery_statuses) | **GET** /sent/delivery-status | 
[**get_sent_delivery_statuses_by_sent_id**](SentEmailsControllerApi#get_sent_delivery_statuses_by_sent_id) | **GET** /sent/{sentId}/delivery-status | 
[**get_sent_email**](SentEmailsControllerApi#get_sent_email) | **GET** /sent/{id} | Get sent email receipt
[**get_sent_email_html_content**](SentEmailsControllerApi#get_sent_email_html_content) | **GET** /sent/{id}/html | Get sent email HTML content
[**get_sent_email_preview_ur_ls**](SentEmailsControllerApi#get_sent_email_preview_ur_ls) | **GET** /sent/{id}/urls | Get sent email URL for viewing in browser or downloading
[**get_sent_email_tracking_pixels**](SentEmailsControllerApi#get_sent_email_tracking_pixels) | **GET** /sent/{id}/tracking-pixels | 
[**get_sent_emails**](SentEmailsControllerApi#get_sent_emails) | **GET** /sent | Get all sent emails in paginated form
[**get_sent_emails_with_queue_results**](SentEmailsControllerApi#get_sent_emails_with_queue_results) | **GET** /sent/queue-results | Get results of email sent with queues in paginated form
[**get_sent_organization_emails**](SentEmailsControllerApi#get_sent_organization_emails) | **GET** /sent/organization | 
[**wait_for_delivery_statuses**](SentEmailsControllerApi#wait_for_delivery_statuses) | **GET** /sent/delivery-status/wait-for | 



## delete_all_sent_emails

> delete_all_sent_emails

Delete all sent email receipts

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

begin
  #Delete all sent email receipts
  api_instance.delete_all_sent_emails
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->delete_all_sent_emails: #{e}"
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


## delete_sent_email

> delete_sent_email(id)

Delete sent email receipt

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
id = 'id_example' # String | 

begin
  #Delete sent email receipt
  api_instance.delete_sent_email(id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->delete_sent_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()|  | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


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
  page: 0, # Integer | Optional page index in sent email tracking pixel list pagination
  size: 20, # Integer | Optional page size in sent email tracking pixel list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  result = api_instance.get_all_sent_tracking_pixels(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->get_all_sent_tracking_pixels: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index in sent email tracking pixel list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in sent email tracking pixel list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_raw_sent_email_contents

> String get_raw_sent_email_contents(email_id)

Get raw sent email string. Returns unparsed raw SMTP message with headers and body.

Returns a raw, unparsed, and unprocessed sent email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawSentEmailJson endpoint

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
email_id = 'email_id_example' # String | ID of email

begin
  #Get raw sent email string. Returns unparsed raw SMTP message with headers and body.
  result = api_instance.get_raw_sent_email_contents(email_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->get_raw_sent_email_contents: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**]()| ID of email | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain


## get_raw_sent_email_json

> RawEmailJson get_raw_sent_email_json(email_id)

Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.

Returns a raw, unparsed, and unprocessed sent email wrapped in a JSON response object for easier handling when compared with the getRawSentEmail text/plain response

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
email_id = 'email_id_example' # String | ID of email

begin
  #Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.
  result = api_instance.get_raw_sent_email_json(email_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->get_raw_sent_email_json: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**]()| ID of email | 

### Return type

[**RawEmailJson**](RawEmailJson)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_sent_delivery_status

> DeliveryStatusDto get_sent_delivery_status(delivery_id)



Get a sent email delivery status

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
delivery_id = 'delivery_id_example' # String | 

begin
  result = api_instance.get_sent_delivery_status(delivery_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->get_sent_delivery_status: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_id** | [**String**]()|  | 

### Return type

[**DeliveryStatusDto**](DeliveryStatusDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_sent_delivery_statuses

> PageDeliveryStatus get_sent_delivery_statuses(opts)



Get all sent email delivery statuses

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
  page: 0, # Integer | Optional page index in delivery status list pagination
  size: 20, # Integer | Optional page size in delivery status list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  result = api_instance.get_sent_delivery_statuses(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->get_sent_delivery_statuses: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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


## get_sent_delivery_statuses_by_sent_id

> PageDeliveryStatus get_sent_delivery_statuses_by_sent_id(sent_id, opts)



Get all sent email delivery statuses

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
sent_id = 'sent_id_example' # String | 
opts = {
  page: 0, # Integer | Optional page index in delivery status list pagination
  size: 20, # Integer | Optional page size in delivery status list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  result = api_instance.get_sent_delivery_statuses_by_sent_id(sent_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->get_sent_delivery_statuses_by_sent_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sent_id** | [**String**]()|  | 
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
id = 'id_example' # String | 

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
 **id** | [**String**]()|  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


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
id = 'id_example' # String | 

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
 **id** | [**String**]()|  | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## get_sent_email_preview_ur_ls

> EmailPreviewUrls get_sent_email_preview_ur_ls(id)

Get sent email URL for viewing in browser or downloading

Get a list of URLs for sent email content as text/html or raw SMTP message for viewing the message in a browser.

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
id = 'id_example' # String | 

begin
  #Get sent email URL for viewing in browser or downloading
  result = api_instance.get_sent_email_preview_ur_ls(id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->get_sent_email_preview_ur_ls: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()|  | 

### Return type

[**EmailPreviewUrls**](EmailPreviewUrls)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


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
id = 'id_example' # String | 
opts = {
  page: 0, # Integer | Optional page index in sent email tracking pixel list pagination
  size: 20, # Integer | Optional page size in sent email tracking pixel list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  result = api_instance.get_sent_email_tracking_pixels(id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->get_sent_email_tracking_pixels: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()|  | 
 **page** | **Integer**| Optional page index in sent email tracking pixel list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in sent email tracking pixel list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


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
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
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
 **inbox_id** | [**String**]()| Optional inboxId to filter sender of sent emails by | [optional] 
 **page** | **Integer**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_sent_emails_with_queue_results

> PageSentEmailWithQueueProjection get_sent_emails_with_queue_results(opts)

Get results of email sent with queues in paginated form

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
  page: 0, # Integer | Optional page index in inbox sent email list pagination
  size: 20, # Integer | Optional page size in inbox sent email list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  #Get results of email sent with queues in paginated form
  result = api_instance.get_sent_emails_with_queue_results(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->get_sent_emails_with_queue_results: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageSentEmailWithQueueProjection**](PageSentEmailWithQueueProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


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
  inbox_id: 'inbox_id_example', # String | Optional inboxId to filter sender of sent emails by
  page: 0, # Integer | Optional page index in sent email list pagination
  size: 20, # Integer | Optional page size in sent email list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  result = api_instance.get_sent_organization_emails(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->get_sent_organization_emails: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| Optional inboxId to filter sender of sent emails by | [optional] 
 **page** | **Integer**| Optional page index in sent email list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in sent email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## wait_for_delivery_statuses

> DeliveryStatusDto wait_for_delivery_statuses(opts)



Wait for delivery statuses

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
  sent_id: 'sent_id_example', # String | Optional sent email ID filter
  inbox_id: 'inbox_id_example', # String | Optional inbox ID filter
  timeout: 56, # Integer | Optional timeout milliseconds
  index: 56, # Integer | Zero based index of the delivery status to wait for. If 1 delivery status already and you want to wait for the 2nd pass index=1
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  result = api_instance.wait_for_delivery_statuses(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SentEmailsControllerApi->wait_for_delivery_statuses: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sent_id** | [**String**]()| Optional sent email ID filter | [optional] 
 **inbox_id** | [**String**]()| Optional inbox ID filter | [optional] 
 **timeout** | **Integer**| Optional timeout milliseconds | [optional] 
 **index** | **Integer**| Zero based index of the delivery status to wait for. If 1 delivery status already and you want to wait for the 2nd pass index&#x3D;1 | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**DeliveryStatusDto**](DeliveryStatusDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

