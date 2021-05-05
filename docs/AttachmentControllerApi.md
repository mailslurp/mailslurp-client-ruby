# MailSlurpClient::AttachmentControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**download_attachment_as_base64_encoded**](AttachmentControllerApi#download_attachment_as_base64_encoded) | **GET** /attachments/{attachmentId}/base64 | Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
[**download_attachment_as_bytes**](AttachmentControllerApi#download_attachment_as_bytes) | **GET** /attachments/{attachmentId}/bytes | Download attachments. Get email attachment bytes. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints.
[**get_attachment_info**](AttachmentControllerApi#get_attachment_info) | **GET** /attachments/{attachmentId}/metadata | Get email attachment metadata information
[**upload_attachment**](AttachmentControllerApi#upload_attachment) | **POST** /attachments | Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
[**upload_attachment_bytes**](AttachmentControllerApi#upload_attachment_bytes) | **POST** /attachments/bytes | Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
[**upload_multipart_form**](AttachmentControllerApi#upload_multipart_form) | **POST** /attachments/multipart | Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.



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
- **Accept**: application/json


## download_attachment_as_bytes

> String download_attachment_as_bytes(attachment_id)

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

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


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
- **Accept**: application/json


## upload_attachment

> Array&lt;String&gt; upload_attachment(upload_options)

Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.

Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.

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
upload_options = MailSlurpClient::UploadAttachmentOptions.new # UploadAttachmentOptions | uploadOptions

begin
  #Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
  result = api_instance.upload_attachment(upload_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AttachmentControllerApi->upload_attachment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upload_options** | [**UploadAttachmentOptions**](UploadAttachmentOptions)| uploadOptions | 

### Return type

**Array&lt;String&gt;**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_attachment_bytes

> Array&lt;String&gt; upload_attachment_bytes(opts)

Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.

Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.

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
  string: 'string_example', # String | Optional contentType for file. For instance `application/pdf`
  filename: 'filename_example', # String | Optional filename to save upload with
  byte_array: 'byte_array_example' # String | Byte array request body
}

begin
  #Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
  result = api_instance.upload_attachment_bytes(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AttachmentControllerApi->upload_attachment_bytes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **string** | **String**| Optional contentType for file. For instance &#x60;application/pdf&#x60; | [optional] 
 **filename** | **String**| Optional filename to save upload with | [optional] 
 **byte_array** | **String**| Byte array request body | [optional] 

### Return type

**Array&lt;String&gt;**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/octet-stream
- **Accept**: application/json


## upload_multipart_form

> Array&lt;String&gt; upload_multipart_form(file, opts)

Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.

Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.

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
file = File.new('/path/to/file') # File | file
opts = {
  content_type: 'content_type_example', # String | Optional content type of attachment
  filename: 'filename_example', # String | Optional name of file
  x_filename: 'x_filename_example' # String | Optional content type header of attachment
}

begin
  #Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
  result = api_instance.upload_multipart_form(file, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AttachmentControllerApi->upload_multipart_form: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| file | 
 **content_type** | **String**| Optional content type of attachment | [optional] 
 **filename** | **String**| Optional name of file | [optional] 
 **x_filename** | **String**| Optional content type header of attachment | [optional] 

### Return type

**Array&lt;String&gt;**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

