# MailSlurpClient::DeliveryStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**user_id** | **String** |  | 
**sent_id** | **String** |  | [optional] 
**remote_mta_ip** | **String** |  | [optional] 
**inbox_id** | **String** |  | [optional] 
**reporting_mta** | **String** |  | [optional] 
**recipients** | **Array&lt;String&gt;** |  | [optional] 
**smtp_response** | **String** |  | [optional] 
**processing_time_millis** | **Integer** |  | [optional] 
**received** | **DateTime** |  | [optional] 
**subject** | **String** |  | [optional] 
**created_at** | **DateTime** |  | 
**updated_at** | **DateTime** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::DeliveryStatus.new(id: null,
                                 user_id: null,
                                 sent_id: null,
                                 remote_mta_ip: null,
                                 inbox_id: null,
                                 reporting_mta: null,
                                 recipients: null,
                                 smtp_response: null,
                                 processing_time_millis: null,
                                 received: null,
                                 subject: null,
                                 created_at: null,
                                 updated_at: null)
```


