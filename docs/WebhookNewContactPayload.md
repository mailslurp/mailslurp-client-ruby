# MailSlurpClient::WebhookNewContactPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_id** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | 
**webhook_id** | **String** | ID of webhook entity being triggered | 
**webhook_name** | **String** | Name of the webhook being triggered | [optional] 
**event_name** | **String** | Name of the event type webhook is being triggered for. | 
**contact_id** | **String** |  | 
**group_id** | **String** |  | [optional] 
**first_name** | **String** |  | [optional] 
**last_name** | **String** |  | [optional] 
**company** | **String** |  | [optional] 
**primary_email_address** | **String** |  | [optional] 
**email_addresses** | **Array&lt;String&gt;** |  | 
**tags** | **Array&lt;String&gt;** |  | 
**meta_data** | [**Object**]() |  | [optional] 
**opt_out** | **Boolean** |  | [optional] 
**created_at** | **DateTime** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookNewContactPayload.new(message_id: null,
                                 webhook_id: null,
                                 webhook_name: null,
                                 event_name: null,
                                 contact_id: null,
                                 group_id: null,
                                 first_name: null,
                                 last_name: null,
                                 company: null,
                                 primary_email_address: null,
                                 email_addresses: null,
                                 tags: null,
                                 meta_data: null,
                                 opt_out: null,
                                 created_at: null)
```


