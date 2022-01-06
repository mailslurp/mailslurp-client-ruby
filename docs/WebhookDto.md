# MailSlurpClient::WebhookDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the Webhook | [optional] 
**user_id** | **String** | User ID of the Webhook | [optional] 
**basic_auth** | **Boolean** | Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself. | [optional] 
**name** | **String** | Name of the webhook | [optional] 
**inbox_id** | **String** | The inbox that the Webhook will be triggered by | [optional] 
**url** | **String** | URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema. | [optional] 
**method** | **String** | HTTP method that your server endpoint must listen for | [optional] 
**payload_json_schema** | **String** | Deprecated. Fetch JSON Schema for webhook using the getJsonSchemaForWebhookPayload method | [optional] 
**created_at** | **DateTime** | When the webhook was created | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**event_name** | **String** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookDto.new(id: null,
                                 user_id: null,
                                 basic_auth: null,
                                 name: null,
                                 inbox_id: null,
                                 url: null,
                                 method: null,
                                 payload_json_schema: null,
                                 created_at: null,
                                 updated_at: null,
                                 event_name: null)
```


