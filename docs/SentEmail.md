# MailSlurpClient::SentEmail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **Array&lt;String&gt;** |  | [optional] 
**bcc** | **Array&lt;String&gt;** |  | [optional] 
**body_md5_hash** | **String** |  | [optional] 
**body_s3_key** | **String** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | [optional] 
**charset** | **String** |  | [optional] 
**created_at** | **DateTime** |  | 
**from** | **String** |  | [optional] 
**id** | **String** |  | [optional] 
**inbox_id** | **String** |  | 
**is_html** | **Boolean** |  | [optional] 
**subject** | **String** |  | [optional] 
**to** | **Array&lt;String&gt;** |  | [optional] 
**updated_at** | **DateTime** |  | 
**user_id** | **String** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::SentEmail.new(attachments: null,
                                 bcc: null,
                                 body_md5_hash: null,
                                 body_s3_key: null,
                                 cc: null,
                                 charset: null,
                                 created_at: null,
                                 from: null,
                                 id: null,
                                 inbox_id: null,
                                 is_html: null,
                                 subject: null,
                                 to: null,
                                 updated_at: null,
                                 user_id: null)
```


