# MailSlurpClient::SentEmailProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**from** | **String** |  | [optional] 
**user_id** | **String** |  | 
**subject** | **String** |  | [optional] 
**inbox_id** | **String** |  | 
**created_at** | **DateTime** |  | 
**to** | **Array&lt;String&gt;** |  | 
**attachments** | **Array&lt;String&gt;** |  | 
**bcc** | **Array&lt;String&gt;** |  | 
**cc** | **Array&lt;String&gt;** |  | 
**body_md5_hash** | **String** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::SentEmailProjection.new(id: null,
                                 from: null,
                                 user_id: null,
                                 subject: null,
                                 inbox_id: null,
                                 created_at: null,
                                 to: null,
                                 attachments: null,
                                 bcc: null,
                                 cc: null,
                                 body_md5_hash: null)
```


