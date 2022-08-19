# MailSlurpClient::TemplateDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of template | 
**name** | **String** | Template name | 
**variables** | [**Array&lt;TemplateVariable&gt;**](TemplateVariable) | Variables available in template that can be replaced with values | 
**content** | **String** | Content of the template | 
**created_at** | **DateTime** | Created at time | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::TemplateDto.new(id: null,
                                 name: null,
                                 variables: null,
                                 content: null,
                                 created_at: null)
```


