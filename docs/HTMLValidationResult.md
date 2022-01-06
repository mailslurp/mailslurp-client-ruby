# MailSlurpClient::HTMLValidationResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**Array&lt;ValidationMessage&gt;**](ValidationMessage) | Optional errors resulting from HTML validation | [optional] 
**warnings** | [**Array&lt;ValidationMessage&gt;**](ValidationMessage) | Optional warnings resulting from HTML validation | [optional] 
**valid** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::HTMLValidationResult.new(errors: null,
                                 warnings: null,
                                 valid: null)
```


