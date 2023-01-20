# MailSlurpClient::CreateWebhookOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | Public URL on your server that MailSlurp can post WebhookNotification payload to when an email is received or an event is trigger. The payload of the submitted JSON is dependent on the webhook event type. See docs.mailslurp.com/webhooks for event payload documentation. | 
**basic_auth** | [**BasicAuthOptions**](BasicAuthOptions) |  | [optional] 
**name** | **String** | Optional name for the webhook | [optional] 
**event_name** | **String** | Optional webhook event name. Default is &#x60;EMAIL_RECEIVED&#x60; and is triggered when an email is received by the inbox associated with the webhook. Payload differ according to the webhook event name. | [optional] 
**include_headers** | [**WebhookHeaders**](WebhookHeaders) |  | [optional] 
**request_body_template** | **String** | Template for the JSON body of the webhook request that will be sent to your server. Use Moustache style &#x60;{{variableName}}&#x60; templating to use parts of the standard webhook payload for the given event. | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::CreateWebhookOptions.new(url: null,
                                 basic_auth: null,
                                 name: null,
                                 event_name: null,
                                 include_headers: null,
                                 request_body_template: null)
```


