# MailSlurpClient::ContactDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**company** | **String** |  | [optional] 
**created_at** | **DateTime** |  | 
**email_addresses** | **Array&lt;String&gt;** |  | 
**first_name** | **String** |  | [optional] 
**group_id** | **String** |  | [optional] 
**id** | **String** |  | 
**last_name** | **String** |  | [optional] 
**meta_data** | [**Object**](.md) |  | [optional] 
**opt_out** | **Boolean** |  | [optional] 
**tags** | **Array&lt;String&gt;** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ContactDto.new(company: null,
                                 created_at: null,
                                 email_addresses: null,
                                 first_name: null,
                                 group_id: null,
                                 id: null,
                                 last_name: null,
                                 meta_data: null,
                                 opt_out: null,
                                 tags: null)
```


