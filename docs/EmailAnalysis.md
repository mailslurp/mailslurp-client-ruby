# MailSlurpClient::EmailAnalysis

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dkim_verdict** | **String** | Verdict of DomainKeys Identified Mail analysis | [optional] 
**dmarc_verdict** | **String** | Verdict of Domain-based Message Authentication Reporting and Conformance analysis | [optional] 
**spam_verdict** | **String** | Verdict of spam ranking analysis | [optional] 
**spf_verdict** | **String** | Verdict of Send Policy Framework record spoofing analysis | [optional] 
**virus_verdict** | **String** | Verdict of virus scan analysis | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::EmailAnalysis.new(dkim_verdict: null,
                                 dmarc_verdict: null,
                                 spam_verdict: null,
                                 spf_verdict: null,
                                 virus_verdict: null)
```


