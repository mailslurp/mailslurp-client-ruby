# MailSlurpClient::SentEmailProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**from** | **String** |  | [optional] 
**user_id** | **String** |  | 
**subject** | **String** |  | [optional] 
**body_md5_hash** | **String** |  | [optional] 
**bcc** | **Array&lt;String&gt;** |  | 
**cc** | **Array&lt;String&gt;** |  | 
**inbox_id** | **String** |  | 
**attachments** | **Array&lt;String&gt;** |  | 
**to** | **Array&lt;String&gt;** |  | 
**created_at** | **DateTime** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::SentEmailProjection.new(id: null,
                                 from: null,
                                 user_id: null,
                                 subject: null,
                                 body_md5_hash: null,
                                 bcc: null,
                                 cc: null,
                                 inbox_id: null,
                                 attachments: null,
                                 to: null,
                                 created_at: null)
```


