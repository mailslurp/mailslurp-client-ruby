# MailSlurpClient::EmailProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**from** | **String** |  | [optional] 
**subject** | **String** |  | [optional] 
**inbox_id** | **String** |  | 
**attachments** | **Array&lt;String&gt;** |  | [optional] 
**created_at** | **DateTime** |  | 
**to** | **Array&lt;String&gt;** |  | 
**bcc** | **Array&lt;String&gt;** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | [optional] 
**domain_id** | **String** |  | [optional] 
**team_access** | **Boolean** |  | 
**body_md5_hash** | **String** |  | [optional] 
**read** | **Boolean** |  | 
**body_excerpt** | **String** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::EmailProjection.new(id: null,
                                 from: null,
                                 subject: null,
                                 inbox_id: null,
                                 attachments: null,
                                 created_at: null,
                                 to: null,
                                 bcc: null,
                                 cc: null,
                                 domain_id: null,
                                 team_access: null,
                                 body_md5_hash: null,
                                 read: null,
                                 body_excerpt: null)
```


