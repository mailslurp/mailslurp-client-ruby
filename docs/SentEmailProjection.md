# MailSlurpClient::SentEmailProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**from** | **String** |  | [optional] 
**user_id** | **String** |  | [optional] 
**subject** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**inbox_id** | **String** |  | [optional] 
**to** | **Array&lt;String&gt;** |  | [optional] 
**attachments** | **Array&lt;String&gt;** |  | [optional] 
**bcc** | **Array&lt;String&gt;** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | [optional] 
**body_md5_hash** | **String** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::SentEmailProjection.new(id: null,
                                 from: null,
                                 user_id: null,
                                 subject: null,
                                 created_at: null,
                                 inbox_id: null,
                                 to: null,
                                 attachments: null,
                                 bcc: null,
                                 cc: null,
                                 body_md5_hash: null)
```


