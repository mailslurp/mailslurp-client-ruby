# MailSlurpClient::CreateTemplateOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of template | 
**content** | **String** | Template content. Can include moustache style variables such as {{var_name}} | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::CreateTemplateOptions.new(name: null,
                                 content: null)
```


