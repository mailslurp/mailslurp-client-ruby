# MailSlurpClient::EmailProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**from** | **String** |  | [optional] 
**subject** | **String** |  | [optional] 
**inbox_id** | **String** |  | 
**created_at** | **DateTime** |  | 
**to** | **Array&lt;String&gt;** |  | 
**attachments** | **Array&lt;String&gt;** |  | [optional] 
**bcc** | **Array&lt;String&gt;** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | [optional] 
**team_access** | **Boolean** |  | [optional] 
**read** | **Boolean** |  | [optional] 
**body_md5_hash** | **String** |  | [optional] 
**body_excerpt** | **String** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::EmailProjection.new(id: null,
                                 from: null,
                                 subject: null,
                                 inbox_id: null,
                                 created_at: null,
                                 to: null,
                                 attachments: null,
                                 bcc: null,
                                 cc: null,
                                 team_access: null,
                                 read: null,
                                 body_md5_hash: null,
                                 body_excerpt: null)
```


