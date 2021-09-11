# MailSlurpClient::WebhookResultDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** |  | 
**http_method** | **String** |  | 
**id** | **String** |  | [optional] 
**inbox_id** | **String** |  | 
**message_id** | **String** |  | 
**redrive_id** | **String** |  | [optional] 
**response_body_extract** | **String** |  | [optional] 
**response_status** | **Integer** |  | [optional] 
**response_time_millis** | **Integer** |  | 
**result_type** | **String** |  | [optional] 
**updated_at** | **DateTime** |  | 
**user_id** | **String** |  | 
**webhook_event** | **String** |  | 
**webhook_id** | **String** |  | 
**webhook_url** | **String** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookResultDto.new(created_at: null,
                                 http_method: null,
                                 id: null,
                                 inbox_id: null,
                                 message_id: null,
                                 redrive_id: null,
                                 response_body_extract: null,
                                 response_status: null,
                                 response_time_millis: null,
                                 result_type: null,
                                 updated_at: null,
                                 user_id: null,
                                 webhook_event: null,
                                 webhook_id: null,
                                 webhook_url: null)
```


