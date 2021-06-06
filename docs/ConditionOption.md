# MailSlurpClient::ConditionOption

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**condition** | **String** | The condition to evaluate against the email | [optional] 
**value** | **String** | What the condition should evaluate to. A string &#39;TRUE|FALSE&#39; not a boolean. | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ConditionOption.new(condition: null,
                                 value: null)
```


