# MailSlurpClient::WebhookBouncePayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_id** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhook_id** | **String** | ID of webhook entity being triggered | 
**event_name** | **String** | Name of the event type webhook is being triggered for. | 
**webhook_name** | **String** | Name of the webhook being triggered | [optional] 
**bounce_id** | **String** | ID of the bounce email record. Use the ID with the bounce controller to view more information | 
**sent_to_recipients** | **Array&lt;String&gt;** | Email sent to recipients | [optional] 
**sender** | **String** | Sender causing bounce | 
**bounce_recipients** | **Array&lt;String&gt;** | Email addresses that resulted in a bounce or email being rejected. Please save these recipients and avoid emailing them in the future to maintain your reputation. | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookBouncePayload.new(message_id: null,
                                 webhook_id: null,
                                 event_name: null,
                                 webhook_name: null,
                                 bounce_id: null,
                                 sent_to_recipients: null,
                                 sender: null,
                                 bounce_recipients: null)
```


