# MailSlurpClient::FlushExpiredInboxesResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inbox_ids** | **Array&lt;String&gt;** |  | [optional] 
**expire_before** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::FlushExpiredInboxesResult.new(inbox_ids: null,
                                 expire_before: null)
```


