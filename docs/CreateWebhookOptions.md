# MailSlurpClient::CreateWebhookOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**basic_auth** | [**BasicAuthOptions**](BasicAuthOptions.md) |  | [optional] 
**name** | **String** | Optional name for the webhook | [optional] 
**url** | **String** | Public URL on your server that MailSlurp can post WebhookNotification payload to when an email is received. The payload of the submitted JSON is described by https://api.mailslurp.com/schemas/webhook-payload | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::CreateWebhookOptions.new(basic_auth: null,
                                 name: null,
                                 url: null)
```


