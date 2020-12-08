# MailSlurpClient::DomainDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** |  | 
**dkim_tokens** | **Array&lt;String&gt;** | DNS records for DKIM approval | [optional] 
**domain** | **String** | Custom domain name | [optional] 
**id** | **String** |  | 
**is_verified** | **Boolean** | Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records. | [optional] 
**updated_at** | **DateTime** |  | 
**user_id** | **String** |  | 
**verification_token** | **String** | A TXT record that you must place in the DNS settings of the domain to complete domain verification | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::DomainDto.new(created_at: null,
                                 dkim_tokens: null,
                                 domain: null,
                                 id: null,
                                 is_verified: null,
                                 updated_at: null,
                                 user_id: null,
                                 verification_token: null)
```


