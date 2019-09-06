# MailSlurpClient::MatchOption

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field** | **String** | The email property to match on. One of SUBJECT, TO, BCC, CC or FROM | [optional] 
**should** | **String** | What criteria to apply. CONTAIN or EQUAL. Note CONTAIN is recommended due to some SMTP servers adding new lines | [optional] 
**value** | **String** | The value to compare to the field using EQUAL or CONTAIN | [optional] 


