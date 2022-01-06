# MailSlurpClient::AttachmentControllerApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_all_attachments**](AttachmentControllerApi#delete_all_attachments) | **DELETE** /attachments | Delete all attachments
[**delete_attachment**](AttachmentControllerApi#delete_attachment) | **DELETE** /attachments/{attachmentId} | Delete an attachment
[**download_attachment_as_base64_encoded**](AttachmentControllerApi#download_attachment_as_base64_encoded) | **GET** /attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
[**download_attachment_as_bytes**](AttachmentControllerApi#download_attachment_as_bytes) | **GET** /attachments/{attachmentId}/bytes | Download attachments. Get email attachment bytes. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints.
[**get_attachment**](AttachmentControllerApi#get_attachment) | **GET** /attachments/{attachmentId} | Get an attachment entity
[**get_attachment_info**](AttachmentControllerApi#get_attachment_info) | **GET** /attachments/{attachmentId}/metadata | Get email attachment metadata information
[**get_attachments1**](AttachmentControllerApi#get_attachments1) | **GET** /attachments | Get email attachments
[**upload_attachment**](AttachmentControllerApi#upload_attachment) | **POST** /attachments | Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
[**upload_attachment_bytes**](AttachmentControllerApi#upload_attachment_bytes) | **POST** /attachments/bytes | Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
[**upload_multipart_form**](AttachmentControllerApi#upload_multipart_form) | **POST** /attachments/multipart | Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.



## delete_all_attachments

> delete_all_attachments

Delete all attachments

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

api_instance = MailSlurpClient::AttachmentControllerApi.new

begin
  #Delete all attachments
  api_instance.delete_all_attachments
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AttachmentControllerApi->delete_all_attachments: #{e}"
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


## delete_attachment

> delete_attachment(attachment_id)

Delete an attachment

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

api_instance = MailSlurpClient::AttachmentControllerApi.new
attachment_id = 'attachment_id_example' # String | ID of attachment

begin
  #Delete an attachment
  api_instance.delete_attachment(attachment_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AttachmentControllerApi->delete_attachment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **String**| ID of attachment | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## download_attachment_as_base64_encoded

> DownloadAttachmentDto download_attachment_as_base64_encoded(attachment_id)

Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.

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

api_instance = MailSlurpClient::AttachmentControllerApi.new
attachment_id = 'attachment_id_example' # String | ID of attachment

begin
  #Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
  result = api_instance.download_attachment_as_base64_encoded(attachment_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AttachmentControllerApi->download_attachment_as_base64_encoded: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **String**| ID of attachment | 

### Return type

[**DownloadAttachmentDto**](DownloadAttachmentDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## download_attachment_as_bytes

> Array&lt;String&gt; download_attachment_as_bytes(attachment_id)

Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.

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

api_instance = MailSlurpClient::AttachmentControllerApi.new
attachment_id = 'attachment_id_example' # String | ID of attachment

begin
  #Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
  result = api_instance.download_attachment_as_bytes(attachment_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AttachmentControllerApi->download_attachment_as_bytes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **String**| ID of attachment | 

### Return type

**Array&lt;String&gt;**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## get_attachment

> AttachmentEntity get_attachment(attachment_id)

Get an attachment entity

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

api_instance = MailSlurpClient::AttachmentControllerApi.new
attachment_id = 'attachment_id_example' # String | ID of attachment

begin
  #Get an attachment entity
  result = api_instance.get_attachment(attachment_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AttachmentControllerApi->get_attachment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **String**| ID of attachment | 

### Return type

[**AttachmentEntity**](AttachmentEntity)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_attachment_info

> AttachmentMetaData get_attachment_info(attachment_id)

Get email attachment metadata information

Returns the metadata for an attachment. It is saved separately to the content of the attachment. Contains properties `name` and `content-type` and `content-length` in bytes for a given attachment.

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

api_instance = MailSlurpClient::AttachmentControllerApi.new
attachment_id = 'attachment_id_example' # String | ID of attachment

begin
  #Get email attachment metadata information
  result = api_instance.get_attachment_info(attachment_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AttachmentControllerApi->get_attachment_info: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **String**| ID of attachment | 

### Return type

[**AttachmentMetaData**](AttachmentMetaData)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_attachments1

> PageAttachmentEntity get_attachments1(opts)

Get email attachments

Get all attachments in paginated response. Each entity contains meta data for the attachment such as `name` and `content-type`. Use the `attachmentId` and the download endpoints to get the file contents.

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

api_instance = MailSlurpClient::AttachmentControllerApi.new
opts = {
  page: 0, # Integer | Optional page index event list pagination
  size: 20, # Integer | Optional page size event list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  file_name_filter: 'file_name_filter_example', # String | Optional file name and content type search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  #Get email attachments
  result = api_instance.get_attachments1(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AttachmentControllerApi->get_attachments1: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index event list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size event list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **file_name_filter** | **String**| Optional file name and content type search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageAttachmentEntity**](PageAttachmentEntity)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## upload_attachment

> Array&lt;String&gt; upload_attachment(upload_attachment_options)

Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.

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

api_instance = MailSlurpClient::AttachmentControllerApi.new
upload_attachment_options = MailSlurpClient::UploadAttachmentOptions.new # UploadAttachmentOptions | 

begin
  #Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
  result = api_instance.upload_attachment(upload_attachment_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AttachmentControllerApi->upload_attachment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upload_attachment_options** | [**UploadAttachmentOptions**](UploadAttachmentOptions)|  | 

### Return type

**Array&lt;String&gt;**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## upload_attachment_bytes

> Array&lt;String&gt; upload_attachment_bytes(request_body, opts)

Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.

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

api_instance = MailSlurpClient::AttachmentControllerApi.new
request_body = ['request_body_example'] # Array<String> | 
opts = {
  content_type: 'content_type_example', # String | Optional contentType for file. For instance `application/pdf`
  filename: 'filename_example' # String | Optional filename to save upload with
}

begin
  #Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
  result = api_instance.upload_attachment_bytes(request_body, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AttachmentControllerApi->upload_attachment_bytes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**Array&lt;String&gt;**](String)|  | 
 **content_type** | **String**| Optional contentType for file. For instance &#x60;application/pdf&#x60; | [optional] 
 **filename** | **String**| Optional filename to save upload with | [optional] 

### Return type

**Array&lt;String&gt;**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/octet-stream
- **Accept**: application/json


## upload_multipart_form

> Array&lt;String&gt; upload_multipart_form(opts)

Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.

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

api_instance = MailSlurpClient::AttachmentControllerApi.new
opts = {
  content_type: 'content_type_example', # String | Optional content type of attachment
  filename: 'filename_example', # String | Optional name of file
  x_filename: 'x_filename_example', # String | Optional content type header of attachment
  inline_object: MailSlurpClient::InlineObject.new # InlineObject | 
}

begin
  #Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
  result = api_instance.upload_multipart_form(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AttachmentControllerApi->upload_multipart_form: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| Optional content type of attachment | [optional] 
 **filename** | **String**| Optional name of file | [optional] 
 **x_filename** | **String**| Optional content type header of attachment | [optional] 
 **inline_object** | [**InlineObject**](InlineObject)|  | [optional] 

### Return type

**Array&lt;String&gt;**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

