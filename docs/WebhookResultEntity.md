# MailSlurpClient::WebhookResultEntity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** |  | 
**http_method** | **String** |  | 
**id** | **String** |  | [optional] 
**inbox_id** | **String** |  | 
**message_id** | **String** |  | 
**response_body_extract** | **String** |  | [optional] 
**response_status** | **Integer** |  | [optional] 
**response_time_millis** | **Integer** |  | 
**updated_at** | **DateTime** |  | 
**user_id** | **String** |  | 
**webhook_event** | **String** |  | 
**webhook_id** | **String** |  | 
**webhook_url** | **String** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookResultEntity.new(created_at: null,
                                 http_method: null,
                                 id: null,
                                 inbox_id: null,
                                 message_id: null,
                                 response_body_extract: null,
                                 response_status: null,
                                 response_time_millis: null,
                                 updated_at: null,
                                 user_id: null,
                                 webhook_event: null,
                                 webhook_id: null,
                                 webhook_url: null)
```


