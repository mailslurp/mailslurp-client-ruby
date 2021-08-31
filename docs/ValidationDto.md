# MailSlurpClient::ValidationDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email_id** | **String** | ID of the email validated | [optional] 
**html** | [**HTMLValidationResult**](HTMLValidationResult) |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ValidationDto.new(email_id: null,
                                 html: null)
```


