# MailSlurpClient::EmailAnalysis

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**spam_verdict** | **String** | Verdict of spam ranking analysis | [optional] 
**virus_verdict** | **String** | Verdict of virus scan analysis | [optional] 
**spf_verdict** | **String** | Verdict of Send Policy Framework record spoofing analysis | [optional] 
**dkim_verdict** | **String** | Verdict of DomainKeys Identified Mail analysis | [optional] 
**dmarc_verdict** | **String** | Verdict of Domain-based Message Authentication Reporting and Conformance analysis | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::EmailAnalysis.new(spam_verdict: null,
                                 virus_verdict: null,
                                 spf_verdict: null,
                                 dkim_verdict: null,
                                 dmarc_verdict: null)
```


