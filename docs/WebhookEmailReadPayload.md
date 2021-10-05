# MailSlurpClient::WebhookEmailReadPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | Date time of event creation | [optional] 
**email_id** | **String** | ID of the email that was received. Use this ID for fetching the email with the &#x60;EmailController&#x60;. | [optional] 
**email_is_read** | **Boolean** | Is the email read | [optional] 
**event_name** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**inbox_id** | **String** | Id of the inbox that received an email | [optional] 
**message_id** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**webhook_id** | **String** | ID of webhook entity being triggered | [optional] 
**webhook_name** | **String** | Name of the webhook being triggered | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookEmailReadPayload.new(created_at: null,
                                 email_id: null,
                                 email_is_read: null,
                                 event_name: null,
                                 inbox_id: null,
                                 message_id: null,
                                 webhook_id: null,
                                 webhook_name: null)
```


