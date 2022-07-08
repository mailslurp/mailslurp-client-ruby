# MailSlurpClient::CreateWebhookOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | Public URL on your server that MailSlurp can post WebhookNotification payload to when an email is received or an event is trigger. The payload of the submitted JSON is dependent on the webhook event type. See docs.mailslurp.com/webhooks for event payload documentation. | 
**basic_auth** | [**BasicAuthOptions**](BasicAuthOptions) |  | [optional] 
**name** | **String** | Optional name for the webhook | [optional] 
**event_name** | **String** | Optional webhook event name. Default is &#x60;EMAIL_RECEIVED&#x60; and is triggered when an email is received by the inbox associated with the webhook. Payload differ according to the webhook event name. | 
**include_headers** | [**WebhookHeaders**](WebhookHeaders) |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::CreateWebhookOptions.new(url: null,
                                 basic_auth: null,
                                 name: null,
                                 event_name: null,
                                 include_headers: null)
```


