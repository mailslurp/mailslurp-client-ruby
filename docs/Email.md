# MailSlurpClient::Email

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**analysis** | [**EmailAnalysis**](EmailAnalysis.md) |  | [optional] 
**attachments** | **Array&lt;String&gt;** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] 
**bcc** | **Array&lt;String&gt;** | List of &#x60;BCC&#x60; recipients email was addressed to | [optional] 
**body** | **String** | The body of the email message | [optional] 
**body_md5_hash** | **String** | A hash signature of the email message | [optional] 
**cc** | **Array&lt;String&gt;** | List of &#x60;CC&#x60; recipients email was addressed to | [optional] 
**charset** | **String** | Detected character set of the email body such as UTF-8 | [optional] 
**created_at** | **DateTime** | When was the email received by MailSlurp | [optional] 
**from** | **String** | Who the email was sent from | [optional] 
**headers** | **Hash&lt;String, String&gt;** |  | [optional] 
**id** | **String** | ID of the email | [optional] 
**inbox_id** | **String** | ID of the inbox that received the email | [optional] 
**is_html** | **Boolean** | Was HTML sent in the email body | [optional] 
**read** | **Boolean** | Has the email been viewed ever. This means viewed in the dashboard or requested via the full email entity endpoints | [optional] 
**reply_to** | **String** | The replyTo field on the received email | [optional] 
**subject** | **String** | The subject line of the email message | [optional] 
**team_access** | **Boolean** | Can the email be accessed by organization team members | [optional] 
**to** | **Array&lt;String&gt;** | List of &#x60;To&#x60; recipients email was addressed to | [optional] 
**updated_at** | **DateTime** | When was the email last updated | [optional] 
**user_id** | **String** | ID of user that email belongs | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::Email.new(analysis: null,
                                 attachments: null,
                                 bcc: null,
                                 body: null,
                                 body_md5_hash: null,
                                 cc: null,
                                 charset: null,
                                 created_at: null,
                                 from: null,
                                 headers: null,
                                 id: null,
                                 inbox_id: null,
                                 is_html: null,
                                 read: null,
                                 reply_to: null,
                                 subject: null,
                                 team_access: null,
                                 to: null,
                                 updated_at: null,
                                 user_id: null)
```


