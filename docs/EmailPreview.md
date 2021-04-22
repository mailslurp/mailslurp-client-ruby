# MailSlurpClient::EmailPreview

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **Array&lt;String&gt;** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] 
**bcc** | **Array&lt;String&gt;** | List of &#x60;BCC&#x60; recipients email was addressed to | [optional] 
**cc** | **Array&lt;String&gt;** | List of &#x60;CC&#x60; recipients email was addressed to | [optional] 
**created_at** | **DateTime** | When was the email received by MailSlurp | [optional] 
**from** | **String** | Who the email was sent from | [optional] 
**id** | **String** | ID of the email | [optional] 
**read** | **Boolean** | Has the email been viewed ever. This means viewed in the dashboard or requested via the full email entity endpoints | [optional] 
**subject** | **String** | The subject line of the email message | [optional] 
**to** | **Array&lt;String&gt;** | List of &#x60;To&#x60; recipients email was addressed to | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::EmailPreview.new(attachments: null,
                                 bcc: null,
                                 cc: null,
                                 created_at: null,
                                 from: null,
                                 id: null,
                                 read: null,
                                 subject: null,
                                 to: null)
```


