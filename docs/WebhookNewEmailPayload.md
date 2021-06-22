# MailSlurpClient::WebhookNewEmailPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachment_meta_datas** | [**Array&lt;AttachmentMetaData&gt;**](AttachmentMetaData) | List of attachment meta data objects if attachments present | [optional] 
**bcc** | **Array&lt;String&gt;** | List of &#x60;BCC&#x60; recipients email was addressed to | [optional] 
**cc** | **Array&lt;String&gt;** | List of &#x60;CC&#x60; recipients email was addressed to | [optional] 
**created_at** | **DateTime** | Date time of event creation | [optional] 
**email_id** | **String** | ID of the email that was received. Use this ID for fetching the email with the &#x60;EmailController&#x60;. | [optional] 
**event_name** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**from** | **String** | Who the email was sent from | [optional] 
**inbox_id** | **String** | Id of the inbox that received an email | [optional] 
**message_id** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**subject** | **String** | The subject line of the email message | [optional] 
**to** | **Array&lt;String&gt;** | List of &#x60;To&#x60; recipients that email was addressed to | [optional] 
**webhook_id** | **String** | ID of webhook entity being triggered | [optional] 
**webhook_name** | **String** | Name of the webhook being triggered | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookNewEmailPayload.new(attachment_meta_datas: null,
                                 bcc: null,
                                 cc: null,
                                 created_at: null,
                                 email_id: null,
                                 event_name: null,
                                 from: null,
                                 inbox_id: null,
                                 message_id: null,
                                 subject: null,
                                 to: null,
                                 webhook_id: null,
                                 webhook_name: null)
```


