# MailSlurpClient::AbstractWebhookPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event_name** | **String** |  | [optional] 
**webhook_id** | **String** |  | [optional] 
**message_id** | **String** |  | [optional] 
**webhook_name** | **String** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::AbstractWebhookPayload.new(event_name: null,
                                 webhook_id: null,
                                 message_id: null,
                                 webhook_name: null)
```


