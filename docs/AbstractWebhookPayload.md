# MailSlurpClient::AbstractWebhookPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event_name** | **String** |  | 
**message_id** | **String** |  | 
**webhook_id** | **String** |  | 
**webhook_name** | **String** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::AbstractWebhookPayload.new(event_name: null,
                                 message_id: null,
                                 webhook_id: null,
                                 webhook_name: null)
```


