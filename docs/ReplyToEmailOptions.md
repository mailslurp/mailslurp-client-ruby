# MailSlurpClient::ReplyToEmailOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**body** | **String** | Body of the reply email you want to send | 
**is_html** | **Boolean** | Is the reply HTML | 
**from** | **String** | The from header that should be used. Optional | [optional] 
**reply_to** | **String** | The replyTo header that should be used. Optional | [optional] 
**charset** | **String** | The charset that your message should be sent with. Optional. Default is UTF-8 | [optional] 
**attachments** | **Array&lt;String&gt;** | List of uploaded attachments to send with the reply. Optional. | [optional] 
**template_variables** | **Hash&lt;String, Object&gt;** | Template variables if using a template | [optional] 
**template** | **String** | Template ID to use instead of body. Will use template variable map to fill defined variable slots. | [optional] 
**send_strategy** | **String** | How an email should be sent based on its recipients | [optional] 
**use_inbox_name** | **Boolean** | Optionally use inbox name as display name for sender email address | [optional] 
**html** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ReplyToEmailOptions.new(body: null,
                                 is_html: null,
                                 from: null,
                                 reply_to: null,
                                 charset: null,
                                 attachments: null,
                                 template_variables: null,
                                 template: null,
                                 send_strategy: null,
                                 use_inbox_name: null,
                                 html: null)
```


