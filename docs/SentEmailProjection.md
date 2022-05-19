# MailSlurpClient::SentEmailProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**from** | **String** |  | [optional] 
**user_id** | **String** |  | 
**subject** | **String** |  | [optional] 
**to** | **Array&lt;String&gt;** |  | 
**inbox_id** | **String** |  | 
**attachments** | **Array&lt;String&gt;** |  | 
**body_md5_hash** | **String** |  | [optional] 
**created_at** | **DateTime** |  | 
**bcc** | **Array&lt;String&gt;** |  | 
**cc** | **Array&lt;String&gt;** |  | 
**virtual_send** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::SentEmailProjection.new(id: null,
                                 from: null,
                                 user_id: null,
                                 subject: null,
                                 to: null,
                                 inbox_id: null,
                                 attachments: null,
                                 body_md5_hash: null,
                                 created_at: null,
                                 bcc: null,
                                 cc: null,
                                 virtual_send: null)
```


