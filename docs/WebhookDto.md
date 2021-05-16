# MailSlurpClient::WebhookDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**basic_auth** | **Boolean** | Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself. | [optional] 
**created_at** | **DateTime** | When the webhook was created | [optional] 
**event_name** | **String** |  | [optional] 
**id** | **String** | ID of the Webhook | [optional] 
**inbox_id** | **String** | The inbox that the Webhook will be triggered by | [optional] 
**method** | **String** | HTTP method that your server endpoint must listen for | [optional] 
**name** | **String** | Name of the webhook | [optional] 
**payload_json_schema** | **String** | JSON Schema for the payload that will be sent to your URL via the HTTP method described. | [optional] 
**updated_at** | **DateTime** |  | 
**url** | **String** | URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema. | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookDto.new(basic_auth: null,
                                 created_at: null,
                                 event_name: null,
                                 id: null,
                                 inbox_id: null,
                                 method: null,
                                 name: null,
                                 payload_json_schema: null,
                                 updated_at: null,
                                 url: null)
```


