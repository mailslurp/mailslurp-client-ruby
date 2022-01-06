# MailSlurpClient::EmailProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**from** | **String** |  | [optional] 
**team_access** | **Boolean** |  | [optional] 
**read** | **Boolean** |  | [optional] 
**body_md5_hash** | **String** |  | [optional] 
**body_excerpt** | **String** |  | [optional] 
**subject** | **String** |  | [optional] 
**inbox_id** | **String** |  | [optional] 
**to** | **Array&lt;String&gt;** |  | [optional] 
**attachments** | **Array&lt;String&gt;** |  | [optional] 
**bcc** | **Array&lt;String&gt;** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::EmailProjection.new(id: null,
                                 from: null,
                                 team_access: null,
                                 read: null,
                                 body_md5_hash: null,
                                 body_excerpt: null,
                                 subject: null,
                                 inbox_id: null,
                                 to: null,
                                 attachments: null,
                                 bcc: null,
                                 cc: null,
                                 created_at: null)
```


