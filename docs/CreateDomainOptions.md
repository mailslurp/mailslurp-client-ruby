# MailSlurpClient::CreateDomainOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **String** | The top level domain you wish to use with MailSlurp. Do not specify subdomain just the top level. So &#x60;test.com&#x60; covers all subdomains such as &#x60;mail.test.com&#x60;. Don&#39;t include a protocol such as &#x60;http://&#x60;. Once added you must complete the verification steps by adding the returned records to your domain. | 
**description** | **String** | Optional description of the domain. | [optional] 
**created_catch_all_inbox** | **Boolean** | Whether to create a catch all inbox for the domain. Any email sent to an address using your domain that cannot be matched to an existing inbox you created with the domain will be routed to the created catch all inbox. You can access emails using the regular methods on this inbox ID. | [optional] 
**domain_type** | **String** | Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::CreateDomainOptions.new(domain: null,
                                 description: null,
                                 created_catch_all_inbox: null,
                                 domain_type: null)
```


