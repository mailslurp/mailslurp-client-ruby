# MailSlurpClient::ThreadProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of thread | [optional] 
**id** | **String** | ID of email thread | 
**subject** | **String** | Thread subject | [optional] 
**inbox_id** | **String** | Inbox ID | 
**user_id** | **String** | User ID | 
**to** | **Array&lt;String&gt;** | To recipients | 
**created_at** | **DateTime** | Created at DateTime | 
**updated_at** | **DateTime** | Updated at DateTime | 
**bcc** | **Array&lt;String&gt;** | BCC recipients | [optional] 
**cc** | **Array&lt;String&gt;** | CC recipients | [optional] 
**alias_id** | **String** | Alias ID | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ThreadProjection.new(name: null,
                                 id: null,
                                 subject: null,
                                 inbox_id: null,
                                 user_id: null,
                                 to: null,
                                 created_at: null,
                                 updated_at: null,
                                 bcc: null,
                                 cc: null,
                                 alias_id: null)
```


