# MailSlurpClient::VerifyEmailAddressOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mail_server_domain** | **String** |  | [optional] 
**email_address** | **String** |  | 
**sender_email_address** | **String** |  | [optional] 
**port** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::VerifyEmailAddressOptions.new(mail_server_domain: null,
                                 email_address: null,
                                 sender_email_address: null,
                                 port: null)
```


