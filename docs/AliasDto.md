# MailSlurpClient::AliasDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**email_address** | **String** | The alias&#39;s email address for receiving email | [optional] 
**masked_email_address** | **String** | The underlying email address that is hidden and will received forwarded email | [optional] 
**user_id** | **String** |  | [optional] 
**inbox_id** | **String** | Inbox that is associated with the alias | [optional] 
**name** | **String** |  | [optional] 
**use_threads** | **Boolean** | If alias will generate response threads or not when email are received by it | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**verified** | **Boolean** |  | [optional] 

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
                                 created_at: null,
                                 updated_at: null,
                                 verified: null)
```


