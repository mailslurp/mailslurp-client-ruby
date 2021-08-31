# MailSlurpClient::InboxRulesetTestResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**matches** | **Boolean** |  | 
**ruleset_matches** | **Hash&lt;String, Boolean&gt;** | Map of inbox ruleset ID to boolean of if target matches | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::InboxRulesetTestResult.new(matches: null,
                                 ruleset_matches: null)
```


