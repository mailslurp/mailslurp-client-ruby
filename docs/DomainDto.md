# MailSlurpClient::DomainDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**catch_all_inbox_id** | **String** | The optional catch all inbox that will receive emails sent to the domain that cannot be matched. | [optional] 
**created_at** | **DateTime** |  | 
**dkim_tokens** | **Array&lt;String&gt;** | Unique token DKIM tokens | [optional] 
**domain** | **String** | Custom domain name | [optional] 
**domain_name_records** | [**Array&lt;DomainNameRecord&gt;**](DomainNameRecord) | List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider. | [optional] 
**domain_type** | **String** | The type of domain. SMTP or HTTP domains differ in what inboxes can be used with them. | [optional] 
**id** | **String** |  | 
**is_verified** | **Boolean** | Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records. | [optional] 
**updated_at** | **DateTime** |  | 
**user_id** | **String** |  | 
**verification_token** | **String** | Verification tokens | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::DomainDto.new(catch_all_inbox_id: null,
                                 created_at: null,
                                 dkim_tokens: null,
                                 domain: null,
                                 domain_name_records: null,
                                 domain_type: null,
                                 id: null,
                                 is_verified: null,
                                 updated_at: null,
                                 user_id: null,
                                 verification_token: null)
```


