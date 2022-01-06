# MailSlurpClient::DomainPreview

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**domain** | **String** |  | [optional] 
**catch_all_inbox_id** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**domain_type** | **String** | Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. | [optional] 
**verified** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::DomainPreview.new(id: null,
                                 domain: null,
                                 catch_all_inbox_id: null,
                                 created_at: null,
                                 domain_type: null,
                                 verified: null)
```


