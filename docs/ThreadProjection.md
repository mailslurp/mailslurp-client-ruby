# MailSlurpClient::ThreadProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of thread | [optional] 
**id** | **String** | ID of email thread | 
**subject** | **String** | Thread subject | [optional] 
**user_id** | **String** | User ID | 
**inbox_id** | **String** | Inbox ID | 
**to** | **Array&lt;String&gt;** | To recipients | 
**created_at** | **DateTime** | Created at DateTime | 
**bcc** | **Array&lt;String&gt;** | BCC recipients | [optional] 
**cc** | **Array&lt;String&gt;** | CC recipients | [optional] 
**updated_at** | **DateTime** | Updated at DateTime | 
**alias_id** | **String** | Alias ID | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ThreadProjection.new(name: null,
                                 id: null,
                                 subject: null,
                                 user_id: null,
                                 inbox_id: null,
                                 to: null,
                                 created_at: null,
                                 bcc: null,
                                 cc: null,
                                 updated_at: null,
                                 alias_id: null)
```


