# MailSlurpClient::FlushExpiredInboxesResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inbox_ids** | **Array&lt;String&gt;** | Inbox IDs affected by expiration | 
**expire_before** | **DateTime** | DateTime to filter inboxes so that those expiring before this time are expired | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::FlushExpiredInboxesResult.new(inbox_ids: null,
                                 expire_before: null)
```


