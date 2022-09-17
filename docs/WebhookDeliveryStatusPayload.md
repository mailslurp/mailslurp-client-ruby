# MailSlurpClient::WebhookDeliveryStatusPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_id** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhook_id** | **String** | ID of webhook entity being triggered | 
**event_name** | **String** | Name of the event type webhook is being triggered for. | 
**webhook_name** | **String** | Name of the webhook being triggered | [optional] 
**id** | **String** | ID of delivery status | 
**user_id** | **String** | User ID of event | 
**sent_id** | **String** | ID of sent email | [optional] 
**remote_mta_ip** | **String** | IP address of the remote Mail Transfer Agent | [optional] 
**inbox_id** | **String** | Id of the inbox | [optional] 
**reporting_mta** | **String** | Mail Transfer Agent reporting delivery status | [optional] 
**recipients** | **Array&lt;String&gt;** | Recipients for delivery | [optional] 
**smtp_response** | **String** | SMTP server response message | [optional] 
**smtp_status_code** | **Integer** | SMTP server status | [optional] 
**processing_time_millis** | **Integer** | Time in milliseconds for delivery processing | [optional] 
**received** | **DateTime** | Time event was received | [optional] 
**subject** | **String** | Email subject | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookDeliveryStatusPayload.new(message_id: null,
                                 webhook_id: null,
                                 event_name: null,
                                 webhook_name: null,
                                 id: null,
                                 user_id: null,
                                 sent_id: null,
                                 remote_mta_ip: null,
                                 inbox_id: null,
                                 reporting_mta: null,
                                 recipients: null,
                                 smtp_response: null,
                                 smtp_status_code: null,
                                 processing_time_millis: null,
                                 received: null,
                                 subject: null)
```


