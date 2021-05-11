# MailSlurpClient::HTMLValidationResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**Array&lt;ValidationMessage&gt;**](ValidationMessage) | Optional errors resulting from HTML validation | [optional] 
**is_valid** | **Boolean** | Is HTML validation result valid | [optional] 
**warnings** | [**Array&lt;ValidationMessage&gt;**](ValidationMessage) | Optional warnings resulting from HTML validation | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::HTMLValidationResult.new(errors: null,
                                 is_valid: null,
                                 warnings: null)
```


