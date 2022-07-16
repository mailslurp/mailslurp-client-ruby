# MailSlurpClient::SmsControllerApi

All URIs are relative to *https://ruby.api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_sms_message**](SmsControllerApi#delete_sms_message) | **DELETE** /sms/{smsId} | Delete SMS message.
[**delete_sms_messages**](SmsControllerApi#delete_sms_messages) | **DELETE** /sms | Delete all SMS messages
[**get_sms_message**](SmsControllerApi#get_sms_message) | **GET** /sms/{smsId} | Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
[**get_sms_messages_paginated**](SmsControllerApi#get_sms_messages_paginated) | **GET** /sms | Get all SMS messages in all phone numbers in paginated form. .



## delete_sms_message

> delete_sms_message(sms_id)

Delete SMS message.

Delete an SMS message

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

api_instance = MailSlurpClient::SmsControllerApi.new
sms_id = 'sms_id_example' # String | 

begin
  #Delete SMS message.
  api_instance.delete_sms_message(sms_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SmsControllerApi->delete_sms_message: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_id** | [**String**]()|  | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_sms_messages

> delete_sms_messages(opts)

Delete all SMS messages

Delete all SMS messages or all messages for a given phone number

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

api_instance = MailSlurpClient::SmsControllerApi.new
opts = {
  phone_number_id: 'phone_number_id_example' # String | 
}

begin
  #Delete all SMS messages
  api_instance.delete_sms_messages(opts)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SmsControllerApi->delete_sms_messages: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number_id** | [**String**]()|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_sms_message

> SmsMessage get_sms_message(sms_id)

Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.

Returns a SMS summary object with content.

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

api_instance = MailSlurpClient::SmsControllerApi.new
sms_id = 'sms_id_example' # String | 

begin
  #Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
  result = api_instance.get_sms_message(sms_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SmsControllerApi->get_sms_message: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sms_id** | [**String**]()|  | 

### Return type

[**SmsMessage**](SmsMessage)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_sms_messages_paginated

> PageSmsProjection get_sms_messages_paginated(opts)

Get all SMS messages in all phone numbers in paginated form. .

By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages

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

api_instance = MailSlurpClient::SmsControllerApi.new
opts = {
  phone_number: 'phone_number_example', # String | Optional receiving phone number to filter SMS messages for
  page: 0, # Integer | Optional page index in SMS list pagination
  size: 20, # Integer | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  unread_only: false, # Boolean | Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional filter SMSs received after given date time
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional filter SMSs received before given date time
}

begin
  #Get all SMS messages in all phone numbers in paginated form. .
  result = api_instance.get_sms_messages_paginated(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling SmsControllerApi->get_sms_messages_paginated: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number** | [**String**]()| Optional receiving phone number to filter SMS messages for | [optional] 
 **page** | **Integer**| Optional page index in SMS list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **unread_only** | **Boolean**| Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]
 **since** | **DateTime**| Optional filter SMSs received after given date time | [optional] 
 **before** | **DateTime**| Optional filter SMSs received before given date time | [optional] 

### Return type

[**PageSmsProjection**](PageSmsProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

