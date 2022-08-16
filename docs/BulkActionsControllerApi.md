# MailSlurpClient::BulkActionsControllerApi

All URIs are relative to *https://ruby.api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_create_inboxes**](BulkActionsControllerApi#bulk_create_inboxes) | **POST** /bulk/inboxes | Bulk create Inboxes (email addresses)
[**bulk_delete_inboxes**](BulkActionsControllerApi#bulk_delete_inboxes) | **DELETE** /bulk/inboxes | Bulk Delete Inboxes
[**bulk_send_emails**](BulkActionsControllerApi#bulk_send_emails) | **POST** /bulk/send | Bulk Send Emails



## bulk_create_inboxes

> Array&lt;InboxDto&gt; bulk_create_inboxes(count)

Bulk create Inboxes (email addresses)

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

api_instance = MailSlurpClient::BulkActionsControllerApi.new
count = 56 # Integer | Number of inboxes to be created in bulk

begin
  #Bulk create Inboxes (email addresses)
  result = api_instance.bulk_create_inboxes(count)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling BulkActionsControllerApi->bulk_create_inboxes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **Integer**| Number of inboxes to be created in bulk | 

### Return type

[**Array&lt;InboxDto&gt;**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## bulk_delete_inboxes

> bulk_delete_inboxes(request_body)

Bulk Delete Inboxes

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

api_instance = MailSlurpClient::BulkActionsControllerApi.new
request_body = ['request_body_example'] # Array<String> | 

begin
  #Bulk Delete Inboxes
  api_instance.bulk_delete_inboxes(request_body)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling BulkActionsControllerApi->bulk_delete_inboxes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**Array&lt;String&gt;**](String)|  | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## bulk_send_emails

> bulk_send_emails(bulk_send_email_options)

Bulk Send Emails

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

api_instance = MailSlurpClient::BulkActionsControllerApi.new
bulk_send_email_options = MailSlurpClient::BulkSendEmailOptions.new # BulkSendEmailOptions | 

begin
  #Bulk Send Emails
  api_instance.bulk_send_emails(bulk_send_email_options)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling BulkActionsControllerApi->bulk_send_emails: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulk_send_email_options** | [**BulkSendEmailOptions**](BulkSendEmailOptions)|  | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

