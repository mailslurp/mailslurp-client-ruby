# MailSlurpClient::ExpirationDefaults

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**can_permanent_inbox** | **Boolean** |  | 
**default_expiration_millis** | **Integer** |  | [optional] 
**default_expires_at** | **DateTime** |  | [optional] 
**max_expiration_millis** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ExpirationDefaults.new(can_permanent_inbox: null,
                                 default_expiration_millis: null,
                                 default_expires_at: null,
                                 max_expiration_millis: null)
```


