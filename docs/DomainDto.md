# MailSlurpClient::DomainDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**user_id** | **String** |  | 
**domain** | **String** | Custom domain name | 
**verification_token** | **String** | Verification tokens | 
**dkim_tokens** | **Array&lt;String&gt;** | Unique token DKIM tokens | 
**is_verified** | **Boolean** | Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records. | 
**domain_name_records** | [**Array&lt;DomainNameRecord&gt;**](DomainNameRecord) | List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider. | 
**catch_all_inbox_id** | **String** | The optional catch all inbox that will receive emails sent to the domain that cannot be matched. | [optional] 
**created_at** | **DateTime** |  | 
**updated_at** | **DateTime** |  | 
**domain_type** | **String** | Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::DomainDto.new(id: null,
                                 user_id: null,
                                 domain: null,
                                 verification_token: null,
                                 dkim_tokens: null,
                                 is_verified: null,
                                 domain_name_records: null,
                                 catch_all_inbox_id: null,
                                 created_at: null,
                                 updated_at: null,
                                 domain_type: null)
```


