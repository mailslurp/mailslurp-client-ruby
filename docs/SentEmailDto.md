# MailSlurpClient::SentEmailDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of sent email | [optional] 
**user_id** | **String** | User ID | [optional] 
**inbox_id** | **String** | Inbox ID email was sent from | [optional] 
**to** | **Array&lt;String&gt;** | Recipients email was sent to | [optional] 
**from** | **String** |  | [optional] 
**reply_to** | **String** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | [optional] 
**bcc** | **Array&lt;String&gt;** |  | [optional] 
**attachments** | **Array&lt;String&gt;** | Array of IDs of attachments that were sent with this email | [optional] 
**subject** | **String** |  | [optional] 
**body_md5_hash** | **String** | MD5 Hash | [optional] 
**body** | **String** |  | [optional] 
**charset** | **String** |  | [optional] 
**sent_at** | **DateTime** |  | [optional] 
**pixel_ids** | **Array&lt;String&gt;** |  | [optional] 
**html** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::SentEmailDto.new(id: null,
                                 user_id: null,
                                 inbox_id: null,
                                 to: null,
                                 from: null,
                                 reply_to: null,
                                 cc: null,
                                 bcc: null,
                                 attachments: null,
                                 subject: null,
                                 body_md5_hash: null,
                                 body: null,
                                 charset: null,
                                 sent_at: null,
                                 pixel_ids: null,
                                 html: null)
```


