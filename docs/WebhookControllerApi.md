# MailSlurpClient::WebhookControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_webhook**](WebhookControllerApi#create_webhook) | **POST** /inboxes/{inboxId}/webhooks | Attach a WebHook URL to an inbox
[**delete_all_webhooks**](WebhookControllerApi#delete_all_webhooks) | **DELETE** /webhooks | Delete all webhooks
[**delete_webhook**](WebhookControllerApi#delete_webhook) | **DELETE** /inboxes/{inboxId}/webhooks/{webhookId} | Delete and disable a Webhook for an Inbox
[**get_all_webhook_results**](WebhookControllerApi#get_all_webhook_results) | **GET** /webhooks/results | Get results for all webhooks
[**get_all_webhooks**](WebhookControllerApi#get_all_webhooks) | **GET** /webhooks/paginated | List Webhooks Paginated
[**get_inbox_webhooks_paginated**](WebhookControllerApi#get_inbox_webhooks_paginated) | **GET** /inboxes/{inboxId}/webhooks/paginated | Get paginated webhooks for an Inbox
[**get_json_schema_for_webhook_payload**](WebhookControllerApi#get_json_schema_for_webhook_payload) | **POST** /webhooks/{webhookId}/schema | 
[**get_test_webhook_payload**](WebhookControllerApi#get_test_webhook_payload) | **GET** /webhooks/test | 
[**get_test_webhook_payload_email_opened**](WebhookControllerApi#get_test_webhook_payload_email_opened) | **GET** /webhooks/test/email-opened-payload | 
[**get_test_webhook_payload_email_read**](WebhookControllerApi#get_test_webhook_payload_email_read) | **GET** /webhooks/test/email-read-payload | 
[**get_test_webhook_payload_for_webhook**](WebhookControllerApi#get_test_webhook_payload_for_webhook) | **POST** /webhooks/{webhookId}/example | 
[**get_test_webhook_payload_new_attachment**](WebhookControllerApi#get_test_webhook_payload_new_attachment) | **GET** /webhooks/test/new-attachment-payload | Get webhook test payload for new attachment event
[**get_test_webhook_payload_new_contact**](WebhookControllerApi#get_test_webhook_payload_new_contact) | **GET** /webhooks/test/new-contact-payload | Get webhook test payload for new contact event
[**get_test_webhook_payload_new_email**](WebhookControllerApi#get_test_webhook_payload_new_email) | **GET** /webhooks/test/new-email-payload | Get webhook test payload for new email event
[**get_webhook**](WebhookControllerApi#get_webhook) | **GET** /webhooks/{webhookId} | Get a webhook for an Inbox
[**get_webhook_result**](WebhookControllerApi#get_webhook_result) | **GET** /webhooks/results/{webhookResultId} | Get a webhook result for a webhook
[**get_webhook_results**](WebhookControllerApi#get_webhook_results) | **GET** /webhooks/{webhookId}/results | Get a webhook results for a webhook
[**get_webhook_results_unseen_error_count**](WebhookControllerApi#get_webhook_results_unseen_error_count) | **GET** /webhooks/results/unseen-count | Get count of unseen webhook results with error status
[**get_webhooks**](WebhookControllerApi#get_webhooks) | **GET** /inboxes/{inboxId}/webhooks | Get all webhooks for an Inbox
[**redrive_webhook_result**](WebhookControllerApi#redrive_webhook_result) | **POST** /webhooks/results/{webhookResultId}/redrive | Get a webhook result and try to resend the original webhook payload
[**send_test_data**](WebhookControllerApi#send_test_data) | **POST** /webhooks/{webhookId}/test | Send webhook test data



## create_webhook

> WebhookDto create_webhook(inbox_id, create_webhook_options)

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
inbox_id = 'inbox_id_example' # String | 
create_webhook_options = MailSlurpClient::CreateWebhookOptions.new # CreateWebhookOptions | 

begin
  #Attach a WebHook URL to an inbox
  result = api_instance.create_webhook(inbox_id, create_webhook_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->create_webhook: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 
 **create_webhook_options** | [**CreateWebhookOptions**](CreateWebhookOptions)|  | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## delete_all_webhooks

> delete_all_webhooks

Delete all webhooks

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

begin
  #Delete all webhooks
  api_instance.delete_all_webhooks
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->delete_all_webhooks: #{e}"
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
inbox_id = 'inbox_id_example' # String | 
webhook_id = 'webhook_id_example' # String | 

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
 **inbox_id** | [**String**]()|  | 
 **webhook_id** | [**String**]()|  | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_all_webhook_results

> PageWebhookResult get_all_webhook_results(opts)

Get results for all webhooks

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
  page: 0, # Integer | Optional page index in list pagination
  size: 20, # Integer | Optional page size in list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at before the given timestamp
  unseen_only: true # Boolean | Filter for unseen exceptions only
}

begin
  #Get results for all webhooks
  result = api_instance.get_all_webhook_results(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->get_all_webhook_results: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **unseen_only** | **Boolean**| Filter for unseen exceptions only | [optional] 

### Return type

[**PageWebhookResult**](PageWebhookResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


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
  page: 0, # Integer | Optional page index in list pagination
  size: 20, # Integer | Optional page size for paginated result list.
  sort: 'DESC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
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
 **page** | **Integer**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size for paginated result list. | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;DESC&#39;]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_inbox_webhooks_paginated

> PageWebhookProjection get_inbox_webhooks_paginated(inbox_id, opts)

Get paginated webhooks for an Inbox

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
inbox_id = 'inbox_id_example' # String | 
opts = {
  page: 0, # Integer | Optional page index in list pagination
  size: 20, # Integer | Optional page size in list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  #Get paginated webhooks for an Inbox
  result = api_instance.get_inbox_webhooks_paginated(inbox_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->get_inbox_webhooks_paginated: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 
 **page** | **Integer**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageWebhookProjection**](PageWebhookProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_json_schema_for_webhook_payload

> JSONSchemaDto get_json_schema_for_webhook_payload(webhook_id)



Get JSON Schema definition for webhook payload

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
webhook_id = 'webhook_id_example' # String | 

begin
  result = api_instance.get_json_schema_for_webhook_payload(webhook_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->get_json_schema_for_webhook_payload: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**String**]()|  | 

### Return type

[**JSONSchemaDto**](JSONSchemaDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_test_webhook_payload

> AbstractWebhookPayload get_test_webhook_payload(opts)



Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.

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
  event_name: 'event_name_example' # String | 
}

begin
  result = api_instance.get_test_webhook_payload(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->get_test_webhook_payload: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_name** | **String**|  | [optional] 

### Return type

[**AbstractWebhookPayload**](AbstractWebhookPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_test_webhook_payload_email_opened

> WebhookEmailOpenedPayload get_test_webhook_payload_email_opened



Get webhook test payload for email opened event

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

begin
  result = api_instance.get_test_webhook_payload_email_opened
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->get_test_webhook_payload_email_opened: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WebhookEmailOpenedPayload**](WebhookEmailOpenedPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_test_webhook_payload_email_read

> WebhookEmailReadPayload get_test_webhook_payload_email_read



Get webhook test payload for email opened event

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

begin
  result = api_instance.get_test_webhook_payload_email_read
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->get_test_webhook_payload_email_read: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WebhookEmailReadPayload**](WebhookEmailReadPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_test_webhook_payload_for_webhook

> AbstractWebhookPayload get_test_webhook_payload_for_webhook(webhook_id)



Get example payload for webhook

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
webhook_id = 'webhook_id_example' # String | 

begin
  result = api_instance.get_test_webhook_payload_for_webhook(webhook_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->get_test_webhook_payload_for_webhook: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**String**]()|  | 

### Return type

[**AbstractWebhookPayload**](AbstractWebhookPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_test_webhook_payload_new_attachment

> WebhookNewAttachmentPayload get_test_webhook_payload_new_attachment

Get webhook test payload for new attachment event

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

begin
  #Get webhook test payload for new attachment event
  result = api_instance.get_test_webhook_payload_new_attachment
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->get_test_webhook_payload_new_attachment: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WebhookNewAttachmentPayload**](WebhookNewAttachmentPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_test_webhook_payload_new_contact

> WebhookNewContactPayload get_test_webhook_payload_new_contact

Get webhook test payload for new contact event

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

begin
  #Get webhook test payload for new contact event
  result = api_instance.get_test_webhook_payload_new_contact
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->get_test_webhook_payload_new_contact: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WebhookNewContactPayload**](WebhookNewContactPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_test_webhook_payload_new_email

> WebhookNewEmailPayload get_test_webhook_payload_new_email

Get webhook test payload for new email event

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

begin
  #Get webhook test payload for new email event
  result = api_instance.get_test_webhook_payload_new_email
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->get_test_webhook_payload_new_email: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WebhookNewEmailPayload**](WebhookNewEmailPayload)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


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
webhook_id = 'webhook_id_example' # String | 

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
 **webhook_id** | [**String**]()|  | 

### Return type

[**WebhookDto**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_webhook_result

> WebhookResultDto get_webhook_result(webhook_result_id)

Get a webhook result for a webhook

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
webhook_result_id = 'webhook_result_id_example' # String | Webhook Result ID

begin
  #Get a webhook result for a webhook
  result = api_instance.get_webhook_result(webhook_result_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->get_webhook_result: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_result_id** | [**String**]()| Webhook Result ID | 

### Return type

[**WebhookResultDto**](WebhookResultDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_webhook_results

> PageWebhookResult get_webhook_results(webhook_id, opts)

Get a webhook results for a webhook

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
webhook_id = 'webhook_id_example' # String | ID of webhook to get results for
opts = {
  page: 0, # Integer | Optional page index in list pagination
  size: 20, # Integer | Optional page size in list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at before the given timestamp
  unseen_only: true # Boolean | Filter for unseen exceptions only
}

begin
  #Get a webhook results for a webhook
  result = api_instance.get_webhook_results(webhook_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->get_webhook_results: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**String**]()| ID of webhook to get results for | 
 **page** | **Integer**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **unseen_only** | **Boolean**| Filter for unseen exceptions only | [optional] 

### Return type

[**PageWebhookResult**](PageWebhookResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_webhook_results_unseen_error_count

> UnseenErrorCountDto get_webhook_results_unseen_error_count(inbox_id)

Get count of unseen webhook results with error status

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
inbox_id = 'inbox_id_example' # String | 

begin
  #Get count of unseen webhook results with error status
  result = api_instance.get_webhook_results_unseen_error_count(inbox_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->get_webhook_results_unseen_error_count: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 

### Return type

[**UnseenErrorCountDto**](UnseenErrorCountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_webhooks

> Array&lt;WebhookDto&gt; get_webhooks(inbox_id)

Get all webhooks for an Inbox

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
inbox_id = 'inbox_id_example' # String | 

begin
  #Get all webhooks for an Inbox
  result = api_instance.get_webhooks(inbox_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->get_webhooks: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 

### Return type

[**Array&lt;WebhookDto&gt;**](WebhookDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## redrive_webhook_result

> WebhookRedriveResult redrive_webhook_result(webhook_result_id)

Get a webhook result and try to resend the original webhook payload

Allows you to resend a webhook payload that was already sent. Webhooks that fail are retried automatically for 24 hours and then put in a dead letter queue. You can retry results manually using this method.

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
webhook_result_id = 'webhook_result_id_example' # String | Webhook Result ID

begin
  #Get a webhook result and try to resend the original webhook payload
  result = api_instance.redrive_webhook_result(webhook_result_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling WebhookControllerApi->redrive_webhook_result: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_result_id** | [**String**]()| Webhook Result ID | 

### Return type

[**WebhookRedriveResult**](WebhookRedriveResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


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
webhook_id = 'webhook_id_example' # String | 

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
 **webhook_id** | [**String**]()|  | 

### Return type

[**WebhookTestResult**](WebhookTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

