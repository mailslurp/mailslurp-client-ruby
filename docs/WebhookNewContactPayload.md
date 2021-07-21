# MailSlurpClient::WebhookNewContactPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**company** | **String** |  | [optional] 
**contact_id** | **String** |  | 
**created_at** | **DateTime** |  | 
**email_addresses** | **Array&lt;String&gt;** |  | 
**event_name** | **String** | Name of the event type webhook is being triggered for. | [optional] 
**first_name** | **String** |  | [optional] 
**group_id** | **String** |  | [optional] 
**last_name** | **String** |  | [optional] 
**message_id** | **String** | Idempotent message ID. Store this ID locally or in a database to prevent message duplication. | [optional] 
**meta_data** | [**Object**]() |  | [optional] 
**opt_out** | **Boolean** |  | [optional] 
**primary_email_address** | **String** |  | [optional] 
**tags** | **Array&lt;String&gt;** |  | 
**webhook_id** | **String** | ID of webhook entity being triggered | [optional] 
**webhook_name** | **String** | Name of the webhook being triggered | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::WebhookNewContactPayload.new(company: null,
                                 contact_id: null,
                                 created_at: null,
                                 email_addresses: null,
                                 event_name: null,
                                 first_name: null,
                                 group_id: null,
                                 last_name: null,
                                 message_id: null,
                                 meta_data: null,
                                 opt_out: null,
                                 primary_email_address: null,
                                 tags: null,
                                 webhook_id: null,
                                 webhook_name: null)
```


