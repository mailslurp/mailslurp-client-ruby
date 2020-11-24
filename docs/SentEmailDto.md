# MailSlurpClient::SentEmailDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **Array&lt;String&gt;** | Array of IDs of attachments that were sent with this email | [optional] 
**bcc** | **Array&lt;String&gt;** |  | [optional] 
**body** | **String** |  | [optional] 
**body_md5_hash** | **String** | MD5 Hash | [optional] 
**cc** | **Array&lt;String&gt;** |  | [optional] 
**charset** | **String** |  | [optional] 
**from** | **String** |  | [optional] 
**id** | **String** | ID of sent email | [optional] 
**inbox_id** | **String** | Inbox ID email was sent from | [optional] 
**is_html** | **Boolean** |  | [optional] 
**sent_at** | **DateTime** |  | 
**subject** | **String** |  | [optional] 
**to** | **Array&lt;String&gt;** | Recipients email was sent to | [optional] 
**user_id** | **String** | User ID | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::SentEmailDto.new(attachments: null,
                                 bcc: null,
                                 body: null,
                                 body_md5_hash: null,
                                 cc: null,
                                 charset: null,
                                 from: null,
                                 id: null,
                                 inbox_id: null,
                                 is_html: null,
                                 sent_at: null,
                                 subject: null,
                                 to: null,
                                 user_id: null)
```


