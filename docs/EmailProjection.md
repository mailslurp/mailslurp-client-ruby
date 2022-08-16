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
**bcc** | **Array&lt;String&gt;** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | [optional] 
**created_at** | **DateTime** |  | 
**domain_id** | **String** |  | [optional] 
**read** | **Boolean** |  | 
**team_access** | **Boolean** |  | 
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
                                 bcc: null,
                                 cc: null,
                                 created_at: null,
                                 domain_id: null,
                                 read: null,
                                 team_access: null,
                                 body_md5_hash: null,
                                 body_excerpt: null)
```


