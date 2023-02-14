# MailSlurpClient::WebhookNewEmailPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_id** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhook_id** | **String** | ID of webhook entity being triggered | 
**event_name** | **String** | Name of the event type webhook is being triggered for. | 
**webhook_name** | **String** | Name of the webhook being triggered | [optional] 
**inbox_id** | **String** | Id of the inbox | 
**domain_id** | **String** | Id of the domain that received an email | [optional] 
**email_id** | **String** | ID of the email that was received. Use this ID for fetching the email with the &#x60;EmailController&#x60;. | 
**created_at** | **DateTime** | Date time of event creation | 
**to** | **Array&lt;String&gt;** | List of &#x60;To&#x60; recipient email addresses that the email was addressed to. See recipients object for names. | 
**from** | **String** | Who the email was sent from. An email address - see fromName for the sender name. | 
**cc** | **Array&lt;String&gt;** | List of &#x60;CC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | 
**bcc** | **Array&lt;String&gt;** | List of &#x60;BCC&#x60; recipients email addresses that the email was addressed to. See recipients object for names. | 
**subject** | **String** | The subject line of the email message as specified by SMTP subject header | [optional] 
**attachment_meta_datas** | [**Array&lt;AttachmentMetaData&gt;**](AttachmentMetaData) | List of attachment meta data objects if attachments present | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookNewEmailPayload.new(message_id: null,
                                 webhook_id: null,
                                 event_name: null,
                                 webhook_name: null,
                                 inbox_id: null,
                                 domain_id: null,
                                 email_id: null,
                                 created_at: null,
                                 to: null,
                                 from: null,
                                 cc: null,
                                 bcc: null,
                                 subject: null,
                                 attachment_meta_datas: null)
```


