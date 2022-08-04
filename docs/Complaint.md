# MailSlurpClient::Complaint

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**user_id** | **String** |  | [optional] 
**event_type** | **String** |  | [optional] 
**mail_source** | **String** |  | [optional] 
**mail_message_id** | **String** |  | [optional] 
**complaint_recipient** | **String** |  | 
**created_at** | **DateTime** |  | 
**updated_at** | **DateTime** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::Complaint.new(id: null,
                                 user_id: null,
                                 event_type: null,
                                 mail_source: null,
                                 mail_message_id: null,
                                 complaint_recipient: null,
                                 created_at: null,
                                 updated_at: null)
```


