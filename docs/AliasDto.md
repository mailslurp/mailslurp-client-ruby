# MailSlurpClient::AliasDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**email_address** | **String** | The alias&#39;s email address for receiving email | 
**masked_email_address** | **String** | The underlying email address that is hidden and will received forwarded email | [optional] 
**user_id** | **String** |  | 
**inbox_id** | **String** | Inbox that is associated with the alias | 
**name** | **String** |  | [optional] 
**use_threads** | **Boolean** | If alias will generate response threads or not when email are received by it | [optional] 
**is_verified** | **Boolean** | Has the alias been verified. You must verify an alias if the masked email address has not yet been verified by your account | 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::AliasDto.new(id: null,
                                 email_address: null,
                                 masked_email_address: null,
                                 user_id: null,
                                 inbox_id: null,
                                 name: null,
                                 use_threads: null,
                                 is_verified: null,
                                 created_at: null,
                                 updated_at: null)
```


