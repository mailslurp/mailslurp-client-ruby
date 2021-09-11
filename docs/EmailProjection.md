# MailSlurpClient::EmailProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **Array&lt;String&gt;** |  | [optional] 
**bcc** | **Array&lt;String&gt;** |  | [optional] 
**body_excerpt** | **String** |  | [optional] 
**body_md5_hash** | **String** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | [optional] 
**created_at** | **DateTime** |  | 
**from** | **String** |  | [optional] 
**id** | **String** |  | 
**inbox_id** | **String** |  | 
**read** | **Boolean** |  | [optional] 
**subject** | **String** |  | [optional] 
**team_access** | **Boolean** |  | [optional] 
**to** | **Array&lt;String&gt;** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::EmailProjection.new(attachments: null,
                                 bcc: null,
                                 body_excerpt: null,
                                 body_md5_hash: null,
                                 cc: null,
                                 created_at: null,
                                 from: null,
                                 id: null,
                                 inbox_id: null,
                                 read: null,
                                 subject: null,
                                 team_access: null,
                                 to: null)
```


