# MailSlurpClient::AbstractWebhookPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**webhook_name** | **String** |  | [optional] 
**event_name** | **String** |  | 
**webhook_id** | **String** |  | 
**message_id** | **String** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::AbstractWebhookPayload.new(webhook_name: null,
                                 event_name: null,
                                 webhook_id: null,
                                 message_id: null)
```


