# MailSlurpClient::WebhookEmailReadPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_id** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhook_id** | **String** | ID of webhook entity being triggered | 
**event_name** | **String** | Name of the event type webhook is being triggered for. | 
**webhook_name** | **String** | Name of the webhook being triggered | [optional] 
**email_id** | **String** | ID of the email that was received. Use this ID for fetching the email with the &#x60;EmailController&#x60;. | 
**inbox_id** | **String** | Id of the inbox | 
**email_is_read** | **Boolean** | Is the email read | 
**created_at** | **DateTime** | Date time of event creation | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookEmailReadPayload.new(message_id: null,
                                 webhook_id: null,
                                 event_name: null,
                                 webhook_name: null,
                                 email_id: null,
                                 inbox_id: null,
                                 email_is_read: null,
                                 created_at: null)
```


