# MailSlurpClient::EmailRecipients

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | [**Array&lt;Recipient&gt;**](Recipient) |  | [optional] 
**cc** | [**Array&lt;Recipient&gt;**](Recipient) |  | [optional] 
**bcc** | [**Array&lt;Recipient&gt;**](Recipient) |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::EmailRecipients.new(to: null,
                                 cc: null,
                                 bcc: null)
```


