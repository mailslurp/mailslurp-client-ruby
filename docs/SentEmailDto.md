# MailSlurpClient::SentEmailDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **Array&lt;String&gt;** |  | [optional] 
**bcc** | **Array&lt;String&gt;** |  | [optional] 
**body** | **String** |  | [optional] 
**body_md5_hash** | **String** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | [optional] 
**charset** | **String** |  | [optional] 
**from** | **String** |  | [optional] 
**id** | **String** |  | 
**inbox_id** | **String** |  | 
**is_html** | **Boolean** |  | [optional] 
**sent_at** | **DateTime** |  | 
**subject** | **String** |  | [optional] 
**to** | **Array&lt;String&gt;** |  | [optional] 
**user_id** | **String** |  | 

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


