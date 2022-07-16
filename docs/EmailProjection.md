# MailSlurpClient::EmailProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**from** | **String** |  | [optional] 
**subject** | **String** |  | [optional] 
**inbox_id** | **String** |  | 
**attachments** | **Array&lt;String&gt;** |  | [optional] 
**body_md5_hash** | **String** |  | [optional] 
**body_excerpt** | **String** |  | [optional] 
**to** | **Array&lt;String&gt;** |  | 
**created_at** | **DateTime** |  | 
**bcc** | **Array&lt;String&gt;** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | [optional] 
**domain_id** | **String** |  | [optional] 
**team_access** | **Boolean** |  | 
**read** | **Boolean** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::EmailProjection.new(id: null,
                                 from: null,
                                 subject: null,
                                 inbox_id: null,
                                 attachments: null,
                                 body_md5_hash: null,
                                 body_excerpt: null,
                                 to: null,
                                 created_at: null,
                                 bcc: null,
                                 cc: null,
                                 domain_id: null,
                                 team_access: null,
                                 read: null)
```


