# MailSlurpClient::MatchOption

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field** | **String** | The email property to match on. One of SUBJECT, TO, BCC, CC or FROM | [optional] 
**should** | **String** | What criteria to apply. CONTAIN or EQUAL. Note CONTAIN is recommended due to some SMTP servers adding new lines to fields and body content. | [optional] 
**value** | **String** | The value you wish to compare with the value of the field specified using the &#x60;should&#x60; value passed. For example &#x60;BODY&#x60; should &#x60;CONTAIN&#x60; a value passed. | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::MatchOption.new(field: null,
                                 should: null,
                                 value: null)
```


