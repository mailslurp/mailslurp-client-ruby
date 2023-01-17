# MailSlurpClient::ThreadProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of thread | [optional] 
**id** | **String** | ID of email thread | 
**subject** | **String** | Thread subject | [optional] 
**user_id** | **String** | User ID | 
**inbox_id** | **String** | Inbox ID | 
**created_at** | **DateTime** | Created at DateTime | 
**updated_at** | **DateTime** | Updated at DateTime | 
**to** | **Array&lt;String&gt;** | To recipients | 
**bcc** | **Array&lt;String&gt;** | BCC recipients | [optional] 
**cc** | **Array&lt;String&gt;** | CC recipients | [optional] 
**alias_id** | **String** | Alias ID | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ThreadProjection.new(name: null,
                                 id: null,
                                 subject: null,
                                 user_id: null,
                                 inbox_id: null,
                                 created_at: null,
                                 updated_at: null,
                                 to: null,
                                 bcc: null,
                                 cc: null,
                                 alias_id: null)
```


