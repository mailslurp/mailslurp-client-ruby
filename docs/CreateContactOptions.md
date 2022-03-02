# MailSlurpClient::CreateContactOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** |  | [optional] 
**last_name** | **String** |  | [optional] 
**company** | **String** |  | [optional] 
**email_addresses** | **Array&lt;String&gt;** | Set of email addresses belonging to the contact | [optional] 
**tags** | **Array&lt;String&gt;** | Tags that can be used to search and group contacts | [optional] 
**meta_data** | [**Object**]() |  | [optional] 
**opt_out** | **Boolean** | Has the user explicitly or implicitly opted out of being contacted? If so MailSlurp will ignore them in all actions. | [optional] 
**group_id** | **String** | Group IDs that contact belongs to | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::CreateContactOptions.new(first_name: null,
                                 last_name: null,
                                 company: null,
                                 email_addresses: null,
                                 tags: null,
                                 meta_data: null,
                                 opt_out: null,
                                 group_id: null)
```


