# MailSlurpClient::InboxForwarderDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**inbox_id** | **String** |  | [optional] 
**field** | **String** |  | [optional] 
**match** | **String** |  | [optional] 
**forward_to_recipients** | **Array&lt;String&gt;** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 

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


