# MailSlurpClient::AliasDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** |  | [optional] 
**email_address** | **String** | The alias&#39;s email address for receiving email | [optional] 
**id** | **String** |  | 
**inbox_id** | **String** | Inbox that is associated with the alias | [optional] 
**is_verified** | **Boolean** | Has the alias been verified. You must verify an alias if the masked email address has not yet been verified by your account | [optional] 
**masked_email_address** | **String** | The underlying email address that is hidden and will received forwarded email | [optional] 
**name** | **String** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**use_threads** | **Boolean** | If alias will generate response threads or not when email are received by it | [optional] 
**user_id** | **String** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::AliasDto.new(created_at: null,
                                 email_address: null,
                                 id: null,
                                 inbox_id: null,
                                 is_verified: null,
                                 masked_email_address: null,
                                 name: null,
                                 updated_at: null,
                                 use_threads: null,
                                 user_id: null)
```


