# MailSlurpClient::SentEmailProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**from** | **String** |  | [optional] 
**user_id** | **String** |  | 
**subject** | **String** |  | [optional] 
**created_at** | **DateTime** |  | 
**body_md5_hash** | **String** |  | [optional] 
**bcc** | **Array&lt;String&gt;** |  | 
**cc** | **Array&lt;String&gt;** |  | 
**virtual_send** | **Boolean** |  | 
**inbox_id** | **String** |  | 
**attachments** | **Array&lt;String&gt;** |  | 
**to** | **Array&lt;String&gt;** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::SentEmailProjection.new(id: null,
                                 from: null,
                                 user_id: null,
                                 subject: null,
                                 created_at: null,
                                 body_md5_hash: null,
                                 bcc: null,
                                 cc: null,
                                 virtual_send: null,
                                 inbox_id: null,
                                 attachments: null,
                                 to: null)
```


