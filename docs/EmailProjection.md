# MailSlurpClient::EmailProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**from** | **String** |  | [optional] 
**subject** | **String** |  | [optional] 
**attachments** | **Array&lt;String&gt;** |  | [optional] 
**inbox_id** | **String** |  | 
**to** | **Array&lt;String&gt;** |  | 
**created_at** | **DateTime** |  | 
**bcc** | **Array&lt;String&gt;** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | [optional] 
**team_access** | **Boolean** |  | 
**read** | **Boolean** |  | 
**body_md5_hash** | **String** |  | [optional] 
**body_excerpt** | **String** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::EmailProjection.new(id: null,
                                 from: null,
                                 subject: null,
                                 attachments: null,
                                 inbox_id: null,
                                 to: null,
                                 created_at: null,
                                 bcc: null,
                                 cc: null,
                                 team_access: null,
                                 read: null,
                                 body_md5_hash: null,
                                 body_excerpt: null)
```


