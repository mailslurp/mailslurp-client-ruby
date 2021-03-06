# MailSlurpClient::EmailControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_all_emails**](EmailControllerApi#delete_all_emails) | **DELETE** /emails | Delete all emails in all inboxes.
[**delete_email**](EmailControllerApi#delete_email) | **DELETE** /emails/{emailId} | Delete an email
[**download_attachment**](EmailControllerApi#download_attachment) | **GET** /emails/{emailId}/attachments/{attachmentId} | Get email attachment bytes. Returned as &#x60;octet-stream&#x60; with content type header. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints and convert the base 64 encoded content to a file or string.
[**download_attachment_base64**](EmailControllerApi#download_attachment_base64) | **GET** /emails/{emailId}/attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string as an alternative to binary responses. Decode the &#x60;base64FileContents&#x60; as a &#x60;utf-8&#x60; encoded string or array of bytes depending on the &#x60;contentType&#x60;.
[**download_body**](EmailControllerApi#download_body) | **GET** /emails/{emailId}/body | Get email body as string. Returned as &#x60;plain/text&#x60; with content type header.
[**download_body_bytes**](EmailControllerApi#download_body_bytes) | **GET** /emails/{emailId}/body-bytes | Get email body in bytes. Returned as &#x60;octet-stream&#x60; with content type header.
[**forward_email**](EmailControllerApi#forward_email) | **POST** /emails/{emailId}/forward | Forward email to recipients
[**get_attachment_meta_data**](EmailControllerApi#get_attachment_meta_data) | **GET** /emails/{emailId}/attachments/{attachmentId}/metadata | Get email attachment metadata. This is the &#x60;contentType&#x60; and &#x60;contentLength&#x60; of an attachment. To get the individual attachments  use the &#x60;downloadAttachment&#x60; methods.
[**get_attachments1**](EmailControllerApi#get_attachments1) | **GET** /emails/{emailId}/attachments | Get all email attachment metadata. Metadata includes name and size of attachments.
[**get_email**](EmailControllerApi#get_email) | **GET** /emails/{emailId} | Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
[**get_email_content_match**](EmailControllerApi#get_email_content_match) | **POST** /emails/{emailId}/contentMatch | Get email content regex pattern match results. Runs regex against email body and returns match groups.
[**get_email_html**](EmailControllerApi#get_email_html) | **GET** /emails/{emailId}/html | Get email content as HTML. For displaying emails in browser context.
[**get_email_html_query**](EmailControllerApi#get_email_html_query) | **GET** /emails/{emailId}/htmlQuery | Parse and return text from an email, stripping HTML and decoding encoded characters
[**get_email_text_lines**](EmailControllerApi#get_email_text_lines) | **GET** /emails/{emailId}/textLines | Parse and return text from an email, stripping HTML and decoding encoded characters
[**get_emails_paginated**](EmailControllerApi#get_emails_paginated) | **GET** /emails | Get all emails in all inboxes in paginated form. Email API list all.
[**get_latest_email**](EmailControllerApi#get_latest_email) | **GET** /emails/latest | Get latest email in all inboxes. Most recently received.
[**get_latest_email_in_inbox**](EmailControllerApi#get_latest_email_in_inbox) | **GET** /emails/latestIn | Get latest email in an inbox. Use &#x60;WaitForController&#x60; to get emails that may not have arrived yet.
[**get_organization_emails_paginated**](EmailControllerApi#get_organization_emails_paginated) | **GET** /emails/organization | Get all organization emails. List team or shared test email accounts
[**get_raw_email_contents**](EmailControllerApi#get_raw_email_contents) | **GET** /emails/{emailId}/raw | Get raw email string. Returns unparsed raw SMTP message with headers and body.
[**get_raw_email_json**](EmailControllerApi#get_raw_email_json) | **GET** /emails/{emailId}/raw/json | Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
[**get_unread_email_count**](EmailControllerApi#get_unread_email_count) | **GET** /emails/unreadCount | Get unread email count
[**reply_to_email**](EmailControllerApi#reply_to_email) | **PUT** /emails/{emailId} | Reply to an email
[**send_email_source_optional**](EmailControllerApi#send_email_source_optional) | **POST** /emails | Send email
[**validate_email**](EmailControllerApi#validate_email) | **POST** /emails/{emailId}/validate | Validate email HTML contents



## delete_all_emails

> delete_all_emails

Delete all emails in all inboxes.

Deletes all emails in your account. Be careful as emails cannot be recovered

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
  #Delete all emails in all inboxes.
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

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_email

> delete_email(email_id)

Delete an email

Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.

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
email_id = 'email_id_example' # String | ID of email to delete

begin
  #Delete an email
  api_instance.delete_email(email_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->delete_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**]()| ID of email to delete | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## download_attachment

> String download_attachment(attachment_id, email_id, opts)

Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.

Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.

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
attachment_id = 'attachment_id_example' # String | ID of attachment
email_id = 'email_id_example' # String | ID of email
opts = {
  api_key: 'api_key_example' # String | Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly.
}

begin
  #Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.
  result = api_instance.download_attachment(attachment_id, email_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->download_attachment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **String**| ID of attachment | 
 **email_id** | [**String**]()| ID of email | 
 **api_key** | **String**| Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly. | [optional] 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## download_attachment_base64

> DownloadAttachmentDto download_attachment_base64(attachment_id, email_id)

Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.

Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.

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
attachment_id = 'attachment_id_example' # String | ID of attachment
email_id = 'email_id_example' # String | ID of email

begin
  #Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.
  result = api_instance.download_attachment_base64(attachment_id, email_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->download_attachment_base64: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **String**| ID of attachment | 
 **email_id** | [**String**]()| ID of email | 

### Return type

[**DownloadAttachmentDto**](DownloadAttachmentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## download_body

> String download_body(email_id)

Get email body as string. Returned as `plain/text` with content type header.

Returns the specified email body for a given email as a string

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
email_id = 'email_id_example' # String | ID of email

begin
  #Get email body as string. Returned as `plain/text` with content type header.
  result = api_instance.download_body(email_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->download_body: #{e}"
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
- **Accept**: text/html, text/plain


## download_body_bytes

> String download_body_bytes(email_id)

Get email body in bytes. Returned as `octet-stream` with content type header.

Returns the specified email body for a given email as a stream / array of bytes.

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
email_id = 'email_id_example' # String | ID of email

begin
  #Get email body in bytes. Returned as `octet-stream` with content type header.
  result = api_instance.download_body_bytes(email_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->download_body_bytes: #{e}"
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
- **Accept**: application/octet-stream


## forward_email

> SentEmailDto forward_email(email_id, forward_email_options)

Forward email to recipients

Forward an existing email to new recipients. The sender of the email will be the inbox that received the email you are forwarding. You can override the sender with the `from` option. Note you must have access to the from address in MailSlurp to use the override. For more control consider fetching the email and sending it a new using the send email endpoints.

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
email_id = 'email_id_example' # String | ID of email
forward_email_options = MailSlurpClient::ForwardEmailOptions.new # ForwardEmailOptions | forwardEmailOptions

begin
  #Forward email to recipients
  result = api_instance.forward_email(email_id, forward_email_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->forward_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**]()| ID of email | 
 **forward_email_options** | [**ForwardEmailOptions**](ForwardEmailOptions)| forwardEmailOptions | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_attachment_meta_data

> AttachmentMetaData get_attachment_meta_data(attachment_id, email_id)

Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.

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
attachment_id = 'attachment_id_example' # String | ID of attachment
email_id = 'email_id_example' # String | ID of email

begin
  #Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.
  result = api_instance.get_attachment_meta_data(attachment_id, email_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_attachment_meta_data: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **String**| ID of attachment | 
 **email_id** | [**String**]()| ID of email | 

### Return type

[**AttachmentMetaData**](AttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_attachments1

> Array&lt;AttachmentMetaData&gt; get_attachments1(email_id)

Get all email attachment metadata. Metadata includes name and size of attachments.

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
email_id = 'email_id_example' # String | ID of email

begin
  #Get all email attachment metadata. Metadata includes name and size of attachments.
  result = api_instance.get_attachments1(email_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_attachments1: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**]()| ID of email | 

### Return type

[**Array&lt;AttachmentMetaData&gt;**](AttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email

> Email get_email(email_id, opts)

Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.

Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints

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
opts = {
  decode: false # Boolean | Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance `=D7`). This can be a pain for testing
}

begin
  #Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
  result = api_instance.get_email(email_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**]()| emailId | 
 **decode** | **Boolean**| Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance &#x60;&#x3D;D7&#x60;). This can be a pain for testing | [optional] [default to false]

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_content_match

> EmailContentMatchResult get_email_content_match(email_id, content_match_options)

Get email content regex pattern match results. Runs regex against email body and returns match groups.

Return the matches for a given Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `['code is: 123456', '123456']` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns. 

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
email_id = 'email_id_example' # String | ID of email to match against
content_match_options = MailSlurpClient::ContentMatchOptions.new # ContentMatchOptions | contentMatchOptions

begin
  #Get email content regex pattern match results. Runs regex against email body and returns match groups.
  result = api_instance.get_email_content_match(email_id, content_match_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_email_content_match: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**]()| ID of email to match against | 
 **content_match_options** | [**ContentMatchOptions**](ContentMatchOptions)| contentMatchOptions | 

### Return type

[**EmailContentMatchResult**](EmailContentMatchResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_email_html

> String get_email_html(email_id, opts)

Get email content as HTML. For displaying emails in browser context.

Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`

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
opts = {
  decode: false # Boolean | decode
}

begin
  #Get email content as HTML. For displaying emails in browser context.
  result = api_instance.get_email_html(email_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_email_html: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**]()| emailId | 
 **decode** | **Boolean**| decode | [optional] [default to false]

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## get_email_html_query

> EmailTextLinesResult get_email_html_query(email_id, opts)

Parse and return text from an email, stripping HTML and decoding encoded characters

Parse an email body and return the content as an array of text. HTML parsing uses JSoup which supports JQuery/CSS style selectors

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
email_id = 'email_id_example' # String | ID of email to perform HTML query on
opts = {
  html_selector: 'html_selector_example' # String | HTML selector to search for. Uses JQuery/JSoup/CSS style selector like '.my-div' to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information.
}

begin
  #Parse and return text from an email, stripping HTML and decoding encoded characters
  result = api_instance.get_email_html_query(email_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_email_html_query: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**]()| ID of email to perform HTML query on | 
 **html_selector** | **String**| HTML selector to search for. Uses JQuery/JSoup/CSS style selector like &#39;.my-div&#39; to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information. | [optional] 

### Return type

[**EmailTextLinesResult**](EmailTextLinesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_text_lines

> EmailTextLinesResult get_email_text_lines(email_id, opts)

Parse and return text from an email, stripping HTML and decoding encoded characters

Parse an email body and return the content as an array of strings. HTML parsing uses JSoup and UNIX line separators.

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
email_id = 'email_id_example' # String | ID of email to fetch text for
opts = {
  decode_html_entities: true, # Boolean | Decode HTML entities
  line_separator: 'line_separator_example' # String | Line separator character
}

begin
  #Parse and return text from an email, stripping HTML and decoding encoded characters
  result = api_instance.get_email_text_lines(email_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_email_text_lines: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**]()| ID of email to fetch text for | 
 **decode_html_entities** | **Boolean**| Decode HTML entities | [optional] 
 **line_separator** | **String**| Line separator character | [optional] 

### Return type

[**EmailTextLinesResult**](EmailTextLinesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_emails_paginated

> PageEmailProjection get_emails_paginated(opts)

Get all emails in all inboxes in paginated form. Email API list all.

By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages

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
  inbox_id: ['inbox_id_example'], # Array<String> | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
  page: 0, # Integer | Optional page index in email list pagination
  search_filter: 'false', # String | Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body
  size: 20, # Integer | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  unread_only: false # Boolean | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
}

begin
  #Get all emails in all inboxes in paginated form. Email API list all.
  result = api_instance.get_emails_paginated(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_emails_paginated: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**Array&lt;String&gt;**](String)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **page** | **Integer**| Optional page index in email list pagination | [optional] [default to 0]
 **search_filter** | **String**| Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body | [optional] [default to &#39;false&#39;]
 **size** | **Integer**| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **unread_only** | **Boolean**| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_latest_email

> Email get_latest_email(opts)

Get latest email in all inboxes. Most recently received.

Get the newest email in all inboxes or in a passed set of inbox IDs

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
  inbox_ids: ['inbox_ids_example'] # Array<String> | Optional set of inboxes to filter by. Only get the latest email from these inbox IDs
}

begin
  #Get latest email in all inboxes. Most recently received.
  result = api_instance.get_latest_email(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_latest_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_ids** | [**Array&lt;String&gt;**](String)| Optional set of inboxes to filter by. Only get the latest email from these inbox IDs | [optional] 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_latest_email_in_inbox

> Email get_latest_email_in_inbox(opts)

Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.

Get the newest email in all inboxes or in a passed set of inbox IDs

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
  inbox_id: 'inbox_id_example' # String | ID of the inbox you want to get the latest email from
}

begin
  #Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
  result = api_instance.get_latest_email_in_inbox(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_latest_email_in_inbox: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| ID of the inbox you want to get the latest email from | [optional] 

### Return type

[**Email**](Email)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_emails_paginated

> PageEmailProjection get_organization_emails_paginated(opts)

Get all organization emails. List team or shared test email accounts

By default returns all emails across all team inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages

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
  inbox_id: ['inbox_id_example'], # Array<String> | Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
  page: 0, # Integer | Optional page index in email list pagination
  search_filter: 'search_filter_example', # String | Optional search filter search filter for emails.
  size: 20, # Integer | Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  unread_only: false # Boolean | Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
}

begin
  #Get all organization emails. List team or shared test email accounts
  result = api_instance.get_organization_emails_paginated(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_organization_emails_paginated: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**Array&lt;String&gt;**](String)| Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. | [optional] 
 **page** | **Integer**| Optional page index in email list pagination | [optional] [default to 0]
 **search_filter** | **String**| Optional search filter search filter for emails. | [optional] 
 **size** | **Integer**| Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **unread_only** | **Boolean**| Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly | [optional] [default to false]

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_raw_email_contents

> String get_raw_email_contents(email_id)

Get raw email string. Returns unparsed raw SMTP message with headers and body.

Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint

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
email_id = 'email_id_example' # String | ID of email

begin
  #Get raw email string. Returns unparsed raw SMTP message with headers and body.
  result = api_instance.get_raw_email_contents(email_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_raw_email_contents: #{e}"
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


## get_raw_email_json

> RawEmailJson get_raw_email_json(email_id)

Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.

Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response

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
email_id = 'email_id_example' # String | ID of email

begin
  #Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
  result = api_instance.get_raw_email_json(email_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_raw_email_json: #{e}"
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
- **Accept**: application/json


## get_unread_email_count

> UnreadCount get_unread_email_count

Get unread email count

Get number of emails unread. Unread means has not been viewed in dashboard or returned in an email API response

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
  #Get unread email count
  result = api_instance.get_unread_email_count
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->get_unread_email_count: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UnreadCount**](UnreadCount)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reply_to_email

> SentEmailDto reply_to_email(email_id, reply_to_email_options)

Reply to an email

Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.

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
email_id = 'email_id_example' # String | ID of the email that should be replied to
reply_to_email_options = MailSlurpClient::ReplyToEmailOptions.new # ReplyToEmailOptions | replyToEmailOptions

begin
  #Reply to an email
  result = api_instance.reply_to_email(email_id, reply_to_email_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->reply_to_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**]()| ID of the email that should be replied to | 
 **reply_to_email_options** | [**ReplyToEmailOptions**](ReplyToEmailOptions)| replyToEmailOptions | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_email_source_optional

> send_email_source_optional(opts)

Send email

Alias for `InboxController.sendEmail` method - see original method for full details. Sends an email from a given inbox that you have created. If no inbox is supplied a random inbox will be created for you and used to send the email.

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
  inbox_id: 'inbox_id_example', # String | ID of the inbox you want to send the email from
  use_domain_pool: true, # Boolean | Use domain pool. Optionally create inbox to send from using the mailslurp domain pool.
  send_email_options: MailSlurpClient::SendEmailOptions.new # SendEmailOptions | Options for the email
}

begin
  #Send email
  api_instance.send_email_source_optional(opts)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->send_email_source_optional: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| ID of the inbox you want to send the email from | [optional] 
 **use_domain_pool** | **Boolean**| Use domain pool. Optionally create inbox to send from using the mailslurp domain pool. | [optional] 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)| Options for the email | [optional] 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## validate_email

> ValidationDto validate_email(email_id)

Validate email HTML contents

Validate the HTML content of email if HTML is found. Considered valid if no HTML is present.

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
email_id = 'email_id_example' # String | ID of email

begin
  #Validate email HTML contents
  result = api_instance.validate_email(email_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling EmailControllerApi->validate_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_id** | [**String**]()| ID of email | 

### Return type

[**ValidationDto**](ValidationDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

