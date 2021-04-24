# MailSlurpClient::MatchOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**matches** | [**Array&lt;MatchOption&gt;**](MatchOption) | 1 or more match options. Options are additive so if one does not match the email is excluded from results | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::MatchOptions.new(matches: null)
```


