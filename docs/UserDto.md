# MailSlurpClient::UserDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**api_key** | **String** |  | 
**email_address** | **String** |  | 
**email_address_md5** | **String** |  | 
**created** | **DateTime** |  | [optional] 
**user_type** | **String** |  | [optional] 
**organization** | **String** | Does user belong to an organization | [optional] 
**verified** | **String** | Has user accepted an organization invite | [optional] 
**has_password** | **Boolean** |  | 
**is_frozen** | **Boolean** |  | 
**add_new_contacts** | **Boolean** |  | [optional] 
**sso_provider** | **String** |  | [optional] 
**customer_id** | **String** |  | [optional] 
**has_onboarded** | **Boolean** |  | [optional] 
**imap_username** | **String** |  | [optional] 
**imap_password** | **String** |  | [optional] 
**smtp_username** | **String** |  | [optional] 
**smtp_password** | **String** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::UserDto.new(id: null,
                                 api_key: null,
                                 email_address: null,
                                 email_address_md5: null,
                                 created: null,
                                 user_type: null,
                                 organization: null,
                                 verified: null,
                                 has_password: null,
                                 is_frozen: null,
                                 add_new_contacts: null,
                                 sso_provider: null,
                                 customer_id: null,
                                 has_onboarded: null,
                                 imap_username: null,
                                 imap_password: null,
                                 smtp_username: null,
                                 smtp_password: null)
```


