# MailSlurpClient::WebhookEmailOpenedPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | Date time of event creation | [optional] 
**event_name** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**inbox_id** | **String** | Id of the inbox that received an email | [optional] 
**message_id** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**pixel_id** | **String** | ID of the tracking pixel | [optional] 
**recipient** | **String** | Email address for the recipient of the tracking pixel | [optional] 
**sent_email_id** | **String** | ID of sent email | [optional] 
**webhook_id** | **String** | ID of webhook entity being triggered | [optional] 
**webhook_name** | **String** | Name of the webhook being triggered | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookEmailOpenedPayload.new(created_at: null,
                                 event_name: null,
                                 inbox_id: null,
                                 message_id: null,
                                 pixel_id: null,
                                 recipient: null,
                                 sent_email_id: null,
                                 webhook_id: null,
                                 webhook_name: null)
```


