# MailSlurpClient::SentEmailProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**from** | **String** |  | [optional] 
**user_id** | **String** |  | 
**subject** | **String** |  | [optional] 
**created_at** | **DateTime** |  | 
**inbox_id** | **String** |  | 
**attachments** | **Array&lt;String&gt;** |  | 
**to** | **Array&lt;String&gt;** |  | 
**bcc** | **Array&lt;String&gt;** |  | 
**cc** | **Array&lt;String&gt;** |  | 
**body_md5_hash** | **String** |  | [optional] 
**virtual_send** | **Boolean** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::SentEmailProjection.new(id: null,
                                 from: null,
                                 user_id: null,
                                 subject: null,
                                 created_at: null,
                                 inbox_id: null,
                                 attachments: null,
                                 to: null,
                                 bcc: null,
                                 cc: null,
                                 body_md5_hash: null,
                                 virtual_send: null)
```


