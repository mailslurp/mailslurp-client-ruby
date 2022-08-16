# MailSlurpClient::WebhookNewSmsPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_id** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhook_id** | **String** | ID of webhook entity being triggered | 
**event_name** | **String** | Name of the event type webhook is being triggered for. | 
**webhook_name** | **String** | Name of the webhook being triggered | [optional] 
**sms_id** | **String** | ID of SMS message | 
**user_id** | **String** | User ID of event | 
**phone_number** | **String** | ID of phone number receiving SMS | 
**to_number** | **String** | Recipient phone number | 
**from_number** | **String** | Sender phone number | 
**body** | **String** | SMS message body | 
**read** | **Boolean** | SMS has been read | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookNewSmsPayload.new(message_id: null,
                                 webhook_id: null,
                                 event_name: null,
                                 webhook_name: null,
                                 sms_id: null,
                                 user_id: null,
                                 phone_number: null,
                                 to_number: null,
                                 from_number: null,
                                 body: null,
                                 read: null)
```


