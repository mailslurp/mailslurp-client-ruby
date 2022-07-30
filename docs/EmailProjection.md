# MailSlurpClient::EmailProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**from** | **String** |  | [optional] 
**subject** | **String** |  | [optional] 
**inbox_id** | **String** |  | 
**attachments** | **Array&lt;String&gt;** |  | [optional] 
**to** | **Array&lt;String&gt;** |  | 
**created_at** | **DateTime** |  | 
**bcc** | **Array&lt;String&gt;** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | [optional] 
**domain_id** | **String** |  | [optional] 
**body_md5_hash** | **String** |  | [optional] 
**body_excerpt** | **String** |  | [optional] 
**read** | **Boolean** |  | 
**team_access** | **Boolean** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::EmailProjection.new(id: null,
                                 from: null,
                                 subject: null,
                                 inbox_id: null,
                                 attachments: null,
                                 to: null,
                                 created_at: null,
                                 bcc: null,
                                 cc: null,
                                 domain_id: null,
                                 body_md5_hash: null,
                                 body_excerpt: null,
                                 read: null,
                                 team_access: null)
```


