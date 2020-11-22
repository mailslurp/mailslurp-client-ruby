# MailSlurpClient::WebhookControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_webhook**](WebhookControllerApi.md#create_webhook) | **POST** /inboxes/{inboxId}/webhooks | Attach a WebHook URL to an inbox
[**delete_webhook**](WebhookControllerApi.md#delete_webhook) | **DELETE** /inboxes/{inboxId}/webhooks/{webhookId} | Delete and disable a Webhook for an Inbox
[**get_all_webhooks**](WebhookControllerApi.md#get_all_webhooks) | **GET** /webhooks/paginated | List Webhooks Paginated
[**get_webhook**](WebhookControllerApi.md#get_webhook) | **GET** /webhooks/{webhookId} | Get a webhook for an Inbox
[**get_webhooks**](WebhookControllerApi.md#get_webhooks) | **GET** /inboxes/{inboxId}/webhooks | Get all Webhooks for an Inbox
[**send_test_data**](WebhookControllerApi.md#send_test_data) | **POST** /webhooks/{webhookId}/test | Send webhook test data



## create_webhook

> WebhookDto create_webhook(inbox_id, webhook_options)

Attach a WebHook URL to an inbox

Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.

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

api_instance = MailSlurpClient::WebhookControllerApi.new
inbox_id = 'inbox_id_example' # String | inboxId
webhook_options = MailSlurpClient::CreateWebhookOptions.new # CreateWebhookOptions | webhookOptions

begin
  #Attach a WebHook URL to an inbox
  result = api_instance.create_webhook(inbox_id, webhook_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->create_webhook: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| inboxId | 
 **webhook_options** | [**CreateWebhookOptions**](CreateWebhookOptions.md)| webhookOptions | 

### Return type

[**WebhookDto**](WebhookDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook

> delete_webhook(inbox_id, webhook_id)

Delete and disable a Webhook for an Inbox

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

api_instance = MailSlurpClient::WebhookControllerApi.new
inbox_id = 'inbox_id_example' # String | inboxId
webhook_id = 'webhook_id_example' # String | webhookId

begin
  #Delete and disable a Webhook for an Inbox
  api_instance.delete_webhook(inbox_id, webhook_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->delete_webhook: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| inboxId | 
 **webhook_id** | [**String**](.md)| webhookId | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_all_webhooks

> PageWebhookProjection get_all_webhooks(opts)

List Webhooks Paginated

List webhooks in paginated form. Allows for page index, page size, and sort direction.

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

api_instance = MailSlurpClient::WebhookControllerApi.new
opts = {
  page: 0, # Integer | Optional page index in inbox list pagination
  size: 20, # Integer | Optional page size in inbox list pagination
  sort: 'ASC' # String | Optional createdAt sort direction ASC or DESC
}

begin
  #List Webhooks Paginated
  result = api_instance.get_all_webhooks(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->get_all_webhooks: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index in inbox list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in inbox list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageWebhookProjection**](PageWebhookProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook

> WebhookDto get_webhook(webhook_id)

Get a webhook for an Inbox

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

api_instance = MailSlurpClient::WebhookControllerApi.new
webhook_id = 'webhook_id_example' # String | webhookId

begin
  #Get a webhook for an Inbox
  result = api_instance.get_webhook(webhook_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->get_webhook: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**String**](.md)| webhookId | 

### Return type

[**WebhookDto**](WebhookDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhooks

> Array&lt;WebhookDto&gt; get_webhooks(inbox_id)

Get all Webhooks for an Inbox

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

api_instance = MailSlurpClient::WebhookControllerApi.new
inbox_id = 'inbox_id_example' # String | inboxId

begin
  #Get all Webhooks for an Inbox
  result = api_instance.get_webhooks(inbox_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->get_webhooks: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| inboxId | 

### Return type

[**Array&lt;WebhookDto&gt;**](WebhookDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_test_data

> WebhookTestResult send_test_data(webhook_id)

Send webhook test data

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

api_instance = MailSlurpClient::WebhookControllerApi.new
webhook_id = 'webhook_id_example' # String | webhookId

begin
  #Send webhook test data
  result = api_instance.send_test_data(webhook_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->send_test_data: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**String**](.md)| webhookId | 

### Return type

[**WebhookTestResult**](WebhookTestResult.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

