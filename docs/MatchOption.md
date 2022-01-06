# MailSlurpClient::MatchOption

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field** | **String** | Fields of an email object that can be used to filter results | [optional] 
**should** | **String** | How the value of the email field specified should be compared to the value given in the match options. | [optional] 
**value** | **String** | The value you wish to compare with the value of the field specified using the &#x60;should&#x60; value passed. For example &#x60;BODY&#x60; should &#x60;CONTAIN&#x60; a value passed. | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::MatchOption.new(field: null,
                                 should: null,
                                 value: null)
```


