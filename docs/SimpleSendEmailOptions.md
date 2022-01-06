# MailSlurpClient::SimpleSendEmailOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender_id** | **String** | ID of inbox to send from. If null an inbox will be created for sending | [optional] 
**to** | **String** | Email address to send to | [optional] 
**body** | **String** | Body of the email message. Supports HTML | [optional] 
**subject** | **String** | Subject line of the email | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::SimpleSendEmailOptions.new(sender_id: null,
                                 to: null,
                                 body: null,
                                 subject: null)
```


