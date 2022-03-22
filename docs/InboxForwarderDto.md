# MailSlurpClient::InboxForwarderDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**inbox_id** | **String** |  | 
**field** | **String** |  | 
**match** | **String** |  | 
**forward_to_recipients** | **Array&lt;String&gt;** |  | 
**created_at** | **DateTime** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::InboxForwarderDto.new(id: null,
                                 inbox_id: null,
                                 field: null,
                                 match: null,
                                 forward_to_recipients: null,
                                 created_at: null)
```


