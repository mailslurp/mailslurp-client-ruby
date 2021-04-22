# MailSlurpClient::EmailVerificationResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain_name** | **String** |  | 
**email_address** | **String** |  | 
**error** | **String** |  | [optional] 
**is_valid** | **Boolean** |  | 
**port** | **Integer** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::EmailVerificationResult.new(domain_name: null,
                                 email_address: null,
                                 error: null,
                                 is_valid: null,
                                 port: null)
```


