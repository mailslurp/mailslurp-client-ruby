# MailSlurpClient::HTMLValidationResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**Array&lt;ValidationMessage&gt;**](ValidationMessage.md) |  | 
**is_valid** | **Boolean** |  | 
**warnings** | [**Array&lt;ValidationMessage&gt;**](ValidationMessage.md) |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::HTMLValidationResult.new(errors: null,
                                 is_valid: null,
                                 warnings: null)
```


