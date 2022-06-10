# MailSlurpClient::ContactProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**group_id** | **String** |  | [optional] 
**first_name** | **String** |  | [optional] 
**last_name** | **String** |  | [optional] 
**company** | **String** |  | [optional] 
**email_addresses** | **Array&lt;String&gt;** |  | [optional] 
**opt_out** | **Boolean** |  | 
**created_at** | **DateTime** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ContactProjection.new(id: null,
                                 group_id: null,
                                 first_name: null,
                                 last_name: null,
                                 company: null,
                                 email_addresses: null,
                                 opt_out: null,
                                 created_at: null)
```


