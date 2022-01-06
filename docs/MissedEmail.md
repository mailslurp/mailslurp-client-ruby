# MailSlurpClient::MissedEmail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**user_id** | **String** |  | [optional] 
**subject** | **String** |  | [optional] 
**body_excerpt** | **String** |  | [optional] 
**attachment_count** | **Integer** |  | [optional] 
**from** | **String** |  | [optional] 
**to** | **Array&lt;String&gt;** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | [optional] 
**bcc** | **Array&lt;String&gt;** |  | [optional] 
**inbox_ids** | **Array&lt;String&gt;** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::MissedEmail.new(id: null,
                                 user_id: null,
                                 subject: null,
                                 body_excerpt: null,
                                 attachment_count: null,
                                 from: null,
                                 to: null,
                                 cc: null,
                                 bcc: null,
                                 inbox_ids: null,
                                 created_at: null,
                                 updated_at: null)
```


