# MailSlurpClient::HTMLValidationResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_valid** | **Boolean** | Is HTML validation result valid | 
**errors** | [**Array&lt;ValidationMessage&gt;**](ValidationMessage) | Optional errors resulting from HTML validation | 
**warnings** | [**Array&lt;ValidationMessage&gt;**](ValidationMessage) | Optional warnings resulting from HTML validation | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::HTMLValidationResult.new(is_valid: null,
                                 errors: null,
                                 warnings: null)
```


