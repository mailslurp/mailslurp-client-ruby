# MailSlurpClient::ContactDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**company** | **String** |  | [optional] 
**email_addresses** | **Array&lt;String&gt;** |  | 
**first_name** | **String** |  | [optional] 
**id** | **String** |  | 
**last_name** | **String** |  | [optional] 
**meta_data** | [**JsonNode**](JsonNode.md) |  | [optional] 
**opt_out** | **Boolean** |  | [optional] 
**tags** | **Array&lt;String&gt;** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ContactDto.new(company: null,
                                 email_addresses: null,
                                 first_name: null,
                                 id: null,
                                 last_name: null,
                                 meta_data: null,
                                 opt_out: null,
                                 tags: null)
```


