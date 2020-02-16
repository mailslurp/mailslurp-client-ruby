# MailSlurpClient::EmailProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **Array&lt;String&gt;** |  | [optional] 
**bcc** | **Array&lt;String&gt;** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | [optional] 
**created_at** | **DateTime** |  | 
**id** | **String** |  | 
**inbox_id** | **String** |  | 
**read** | **Boolean** |  | [optional] 
**subject** | **String** |  | [optional] 
**to** | **Array&lt;String&gt;** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::EmailProjection.new(attachments: null,
                                 bcc: null,
                                 cc: null,
                                 created_at: null,
                                 id: null,
                                 inbox_id: null,
                                 read: null,
                                 subject: null,
                                 to: null)
```


