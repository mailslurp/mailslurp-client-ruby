# MailSlurpClient::WebhookEmailOpenedPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_id** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhook_id** | **String** | ID of webhook entity being triggered | 
**event_name** | **String** | Name of the event type webhook is being triggered for. | 
**webhook_name** | **String** | Name of the webhook being triggered | [optional] 
**inbox_id** | **String** | Id of the inbox | 
**pixel_id** | **String** | ID of the tracking pixel | 
**sent_email_id** | **String** | ID of sent email | 
**recipient** | **String** | Email address for the recipient of the tracking pixel | 
**created_at** | **DateTime** | Date time of event creation | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookEmailOpenedPayload.new(message_id: null,
                                 webhook_id: null,
                                 event_name: null,
                                 webhook_name: null,
                                 inbox_id: null,
                                 pixel_id: null,
                                 sent_email_id: null,
                                 recipient: null,
                                 created_at: null)
```


