# MailSlurpClient::WebhookEmailReadPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_id** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**webhook_id** | **String** | ID of webhook entity being triggered | [optional] 
**event_name** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**webhook_name** | **String** | Name of the webhook being triggered | [optional] 
**email_id** | **String** | ID of the email that was received. Use this ID for fetching the email with the &#x60;EmailController&#x60;. | [optional] 
**inbox_id** | **String** | Id of the inbox that received an email | [optional] 
**email_is_read** | **Boolean** | Is the email read | [optional] 
**created_at** | **DateTime** | Date time of event creation | [optional] 

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


