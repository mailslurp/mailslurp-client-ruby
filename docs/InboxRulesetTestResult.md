# MailSlurpClient::InboxRulesetTestResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ruleset_matches** | **Hash&lt;String, Boolean&gt;** | Map of inbox ruleset ID to boolean of if target matches | 
**matches** | **Boolean** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::InboxRulesetTestResult.new(ruleset_matches: null,
                                 matches: null)
```


