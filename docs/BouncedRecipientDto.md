# MailSlurpClient::BouncedRecipientDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**user_id** | **String** |  | [optional] 
**sent_email_id** | **String** |  | [optional] 
**recipient** | **String** |  | 
**diagnostic_code** | **String** |  | [optional] 
**action** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**created_at** | **DateTime** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::BouncedRecipientDto.new(id: null,
                                 user_id: null,
                                 sent_email_id: null,
                                 recipient: null,
                                 diagnostic_code: null,
                                 action: null,
                                 status: null,
                                 created_at: null)
```


