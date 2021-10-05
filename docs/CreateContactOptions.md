# MailSlurpClient::CreateContactOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email_addresses** | **Array&lt;String&gt;** | Set of email addresses belonging to the contact | [optional] 
**first_name** | **String** |  | [optional] 
**group_id** | **String** | Group IDs that contact belongs to | [optional] 
**meta_data** | [**Object**]() |  | [optional] 
**opt_out** | **Boolean** | Has the user explicitly or implicitly opted out of being contacted? If so MailSlurp will ignore them in all actions. | [optional] 
**tags** | **Array&lt;String&gt;** | Tags that can be used to search and group contacts | [optional] 
**last_name** | **String** |  | [optional] 
**company** | **String** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::CreateContactOptions.new(email_addresses: null,
                                 first_name: null,
                                 group_id: null,
                                 meta_data: null,
                                 opt_out: null,
                                 tags: null,
                                 last_name: null,
                                 company: null)
```


