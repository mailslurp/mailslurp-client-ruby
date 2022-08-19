# MailSlurpClient::ExpirationDefaults

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_expiration_millis** | **Integer** |  | [optional] 
**max_expiration_millis** | **Integer** |  | [optional] 
**default_expires_at** | **DateTime** |  | [optional] 
**can_permanent_inbox** | **Boolean** |  | 
**next_inbox_allows_permanent** | **Boolean** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ExpirationDefaults.new(default_expiration_millis: null,
                                 max_expiration_millis: null,
                                 default_expires_at: null,
                                 can_permanent_inbox: null,
                                 next_inbox_allows_permanent: null)
```


