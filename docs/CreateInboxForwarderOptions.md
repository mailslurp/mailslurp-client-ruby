# MailSlurpClient::CreateInboxForwarderOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field** | **String** | Field to match against to trigger inbox forwarding for inbound email | [optional] 
**match** | **String** | String or wildcard style match for field specified when evaluating forwarding rules | 
**forward_to_recipients** | **Array&lt;String&gt;** | Email addresses to forward an email to if it matches the field and match criteria of the forwarder | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::CreateInboxForwarderOptions.new(field: null,
                                 match: null,
                                 forward_to_recipients: null)
```


