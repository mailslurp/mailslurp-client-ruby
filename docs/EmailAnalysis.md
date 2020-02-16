# MailSlurpClient::EmailAnalysis

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dkim_verdict** | **String** |  | [optional] 
**dmarc_verdict** | **String** |  | [optional] 
**spam_verdict** | **String** |  | [optional] 
**spf_verdict** | **String** |  | [optional] 
**virus_verdict** | **String** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::EmailAnalysis.new(dkim_verdict: null,
                                 dmarc_verdict: null,
                                 spam_verdict: null,
                                 spf_verdict: null,
                                 virus_verdict: null)
```


