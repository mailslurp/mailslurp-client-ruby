# MailSlurpClient::EmailControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_all_emails**](EmailControllerApi.md#delete_all_emails) | **DELETE** /emails | Delete all emails
[**delete_email**](EmailControllerApi.md#delete_email) | **DELETE** /emails/{emailId} | Delete Email
[**download_attachment**](EmailControllerApi.md#download_attachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment
[**forward_email**](EmailControllerApi.md#forward_email) | **POST** /emails/{emailId}/forward | Forward Email
[**get_attachment_meta_data**](EmailControllerApi.md#get_attachment_meta_data) | **GET** /emails/{emailId}/attachments/{attachmentId}/metadata | Get email attachment metadata
[**get_attachments**](EmailControllerApi.md#get_attachments) | **GET** /emails/{emailId}/attachments | Get all email attachment metadata
[**get_email**](EmailControllerApi.md#get_email) | **GET** /emails/{emailId} | Get Email Content
[**get_emails_paginated**](EmailControllerApi.md#get_emails_paginated) | **GET** /emails | Get all emails
[**get_raw_email_contents**](EmailControllerApi.md#get_raw_email_contents) | **GET** /emails/{emailId}/raw | Get Raw Email Content
[**validate_email**](EmailControllerApi.md#validate_email) | **POST** /emails/{emailId}/validate | Validate email



## delete_all_emails

> delete_all_emails

Delete all emails

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

api_instance = MailSlurpClient::EmailControllerApi.new

begin
  #Delete all emails
  api_instance.delete_all_emails
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->delete_all_emails: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_email

> delete_email(email_id)

Delete Email

Deletes an email and removes it from the inbox

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

api_instance = MailSlurpClient::EmailControllerApi.new
email_id = 'email_id_example' # String | emailId

begin
  #Delete Email
  api_instance.delete_email(email_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->delete_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**](.md)| emailId | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## download_attachment

> String download_attachment(attachment_id, email_id, opts)

Get email attachment

Returns the specified attachment for a given email as a byte stream (file download). Get the attachmentId from the email response.

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

api_instance = MailSlurpClient::EmailControllerApi.new
attachment_id = 'attachment_id_example' # String | attachmentId
email_id = 'email_id_example' # String | emailId
opts = {
  api_key: 'api_key_example' # String | Can pass apiKey in url for this request if you wish to download the file in a browser
}

begin
  #Get email attachment
  result = api_instance.download_attachment(attachment_id, email_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->download_attachment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **String**| attachmentId | 
 **email_id** | [**String**](.md)| emailId | 
 **api_key** | **String**| Can pass apiKey in url for this request if you wish to download the file in a browser | [optional] 

### Return type

**String**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## forward_email

> forward_email(email_id, forward_email_options)

Forward Email

Forward email content to given recipients

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

api_instance = MailSlurpClient::EmailControllerApi.new
email_id = 'email_id_example' # String | emailId
forward_email_options = MailSlurpClient::ForwardEmailOptions.new # ForwardEmailOptions | forwardEmailOptions

begin
  #Forward Email
  api_instance.forward_email(email_id, forward_email_options)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->forward_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**](.md)| emailId | 
 **forward_email_options** | [**ForwardEmailOptions**](ForwardEmailOptions.md)| forwardEmailOptions | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## get_attachment_meta_data

> AttachmentMetaData get_attachment_meta_data(attachment_id, email_id)

Get email attachment metadata

Returns the metadata such as name and content-type for a given attachment and email.

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

api_instance = MailSlurpClient::EmailControllerApi.new
attachment_id = 'attachment_id_example' # String | attachmentId
email_id = 'email_id_example' # String | emailId

begin
  #Get email attachment metadata
  result = api_instance.get_attachment_meta_data(attachment_id, email_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_attachment_meta_data: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **String**| attachmentId | 
 **email_id** | [**String**](.md)| emailId | 

### Return type

[**AttachmentMetaData**](AttachmentMetaData.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_attachments

> Array&lt;AttachmentMetaData&gt; get_attachments(email_id)

Get all email attachment metadata

Returns an array of attachment metadata such as name and content-type for a given email if present.

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

api_instance = MailSlurpClient::EmailControllerApi.new
email_id = 'email_id_example' # String | emailId

begin
  #Get all email attachment metadata
  result = api_instance.get_attachments(email_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_attachments: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**](.md)| emailId | 

### Return type

[**Array&lt;AttachmentMetaData&gt;**](AttachmentMetaData.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email

> Email get_email(email_id)

Get Email Content

Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawMessage endpoint

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

api_instance = MailSlurpClient::EmailControllerApi.new
email_id = 'email_id_example' # String | emailId

begin
  #Get Email Content
  result = api_instance.get_email(email_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**](.md)| emailId | 

### Return type

[**Email**](Email.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_emails_paginated

> PageEmailProjection get_emails_paginated(opts)

Get all emails

Responses are paginated

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

api_instance = MailSlurpClient::EmailControllerApi.new
opts = {
  inbox_id: ['inbox_id_example'], # Array<String> | Optional inbox ids to filter by. Can be repeated
  page: 0, # Integer | Optional page index in email list pagination
  size: 20, # Integer | Optional page size in email list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  unread_only: false # Boolean | Optional filter for unread emails only
}

begin
  #Get all emails
  result = api_instance.get_emails_paginated(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_emails_paginated: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**Array&lt;String&gt;**](String.md)| Optional inbox ids to filter by. Can be repeated | [optional] 
 **page** | **Integer**| Optional page index in email list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **unread_only** | **Boolean**| Optional filter for unread emails only | [optional] [default to false]

### Return type

[**PageEmailProjection**](PageEmailProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_raw_email_contents

> String get_raw_email_contents(email_id)

Get Raw Email Content

Returns a raw, unparsed and unprocessed email

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

api_instance = MailSlurpClient::EmailControllerApi.new
email_id = 'email_id_example' # String | emailId

begin
  #Get Raw Email Content
  result = api_instance.get_raw_email_contents(email_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_raw_email_contents: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**](.md)| emailId | 

### Return type

**String**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain


## validate_email

> ValidationDto validate_email(email_id)

Validate email

Validate HTML content of email

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

api_instance = MailSlurpClient::EmailControllerApi.new
email_id = 'email_id_example' # String | emailId

begin
  #Validate email
  result = api_instance.validate_email(email_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->validate_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**](.md)| emailId | 

### Return type

[**ValidationDto**](ValidationDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

