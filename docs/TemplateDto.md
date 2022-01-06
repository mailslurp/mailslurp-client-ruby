# MailSlurpClient::TemplateDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**variables** | [**Array&lt;TemplateVariable&gt;**](TemplateVariable) |  | [optional] 
**content** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::TemplateDto.new(id: null,
                                 name: null,
                                 variables: null,
                                 content: null,
                                 created_at: null)
```


