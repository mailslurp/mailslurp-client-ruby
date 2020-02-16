# MailSlurpClient::MatchOption

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field** | **String** | The email property to match on. One of SUBJECT, TO, BCC, CC or FROM | [optional] 
**should** | **String** | What criteria to apply. CONTAIN or EQUAL. Note CONTAIN is recommended due to some SMTP servers adding new lines | [optional] 
**value** | **String** | The value to compare to the field using EQUAL or CONTAIN | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::MatchOption.new(field: null,
                                 should: null,
                                 value: null)
```


