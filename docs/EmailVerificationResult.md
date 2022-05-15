# MailSlurpClient::EmailVerificationResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain_name** | **String** |  | 
**port** | **Integer** |  | 
**email_address** | **String** |  | 
**is_valid** | **Boolean** |  | 
**error** | **String** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::EmailVerificationResult.new(domain_name: null,
                                 port: null,
                                 email_address: null,
                                 is_valid: null,
                                 error: null)
```


