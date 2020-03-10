# MailSlurpClient::AttachmentControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**upload_attachment**](AttachmentControllerApi.md#upload_attachment) | **POST** /attachments | Upload an attachment for sending
[**upload_multipart_form**](AttachmentControllerApi.md#upload_multipart_form) | **POST** /attachments/multipart | Upload an attachment for sending using Multipart Form


# **upload_attachment**
> Array&lt;String&gt; upload_attachment(upload_attachment_options)

Upload an attachment for sending

When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.

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
upload_attachment_options = MailSlurpClient::UploadAttachmentOptions.new # UploadAttachmentOptions | uploadOptions

begin
  #Upload an attachment for sending
  result = api_instance.upload_attachment(upload_attachment_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AttachmentControllerApi->upload_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upload_attachment_options** | [**UploadAttachmentOptions**](UploadAttachmentOptions.md)| uploadOptions | 

### Return type

**Array&lt;String&gt;**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **upload_multipart_form**
> Array&lt;String&gt; upload_multipart_form(file, opts)

Upload an attachment for sending using Multipart Form

When sending emails with attachments first upload each attachment with this endpoint. Record the returned attachment IDs. Then use these attachment IDs in the SendEmailOptions when sending an email. This means that attachments can easily be reused.

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
  content_type: 'content_type_example', # String | contentType
  filename: 'filename_example' # String | filename
}

begin
  #Upload an attachment for sending using Multipart Form
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
 **content_type** | **String**| contentType | [optional] 
 **filename** | **String**| filename | [optional] 

### Return type

**Array&lt;String&gt;**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



