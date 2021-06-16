# MailSlurpClient::WebhookNewAttachmentPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachment_id** | **String** | ID of attachment. Use the &#x60;AttachmentController&#x60; to | [optional] 
**content_length** | **Integer** | Size of attachment in bytes | [optional] 
**content_type** | **String** | Content type of attachment such as &#39;image/png&#39; or &#39;application/pdf | [optional] 
**event_name** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**message_id** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**name** | **String** | Filename of the attachment if present | [optional] 
**webhook_id** | **String** | ID of webhook entity being triggered | [optional] 
**webhook_name** | **String** | Name of the webhook being triggered | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookNewAttachmentPayload.new(attachment_id: null,
                                 content_length: null,
                                 content_type: null,
                                 event_name: null,
                                 message_id: null,
                                 name: null,
                                 webhook_id: null,
                                 webhook_name: null)
```


