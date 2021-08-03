# MailSlurpClient::ReplyToEmailOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **Array&lt;String&gt;** | List of uploaded attachments to send with the reply. Optional. | [optional] 
**body** | **String** | Body of the reply email you want to send | [optional] 
**charset** | **String** | The charset that your message should be sent with. Optional. Default is UTF-8 | [optional] 
**from** | **String** | The from header that should be used. Optional | [optional] 
**is_html** | **Boolean** | Is the reply HTML | [optional] 
**reply_to** | **String** | The replyTo header that should be used. Optional | [optional] 
**send_strategy** | **String** | When to send the email. Typically immediately | [optional] 
**template** | **String** | Template ID to use instead of body. Will use template variable map to fill defined variable slots. | [optional] 
**template_variables** | [**Object**]() | Template variables if using a template | [optional] 
**use_inbox_name** | **Boolean** | Optionally use inbox name as display name for sender email address | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ReplyToEmailOptions.new(attachments: null,
                                 body: null,
                                 charset: null,
                                 from: null,
                                 is_html: null,
                                 reply_to: null,
                                 send_strategy: null,
                                 template: null,
                                 template_variables: null,
                                 use_inbox_name: null)
```


