# MailSlurpClient::SentEmailProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **Array&lt;String&gt;** |  | 
**bcc** | **Array&lt;String&gt;** |  | 
**body_md5_hash** | **String** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | 
**created_at** | **DateTime** |  | 
**from** | **String** |  | [optional] 
**id** | **String** |  | 
**inbox_id** | **String** |  | 
**subject** | **String** |  | [optional] 
**to** | **Array&lt;String&gt;** |  | 
**user_id** | **String** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::SentEmailProjection.new(attachments: null,
                                 bcc: null,
                                 body_md5_hash: null,
                                 cc: null,
                                 created_at: null,
                                 from: null,
                                 id: null,
                                 inbox_id: null,
                                 subject: null,
                                 to: null,
                                 user_id: null)
```


