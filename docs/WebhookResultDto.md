# MailSlurpClient::WebhookResultDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**user_id** | **String** |  | 
**inbox_id** | **String** |  | [optional] 
**webhook_id** | **String** |  | 
**webhook_url** | **String** |  | 
**message_id** | **String** |  | 
**redrive_id** | **String** |  | [optional] 
**http_method** | **String** |  | 
**webhook_event** | **String** |  | 
**response_status** | **Integer** |  | [optional] 
**response_time_millis** | **Integer** |  | 
**response_body_extract** | **String** |  | [optional] 
**result_type** | **String** |  | [optional] 
**created_at** | **DateTime** |  | 
**updated_at** | **DateTime** |  | 
**seen** | **Boolean** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookResultDto.new(id: null,
                                 user_id: null,
                                 inbox_id: null,
                                 webhook_id: null,
                                 webhook_url: null,
                                 message_id: null,
                                 redrive_id: null,
                                 http_method: null,
                                 webhook_event: null,
                                 response_status: null,
                                 response_time_millis: null,
                                 response_body_extract: null,
                                 result_type: null,
                                 created_at: null,
                                 updated_at: null,
                                 seen: null)
```


