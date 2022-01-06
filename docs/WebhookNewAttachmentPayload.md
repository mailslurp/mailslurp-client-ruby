# MailSlurpClient::WebhookNewAttachmentPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_id** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**webhook_id** | **String** | ID of webhook entity being triggered | [optional] 
**webhook_name** | **String** | Name of the webhook being triggered | [optional] 
**event_name** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**attachment_id** | **String** | ID of attachment. Use the &#x60;AttachmentController&#x60; to | [optional] 
**name** | **String** | Filename of the attachment if present | [optional] 
**content_type** | **String** | Content type of attachment such as &#39;image/png&#39; or &#39;application/pdf | [optional] 
**content_length** | **Integer** | Size of attachment in bytes | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookNewAttachmentPayload.new(message_id: null,
                                 webhook_id: null,
                                 webhook_name: null,
                                 event_name: null,
                                 attachment_id: null,
                                 name: null,
                                 content_type: null,
                                 content_length: null)
```


