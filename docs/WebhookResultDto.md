# MailSlurpClient::WebhookResultDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**user_id** | **String** |  | [optional] 
**inbox_id** | **String** |  | [optional] 
**webhook_id** | **String** |  | [optional] 
**webhook_url** | **String** |  | [optional] 
**message_id** | **String** |  | [optional] 
**redrive_id** | **String** |  | [optional] 
**http_method** | **String** |  | [optional] 
**webhook_event** | **String** |  | [optional] 
**response_status** | **Integer** |  | [optional] 
**response_time_millis** | **Integer** |  | [optional] 
**response_body_extract** | **String** |  | [optional] 
**result_type** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**seen** | **Boolean** |  | [optional] 

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


