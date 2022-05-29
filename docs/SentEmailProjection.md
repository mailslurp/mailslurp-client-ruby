# MailSlurpClient::SentEmailProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**from** | **String** |  | [optional] 
**user_id** | **String** |  | 
**subject** | **String** |  | [optional] 
**attachments** | **Array&lt;String&gt;** |  | 
**inbox_id** | **String** |  | 
**to** | **Array&lt;String&gt;** |  | 
**bcc** | **Array&lt;String&gt;** |  | 
**cc** | **Array&lt;String&gt;** |  | 
**created_at** | **DateTime** |  | 
**body_md5_hash** | **String** |  | [optional] 
**virtual_send** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::SentEmailProjection.new(id: null,
                                 from: null,
                                 user_id: null,
                                 subject: null,
                                 attachments: null,
                                 inbox_id: null,
                                 to: null,
                                 bcc: null,
                                 cc: null,
                                 created_at: null,
                                 body_md5_hash: null,
                                 virtual_send: null)
```


