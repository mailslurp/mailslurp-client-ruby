# MailSlurpClient::ContactDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**group_id** | **String** |  | [optional] 
**first_name** | **String** |  | [optional] 
**last_name** | **String** |  | [optional] 
**company** | **String** |  | [optional] 
**email_addresses** | **Array&lt;String&gt;** |  | [optional] 
**primary_email_address** | **String** |  | [optional] 
**tags** | **Array&lt;String&gt;** |  | [optional] 
**meta_data** | [**Object**]() |  | [optional] 
**opt_out** | **Boolean** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ContactDto.new(id: null,
                                 group_id: null,
                                 first_name: null,
                                 last_name: null,
                                 company: null,
                                 email_addresses: null,
                                 primary_email_address: null,
                                 tags: null,
                                 meta_data: null,
                                 opt_out: null,
                                 created_at: null)
```


