# MailSlurpClient::SimpleSendEmailOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**body** | **String** | Body of the email message. Supports HTML | [optional] 
**sender_id** | **String** | ID of inbox to send from | [optional] 
**subject** | **String** | Subject line of the email | [optional] 
**to** | **String** | Email address to send to | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::SimpleSendEmailOptions.new(body: null,
                                 sender_id: null,
                                 subject: null,
                                 to: null)
```


