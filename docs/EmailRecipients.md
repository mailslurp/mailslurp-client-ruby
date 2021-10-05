# MailSlurpClient::EmailRecipients

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bcc** | [**Array&lt;Recipient&gt;**](Recipient) |  | [optional] 
**cc** | [**Array&lt;Recipient&gt;**](Recipient) |  | [optional] 
**to** | [**Array&lt;Recipient&gt;**](Recipient) |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::EmailRecipients.new(bcc: null,
                                 cc: null,
                                 to: null)
```


