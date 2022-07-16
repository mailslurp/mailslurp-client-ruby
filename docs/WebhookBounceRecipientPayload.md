# MailSlurpClient::WebhookBounceRecipientPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_id** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhook_id** | **String** | ID of webhook entity being triggered | 
**event_name** | **String** | Name of the event type webhook is being triggered for. | 
**webhook_name** | **String** | Name of the webhook being triggered | [optional] 
**recipient** | **String** | Email address that caused a bounce. Make note of the address and try not to message it again to preserve your reputation. | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookBounceRecipientPayload.new(message_id: null,
                                 webhook_id: null,
                                 event_name: null,
                                 webhook_name: null,
                                 recipient: null)
```


