# MailSlurpClient::MissedEmail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachment_count** | **Integer** |  | 
**bcc** | **Array&lt;String&gt;** |  | 
**body_excerpt** | **String** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | 
**created_at** | **DateTime** |  | 
**from** | **String** |  | [optional] 
**id** | **String** |  | [optional] 
**inbox_ids** | **Array&lt;String&gt;** |  | 
**subject** | **String** |  | [optional] 
**to** | **Array&lt;String&gt;** |  | 
**updated_at** | **DateTime** |  | 
**user_id** | **String** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::MissedEmail.new(attachment_count: null,
                                 bcc: null,
                                 body_excerpt: null,
                                 cc: null,
                                 created_at: null,
                                 from: null,
                                 id: null,
                                 inbox_ids: null,
                                 subject: null,
                                 to: null,
                                 updated_at: null,
                                 user_id: null)
```


