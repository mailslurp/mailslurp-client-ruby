# MailSlurpClient::CreateDomainOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_catch_all_inbox** | **Boolean** | Whether to create a catch all inbox for the domain. Any email sent to an address using your domain that cannot be matched to an existing inbox you created with the domain will be routed to the created catch all inbox. You can access emails using the regular methods on this inbox ID. | [optional] 
**description** | **String** | Optional description of the domain. | [optional] 
**domain** | **String** | The top level domain you wish to use with MailSlurp. Do not specify subdomain just the top level. So &#x60;test.com&#x60; covers all subdomains such as &#x60;mail.test.com&#x60;. Don&#39;t include a protocol such as &#x60;http://&#x60;. Once added you must complete the verification steps by adding the returned records to your domain. | [optional] 
**domain_type** | **String** | Domain type to create. HTTP or SMTP domain. HTTP domain uses MailSlurps SES MX records. SMTP uses a custom SMTP server MX record. SMTP domains can only be used with SMTP inboxes. SMTP inboxes are more reliable for public inbound emails while HTTP inboxes are more suitable for testing. | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::CreateDomainOptions.new(created_catch_all_inbox: null,
                                 description: null,
                                 domain: null,
                                 domain_type: null)
```


