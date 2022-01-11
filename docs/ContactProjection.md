# MailSlurpClient::ContactProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**created_at** | **DateTime** |  | 
**group_id** | **String** |  | [optional] 
**first_name** | **String** |  | [optional] 
**last_name** | **String** |  | [optional] 
**company** | **String** |  | [optional] 
**email_addresses** | **Array&lt;String&gt;** |  | [optional] 
**opt_out** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ContactProjection.new(id: null,
                                 created_at: null,
                                 group_id: null,
                                 first_name: null,
                                 last_name: null,
                                 company: null,
                                 email_addresses: null,
                                 opt_out: null)
```


