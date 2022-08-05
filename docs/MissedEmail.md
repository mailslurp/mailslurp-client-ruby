# MailSlurpClient::MissedEmail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**user_id** | **String** |  | [optional] 
**subject** | **String** |  | [optional] 
**body_excerpt** | **String** |  | [optional] 
**attachment_count** | **Integer** |  | 
**from** | **String** |  | [optional] 
**raw_url** | **String** |  | [optional] 
**raw_key** | **String** |  | [optional] 
**raw_bucket** | **String** |  | [optional] 
**can_restore** | **Boolean** |  | [optional] 
**to** | **Array&lt;String&gt;** |  | 
**cc** | **Array&lt;String&gt;** |  | 
**bcc** | **Array&lt;String&gt;** |  | 
**inbox_ids** | **Array&lt;String&gt;** |  | 
**created_at** | **DateTime** |  | 
**updated_at** | **DateTime** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::MissedEmail.new(id: null,
                                 user_id: null,
                                 subject: null,
                                 body_excerpt: null,
                                 attachment_count: null,
                                 from: null,
                                 raw_url: null,
                                 raw_key: null,
                                 raw_bucket: null,
                                 can_restore: null,
                                 to: null,
                                 cc: null,
                                 bcc: null,
                                 inbox_ids: null,
                                 created_at: null,
                                 updated_at: null)
```


