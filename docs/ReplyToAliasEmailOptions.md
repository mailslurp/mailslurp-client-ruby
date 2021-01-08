# MailSlurpClient::ReplyToAliasEmailOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **Array&lt;String&gt;** | List of uploaded attachments to send with the reply. Optional. | [optional] 
**body** | **String** | Body of the reply email you want to send | [optional] 
**charset** | **String** | The charset that your message should be sent with. Optional. Default is UTF-8 | [optional] 
**is_html** | **Boolean** | Is the reply HTML | [optional] 
**send_strategy** | **String** | When to send the email. Typically immediately | [optional] 
**template** | **String** | Template ID to use instead of body. Will use template variable map to fill defined variable slots. | [optional] 
**template_variables** | [**Object**](.md) | Template variables if using a template | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ReplyToAliasEmailOptions.new(attachments: null,
                                 body: null,
                                 charset: null,
                                 is_html: null,
                                 send_strategy: null,
                                 template: null,
                                 template_variables: null)
```


